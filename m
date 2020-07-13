Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 745C821E1B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0125D874EA;
	Mon, 13 Jul 2020 20:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id el7WF-rJqNTa; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7F5B8776D;
	Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 280011BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 242A187701
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bUuxdV1KPpk3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ADBA087513
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:09 +0000 (UTC)
IronPort-SDR: KQLUR+f9pm6AzCE/Y+Gtl/FHdIqIigf82uP0kYgWwccXhte0qA5r2W1gRb9dHXO/eVhlxWxQja
 QztGv7h7zZvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545909"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545909"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: dKT16Zll1gnw6Fz5Z1O5XE10JAdeyYQyT2orvE+nDzZ6bx664AbEtL3QnTgDCkaYAAEveuITlf
 tlWc4sqLMtEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526686"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:08 -0700
Message-Id: <20200713205318.32425-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 05/15] ice: return correct error code
 from ice_aq_sw_rules
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kiran Patil <kiran.patil@intel.com>

Return ICE_ERR_DOES_NOT_EXIST return code if admin command error code is
ICE_AQ_RC_ENOENT (not exist). ice_aq_sw_rules is used when switch
rule is getting added/deleted/updated. In case of delete/update
switch rule, admin command can return ICE_AQ_RC_ENOENT error code
if such rule does not exist, hence return ICE_ERR_DOES_NOT_EXIST error
code from ice_aq_sw_rule, so that caller of this function can decide
how to handle ICE_ERR_DOES_NOT_EXIST.

Signed-off-by: Kiran Patil <kiran.patil@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ee434b8d794d..cd23c15d6579 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -481,6 +481,7 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
+	enum ice_status status;
 
 	if (opc != ice_aqc_opc_add_sw_rules &&
 	    opc != ice_aqc_opc_update_sw_rules &&
@@ -492,7 +493,12 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 	desc.params.sw_rules.num_rules_fltr_entry_index =
 		cpu_to_le16(num_rules);
-	return ice_aq_send_cmd(hw, &desc, rule_list, rule_list_sz, cd);
+	status = ice_aq_send_cmd(hw, &desc, rule_list, rule_list_sz, cd);
+	if (opc != ice_aqc_opc_add_sw_rules &&
+	    hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
+		status = ICE_ERR_DOES_NOT_EXIST;
+
+	return status;
 }
 
 /* ice_init_port_info - Initialize port_info with switch configuration data
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
