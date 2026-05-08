Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJHJOGPe/WmqkAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 889894F6B4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E0DA4121E;
	Fri,  8 May 2026 13:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dP2aH4sMCUVB; Fri,  8 May 2026 13:00:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE1074127B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245210;
	bh=k3bJei3YyZblhsB7sX+fjXn8O5htMfP+g3nEnaHLhp0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rJQoIRaed774NI74RQ7UCk0HWQGGpS6Om/AS2ViPPZZ9RuWwnkYLHddH7lqf5mkic
	 HmKGXzljxx3IV02oDmsehdPaXwtgmYa5NB8M0RjVN10+ZGFYrkgDb4XQZMYTtO7Udd
	 UCGOuSxHPsq6i11bJ+JpYThtXJYucf0aA7AS6u0gUmGsSCOQBpKoQwqxH8Kud2w5Hp
	 GLR0L7Ld2bY9UP2GFvYhpYq+MK2hYVE4KuonMqF+iLh2KL7jc1KnlQhkySSlfu7L6h
	 8GN0InlFVRUF/m6kbNo+aqk/116fs8Hpd4kKWUf8u4v+KxzUfDS0J7SQREO0WPJUfm
	 NPJgZi0opmjyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE1074127B;
	Fri,  8 May 2026 13:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 169A3358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E063740F74
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJYmm-CdjDCM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 13:00:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0EBD940FAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EBD940FAC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EBD940FAC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:06 +0000 (UTC)
X-CSE-ConnectionGUID: ReyqDxhwR9OeT0ictUFvcA==
X-CSE-MsgGUID: /U4JGSYXRzC5gArG9Mo+Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79200003"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79200003"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:00:06 -0700
X-CSE-ConnectionGUID: +X98ZoFgR8mNLHXVbs+/eg==
X-CSE-MsgGUID: /7DlEC4wQneWNmGm5XlXhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730289"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:59 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2E0F22FC40;
 Fri,  8 May 2026 13:59:57 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:42:07 +0200
Message-Id: <20260508124208.11622-15-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245207; x=1809781207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MGdbzFFwU6U1zqIT3tFYSxP97PQFNS4VRYoi03Dd5Dc=;
 b=UINN9VuaD3KWKxj4EPpFLyyOttu1Iv1mQav37Nq/w8BmEFcD27YDT0i/
 OT2/qFvAoGA+fMQdsdD8QsNZkktPvuwx16Y5OJkCEVtPVem48tmgMv59O
 QjqPiJy/4MFdJ0qiLO614SLUGHI7cU0O464biDBVfUlZgc+k2yHk0XX+R
 h6Ek/WMzcRAb03zRpDjMyaP+dzd2hlsHZ2W+3ai957n4E0l+EIfCh5pdN
 U2mNY/uCpmrYVetk8kdeeWTwWzxK+58uJxG9H/CFtPOItq0xzNYWWEBg5
 BXmWr6d/BgUHHr9zaTG72wem5ztd8rDtzS2yKD3pYzcc9lvd31T2EVoau
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UINN9Vua
Subject: [Intel-wired-lan] [PATCH iwl-next v1 14/15] ice: represent RSS LUTs
 as devlink resources
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 889894F6B4D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.985];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

E800 family offers three kinds of RSS LUTs: VSI LUT (sized 64), GLOBAL LUT
(sized 256), and PF LUT (sized 2048). Until now the GLOBAL kind was not
used at all. There are two possible usages for it, subsequent commit will
give VF option to acquire it, and this one enables PF to switch between PF
LUT and GLOBAL LUT - switching to smaller one is, again, to make it
possible for VF to then acquire the former one.

Devlink resources are used to let user show current usage and change the
allocation, see examples below.

Default state on 8-port card, asking for aggregate "whole device" usage,
note that there are as many PF LUTs as there is PFs, and, for e810, there
are 16 GLOBAL LUTs:
$ devlink resource show devlink_index/11
devlink_index/11:
  name rss size 8 unit entry size_min 0 size_max 24 size_gran 1 dpipe_tables none
    resources:
      name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1 dpipe_tables none
      name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1 dpipe_tables none

