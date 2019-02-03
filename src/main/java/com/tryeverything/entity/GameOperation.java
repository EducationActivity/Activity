package com.tryeverything.entity;

import java.io.Serializable;

public class GameOperation implements Serializable {
    private Integer id;
    private Integer gameId;
    private Integer operationId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    public Integer getOperationId() {
        return operationId;
    }

    public void setOperationId(Integer operationId) {
        this.operationId = operationId;
    }

    @Override
    public String toString() {
        return "GameOperation{" +
                "id=" + id +
                ", gameId=" + gameId +
                ", operationId=" + operationId +
                '}';
    }
}
