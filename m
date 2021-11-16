Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B068B4532AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 14:13:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E6944046F;
	Tue, 16 Nov 2021 13:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FdGR4-zLV5e; Tue, 16 Nov 2021 13:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07A91401D4;
	Tue, 16 Nov 2021 13:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE4041BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 13:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9197401D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 13:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6iI1CSAk4mh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 13:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A37504018A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 13:13:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="297111509"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="297111509"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 05:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="586105642"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Nov 2021 05:13:37 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Nov 2021 13:13:29 +0000
Message-Id: <20211116131329.626045-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
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
Cc: Dawid Lukwinski <dawid.lukwinski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i40e_asq_send_command will now use a non blocking
usleep_range if possible (non-atomic context), instead of busy-waiting
udelay. The usleep_range function uses hrtimers to provide better
performance and remove the negative impact of busy-waiting in
time-critical environments.

1. Rename i40e_asq_send_command to i40e_asq_send_command_atomic
   and add 5th parameter to inform if called from an atomic context.
   Call inside usleep_range (if non-atomic) or udelay (if atomic).

2. Change i40e_asq_send_command to invoke
   i40e_asq_send_command_atomic(..., false).

3. Change two functions:
    - i40e_aq_set_vsi_uc_promisc_on_vlan
    - i40e_aq_set_vsi_mc_promisc_on_vlan
   to explicitly use i40e_asq_send_command_atomic(..., true)
   instead of i40e_asq_send_command, as they use spinlocks and do some
   work in an atomic context.
   All other calls to i40e_asq_send_command remain unchanged.

Title: Minimize amount of busy-waiting during AQ send
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 29 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_common.c |  6 ++--
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 14 +++++----
 3 files changed, 35 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 593912b17609..7abef88801fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -769,21 +769,22 @@ static bool i40e_asq_done(struct i40e_hw *hw)
 }
 
 /**
- *  i40e_asq_send_command - send command to Admin Queue
+ *  i40e_asq_send_command_atomic - send command to Admin Queue
  *  @hw: pointer to the hw struct
  *  @desc: prefilled descriptor describing the command (non DMA mem)
  *  @buff: buffer to use for indirect commands
  *  @buff_size: size of buffer for indirect commands
  *  @cmd_details: pointer to command details structure
+ *  @is_atomic_context: is the function called in an atomic context?
  *
  *  This is the main send command driver routine for the Admin Queue send
  *  queue.  It runs the queue, cleans the queue, etc
  **/
-i40e_status i40e_asq_send_command(struct i40e_hw *hw,
-				struct i40e_aq_desc *desc,
-				void *buff, /* can be NULL */
-				u16  buff_size,
-				struct i40e_asq_cmd_details *cmd_details)
+i40e_status
+i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+			     void *buff, /* can be NULL */ u16  buff_size,
+			     struct i40e_asq_cmd_details *cmd_details,
+			     bool is_atomic_context)
 {
 	i40e_status status = 0;
 	struct i40e_dma_mem *dma_buff = NULL;
@@ -910,7 +911,12 @@ i40e_status i40e_asq_send_command(struct i40e_hw *hw,
 			 */
 			if (i40e_asq_done(hw))
 				break;
-			udelay(50);
+
+			if (is_atomic_context)
+				udelay(50);
+			else
+				usleep_range(40, 60);
+
 			total_delay += 50;
 		} while (total_delay < hw->aq.asq_cmd_timeout);
 	}
@@ -967,6 +973,15 @@ i40e_status i40e_asq_send_command(struct i40e_hw *hw,
 	return status;
 }
 
+i40e_status
+i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+		      void *buff, /* can be NULL */ u16  buff_size,
+		      struct i40e_asq_cmd_details *cmd_details)
+{
+	return i40e_asq_send_command_atomic(hw, desc, buff, buff_size,
+					    cmd_details, false);
+}
+
 /**
  *  i40e_fill_default_direct_cmd_desc - AQ descriptor helper function
  *  @desc:     pointer to the temp descriptor (non DMA mem)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index b4d3fed0d2f2..f81a674c8d40 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -2073,7 +2073,8 @@ enum i40e_status_code i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
 	cmd->seid = cpu_to_le16(seid);
 	cmd->vlan_tag = cpu_to_le16(vid | I40E_AQC_SET_VSI_VLAN_VALID);
 
-	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, NULL, 0,
+					      cmd_details, true);
 
 	return status;
 }
@@ -2114,7 +2115,8 @@ enum i40e_status_code i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
 	cmd->seid = cpu_to_le16(seid);
 	cmd->vlan_tag = cpu_to_le16(vid | I40E_AQC_SET_VSI_VLAN_VALID);
 
-	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, NULL, 0,
+					      cmd_details, true);
 
 	return status;
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index aaea297640e0..9241b6005ad3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -22,11 +22,15 @@ void i40e_adminq_init_ring_data(struct i40e_hw *hw);
 i40e_status i40e_clean_arq_element(struct i40e_hw *hw,
 					     struct i40e_arq_event_info *e,
 					     u16 *events_pending);
-i40e_status i40e_asq_send_command(struct i40e_hw *hw,
-				struct i40e_aq_desc *desc,
-				void *buff, /* can be NULL */
-				u16  buff_size,
-				struct i40e_asq_cmd_details *cmd_details);
+i40e_status
+i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+		      void *buff, /* can be NULL */ u16  buff_size,
+		      struct i40e_asq_cmd_details *cmd_details);
+i40e_status
+i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+			     void *buff, /* can be NULL */ u16  buff_size,
+			     struct i40e_asq_cmd_details *cmd_details,
+			     bool is_atomic_context);
 
 /* debug function for adminq */
 void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,

base-commit: 12d9cd00f10317ab4e34e150f2137f3061ecaa8f
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
