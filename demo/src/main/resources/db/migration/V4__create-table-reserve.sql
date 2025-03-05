CREATE TABLE reserve (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    book_id UUID REFERENCES book(id) ON DELETE CASCADE,
    member_id UUID REFERENCES member(id) ON DELETE CASCADE,
    booking_date TIMESTAMP NOT NULL,
    queue_position INT NOT NULL
);