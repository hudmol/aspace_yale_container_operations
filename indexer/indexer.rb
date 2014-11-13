class CommonIndexer

  add_extra_documents_hook {|record|
    parent_type = JSONModel.parse_reference(record['uri'])[:type]

    Array(record['record']['instances']).select {|instance| instance['container']}.map do |instance|
      container = instance['container']

      {
        'id' => "#{record['uri']}##{parent_type}_container",
        'parent_id' => record['uri'],
        'json' => ASUtils.to_json(container),
        'types' => ['container'],
        'primary_type' => 'container',
        'suppressed' => record['record']['suppressed'].to_s,
        'repository' => get_record_scope(record['uri']),
        'created_by' => container['created_by'],
        'last_modified_by' => container['last_modified_by'],
        'system_mtime' => container['system_mtime'],
        'user_mtime' => container['user_mtime'],
        'create_time' => container['create_time']
      }
    end
  }

end
