-- 006_create_completed_recipes.sql

-- ============================================
-- COMPLETED RECIPES TABLE
-- 식약처 등에서 크롤링 후 가공된 '완성형 레시피' 저장소
-- ============================================

CREATE TABLE IF NOT EXISTS completed_recipes (
    -- [핵심 수정] recipe_id는 고유해야 하며, 다른 테이블의 참조 대상이 됩니다.
    recipe_id VARCHAR(255) NOT NULL,

    -- 기본 정보
    recipe_name VARCHAR(255) NOT NULL,
    summary TEXT NULL,           -- 요리 간단 소개
    category VARCHAR(100) NULL,  -- 카테고리 (밥, 국, 반찬 등)

-- 상세 정보
    image_url TEXT NULL,         -- 대표 이미지 URL
    cooking_time VARCHAR(50) NULL, -- 조리 시간
    difficulty VARCHAR(50) NULL,   -- 난이도
    servings VARCHAR(50) NULL,     -- 인분 수

-- 재료 및 조리법 (상세 내용은 TEXT나 JSON 형태로 저장한다고 가정)
    ingredients TEXT NULL,       -- 재료 목록
    instructions TEXT NULL,      -- 조리 순서

-- 메타 데이터
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    -- [!!! 중요 !!!] 
    -- 007번 파일에서 이 recipe_id를 참조하려면 반드시 PRIMARY KEY 혹은 UNIQUE여야 합니다.
    PRIMARY KEY (recipe_id)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;