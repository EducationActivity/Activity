package com.tryeverything.util;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class BootstrapUiTreeNode implements Serializable {
        private static final long serialVersionUID = 1L;
        static final Logger log = Logger.getLogger(String.valueOf(BootstrapUiTreeNode.class));

        private Integer id;
        private Integer parentId;
        private String text;

        //子叶节点
        private List<BootstrapUiTreeNode> nodes = new ArrayList<>();

        //统计该节点分类下文档的数量
        private List<String> tags = new ArrayList<>(); // tags: ['NUM']

        public BootstrapUiTreeNode(Integer id, Integer parentId, String text) {
            super();
            this.id = id;
            this.parentId = parentId;
            this.text = text;
        }


        public BootstrapUiTreeNode() {
            super();
            this.id = id;
            this.parentId = parentId;
            this.text = text;
            this.nodes = nodes;
        }


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public static Logger getLog() {
        return log;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getText() {
            return text;
        }

        public void setText(String text) {
            this.text = text;
        }

        public List<BootstrapUiTreeNode> getNodes() {
            return nodes;
        }

        public void setNodes(List<BootstrapUiTreeNode> nodes) {
            this.nodes = nodes;
        }


        public List<String> getTags() {
            return tags;
        }


        public void setTags(List<String> tags) {
            this.tags = tags;
        }

}
