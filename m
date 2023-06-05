Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9024721DA4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CB1440996;
	Mon,  5 Jun 2023 05:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CB1440996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944112;
	bh=mI4+0lCTdGnLzMfjtjY9uD9WHM7bv4BqhpFYa5xznpQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=so3opazCL9UgtROI9xY4l6G4yCMu89HW3BPRw334Tp3062LA64UIdobInSm5FXtJj
	 M+k3GZu2+uC0OLkQdxDxMUobnVk+/Pe4ixExHHAD2wXgEITs7SKKmGvMWs4wxnlunt
	 oV1wguRuho8rGREPF0sVSaTw7/lxJtuiNTJkOB9/d7x/Xnvi8axlbaXdPXMPqEGUFd
	 Ub3zhfULq8uuWb0vsTcrUz2KQNHCj9WgCOExgAmJQwV4GVO6E/61+AEJZTDuOvLYfb
	 cRJqRabuMRz+TJ/z0Eq5/vuxVMjwZyL4T1bRmeJ9/K9ga5WRfgBGWPTEFGOUfWmfp0
	 NmmtwK9DhEIuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OWLHU6JNHGV7; Mon,  5 Jun 2023 05:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDF7540967;
	Mon,  5 Jun 2023 05:48:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDF7540967
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F193F1BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CABCE4040D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CABCE4040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8gY7ZckwuS0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61F1240114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61F1240114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831850"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831850"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581388"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581388"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:02 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:30 +0800
Message-Id: <20230605054641.2865142-5-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944084; x=1717480084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0dG9g22gxhBY8js/hoccyNBuqw7XM0NIXdN0707mX4=;
 b=ddBVi3MuSeneeW8WqobiRH1H1pS2W+wwZ0uQasHhBTU/KyvkicC+RRyw
 2budZ6qBPbDqQY/3Vj6pUCD1pcJ8Q5vFX/SRY0PAUvDM8mCdVm1wIOxJ4
 kNYIu8Gkeg1Alskv3iE8D6Br8R44vP5Cc70vPFVdOefx2H/lleHeDmbQ9
 BzG9tPYzp203ZK5iqOc2jxuMID8pS0OfuWLTR6+q88lAQNfjYGF26sTi6
 UaRwPywkzlRTXB+YixFG9wEbDtXg5fdLTAeF3FrmLv5jOZgBDTZGJnuJh
 H/bY0qwkw816303FKz4IX+phXTnms24HQbKDDCYYTpJtfKaJ5lSaZfjMr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ddBVi3Mu
Subject: [Intel-wired-lan] [PATCH iwl-next v2 04/15] ice: init parse graph
 cam table for parser
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Parse DDP section ICE_SID_RXPARSER_CAM or ICE_SID_RXPARSER_PG_SPILL
into an array of struct ice_pg_cam_item.
Parse DDP section ICE_SID_RXPARSER_NOMATCH_CAM or
ICE_SID_RXPARSER_NOMATCH_SPILL into an array of struct ice_pg_nm_cam_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c |  44 +++
 drivers/net/ethernet/intel/ice/ice_parser.h |  12 +
 drivers/net/ethernet/intel/ice/ice_pg_cam.c | 300 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_pg_cam.h |  67 +++++
 4 files changed, 423 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index a1f28395c1a9..22c2382ae9e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -7,6 +7,10 @@
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
 #define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
