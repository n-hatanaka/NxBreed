CREATE TABLE "individuals" (
  "cow_id" int PRIMARY KEY,
  "ear_tag" varchar,
  "gender" boolean,
  "nickname" varchar,
  "father_name" varchar,
  "mother_name" varchar,
  "birth_date" datetime,
  "remarks" varchar,
  "is_deceased" boolean,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "workitems" (
  "work_id" int PRIMARY KEY,
  "work_name" varchar,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "workerlist" (
  "worker_id" int PRIMARY KEY,
  "worker_name" varchar,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "semen_embryo_list" (
  "sem_emb_id" int PRIMARY KEY,
  "sem_emb_name" varchar,
  "stock_count" int,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "semen_embryo_buy_history" (
  "buy_id" int PRIMARY KEY,
  "buy_day" datetime,
  "sem_emb_id" int,
  "sem_emb_name" varchar,
  "buy_count" int,
  "written_by" uuid,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "aiet_history" (
  "aihist_id" int PRIMARY KEY,
  "insemination_date" datetime,
  "cow_id" int,
  "worker_id" int,
  "sem_emb_id" int,
  "work_id" int,
  "written_by" uuid,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "pregnancy_history" (
  "pregnancy_id" int PRIMARY KEY,
  "record_date" datetime,
  "cow_id" int,
  "ai_record_id" int,
  "is_pregnant" boolean,
  "remarks" varchar,
  "written_by" uuid,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "estrus_schedule" (
  "est_sche_id" int PRIMARY KEY,
  "est_sche_date" datetime,
  "cow_id" int,
  "record_id" int,
  "work_id" int,
  "planned_date" datetime,
  "remarks" varchar,
  "written_by" uuid,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "estrus_history" (
  "est_his_id" int PRIMARY KEY,
  "est_his_date" datetime,
  "cow_id" int,
  "work_id" int,
  "next_estrus_date" datetime,
  "remarks" varchar,
  "written_by" uuid,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

CREATE TABLE "delivery_history" (
  "delivery_id" int PRIMARY KEY,
  "delivery_date" datetime,
  "cow_id" int,
  "work_id" int,
  "calf_ear_tag" varchar,
  "sex" boolean,
  "remarks" varchar,
  "written_by" uuid,
  "updated_at" datetime,
  "locked_by" uuid,
  "locked_at" datetime,
  "tenant_code" uuid
);

COMMENT ON COLUMN "individuals"."cow_id" IS '個体ID';

COMMENT ON COLUMN "individuals"."ear_tag" IS '耳標';

COMMENT ON COLUMN "individuals"."gender" IS '性別';

COMMENT ON COLUMN "individuals"."nickname" IS '名号';

COMMENT ON COLUMN "individuals"."father_name" IS '父';

COMMENT ON COLUMN "individuals"."mother_name" IS '母';

COMMENT ON COLUMN "individuals"."birth_date" IS '生年月日';

COMMENT ON COLUMN "individuals"."remarks" IS '備考';

COMMENT ON COLUMN "individuals"."is_deceased" IS '死亡・転出';

COMMENT ON COLUMN "workitems"."work_id" IS 'ID';

COMMENT ON COLUMN "workitems"."work_name" IS '作業名';

COMMENT ON COLUMN "workerlist"."worker_id" IS '作業者ID';

COMMENT ON COLUMN "workerlist"."worker_name" IS '作業者名';

COMMENT ON COLUMN "semen_embryo_list"."sem_emb_id" IS 'ID';

COMMENT ON COLUMN "semen_embryo_list"."sem_emb_name" IS '精液名';

COMMENT ON COLUMN "semen_embryo_list"."stock_count" IS '在庫';

COMMENT ON COLUMN "semen_embryo_buy_history"."buy_id" IS '購入記録ID';

COMMENT ON COLUMN "aiet_history"."aihist_id" IS 'No';

COMMENT ON COLUMN "aiet_history"."insemination_date" IS '日';

COMMENT ON COLUMN "aiet_history"."cow_id" IS '個体ID';

COMMENT ON COLUMN "aiet_history"."worker_id" IS '作業者ID';

COMMENT ON COLUMN "aiet_history"."sem_emb_id" IS 'sem_emb_id';

COMMENT ON COLUMN "aiet_history"."work_id" IS 'workItemsID';

COMMENT ON COLUMN "pregnancy_history"."pregnancy_id" IS 'ID';

COMMENT ON COLUMN "pregnancy_history"."record_date" IS '日';

COMMENT ON COLUMN "pregnancy_history"."cow_id" IS '個体ID';

COMMENT ON COLUMN "pregnancy_history"."ai_record_id" IS 'AI/ET記録ID';

COMMENT ON COLUMN "pregnancy_history"."is_pregnant" IS '妊娠';

COMMENT ON COLUMN "pregnancy_history"."remarks" IS '備考';

COMMENT ON COLUMN "estrus_schedule"."est_sche_id" IS 'データID';

COMMENT ON COLUMN "estrus_schedule"."est_sche_date" IS '日';

COMMENT ON COLUMN "estrus_schedule"."cow_id" IS '個体ID';

COMMENT ON COLUMN "estrus_schedule"."record_id" IS '記録ID';

COMMENT ON COLUMN "estrus_schedule"."work_id" IS '作業ID';

COMMENT ON COLUMN "estrus_schedule"."planned_date" IS '予定';

COMMENT ON COLUMN "estrus_schedule"."remarks" IS '備考';

COMMENT ON COLUMN "estrus_history"."est_his_id" IS 'ID';

COMMENT ON COLUMN "estrus_history"."est_his_date" IS '日';

COMMENT ON COLUMN "estrus_history"."cow_id" IS '個体ID';

COMMENT ON COLUMN "estrus_history"."work_id" IS '作業ID';

COMMENT ON COLUMN "estrus_history"."next_estrus_date" IS '次回発情';

COMMENT ON COLUMN "estrus_history"."remarks" IS '備考';

COMMENT ON COLUMN "delivery_history"."delivery_id" IS 'ID';

COMMENT ON COLUMN "delivery_history"."delivery_date" IS '日';

COMMENT ON COLUMN "delivery_history"."cow_id" IS '個体ID';

COMMENT ON COLUMN "delivery_history"."work_id" IS '作業ID';

COMMENT ON COLUMN "delivery_history"."calf_ear_tag" IS '子牛耳票';

COMMENT ON COLUMN "delivery_history"."sex" IS '雌雄';

COMMENT ON COLUMN "delivery_history"."remarks" IS '備考';
