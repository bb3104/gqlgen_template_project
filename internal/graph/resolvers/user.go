package resolvers

import (
	"context"
	"github.com/bb3104/gqlgen_template_project/internal/orm/models"
)

func (r *Resolver) getUsers(ctx context.Context) ([]*models.User, error) {
	users := []*models.User{}
	err := r.DB.Preload("UsersItems").Find(&users).Error

	if err != nil {
		return nil, err
	}

	return users, nil
}
