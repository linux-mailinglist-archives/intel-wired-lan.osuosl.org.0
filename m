Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7E877F3B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:43:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9AD183CB7;
	Thu, 17 Aug 2023 09:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9AD183CB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692265402;
	bh=fkJXC7xe6x8091okGI0QFeklHzOrmI3vXwFEw6z2REg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UDjSnd8DjYKyvC2CixMIlUqRF+RJgUELKrGviNQDDxv/fcV7cXJn1V2bQ5QoScm2M
	 SJGnJbyxQDxF//dEsluU0DafZ00ggmFDKjBgrWiYlQeTldbCeS+FAJxqkVfCX6hfti
	 iHqUvrY1ij068wUC2a2mhk3r40u8WrdT47XKjwK+W2dLHzBEKcjbjH5DlIZzlwFuye
	 d7Ab0EA8JLj+KmvwzUkRiwFh6sJ2N9empKe7fVODrtiAab8pj2dpSQlf1MjtMML/1l
	 MnqbzVtmZSN4dWLG3zKiKZU8rdzs07cYYWUIMGXOFGpKbCpHmJQkFukYqact1RX0Ke
	 4dNzKw1UEQ1MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qwwqvy4tIACs; Thu, 17 Aug 2023 09:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9738C83CAF;
	Thu, 17 Aug 2023 09:43:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9738C83CAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B51271BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8DCD8614BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DCD8614BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGKTFztDh9nU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:43:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44C99614B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44C99614B9
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="370232190"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="370232190"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1065177043"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="1065177043"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 02:43:01 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:42:29 +0800
Message-Id: <20230817094240.2584745-5-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817094240.2584745-1-junfeng.guo@intel.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692265384; x=1723801384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MBL/uLP8y4e420iP1DpyDD84Wn4sK/Y5bDJJCHhLU+U=;
 b=CkvO2my8Vw3Tdb+FWhj9KvdpRb52UGyNO/RqrF9NvhmONFwBEXYcngm+
 ulTA9STVVgBR/5ZpjTz18O6m4+OuFU6k7aVDWQG9iSHaHPN1XvnS5LNjp
 sPVt84suoLHgyKSsuowczwDYa6v2oq8ts8tvMIZzHMJeXktZpVIcsOynt
 RTpz+uyBHE4zrT9q/kuO3UhXV+e07adDspP79teBWywuc9PYNdmNylBmS
 wvym60OVskO0OlkWu45AsbG0HY1tk7eFGefUfH9ZjukuWZQ7QKO10oIF0
 AIMaxqT5JR3e0ogAVcErrBgqjLCk1Zt0hcPaMUsw82+P6TUju0Yr3SlGD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CkvO2my8
Subject: [Intel-wired-lan] [PATCH net-next v4 04/15] ice: init parse graph
 cam tables for parser
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
 drivers/net/ethernet/intel/ice/ice_parser.c |  40 +++
 drivers/net/ethernet/intel/ice/ice_parser.h |  13 +
 drivers/net/ethernet/intel/ice/ice_pg_cam.c | 321 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_pg_cam.h | 136 +++++++++
 4 files changed, 510 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 9520594891d3..ffe58ceb91c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -28,6 +28,18 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
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
@@ -121,6 +133,30 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -136,6 +172,10 @@ void ice_parser_destroy(struct ice_parser *psr)
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
index d6df105bc4ec..a632ed41e64b 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -6,10 +6,15 @@
 
 #include "ice_metainit.h"
 #include "ice_imem.h"
+#include "ice_pg_cam.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
 #define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