Now let's add GLOBAL LUT for a single PF (on one-port NIC):
$ sudo devlink resource set pci/0000:18:00.0 path rss/lut_512 size 1
And show it's resources after that:
$ devlink resource show pci/0000:18:00.0
pci/0000:18:00.0:
  name rss size 2 unit entry size_min 0 size_max 2 size_gran 1 dpipe_tables none
    resources:
      name lut_512 size 1 unit entry size_min 0 size_max 1 size_gran 1 dpipe_tables none
      name lut_2048 size 1 unit entry size_min 0 size_max 1 size_gran 1 dpipe_tables none
Let's take the PF LUT out of that PF afterwards:
$ sudo devlink resource set pci/0000:18:00.0 path rss/lut_2048 size 0
now `ethtool -x $ifacename` will report smaller RSS table.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../net/ethernet/intel/ice/devlink/resource.h |  19 +
 drivers/net/ethernet/intel/ice/ice_adapter.h  |  40 ++
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 .../net/ethernet/intel/ice/devlink/resource.c | 469 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.c  |  12 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  23 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
 9 files changed, 573 insertions(+), 8 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/resource.h
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/resource.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 7f06d9bafe4a..0217ab6403de 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -37,6 +37,7 @@ ice-y := ice_main.o	\
 	 devlink/devlink.o	\
 	 devlink/health.o \
 	 devlink/port.o \
+	 devlink/resource.o \
 	 ice_sf_eth.o	\
 	 ice_sf_vsi_vlan_ops.o \
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/devlink/resource.h b/drivers/net/ethernet/intel/ice/devlink/resource.h
new file mode 100644
index 000000000000..947f77a3cd49
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/resource.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2026, Intel Corporation. */
+
+#ifndef _ICE_DEVL_RESOURCE_H_
+#define _ICE_DEVL_RESOURCE_H_
+
+struct devlink;
+struct ice_adapter;
+struct ice_hw;
+struct ice_pf;
+
+void ice_devl_pf_resources_register(struct ice_pf *pf);
+void ice_devl_whole_dev_resources_register(const struct ice_hw *hw,
+					   struct ice_adapter *adapter);
+
+int ice_take_rss_lut_pf(struct ice_pf *pf);
+void ice_free_rss_lut_flr(struct ice_pf *pf);
+
+#endif /* _ICE_DEVL_RESOURCE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index 5539ec5f8515..5a9148eb7b63 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -12,6 +12,40 @@
 struct pci_dev;
 struct ice_pf;
 
+enum ice_devl_resource_id {
+	/* keep parent IDs prior to children, because we register in order */
+	ICE_TOP_RESOURCE = DEVLINK_RESOURCE_ID_PARENT_TOP,
+	ICE_RSS_LUT_BOTH,
+	ICE_RSS_LUT_GLOBAL,
+	ICE_RSS_LUT_PF,
+	ICE_DEVL_RESOURCES_COUNT
+};
+
+#define ICE_MAX_DEVL_RESOURCE_UNITS 16
+
+/**
+ * struct ice_devl_resource - driver data for devlink resource, config & runtime
+ *
+ * @owner: entity that owns given resource (like ptr to ice_pf or ice_vf)
+ * @pf_id: on which PF the VF is (or just PF id when PF is the owner)
+ * @name: name of the resource to register it with
+ * @get: occ getter callback
+ * @set: occ setter callback
+ * @start_size: starting size of the resource
+ * @max_size: max size of the resource, to present in the uAPI/validate against
+ * @parent_id: ID of the parent resource
+ */
+struct ice_devl_resource {
+	void *owner[ICE_MAX_DEVL_RESOURCE_UNITS];
+	u8 pf_id[ICE_MAX_DEVL_RESOURCE_UNITS];
+	const char *name;
+	devlink_resource_occ_get_t *get;
+	devlink_resource_occ_set_t *set;
+	u32 start_size;
+	u32 max_size;
+	u32 parent_id;
+};
+
 /**
  * struct ice_port_list - data used to store the list of adapter ports
  *
@@ -34,6 +68,7 @@ struct ice_port_list {
  * @txq_ctx_lock: Spinlock protecting access to the GLCOMM_QTX_CNTX_CTL register
  * @ctrl_pf: Control PF of the adapter
  * @ports: Ports list
+ * @resources: array of ice's data for devlink resources
  */
 struct ice_adapter {
 	struct devlink *devlink;
@@ -45,9 +80,14 @@ struct ice_adapter {
 
 	struct ice_pf *ctrl_pf;
 	struct ice_port_list ports;
+
+	struct ice_devl_resource resources[ICE_DEVL_RESOURCES_COUNT];
 };
 
 struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
 void ice_adapter_put(struct ice_adapter *adapter);
 
+DEFINE_GUARD(ice_adapter_devl, struct ice_adapter *,
+	     devl_lock((_T)->devlink), devl_unlock((_T)->devlink))
+
 #endif /* _ICE_ADAPTER_H */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index dbb44e9deaf7..c58dd5207da6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -125,6 +125,7 @@ int ice_read_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
 int ice_write_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
 		      u32 txq_index);
 
+enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type);
 int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
 int
diff --git a/drivers/net/ethernet/intel/ice/devlink/resource.c b/drivers/net/ethernet/intel/ice/devlink/resource.c
new file mode 100644
index 000000000000..42b65730ea52
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/resource.c
@@ -0,0 +1,469 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2026, Intel Corporation. */
+
+#include "resource.h"
+#include "ice_adapter.h"
+#include "ice.h"
+#include "ice_lib.h"
+
+#define ICE_NUM_GLOBAL_LUTS	16
+#define ICE_ANY_SLOT		-1
+
+static u32 ice_devl_res_cnt(const struct ice_adapter *adapter,
+			    enum ice_devl_resource_id res_id)
+{
+	const struct ice_devl_resource *res = &adapter->resources[res_id];
+	u32 sum = 0;
+
+	for (int i = 0; i < res->max_size; i++)
+		sum += res->owner[i] != NULL;
+
+	return sum;
+}
+
+static int ice_devl_res_take(struct ice_pf *pf,
+			     enum ice_devl_resource_id res_id, int slot,
+			     void *owner)
+{
+	struct ice_devl_resource *res = &pf->adapter->resources[res_id];
+	int end = slot == ICE_ANY_SLOT ? res->max_size : slot + 1;
+	int beg = slot == ICE_ANY_SLOT ? 0 : slot;
+	int err, new_id = ICE_ANY_SLOT;
+
+	for (int id = beg; id < end; id++) {
+		if (!res->owner[id]) {
+			new_id = id;
+			break;
+		}
+	}
+	if (new_id == ICE_ANY_SLOT)
+		return -ENOSPC;
+
+	if (res_id == ICE_RSS_LUT_GLOBAL) {
+		struct ice_vsi *vsi;
+		u16 lut_id;
+
+		err = ice_alloc_rss_global_lut(&pf->hw, &lut_id);
+		if (err)
+			return err;
+		if (lut_id != new_id)
+			return -ENOANO;
+
+		if (pf == owner)
+			vsi = ice_get_main_vsi(pf);
+		else
+			vsi = ice_get_vf_vsi(owner);
+
+		vsi->global_lut_id = new_id;
+	}
+
+	res->owner[new_id] = owner;
+	res->pf_id[new_id] = pf->hw.pf_id;
+	return new_id;
+}
+
+static int ice_devl_res_free(struct ice_pf *pf,
+			     enum ice_devl_resource_id res_id, void *owner)
+{
+	struct ice_devl_resource *res = &pf->adapter->resources[res_id];
+	int err = 0, id_to_free = ICE_ANY_SLOT;
+
+	for (int i = 0; i < res->max_size; i++) {
+		if (res->owner[i] == owner) {
+			id_to_free = i;
+			break;
+		}
+	}
+	if (id_to_free == ICE_ANY_SLOT)
+		return 0;
+
+	if (res_id == ICE_RSS_LUT_GLOBAL)
+		err = ice_free_rss_global_lut(&pf->hw, id_to_free);
+
+	res->owner[id_to_free] = NULL;
+	return err;
+}
+
+void ice_free_rss_lut_flr(struct ice_pf *pf)
+{
+	struct ice_devl_resource *res, *resources = pf->adapter->resources;
+	int pf_id = pf->hw.pf_id;
+
+	scoped_guard(ice_adapter_devl, pf->adapter) {
+		resources[ICE_RSS_LUT_PF].owner[pf_id] = NULL;
+		
+		res = &resources[ICE_RSS_LUT_GLOBAL];
+		for (int i = 0; i < res->max_size; i++) {
+			/* On FLR/PFR resources assigned to PF are cleared by
+			 * FW, reflect that in the SW table.
+			 * VFs on given PF must be de-programmed too.
+			 */
+			if (res->pf_id[i] == pf_id)
+				res->owner[i] = NULL;
+		}
+	}		
+}
+
+static int ice_devl_res_owned_idx(struct ice_adapter *adapter,
+				  enum ice_devl_resource_id res_id, void *owner)
+{
+	const struct ice_devl_resource *res = &adapter->resources[res_id];
+
+	for (int i = 0; i < res->max_size; i++) {
+		if (res->owner[i] == owner)
+			return i;
+	}
+
+	return -ENXIO;
+}
+
+static bool ice_is_devl_res_owned_by(struct ice_adapter *adapter,
+				     enum ice_devl_resource_id res_id,
+				     void *owner)
+{
+	return ice_devl_res_owned_idx(adapter, res_id, owner) >= 0;
+}
+
+static u64 ice_rss_lut_whole_dev_occ_get_global(void *priv)
+{
+	struct ice_adapter *adapter = priv;
+
+	return ice_devl_res_cnt(adapter, ICE_RSS_LUT_GLOBAL);
+}
+
+static u64 ice_rss_lut_whole_dev_occ_get_pf(void *priv)
+{
+	struct ice_adapter *adapter = priv;
+
+	return ice_devl_res_cnt(adapter, ICE_RSS_LUT_PF);
+}
+
+static u64 ice_rss_lut_whole_dev_occ_get_both(void *priv)
+{
+	return ice_rss_lut_whole_dev_occ_get_global(priv) +
+	       ice_rss_lut_whole_dev_occ_get_pf(priv);
+}
+
+static u64 ice_rss_lut_pf_occ_get_global(void *priv)
+{
+	struct ice_adapter *adapter;
+	struct ice_pf *pf = priv;
+
+	adapter = pf->adapter;
+	scoped_guard(ice_adapter_devl, adapter)
+		return ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_GLOBAL, pf);
+}
+
+static u64 ice_rss_lut_pf_occ_get_pf(void *priv)
+{
+	struct ice_adapter *adapter;
+	struct ice_pf *pf = priv;
+
+	adapter = pf->adapter;
+	scoped_guard(ice_adapter_devl, adapter)
+		return ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_PF, pf);
+}
+
+static u64 ice_rss_lut_pf_occ_get_both(void *priv)
+{
+	struct ice_adapter *adapter;
+	struct ice_pf *pf = priv;
+
+	adapter = pf->adapter;
+	scoped_guard(ice_adapter_devl, adapter)
+		return ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_PF, pf) +
+		       ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_GLOBAL, pf);
+}
+
+static int ice_devl_resource_deny_occ_set(u64 size,
+					  struct netlink_ext_ack *extack,
+					  void *priv)
+{
+	NL_SET_ERR_MSG_MOD(extack,
+		"can not change directly, parent/aggregate resource just adds up children data");
+	return -EPERM;
+}
+
+enum ice_rss_lut_resource_state {
+	ICE_HAS_NO_LUT = 0,
+	ICE_HAS_GLOBAL_LUT = BIT(ICE_RSS_LUT_GLOBAL),
+	ICE_HAS_PF_LUT = BIT(ICE_RSS_LUT_PF),
+	ICE_HAS_BOTH_LUTS = ICE_HAS_GLOBAL_LUT | ICE_HAS_PF_LUT,
+};
+
+/** ice_rss_lut_resource_state - compute opaque resource state for given owner
+ * @adapter: the adapter the @owner is on
+ * @owner: the entity to compute state of resources for
+ *
+ * Return: computed current state of the RSS resources the @owner has.
+ */
+static enum ice_rss_lut_resource_state
+ice_rss_lut_resource_state(struct ice_adapter *adapter, void *owner)
+{
+	enum ice_rss_lut_resource_state ret = ICE_HAS_NO_LUT;
+
+	if (ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_GLOBAL, owner))
+		ret |= ICE_HAS_GLOBAL_LUT;
+	if (ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_PF, owner))
+		ret |= ICE_HAS_PF_LUT;
+
+	return ret;
+}
+
+static int ice_maybe_change_rss_lut(struct ice_pf *pf, void *owner,
+				    enum ice_rss_lut_resource_state old,
+				    enum ice_rss_lut_resource_state new,
+				    struct netlink_ext_ack *extack)
+{
+	struct ice_aq_get_set_rss_lut_params params = {};
+	struct ice_adapter *adapter = pf->adapter;
+	struct ice_hw *hw = &pf->hw;
+	enum ice_lut_type lut_type;
+	int err, lut_size, lut_id;
+	struct ice_vsi *vsi;
+	u8 *lut;
+
+	if (old & new & ICE_HAS_PF_LUT)
+		return 0;
+
+	if (new & ICE_HAS_PF_LUT) {
+		lut_type = ICE_LUT_PF;
+	} else if (new & ICE_HAS_GLOBAL_LUT) {
+		lut_id = ice_devl_res_owned_idx(adapter, ICE_RSS_LUT_GLOBAL, owner);
+		if (lut_id < 0)
+			return lut_id;
+
+		lut_type = ICE_LUT_GLOBAL;
+		params.global_lut_id = lut_id;
+	} else {
+		lut_type = ICE_LUT_VSI;
+		if (owner == pf) {
+			NL_SET_ERR_MSG_FMT(extack, "cannot change PF to use LUT_VSI (sized 64)");
+			return -EDOM;
+		}
+	}
+
+	if (pf == owner) {
+		vsi = ice_get_main_vsi(pf);
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	lut_size = ice_lut_type_to_size(lut_type);
+	lut = kmalloc(lut_size, GFP_KERNEL);
+	if (!lut)
+		return -ENOMEM;
+	ice_fill_rss_lut(lut, lut_size, vsi->rss_size);
+	params.lut = lut;
+	params.lut_size = lut_size;
+	params.lut_type = lut_type;
+	params.vsi_handle = vsi->idx;
+	err = ice_aq_set_rss_lut(hw, &params);
+	if (err) {
+		NL_SET_ERR_MSG_FMT(extack, "AQ failed: %s", libie_aq_str(hw->adminq.sq_last_status));
+		goto out;
+	}
+
+	vsi->rss_table_size = lut_size;
+	vsi->rss_lut_type = lut_type;
+out:
+	kfree(lut);
+	return err;
+}
+
+static int ice_devl_res_change(bool take, enum ice_devl_resource_id res_id,
+			       struct ice_pf *pf, void *owner, int slot,
+			       struct netlink_ext_ack *extack)
+{
+	enum ice_rss_lut_resource_state old, new, change;
+	struct ice_adapter *adapter = pf->adapter;
+	int err;
+
+	change = BIT(res_id);
+	old = ice_rss_lut_resource_state(adapter, owner);
+	new = old;
+	if (take)
+		new |= change;
+	else
+		new &= ~change;
+	if (new == old)
+		return 0;
+
+	if (pf == owner && !take && old != ICE_HAS_BOTH_LUTS) {
+		NL_SET_ERR_MSG_MOD(extack,
+			"at least one of 512+ sized LUTs must be assigned to PF device at all times");
+		return -EDOM;
+	}
+
+	if (take) {
+		int slot_id;
+		
+		slot_id = ice_devl_res_take(pf, res_id, slot, owner);
+		if (slot_id < 0)
+			return slot_id;
+	}
+
+	err = ice_maybe_change_rss_lut(pf, owner, old, new, extack);
+	if (err) {
+		NL_SET_ERR_MSG_FMT(extack, "failed to change RSS LUT, err: %d", err);
+		if (!take)
+			/* We have not released the resource, so we don't free
+			 * it, to avoid freeing LUT still in use or assigning it
+			 * to other entity.
+			 */
+			return -EBUSY;
+
+		goto undo_res_take;
+	}
+
+	if (!take) {
+undo_res_take:
+		int rel_err;
+
+		rel_err = ice_devl_res_free(pf, res_id, owner);
+		if (rel_err) {
+			NL_SET_ERR_MSG_FMT(extack,
+				"could not free resource, err: %d", rel_err);
+			if (!err)
+				err = rel_err;
+		}
+	}
+
+	return err;
+}
+
+static int ice_rss_lut_pf_occ_set_pf(u64 size, struct netlink_ext_ack *extack,
+				     void *priv)
+{
+	struct ice_pf *pf = priv;
+	int pf_id = pf->hw.pf_id;
+
+	scoped_guard(ice_adapter_devl, pf->adapter)
+		return ice_devl_res_change(size, ICE_RSS_LUT_PF, pf, pf, pf_id,
+					   extack);
+}
+
+static int ice_rss_lut_pf_occ_set_global(u64 size,
+					 struct netlink_ext_ack *extack,
+					 void *priv)
+{
+	struct ice_pf *pf = priv;
+
+	scoped_guard(ice_adapter_devl, pf->adapter)
+		return ice_devl_res_change(size, ICE_RSS_LUT_GLOBAL, pf, pf,
+					   ICE_ANY_SLOT, extack);
+}
+
+/**
+ * ice_take_rss_lut_pf - allocate PF RSS LUT for PF
+ * @pf: the PF device that PF LUT is physically on, and to allocate it for
+ *
+ * Acquire PF RSS LUT for the caller.
+ *
+ * Return: 0 on success, negative on error.
+ */
+int ice_take_rss_lut_pf(struct ice_pf *pf)
+{
+	int ret, pf_id = pf->hw.pf_id;
+
+	scoped_guard(ice_adapter_devl, pf->adapter) {
+		ret = ice_devl_res_take(pf, ICE_RSS_LUT_PF, pf_id, pf);
+		if (ret >= 0)
+			return 0;
+
+		return ret;
+	}
+}
+
+static void ice_devl_res_register(struct devlink *devlink,
+				  struct ice_devl_resource *resources,
+				  void *occ_priv)
+{
+	struct devlink_resource_size_params size_params;
+
+	devlink_resource_size_params_init(&size_params, 0, 0, 1,
+					  DEVLINK_RESOURCE_UNIT_ENTRY);
+	for (int i = 0; i < ICE_DEVL_RESOURCES_COUNT; i++) {
+		struct ice_devl_resource *res = &resources[i];
+		int err, resource_id = i;
+
+		if (!res->name)
+			continue; /* skip empty entries in config table */
+
+		size_params.size_max = res->max_size;
+		err = devl_resource_register(devlink, res->name,
+					     res->start_size, resource_id,
+					     res->parent_id, &size_params);
+		if (WARN_ONCE(err, "not all resource handlers registered, err: %d, resname: %s\n",
+			      err, res->name))
+			break;
+
+		devl_resource_occ_set_get_register(devlink, resource_id,
+						   res->set, res->get, occ_priv);
+	}
+}
+
+void ice_devl_whole_dev_resources_register(const struct ice_hw *hw,
+					   struct ice_adapter *adapter)
+{
+	struct devlink *devlink = adapter->devlink;
+	int pf_lut_cnt = hw->dev_caps.num_funcs;
+
+	devl_assert_locked(devlink);
+
+	adapter->resources[ICE_RSS_LUT_GLOBAL] = (struct ice_devl_resource) {
+		.name = "lut_512",
+		.parent_id = ICE_RSS_LUT_BOTH,
+		.max_size = ICE_NUM_GLOBAL_LUTS,
+		.get = ice_rss_lut_whole_dev_occ_get_global,
+		.set = ice_devl_resource_deny_occ_set,
+	};
+	adapter->resources[ICE_RSS_LUT_PF] = (struct ice_devl_resource) {
+		.name = "lut_2048",
+		.parent_id = ICE_RSS_LUT_BOTH,
+		.max_size = pf_lut_cnt,
+		.get = ice_rss_lut_whole_dev_occ_get_pf,
+		.set = ice_devl_resource_deny_occ_set,
+	};
+	adapter->resources[ICE_RSS_LUT_BOTH] = (struct ice_devl_resource) {
+		.name = "rss",
+		.parent_id = ICE_TOP_RESOURCE,
+		.max_size = pf_lut_cnt + ICE_NUM_GLOBAL_LUTS,
+		.get = ice_rss_lut_whole_dev_occ_get_both,
+		.set = ice_devl_resource_deny_occ_set,
+	};
+
+	ice_devl_res_register(devlink, adapter->resources, adapter);
+}
+
+void ice_devl_pf_resources_register(struct ice_pf *pf)
+{
+	struct ice_devl_resource pf_resources[ICE_DEVL_RESOURCES_COUNT] = {
+		[ICE_RSS_LUT_GLOBAL] = {
+			.name = "lut_512",
+			.parent_id = ICE_RSS_LUT_BOTH,
+			.max_size = 1,
+			.get = ice_rss_lut_pf_occ_get_global,
+			.set = ice_rss_lut_pf_occ_set_global,
+		},
+		[ICE_RSS_LUT_PF] = {
+			.name = "lut_2048",
+			.parent_id = ICE_RSS_LUT_BOTH,
+			.max_size = 1,
+			.get = ice_rss_lut_pf_occ_get_pf,
+			.set = ice_rss_lut_pf_occ_set_pf,
+			.start_size = 1,
+		},
+		[ICE_RSS_LUT_BOTH] = {
+			.name = "rss",
+			.parent_id = ICE_TOP_RESOURCE,
+			.max_size = 2,
+			.get = ice_rss_lut_pf_occ_get_both,
+			.set = ice_devl_resource_deny_occ_set,
+		},
+	};
+	struct devlink *devlink = priv_to_devlink(pf);
+
+	devl_assert_locked(devlink);
+	ice_devl_res_register(devlink, pf_resources, pf);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index d07d349a1692..064cf649714d 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -8,6 +8,8 @@
 #include "ice_adapter.h"
 #include "ice.h"
 
+#include "devlink/resource.h"
+
 #define ICE_ADAPTER_FIXED_INDEX	BIT_ULL(63)
 
 #define ICE_ADAPTER_INDEX_E825C	\
@@ -37,6 +39,7 @@ static u64 ice_adapter_index(struct pci_dev *pdev)
 
 static int ice_adapter_init(void *priv, void *init_param)
 {
+	const struct ice_hw *hw = init_param;
 	struct ice_adapter *adapter = priv;
 	struct devlink *devlink;
 
@@ -49,12 +52,18 @@ static int ice_adapter_init(void *priv, void *init_param)
 	mutex_init(&adapter->ports.lock);
 	INIT_LIST_HEAD(&adapter->ports.ports);
 
+	ice_devl_whole_dev_resources_register(hw, adapter);
+
 	return 0;
 }
 
 static void ice_adapter_fini(void *priv)
 {
 	struct ice_adapter *adapter = priv;
+	struct devlink *devlink;
+
+	devlink = shd_priv_to_devlink(adapter);
+	devl_resources_unregister(devlink);
 
 	WARN_ON(!list_empty(&adapter->ports.ports));
 	mutex_destroy(&adapter->ports.lock);
@@ -80,15 +89,16 @@ static const struct devlink_ops ice_adapter_devlink_ops = {
  */
 struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
 {
+	struct ice_pf *pf = pci_get_drvdata(pdev);
 	struct ice_adapter *adapter;
 	struct devlink *devlink;
 	char devlink_id[32];
 	u64 index;
 
 	index = ice_adapter_index(pdev);
 	snprintf(devlink_id, sizeof(devlink_id), "%llx", index);
 	devlink = devlink_shd_get(devlink_id, &ice_adapter_devlink_ops,
-				  sizeof(*adapter), NULL, pdev->dev.driver);
+				  sizeof(*adapter), &pf->hw, pdev->dev.driver);
 	if (!devlink)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 168890986696..41eae7b0a3db 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4514,7 +4514,7 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 	return status;
 }
 
-static enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type)
+enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type)
 {
 	switch (type) {
 	case ICE_LUT_VSI:
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2ac4e23f30b5..e47f2f881701 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -10,6 +10,8 @@
 #include "ice_type.h"
 #include "ice_vsi_vlan_ops.h"
 
+#include "devlink/resource.h"
+
 /**
  * ice_vsi_type_str - maps VSI type enum to string equivalents
  * @vsi_type: VSI type enum
@@ -885,10 +887,10 @@ static void ice_rss_clean(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_set_rss_params - Setup RSS capabilities per VSI type
+ * ice_vsi_set_dflt_rss_params - Setup default RSS capabilities per VSI type
  * @vsi: the VSI being configured
  */
-static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
+static void ice_vsi_set_dflt_rss_params(struct ice_vsi *vsi)
 {
 	struct ice_hw_common_caps *cap;
 	struct ice_pf *pf = vsi->back;
@@ -2352,6 +2354,9 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 
 	vsi->vsw = pf->first_sw;
 
+	if (vsi->flags & ICE_VSI_FLAG_INIT)
+		ice_vsi_set_dflt_rss_params(vsi);
+
 	ret = ice_vsi_alloc_def(vsi, vsi->ch);
 	if (ret)
 		return ret;
@@ -2371,7 +2376,14 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 	}
 
 	/* set RSS capabilities */
-	ice_vsi_set_rss_params(vsi);
+	if ((vsi->flags & ICE_VSI_FLAG_INIT) && vsi->type == ICE_VSI_PF) {
+		ret = ice_take_rss_lut_pf(pf);
+		if (ret) {
+			dev_err(dev, "Failed to allocate RSS LUT for PF: %d\n",
+				ret);
+			goto unroll_vsi_alloc_stat;
+		}
+	}
 
 	/* set TC configuration */
 	ice_vsi_set_tc_cfg(vsi);
@@ -2559,6 +2571,11 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	ice_vsi_put_qs(vsi);
 	ice_vsi_free_arrays(vsi);
 
+	if (vsi->flags & ICE_VSI_FLAG_INIT) {
+		if (vsi->type == ICE_VSI_PF)
+			ice_free_rss_lut_flr(pf);
+	}
+
 	/* SR-IOV determines needed MSIX resources all at once instead of per
 	 * VSI since when VFs are spawned we know how many VFs there are and how
 	 * many interrupts each VF needs. SR-IOV MSIX resources are also
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 42d9c4220f43..94232f4a45ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -15,6 +15,7 @@
 #include "ice_dcb_nl.h"
 #include "devlink/devlink.h"
 #include "devlink/port.h"
+#include "devlink/resource.h"
 #include "ice_sf_eth.h"
 #include "ice_hwmon.h"
 #include "ice_acl.h"
@@ -5037,6 +5038,7 @@ static int ice_init_devlink(struct ice_pf *pf)
 	ice_devlink_init_regions(pf);
 	ice_devlink_register(pf);
 	ice_health_init(pf);
+	ice_devl_pf_resources_register(pf);
 
 	return 0;
 }
@@ -5047,6 +5049,7 @@ static void ice_deinit_devlink(struct ice_pf *pf)
 	ice_devlink_unregister(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_devlink_unregister_params(pf);
+	devl_resources_unregister(priv_to_devlink(pf));
 }
 
 static int ice_init(struct ice_pf *pf)
@@ -7972,6 +7975,8 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	params.lut_size = lut_size;
 	params.lut_type = vsi->rss_lut_type;
 	params.lut = lut;
+	if (params.lut_type == ICE_LUT_GLOBAL)
+		params.global_lut_id = vsi->global_lut_id;
 
 	status = ice_aq_set_rss_lut(hw, &params);
 	if (status)
@@ -8025,11 +8030,14 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	params.lut_size = lut_size;
 	params.lut_type = vsi->rss_lut_type;
 	params.lut = lut;
+	if (params.lut_type == ICE_LUT_GLOBAL)
+		params.global_lut_id = vsi->global_lut_id;
 
 	status = ice_aq_get_rss_lut(hw, &params);
-	if (status)
-		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s\n",
-			status, libie_aq_str(hw->adminq.sq_last_status));
+	if (status) {
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s, luttype: %d\n",
+			status, libie_aq_str(hw->adminq.sq_last_status), params.lut_type);
+	}
 
 	return status;
 }
-- 
2.39.3

