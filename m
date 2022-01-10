Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE2948997F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jan 2022 14:12:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 489EA405FC;
	Mon, 10 Jan 2022 13:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id At-7i-D-HMQf; Mon, 10 Jan 2022 13:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 694D6405F2;
	Mon, 10 Jan 2022 13:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 584501BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45350405DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UnRKW6D8omtH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jan 2022 13:11:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B718405F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641820311; x=1673356311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NIjYbC9GhHXvYPLUiDtTvVliYk1pAL78WtOn80c3qRg=;
 b=Z4aNUC2b9kdofLBYnc+AsFlJVIihy+IDNj4WPJfK/ZfOcFMqn6VVH/+a
 YbF6P9IwgUL1rnZ30LbGTEMi3hBwSbJWVgHX16FXTp0skB6LSgCllSEbz
 GXWmFCkoDQ9Wd+vGkblnM4q/DV9gAsIqw+CrHgsfR3t9+Gg48+LYfvaj2
 /d9a+faTJucvP0YXKA6WhYwFaATIELvefyWbBuA+59NyMvygL6/c5YNNm
 eFXoyZ5dItTf41FGnwhZcoBOsd0YcB5tCb6Yv0ME6vpMO6rpeQRrjv9Vp
 itfMXgfvvXHZYLYXpFCuYc0+hIcWFgCU2MCYtq4ep5d4IXwq4gFQ1ny4F Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="240770993"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="240770993"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 05:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="575811985"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2022 05:11:49 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jan 2022 13:11:40 +0000
Message-Id: <20220110131142.8481-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
References: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/4] i40e: Add new version of
 i40e_aq_add_macvlan function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ASQ send command functions are returning only i40e status codes
yet some calling functions also need Admin Queue status
that is stored in hw->aq.asq_last_status. Since hw object
is stored on a heap it introduces a possibility for
a race condition in access to hw if calling function is not
fast enough to read hw->aq.asq_last_status before next
send ASQ command is executed.

Add new _v2 version of i40e_aq_add_macvlan that is using
new _v2 versions of ASQ send command functions and returns
the Admin Queue status on the stack.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 92 +++++++++++++++----
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  5 +
 2 files changed, 80 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index cdd6e5bdbe4f..a15b09b39979 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -2632,33 +2632,28 @@ i40e_status i40e_aq_get_veb_parameters(struct i40e_hw *hw,
 }
 
 /**
- * i40e_aq_add_macvlan
- * @hw: pointer to the hw struct
- * @seid: VSI for the mac address
+ * i40e_prepare_add_macvlan
  * @mv_list: list of macvlans to be added
+ * @desc: pointer to AQ descriptor structure
  * @count: length of the list
- * @cmd_details: pointer to command details structure or NULL
+ * @seid: VSI for the mac address
  *
- * Add MAC/VLAN addresses to the HW filtering
+ * Internal helper function that prepares the add macvlan request
+ * and returns the buffer size.
  **/
-i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
-			struct i40e_aqc_add_macvlan_element_data *mv_list,
-			u16 count, struct i40e_asq_cmd_details *cmd_details)
+static u16
+i40e_prepare_add_macvlan(struct i40e_aqc_add_macvlan_element_data *mv_list,
+			 struct i40e_aq_desc *desc, u16 count, u16 seid)
 {
-	struct i40e_aq_desc desc;
 	struct i40e_aqc_macvlan *cmd =
-		(struct i40e_aqc_macvlan *)&desc.params.raw;
-	i40e_status status;
+		(struct i40e_aqc_macvlan *)&desc->params.raw;
 	u16 buf_size;
 	int i;
 
-	if (count == 0 || !mv_list || !hw)
-		return I40E_ERR_PARAM;
-
 	buf_size = count * sizeof(*mv_list);
 
 	/* prep the rest of the request */
-	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_macvlan);
+	i40e_fill_default_direct_cmd_desc(desc, i40e_aqc_opc_add_macvlan);
 	cmd->num_addresses = cpu_to_le16(count);
 	cmd->seid[0] = cpu_to_le16(I40E_AQC_MACVLAN_CMD_SEID_VALID | seid);
 	cmd->seid[1] = 0;
@@ -2669,9 +2664,36 @@ i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 			mv_list[i].flags |=
 			       cpu_to_le16(I40E_AQC_MACVLAN_ADD_USE_SHARED_MAC);
 
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc->flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
 	if (buf_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc->flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+
+	return buf_size;
+}
+
+/**
+ * i40e_aq_add_macvlan
+ * @hw: pointer to the hw struct
+ * @seid: VSI for the mac address
+ * @mv_list: list of macvlans to be added
+ * @count: length of the list
+ * @cmd_details: pointer to command details structure or NULL
+ *
+ * Add MAC/VLAN addresses to the HW filtering
+ **/
+i40e_status
+i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
+		    struct i40e_aqc_add_macvlan_element_data *mv_list,
+		    u16 count, struct i40e_asq_cmd_details *cmd_details)
+{
+	struct i40e_aq_desc desc;
+	i40e_status status;
+	u16 buf_size;
+
+	if (count == 0 || !mv_list || !hw)
+		return I40E_ERR_PARAM;
+
+	buf_size = i40e_prepare_add_macvlan(mv_list, &desc, count, seid);
 
 	status = i40e_asq_send_command(hw, &desc, mv_list, buf_size,
 				       cmd_details);
@@ -2679,6 +2701,42 @@ i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 	return status;
 }
 
+/**
+ * i40e_aq_add_macvlan_v2
+ * @hw: pointer to the hw struct
+ * @seid: VSI for the mac address
+ * @mv_list: list of macvlans to be added
+ * @count: length of the list
+ * @cmd_details: pointer to command details structure or NULL
+ * @aq_status: pointer to Admin Queue status return value
+ *
+ * Add MAC/VLAN addresses to the HW filtering.
+ * The _v2 version returns the last Admin Queue status in aq_status
+ * to avoid race conditions in access to hw->aq.asq_last_status.
+ * It also calls _v2 versions of asq_send_command functions to
+ * get the aq_status on the stack.
+ **/
+i40e_status
+i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
+		       struct i40e_aqc_add_macvlan_element_data *mv_list,
+		       u16 count, struct i40e_asq_cmd_details *cmd_details,
+		       enum i40e_admin_queue_err *aq_status)
+{
+	struct i40e_aq_desc desc;
+	i40e_status status;
+	u16 buf_size;
+
+	if (count == 0 || !mv_list || !hw)
+		return I40E_ERR_PARAM;
+
+	buf_size = i40e_prepare_add_macvlan(mv_list, &desc, count, seid);
+
+	status = i40e_asq_send_command_atomic_v2(hw, &desc, mv_list, buf_size,
+						 cmd_details, true, aq_status);
+
+	return status;
+}
+
 /**
  * i40e_aq_remove_macvlan
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 4ace56a911d9..ebdcde6f1aeb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -165,6 +165,11 @@ i40e_status i40e_aq_get_veb_parameters(struct i40e_hw *hw,
 i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 vsi_id,
 			struct i40e_aqc_add_macvlan_element_data *mv_list,
 			u16 count, struct i40e_asq_cmd_details *cmd_details);
+i40e_status
+i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
+		       struct i40e_aqc_add_macvlan_element_data *mv_list,
+		       u16 count, struct i40e_asq_cmd_details *cmd_details,
+		       enum i40e_admin_queue_err *aq_status);
 i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 vsi_id,
 			struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			u16 count, struct i40e_asq_cmd_details *cmd_details);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
