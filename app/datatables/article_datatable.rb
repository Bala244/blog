class ArticleDatatable < AjaxDatatablesRails::ActiveRecord
  self.nulls_last = true
  
  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      title: { source: "Article.title", cond: :like, searchable: true, orderable: true },
      description:  { source: "Article.description",  cond: :like, nulls_last: true },
      category:      { source: "Article.category" }
    }
  end

  def data
    records.map do |record|
      {
        title: record.title,
        description: record.description,
        category:  record.category,
        DT_RowId:   record.id,
      }
    end
  end

  def get_raw_records
    Article.all
  end

end