+#define ICE_SID_RXPARSER_CAM_ENTRY_SIZE			16
+#define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE		17
+#define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
+#define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
 
 /**
  * ice_parser_sect_item_get - parse a item from a section
@@ -32,6 +36,18 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_METADATA_INIT:
 		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_CAM:
+		size = ICE_SID_RXPARSER_CAM_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_PG_SPILL:
+		size = ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_NOMATCH_CAM:
+		size = ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_NOMATCH_SPILL:
+		size = ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -127,6 +143,30 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->pg_cam_table = ice_pg_cam_table_get(hw);
+	if (!p->pg_cam_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->pg_sp_cam_table = ice_pg_sp_cam_table_get(hw);
+	if (!p->pg_sp_cam_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->pg_nm_cam_table = ice_pg_nm_cam_table_get(hw);
+	if (!p->pg_nm_cam_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->pg_nm_sp_cam_table = ice_pg_nm_sp_cam_table_get(hw);
+	if (!p->pg_nm_sp_cam_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -142,6 +182,10 @@ void ice_parser_destroy(struct ice_parser *psr)
 {
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_cam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_sp_cam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_cam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 8fcc10479260..1f699ef12387 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -4,6 +4,10 @@
 #ifndef _ICE_PARSER_H_
 #define _ICE_PARSER_H_
 
+#include "ice_metainit.h"
+#include "ice_imem.h"
+#include "ice_pg_cam.h"
+
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
 
@@ -11,6 +15,14 @@ struct ice_parser {
 	struct ice_imem_item *imem_table;
 	/* load data from section ICE_SID_RXPARSER_METADATA_INIT */
 	struct ice_metainit_item *mi_table;