+#define ICE_SID_RXPARSER_CAM_ENTRY_SIZE			16
+#define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE		17
+#define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
+#define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -18,6 +23,14 @@ struct ice_parser {
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
index 000000000000..6ed8dc747792
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+static void _ice_pg_cam_key_dump(struct ice_hw *hw, struct ice_pg_cam_key *key)
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
+static void _ice_pg_nm_cam_key_dump(struct ice_hw *hw,
+				    struct ice_pg_nm_cam_key *key)
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
+static void _ice_pg_cam_action_dump(struct ice_hw *hw,
+				    struct ice_pg_cam_action *action)
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
+	_ice_pg_cam_key_dump(hw, &item->key);
+	_ice_pg_cam_action_dump(hw, &item->action);
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
+	_ice_pg_nm_cam_key_dump(hw, &item->key);
+	_ice_pg_cam_action_dump(hw, &item->action);
+}
+
+/** The function parses a 55 bits Parse Graph CAM Action with below format:
+ *  BIT 0-10:	Next Node ID		(action->next_node)
+ *  BIT 11-18:	Next PC			(action->next_pc)
+ *  BIT 19:	Is Protocol Group	(action->is_pg)
+ *  BIT 20-22:	reserved
+ *  BIT 23-30:	Protocol ID		(action->proto_id)
+ *  BIT 31:	Is Marker Group		(action->is_mg)
+ *  BIT 32-39:	Marker ID		(action->marker_id)
+ *  BIT 40:	Is Last Round		(action->is_last_round)
+ *  BIT 41:	Header Offset Polarity	(action->ho_poloarity)
+ *  BIT 42-50:	Header Offset Inc	(action->ho_inc)
+ *  BIT 51-54:	reserved
+ */
+static void _ice_pg_cam_action_init(struct ice_pg_cam_action *action, u64 data)
+{
+	action->next_node	= (u16)(data & ICE_PGCA_NN_M);
+	action->next_pc		= (u8)((data >> ICE_PGCA_NP_S) & ICE_PGCA_NP_M);
+	action->is_pg		= !!((data >> ICE_PGCA_IPG_S) & ICE_PGCA_IPG_M);
+	action->proto_id	= ((data >> ICE_PGCA_PID_S) & ICE_PGCA_PID_M);
+	action->is_mg		= !!((data >> ICE_PGCA_IMG_S) & ICE_PGCA_IMG_M);
+	action->marker_id	= ((data >> ICE_PGCA_MID_S) & ICE_PGCA_MID_M);
+	action->is_last_round	= !!((data >> ICE_PGCA_ILR_S) & ICE_PGCA_ILR_M);
+	action->ho_polarity	= !!((data >> ICE_PGCA_HOP_S) & ICE_PGCA_HOP_M);
+	action->ho_inc		= ((data >> ICE_PGCA_HOI_S) & ICE_PGCA_HOI_M);
+}
+
+/** The function parses a 41 bits Parse Graph NoMatch CAM Key with below format:
+ *  BIT 0:	Valid		(key->valid)
+ *  BIT 1-11:	Node ID		(key->node_id)
+ *  BIT 12:	Flag 0		(key->flag0)
+ *  BIT 13:	Flag 1		(key->flag1)
+ *  BIT 14:	Flag 2		(key->flag2)
+ *  BIT 15:	Flag 3		(key->flag3)
+ *  BIT 16:	Boost Hit	(key->boost_idx to 0 if it is 0)
+ *  BIT 17-24:	Boost Index	(key->boost_idx only if Boost Hit is not 0)
+ *  BIT 25-40:	ALU Reg		(key->alu_reg)
+ */
+static void _ice_pg_nm_cam_key_init(struct ice_pg_nm_cam_key *key, u64 data)
+{
+	key->valid	= !!(data & ICE_PGNCK_VLD_M);
+	key->node_id	= (u16)((data >> ICE_PGNCK_NID_S) & ICE_PGNCK_NID_M);
+	key->flag0	= !!((data >> ICE_PGNCK_F0_S) & ICE_PGNCK_F0_M);
+	key->flag1	= !!((data >> ICE_PGNCK_F1_S) & ICE_PGNCK_F1_M);
+	key->flag2	= !!((data >> ICE_PGNCK_F2_S) & ICE_PGNCK_F2_M);
+	key->flag3	= !!((data >> ICE_PGNCK_F3_S) & ICE_PGNCK_F3_M);
+	if ((data >> ICE_PGNCK_BH_S) & ICE_PGNCK_BH_M)
+		key->boost_idx =
+			(u8)((data >> ICE_PGNCK_BI_S) & ICE_PGNCK_BI_M);
+	else
+		key->boost_idx = 0;
+	key->alu_reg = (u16)((data >> ICE_PGNCK_AR_S) & ICE_PGNCK_AR_M);
+}
+
+/** The function parses a 73 bits Parse Graph CAM Key with below format:
+ *  BIT 0:	Valid		(key->valid)
+ *  BIT 1-11:	Node ID		(key->node_id)
+ *  BIT 12:	Flag 0		(key->flag0)
+ *  BIT 13:	Flag 1		(key->flag1)
+ *  BIT 14:	Flag 2		(key->flag2)
+ *  BIT 15:	Flag 3		(key->flag3)
+ *  BIT 16:	Boost Hit	(key->boost_idx to 0 if it is 0)
+ *  BIT 17-24:	Boost Index	(key->boost_idx only if Boost Hit is not 0)
+ *  BIT 25-40:	ALU Reg		(key->alu_reg)
+ *  BIT 41-72:	Next Proto Key	(key->next_proto)
+ */
+static void _ice_pg_cam_key_init(struct ice_pg_cam_key *key, u8 *data)
+{
+	u64 d64 = *(u64 *)data;
+	u8 idd, off;
+
+	key->valid	= !!(d64 & ICE_PGCK_VLD_M);
+	key->node_id	= (u16)((d64 >> ICE_PGCK_NID_S) & ICE_PGCK_NID_M);
+	key->flag0	= !!((d64 >> ICE_PGCK_F0_S) & ICE_PGCK_F0_M);
+	key->flag1	= !!((d64 >> ICE_PGCK_F1_S) & ICE_PGCK_F1_M);
+	key->flag2	= !!((d64 >> ICE_PGCK_F2_S) & ICE_PGCK_F2_M);
+	key->flag3	= !!((d64 >> ICE_PGCK_F3_S) & ICE_PGCK_F3_M);
+	if ((d64 >> ICE_PGCK_BH_S) & ICE_PGCK_BH_M)
+		key->boost_idx = (u8)((d64 >> ICE_PGCK_BI_S) & ICE_PGCK_BI_M);
+	else
+		key->boost_idx = 0;
+	key->alu_reg = (u16)((d64 >> ICE_PGCK_AR_S) & ICE_PGCK_AR_M);
+
+	idd = ICE_PGCK_NPK_S / BITS_PER_BYTE;
+	off = ICE_PGCK_NPK_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&data[idd]) >> off;
+
+	key->next_proto = (u32)(d64 & ICE_PGCK_NPK_M);
+}
+
+/** The function parses a 128 bits Parse Graph CAM Entry with below format:
+ *  BIT 0-72:	Key	(ci->key)
+ *  BIT 73-127:	Action	(ci->action)
+ */
+static void _ice_pg_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				   void *data, int size)
+{
+	struct ice_pg_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+	u8 off;
+
+	ci->idx = idx;
+
+	_ice_pg_cam_key_init(&ci->key, buf);
+
+	off = ICE_PG_CAM_ACT_OFF % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[ICE_PG_CAM_ACT_OFF / BITS_PER_BYTE]) >> off;
+	_ice_pg_cam_action_init(&ci->action, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_cam_dump(hw, ci);
+}
+
+/** The function parses a 136 bits Parse Graph Spill CAM Entry with below
+ *  format:
+ *  BIT 0-55:	Action	(ci->key)
+ *  BIT 56-135:	Key	(ci->action)
+ */
+static void _ice_pg_sp_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				      void *data, int size)
+{
+	struct ice_pg_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+	u8 idd;
+
+	ci->idx = idx;
+
+	d64 = *(u64 *)buf;
+	_ice_pg_cam_action_init(&ci->action, d64);
+
+	idd = ICE_PG_SP_CAM_KEY_OFF / BITS_PER_BYTE;
+	_ice_pg_cam_key_init(&ci->key, &buf[idd]);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_cam_dump(hw, ci);
+}
+
+/** The function parses a 96 bits Parse Graph NoMatch CAM Entry with below
+ *  format:
+ *  BIT 0-40:	Key	(ci->key)
+ *  BIT 41-95:	Action	(ci->action)
+ */
+static void _ice_pg_nm_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				      void *data, int size)
+{
+	struct ice_pg_nm_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+	u8 off;
+
+	ci->idx = idx;
+
+	d64 = *(u64 *)buf;
+	_ice_pg_nm_cam_key_init(&ci->key, d64);
+
+	off = ICE_PG_NM_CAM_ACT_OFF % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[ICE_PG_NM_CAM_ACT_OFF / BITS_PER_BYTE]) >> off;
+	_ice_pg_cam_action_init(&ci->action, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_nm_cam_dump(hw, ci);
+}
+
+/** The function parses a 104 bits Parse Graph NoMatch Spill CAM Entry with
+ *  below format:
+ *  BIT 0-55:	Key	(ci->key)
+ *  BIT 56-103:	Action	(ci->action)
+ */
+static void _ice_pg_nm_sp_cam_parse_item(struct ice_hw *hw, u16 idx,
+					 void *item, void *data, int size)
+{
+	struct ice_pg_nm_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+	u8 off;
+
+	ci->idx = idx;
+
+	d64 = *(u64 *)buf;
+	_ice_pg_cam_action_init(&ci->action, d64);
+
+	off = ICE_PG_NM_SP_CAM_ACT_OFF % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[ICE_PG_NM_SP_CAM_ACT_OFF / BITS_PER_BYTE]) >> off;
+	_ice_pg_nm_cam_key_init(&ci->key, d64);
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
+					_ice_pg_cam_parse_item);
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
+					_ice_pg_sp_cam_parse_item);
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
+					_ice_pg_nm_cam_parse_item);
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
+					_ice_pg_nm_sp_cam_parse_item);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.h b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
new file mode 100644
index 000000000000..47f8d8f01af4
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
@@ -0,0 +1,136 @@
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
+#define ICE_PGCK_VLD_S		0
+#define ICE_PGCK_VLD_M		BITMAP_MASK(1)
+#define ICE_PGCK_NID_S		1
+#define ICE_PGCK_NID_M		BITMAP_MASK(11)
+#define ICE_PGCK_F0_S		12
+#define ICE_PGCK_F0_M		BITMAP_MASK(1)
+#define ICE_PGCK_F1_S		13
+#define ICE_PGCK_F1_M		BITMAP_MASK(1)
+#define ICE_PGCK_F2_S		14
+#define ICE_PGCK_F2_M		BITMAP_MASK(1)
+#define ICE_PGCK_F3_S		15
+#define ICE_PGCK_F3_M		BITMAP_MASK(1)
+#define ICE_PGCK_BH_S		16
+#define ICE_PGCK_BH_M		BITMAP_MASK(1)
+#define ICE_PGCK_BI_S		17
+#define ICE_PGCK_BI_M		BITMAP_MASK(8)
+#define ICE_PGCK_AR_S		25
+#define ICE_PGCK_AR_M		BITMAP_MASK(16)
+#define ICE_PGCK_NPK_S		41
+#define ICE_PGCK_NPK_M		BITMAP_MASK(32)
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
+#define ICE_PGNCK_VLD_S		0
+#define ICE_PGNCK_VLD_M		BITMAP_MASK(1)
+#define ICE_PGNCK_NID_S		1
+#define ICE_PGNCK_NID_M		BITMAP_MASK(11)
+#define ICE_PGNCK_F0_S		12
+#define ICE_PGNCK_F0_M		BITMAP_MASK(1)
+#define ICE_PGNCK_F1_S		13
+#define ICE_PGNCK_F1_M		BITMAP_MASK(1)
+#define ICE_PGNCK_F2_S		14
+#define ICE_PGNCK_F2_M		BITMAP_MASK(1)
+#define ICE_PGNCK_F3_S		15
+#define ICE_PGNCK_F3_M		BITMAP_MASK(1)
+#define ICE_PGNCK_BH_S		16
+#define ICE_PGNCK_BH_M		BITMAP_MASK(1)
+#define ICE_PGNCK_BI_S		17
+#define ICE_PGNCK_BI_M		BITMAP_MASK(8)
+#define ICE_PGNCK_AR_S		25
+#define ICE_PGNCK_AR_M		BITMAP_MASK(16)
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
+#define ICE_PGCA_NN_S		0
+#define ICE_PGCA_NN_M		BITMAP_MASK(11)
+#define ICE_PGCA_NP_S		11
+#define ICE_PGCA_NP_M		BITMAP_MASK(8)
+#define ICE_PGCA_IPG_S		19
+#define ICE_PGCA_IPG_M		BITMAP_MASK(1)
+#define ICE_PGCA_PID_S		23
+#define ICE_PGCA_PID_M		BITMAP_MASK(8)
+#define ICE_PGCA_IMG_S		31
+#define ICE_PGCA_IMG_M		BITMAP_MASK(1)
+#define ICE_PGCA_MID_S		32
+#define ICE_PGCA_MID_M		BITMAP_MASK(8)
+#define ICE_PGCA_ILR_S		40
+#define ICE_PGCA_ILR_M		BITMAP_MASK(1)
+#define ICE_PGCA_HOP_S		41
+#define ICE_PGCA_HOP_M		BITMAP_MASK(1)
+#define ICE_PGCA_HOI_S		42
+#define ICE_PGCA_HOI_M		BITMAP_MASK(9)
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
+#define ICE_PG_CAM_KEY_OFF		0
+#define ICE_PG_CAM_ACT_OFF		73
+#define ICE_PG_SP_CAM_ACT_OFF		0
+#define ICE_PG_SP_CAM_KEY_OFF		56
+
+struct ice_pg_cam_item {
+	u16 idx;
+	struct ice_pg_cam_key key;
+	struct ice_pg_cam_action action;
+};
+
+#define ICE_PG_NM_CAM_KEY_OFF		0
+#define ICE_PG_NM_CAM_ACT_OFF		41
+#define ICE_PG_NM_SP_CAM_KEY_OFF	0
+#define ICE_PG_NM_SP_CAM_ACT_OFF	56
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
