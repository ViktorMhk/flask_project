"""Create users table

Revision ID: 04d5b17128de
Revises: 
Create Date: 2022-05-25 09:02:04.753254

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '04d5b17128de'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    op.create_table(
        "user",
        sa.Column("id", sa.Integer, primary_key=True),
        sa.Column("name", sa.String),
        sa.Column("password", sa.String)
    )

def downgrade():
    pass
