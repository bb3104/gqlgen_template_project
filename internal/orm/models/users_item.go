package models

import (
	"time"
)

type UsersItem struct {
	ID        int
	UserID    int
	Name      string
	CreatedAt time.Time
	UpdatedAt time.Time
}
