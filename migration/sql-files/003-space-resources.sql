-- Create space resource table for Keycloak resources associated with spaces
CREATE TABLE space_resources (
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid primary key DEFAULT uuid_generate_v4() NOT NULL,
    space_id uuid NOT NULL,
    owner_id uuid NOT NULL,
    resource_id text NOT NULL,
    policy_id text NOT NULL,
    permission_id text NOT NULL
);

CREATE INDEX space_resources_space_id_idx ON space_resources USING BTREE (space_id);