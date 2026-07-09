import { Column, ForeignKeyColumn, Index, PrimaryColumn, Table } from '@immich/sql-tools';
import { AssetTable } from 'src/schema/tables/asset.table';

@Table({ name: 'smart_search_video' })
@Index({
  name: 'clip_video_index',
  using: 'hnsw',
  expression: `embedding vector_cosine_ops`,
  with: `ef_construction = 300, m = 16`,
  synchronize: false,
})
export class SmartSearchVideoTable {
  @ForeignKeyColumn(() => AssetTable, {
    onDelete: 'CASCADE',
    primary: true,
    // [assetId, frameIndex] is the PK constraint
    index: false,
  })
  assetId!: string;

  @PrimaryColumn({ type: 'integer' })
  frameIndex!: number;

  @Column({ type: 'integer' })
  timestamp!: number;

  @Column({ type: 'vector', length: 512, storage: 'external', synchronize: false })
  embedding!: string;
}
