package bacit.web.bacit_web;

import java.text.DecimalFormat;

public class ToolModel {
    private     String toolName;
    private     String toolDescription;
    private     int toolPrice;
    private     int statusID;

public ToolModel(String toolName, String toolDescription, int toolPrice, int statusID) {
    this.toolName = toolName;
    this.toolDescription = toolDescription;
    this.toolPrice = toolPrice;
    this.statusID = statusID;

}
    public String getToolName() { return toolName; }

    public void setToolName(String toolName) {
        this.toolName = toolName;
    }

    public String getToolDescription() {
        return toolDescription;
    }

    public void setToolDescription(String toolDescription) {
        this.toolDescription = toolDescription;
    }

    public int getToolPrice() { return toolPrice; }

    public void setToolPrice(int  toolPrice) { this.toolPrice = toolPrice; }

    public int getToolStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
            this.statusID = statusID;
    }
}
