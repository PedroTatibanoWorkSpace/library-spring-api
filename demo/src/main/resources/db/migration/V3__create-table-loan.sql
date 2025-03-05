CREATE TABLE loan(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    book_id UUID REFERENCES book(id) ON DELETE CASCADE,
    member_id UUID REFERENCES member(id) ON DELETE CASCADE,
    loan_date DATE NOT NULL,
    expected_return_date DATE NOT NULL,
    real_return_date DATE,
    fine DECIMAL(10, 2) DEFAULT 0.0
);