+	/* load data from section ICE_SID_RXPARSER_CAM */
+	struct ice_pg_cam_item *pg_cam_table;
+	/* load data from section ICE_SID_RXPARSER_PG_SPILL */
+	struct ice_pg_cam_item *pg_sp_cam_table;
+	/* load data from section ICE_SID_RXPARSER_NOMATCH_CAM */
+	struct ice_pg_nm_cam_item *pg_nm_cam_table;
+	/* load data from section ICE_SID_RXPARSER_NOMATCH_SPILL */
+	struct ice_pg_nm_cam_item *pg_nm_sp_cam_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.c b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
new file mode 100644
index 000000000000..25b837ba684c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
@@ -0,0 +1,300 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+static void _pg_cam_key_dump(struct ice_hw *hw, struct ice_pg_cam_key *key)
+{
+	dev_info(ice_hw_to_dev(hw), "key:\n");
+	dev_info(ice_hw_to_dev(hw), "\tvalid = %d\n", key->valid);
+	dev_info(ice_hw_to_dev(hw), "\tnode_id = %d\n", key->node_id);
+	dev_info(ice_hw_to_dev(hw), "\tflag0 = %d\n", key->flag0);
+	dev_info(ice_hw_to_dev(hw), "\tflag1 = %d\n", key->flag1);
+	dev_info(ice_hw_to_dev(hw), "\tflag2 = %d\n", key->flag2);
+	dev_info(ice_hw_to_dev(hw), "\tflag3 = %d\n", key->flag3);
+	dev_info(ice_hw_to_dev(hw), "\tboost_idx = %d\n", key->boost_idx);
+	dev_info(ice_hw_to_dev(hw), "\talu_reg = 0x%04x\n", key->alu_reg);
+	dev_info(ice_hw_to_dev(hw), "\tnext_proto = 0x%08x\n",
+		 key->next_proto);
+}
+
+static void _pg_nm_cam_key_dump(struct ice_hw *hw,
+				struct ice_pg_nm_cam_key *key)
+{
+	dev_info(ice_hw_to_dev(hw), "key:\n");
+	dev_info(ice_hw_to_dev(hw), "\tvalid = %d\n", key->valid);
+	dev_info(ice_hw_to_dev(hw), "\tnode_id = %d\n", key->node_id);
+	dev_info(ice_hw_to_dev(hw), "\tflag0 = %d\n", key->flag0);
+	dev_info(ice_hw_to_dev(hw), "\tflag1 = %d\n", key->flag1);
+	dev_info(ice_hw_to_dev(hw), "\tflag2 = %d\n", key->flag2);
+	dev_info(ice_hw_to_dev(hw), "\tflag3 = %d\n", key->flag3);
+	dev_info(ice_hw_to_dev(hw), "\tboost_idx = %d\n", key->boost_idx);
+	dev_info(ice_hw_to_dev(hw), "\talu_reg = 0x%04x\n", key->alu_reg);
+}
+
+static void _pg_cam_action_dump(struct ice_hw *hw,
+				struct ice_pg_cam_action *action)
+{
+	dev_info(ice_hw_to_dev(hw), "action:\n");
+	dev_info(ice_hw_to_dev(hw), "\tnext_node = %d\n", action->next_node);
+	dev_info(ice_hw_to_dev(hw), "\tnext_pc = %d\n", action->next_pc);
+	dev_info(ice_hw_to_dev(hw), "\tis_pg = %d\n", action->is_pg);
+	dev_info(ice_hw_to_dev(hw), "\tproto_id = %d\n", action->proto_id);
+	dev_info(ice_hw_to_dev(hw), "\tis_mg = %d\n", action->is_mg);
+	dev_info(ice_hw_to_dev(hw), "\tmarker_id = %d\n", action->marker_id);
+	dev_info(ice_hw_to_dev(hw), "\tis_last_round = %d\n",
+		 action->is_last_round);
+	dev_info(ice_hw_to_dev(hw), "\tho_polarity = %d\n",
+		 action->ho_polarity);
+	dev_info(ice_hw_to_dev(hw), "\tho_inc = %d\n", action->ho_inc);
+}
+
+/**
+ * ice_pg_cam_dump - dump an parse graph cam info
+ * @hw: pointer to the hardware structure
+ * @item: parse graph cam to dump
+ */
+void ice_pg_cam_dump(struct ice_hw *hw, struct ice_pg_cam_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	_pg_cam_key_dump(hw, &item->key);
+	_pg_cam_action_dump(hw, &item->action);
+}
+
+/**
+ * ice_pg_nm_cam_dump - dump an parse graph no match cam info
+ * @hw: pointer to the hardware structure
+ * @item: parse graph no match cam to dump
+ */
+void ice_pg_nm_cam_dump(struct ice_hw *hw, struct ice_pg_nm_cam_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	_pg_nm_cam_key_dump(hw, &item->key);
+	_pg_cam_action_dump(hw, &item->action);
+}
+
+/** The function parses a 55 bits Parse Graph CAM Action with below format:
+ *  BIT 0-11:	Next Node ID (action->next_node)
+ *  BIT 12-19:	Next PC (action->next_pc)
+ *  BIT 20:	Is Protocol Group (action->is_pg)
+ *  BIT 21-23:	reserved
+ *  BIT 24-31:	Protocol ID (action->proto_id)
+ *  BIT 32:	Is Marker Group (action->is_mg)
+ *  BIT 33-40:	Marker ID (action->marker_id)
+ *  BIT 41:	Is Last Round (action->is_last_round)
+ *  BIT 42:	Header Offset Polarity (action->ho_poloarity)
+ *  BIT 43-51:	Header Offset Inc (action->ho_inc)
+ *  BIT 52-54:	reserved
+ */
+static void _pg_cam_action_init(struct ice_pg_cam_action *action, u64 data)
+{
+	action->next_node = (u16)(data & 0x7ff);
+	action->next_pc = (u8)((data >> 11) & 0xff);
+	action->is_pg = ((data >> 19) & 0x1) != 0;
+	action->proto_id = ((data >> 23) & 0xff);
+	action->is_mg = ((data >> 31) & 0x1) != 0;
+	action->marker_id = ((data >> 32) & 0xff);
+	action->is_last_round = ((data >> 40) & 0x1) != 0;
+	action->ho_polarity = ((data >> 41) & 0x1) != 0;
+	action->ho_inc = ((data >> 42) & 0x1ff);
+}
+
+/** The function parses a 41 bits Parse Graph NoMatch CAM Key with below format:
+ *  BIT 0:	Valid (key->valid)
+ *  BIT 1-11:	Node ID (key->node_id)
+ *  BIT 12:	Flag 0 (key->flag0)
+ *  BIT 13:	Flag 1 (key->flag1)
+ *  BIT 14:	Flag 2 (key->flag2)
+ *  BIT 15:	Flag 3 (key->flag3)
+ *  BIT 16:	Boost Hit (key->boost_idx to 0 if it is 0)
+ *  BIT 17-24:	Boost Index (key->boost_idx only if Boost Hit is not 0)
+ *  BIT 25-40:	ALU Reg (key->alu_reg)
+ */
+static void _pg_nm_cam_key_init(struct ice_pg_nm_cam_key *key, u64 data)
+{
+	key->valid = (data & 0x1) != 0;
+	key->node_id = (u16)((data >> 1) & 0x7ff);
+	key->flag0 = ((data >> 12) & 0x1) != 0;
+	key->flag1 = ((data >> 13) & 0x1) != 0;
+	key->flag2 = ((data >> 14) & 0x1) != 0;
+	key->flag3 = ((data >> 15) & 0x1) != 0;
+	if ((data >> 16) & 0x1)
+		key->boost_idx = (u8)((data >> 17) & 0xff);
+	else
+		key->boost_idx = 0;
+	key->alu_reg = (u16)((data >> 25) & 0xffff);
+}
+
+/** The function parses a 73 bits Parse Graph CAM Key with below format:
+ *  BIT 0:	Valid (key->valid)
+ *  BIT 1-11:	Node ID (key->node_id)
+ *  BIT 12:	Flag 0 (key->flag0)
+ *  BIT 13:	Flag 1 (key->flag1)
+ *  BIT 14:	Flag 2 (key->flag2)
+ *  BIT 15:	Flag 3 (key->flag3)
+ *  BIT 16:	Boost Hit (key->boost_idx to 0 if it is 0)
+ *  BIT 17-24:	Boost Index (key->boost_idx only if Boost Hit is not 0)
+ *  BIT 25-40:	ALU Reg (key->alu_reg)
+ *  BIT 41-72:	Next Proto Key (key->next_proto)
+ */
+static void _pg_cam_key_init(struct ice_pg_cam_key *key, u8 *data)
+{
+	u64 d64 = *(u64 *)data;
+
+	key->valid = (d64 & 0x1) != 0;
+	key->node_id = (u16)((d64 >> 1) & 0x7ff);
+	key->flag0 = ((d64 >> 12) & 0x1) != 0;
+	key->flag1 = ((d64 >> 13) & 0x1) != 0;
+	key->flag2 = ((d64 >> 14) & 0x1) != 0;
+	key->flag3 = ((d64 >> 15) & 0x1) != 0;
+	if ((d64 >> 16) & 0x1)
+		key->boost_idx = (u8)((d64 >> 17) & 0xff);
+	else
+		key->boost_idx = 0;
+	key->alu_reg = (u16)((d64 >> 25) & 0xffff);
+
+	key->next_proto = (*(u32 *)&data[5] >> 1);
+	key->next_proto |= ((u32)(data[9] & 0x1) << 31);
+}
+
+/** The function parses a 128 bits Parse Graph CAM Entry with below format:
+ *  BIT 0-72:	Key (ci->key)
+ *  BIT 73-127:	Action (ci->action)
+ */
+static void _pg_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+			       void *data, int size)
+{
+	struct ice_pg_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+	d64 = (*(u64 *)&buf[9] >> 1);
+	_pg_cam_key_init(&ci->key, buf);
+	_pg_cam_action_init(&ci->action, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_cam_dump(hw, ci);
+}
+
+/** The function parses a 136 bits Parse Graph Spill CAM Entry with below
+ *  format:
+ *  BIT 0-55:	Action (ci->key)
+ *  BIT 56-135:	Key (ci->action)
+ */
+static void _pg_sp_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				  void *data, int size)
+{
+	struct ice_pg_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+	d64 = *(u64 *)buf;
+	_pg_cam_action_init(&ci->action, d64);
+	_pg_cam_key_init(&ci->key, &buf[7]);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_cam_dump(hw, ci);
+}
+
+/** The function parses a 96 bits Parse Graph NoMatch CAM Entry with below
+ *  format:
+ *  BIT 0-40:	Key (ci->key)
+ *  BIT 41-95:	Action (ci->action)
+ */
+static void _pg_nm_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				  void *data, int size)
+{
+	struct ice_pg_nm_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+	d64 = *(u64 *)buf;
+	_pg_nm_cam_key_init(&ci->key, d64);
+	d64 = (*(u64 *)&buf[5] >> 1);
+	_pg_cam_action_init(&ci->action, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_nm_cam_dump(hw, ci);
+}
+
+/** The function parses a 104 bits Parse Graph NoMatch Spill CAM Entry with
+ *  below format:
+ *  BIT 0-55:	Key (ci->key)
+ *  BIT 56-103:	Action (ci->action)
+ */
+static void _pg_nm_sp_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				     void *data, int size)
+{
+	struct ice_pg_nm_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+	d64 = *(u64 *)buf;
+	_pg_cam_action_init(&ci->action, d64);
+	d64 = *(u64 *)&buf[7];
+	_pg_nm_cam_key_init(&ci->key, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_nm_cam_dump(hw, ci);
+}
+
+/**
+ * ice_pg_cam_table_get - create a parse graph cam table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw)
+{
+	return (struct ice_pg_cam_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_CAM,
+					sizeof(struct ice_pg_cam_item),
+					ICE_PG_CAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_pg_cam_parse_item);
+}
+
+/**
+ * ice_pg_sp_cam_table_get - create a parse graph spill cam table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw)
+{
+	return (struct ice_pg_cam_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_PG_SPILL,
+					sizeof(struct ice_pg_cam_item),
+					ICE_PG_SP_CAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_pg_sp_cam_parse_item);
+}
+
+/**
+ * ice_pg_nm_cam_table_get - create a parse graph no match cam table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw)
+{
+	return (struct ice_pg_nm_cam_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_NOMATCH_CAM,
+					sizeof(struct ice_pg_nm_cam_item),
+					ICE_PG_NM_CAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_pg_nm_cam_parse_item);
+}
+
+/**
+ * ice_pg_nm_sp_cam_table_get - create a parse graph no match spill cam table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
+{
+	return (struct ice_pg_nm_cam_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_NOMATCH_SPILL,
+					sizeof(struct ice_pg_nm_cam_item),
+					ICE_PG_NM_SP_CAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_pg_nm_sp_cam_parse_item);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.h b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
new file mode 100644
index 000000000000..1d794fa519d6
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_PG_CAM_H_
+#define _ICE_PG_CAM_H_
+
+#define ICE_PG_CAM_TABLE_SIZE		2048
+#define ICE_PG_SP_CAM_TABLE_SIZE	128
+#define ICE_PG_NM_CAM_TABLE_SIZE	1024
+#define ICE_PG_NM_SP_CAM_TABLE_SIZE	64
+
+struct ice_pg_cam_key {
+	bool valid;
+	u16 node_id;
+	bool flag0;
+	bool flag1;
+	bool flag2;
+	bool flag3;
+	u8 boost_idx;
+	u16 alu_reg;
+	u32 next_proto;
+};
+
+struct ice_pg_nm_cam_key {
+	bool valid;
+	u16 node_id;
+	bool flag0;
+	bool flag1;
+	bool flag2;
+	bool flag3;
+	u8 boost_idx;
+	u16 alu_reg;
+};
+
+struct ice_pg_cam_action {
+	u16 next_node;
+	u8 next_pc;
+	bool is_pg;
+	u8 proto_id;
+	bool is_mg;
+	u8 marker_id;
+	bool is_last_round;
+	bool ho_polarity;
+	u16 ho_inc;
+};
+
+struct ice_pg_cam_item {
+	u16 idx;
+	struct ice_pg_cam_key key;
+	struct ice_pg_cam_action action;
+};
+
+struct ice_pg_nm_cam_item {
+	u16 idx;
+	struct ice_pg_nm_cam_key key;
+	struct ice_pg_cam_action action;
+};
+
+void ice_pg_cam_dump(struct ice_hw *hw, struct ice_pg_cam_item *item);
+void ice_pg_nm_cam_dump(struct ice_hw *hw, struct ice_pg_nm_cam_item *item);
+
+struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw);
+struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw);
+
+struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw);
+struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw);
+#endif /* _ICE_PG_CAM_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
