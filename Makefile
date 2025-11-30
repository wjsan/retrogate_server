PB_OUT_DIR=lib/generated
PB_PATH=../retrogate_protos
PB_ERRORS_DIR=../retrogate_protos/errors/proto/v1/*.proto
PB_CONFIG_DIR=../retrogate_protos/config/proto/v1/*.proto
PB_GAME_DIR=../retrogate_protos/game/proto/v1/*.proto
PB_INSTALLER_DIR=../retrogate_protos/installer/proto/v1/*.proto
PB_SHORTCUT_DIR=../retrogate_protos/shortcut/proto/v1/*.proto
PB_STEAM_GRID_DIR=../retrogate_protos/steam_grid/proto/v1/*.proto

gen:
	protoc --dart_out=grpc:$(PB_OUT_DIR) -I$(PB_ERRORS_DIR) $(PB_ERRORS_DIR) --proto_path=$(PB_PATH)
	protoc --dart_out=grpc:$(PB_OUT_DIR) -I$(PB_CONFIG_DIR) $(PB_CONFIG_DIR) --proto_path=$(PB_PATH)
	protoc --dart_out=grpc:$(PB_OUT_DIR) -I$(PB_GAME_DIR) $(PB_GAME_DIR) --proto_path=$(PB_PATH)
	protoc --dart_out=grpc:$(PB_OUT_DIR) -I$(PB_INSTALLER_DIR) $(PB_INSTALLER_DIR) --proto_path=$(PB_PATH)
	protoc --dart_out=grpc:$(PB_OUT_DIR) -I$(PB_SHORTCUT_DIR) $(PB_SHORTCUT_DIR) --proto_path=$(PB_PATH)
	protoc --dart_out=grpc:$(PB_OUT_DIR) -I$(PB_STEAM_GRID_DIR) $(PB_STEAM_GRID_DIR) --proto_path=$(PB_PATH)

run:
	@echo Running server with protobuf field names enabled
	dart run --define=protobuf.omit_field_names=false bin/retrogate_server.dart