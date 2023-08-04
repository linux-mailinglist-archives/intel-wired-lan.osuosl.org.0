Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 386BE77009B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 14:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2ED04162C;
	Fri,  4 Aug 2023 12:57:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2ED04162C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691153872;
	bh=2GFl9lOFEKDPgtL/wJ7lMIg4qmDXA5ziw9G+V7Fvk0M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iGcf4IndoHowzOWpQN5qfmT+8R4LFq/eJiw4HL3hccBGnaAnxKFaw/Z4/4q4vRWJq
	 3TECNxoajBVt1Ud+M9I1tP0Kx7zMXH95LOg5zd/yC+pZ8Emn7jNSBx2lhWEJy1Nk5U
	 v1EAR/+3DSiGvRCPy+QBtQlpOwIHqG7qPN75SLJNb8u+g5hAhHXCNAOAvf9oNYJBbq
	 qWKFn2OOjKBB27dxiwslDDLCPK176Wc5bsRzEtv90bonsxuv2VwAxXn9Adyd9PJIea
	 ToeM0u5coGk5UMxW2ClAOQb4mgU1dBPWyucW0dJOSa3mqMKrN/hrYxhPxOWAdHpgsP
	 vA0Xl4eDY+8pA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 03_xgOEf_Hyj; Fri,  4 Aug 2023 12:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B74241620;
	Fri,  4 Aug 2023 12:57:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B74241620
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD2021BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 12:57:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E19E821B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 12:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E19E821B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpdPUjZlIHVO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 12:57:13 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 044D08141D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 12:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 044D08141D
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RHQgk2jxzzrS4X;
 Fri,  4 Aug 2023 20:56:02 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 20:57:07 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <jan.sokolowski@intel.com>
Date: Fri, 4 Aug 2023 20:55:25 +0800
Message-ID: <20230804125525.20244-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] i40e: Remove unused function
 declarations
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
Cc: netdev@vger.kernel.org, yuehaibing@huawei.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit f62b5060d670 ("i40e: fix mac address checking") left behind
i40e_validate_mac_addr() declaration.
Also the other declarations are declared but never implemented in
commit 56a62fc86895 ("i40e: init code and hardware support").

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 .../net/ethernet/intel/i40e/i40e_prototype.h    | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index fe845987d99a..3eeee224f1fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -18,7 +18,6 @@
 /* adminq functions */
 int i40e_init_adminq(struct i40e_hw *hw);
 void i40e_shutdown_adminq(struct i40e_hw *hw);
-void i40e_adminq_init_ring_data(struct i40e_hw *hw);
 int i40e_clean_arq_element(struct i40e_hw *hw,
 			   struct i40e_arq_event_info *e,
 			   u16 *events_pending);
@@ -51,7 +50,6 @@ i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
 void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
 		   void *desc, void *buffer, u16 buf_len);
 
-void i40e_idle_aq(struct i40e_hw *hw);
 bool i40e_check_asq_alive(struct i40e_hw *hw);
 int i40e_aq_queue_shutdown(struct i40e_hw *hw, bool unloading);
 const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err);
@@ -117,9 +115,6 @@ int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
 int i40e_aq_get_link_info(struct i40e_hw *hw,
 			  bool enable_lse, struct i40e_link_status *link,
 			  struct i40e_asq_cmd_details *cmd_details);
-int i40e_aq_set_local_advt_reg(struct i40e_hw *hw,
-			       u64 advt_reg,
-			       struct i40e_asq_cmd_details *cmd_details);
 int i40e_aq_send_driver_version(struct i40e_hw *hw,
 				struct i40e_driver_version *dv,
 				struct i40e_asq_cmd_details *cmd_details);
@@ -269,9 +264,6 @@ int i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
 				struct i40e_asq_cmd_details *cmd_details);
 int i40e_aq_dcb_updated(struct i40e_hw *hw,
 			struct i40e_asq_cmd_details *cmd_details);
-int i40e_aq_config_switch_comp_bw_limit(struct i40e_hw *hw,
-					u16 seid, u16 credit, u8 max_bw,
-					struct i40e_asq_cmd_details *cmd_details);
 int i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_configure_vsi_tc_bw_data *bw_data,
 			     struct i40e_asq_cmd_details *cmd_details);
@@ -350,7 +342,6 @@ i40e_aq_configure_partition_bw(struct i40e_hw *hw,
 int i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr);
 int i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
 			 u32 pba_num_size);
-int i40e_validate_mac_addr(u8 *mac_addr);
 void i40e_pre_tx_queue_cfg(struct i40e_hw *hw, u32 queue, bool enable);
 /* prototype for functions used for NVM access */
 int i40e_init_nvm(struct i40e_hw *hw);
@@ -425,14 +416,6 @@ i40e_virtchnl_link_speed(enum i40e_aq_link_speed link_speed)
 /* prototype for functions used for SW locks */
 
 /* i40e_common for VF drivers*/
-void i40e_vf_parse_hw_config(struct i40e_hw *hw,
-			     struct virtchnl_vf_resource *msg);
-int i40e_vf_reset(struct i40e_hw *hw);
-int i40e_aq_send_msg_to_pf(struct i40e_hw *hw,
-			   enum virtchnl_ops v_opcode,
-			   int v_retval,
-			   u8 *msg, u16 msglen,
-			   struct i40e_asq_cmd_details *cmd_details);
 int i40e_set_filter_control(struct i40e_hw *hw,
 			    struct i40e_filter_control_settings *settings);
 int i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
