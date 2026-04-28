Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gC4kMlR98GkaUAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:26:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F524815F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF44260F39;
	Tue, 28 Apr 2026 09:26:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2UWfQOHifvEs; Tue, 28 Apr 2026 09:26:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E94E860F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777368402;
	bh=+mqNSpP47doUf5eRCqFV/YaqHVt0Csc7gnnQGjaZzmQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W51bdQMHlE2s15tv9C3RwcHKW4MUIpT067MvDh+sf/rNmxuKYh0sQT3cizXDI4GsV
	 XxlsgigswQqbOF8wjzs8KdjKmc8WMaUXD8de1ISrR8KcPewFlRjKkAW7R2XvnVUiQp
	 DAvEU4QRZv2K5GbDn0k+cdibkvBccfmkZ+J9PCF1eeKDZc6L6Hvj6AGrissBAy9vkd
	 qOuDJe2Co2kcI9wE0loJlySIPSMO63pdZ5n7GFTNbf0Bx4k3k2df/6J8rSlQo2tFJV
	 71/nYtWzUjMpeyLs86wh0LXWpQlmiRjr9adxqUPUqdcXX9ig9h88aREMLdGjMVm2Pm
	 N1k9FA11j2Dvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E94E860F33;
	Tue, 28 Apr 2026 09:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B38B223D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99E04838AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Xw5jscO_iH9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 09:26:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D69C838AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D69C838AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D69C838AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:38 +0000 (UTC)
X-CSE-ConnectionGUID: VIcx0cxdT5ifzMuxG80WAQ==
X-CSE-MsgGUID: zLNKfamtSt2hChlBV+51ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="103731770"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="103731770"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:26:38 -0700
X-CSE-ConnectionGUID: B8+rAFe9SRCrZ80f3/XrXw==
X-CSE-MsgGUID: r/yyPObMSe6dG0p16Q4vpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="237861395"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 28 Apr 2026 02:26:34 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1CC4428194;
 Tue, 28 Apr 2026 10:26:32 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Date: Tue, 28 Apr 2026 11:09:12 +0200
Message-Id: <20260428090912.3461-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260428090912.3461-1-przemyslaw.kitszel@intel.com>
References: <20260428090912.3461-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777368399; x=1808904399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NYUhNoy1ne+FsvmNjLoXVWXCjfK5z2wSkDTMyfF8clo=;
 b=kfG+Xq9iS4PTRCqtqqX+ytW6GjEK4xn8Q3r48sZhwHx5xLPYM3L1GwvP
 /6aqcv4t6lzlmLtoTlhJ447yg3mvFirgUNVZGAMDlgI4vLltnFpUrtISt
 jMedHEUvKyJ/Of5ts2NfUY1xlprF/J7MqI/k6JWWiN9ZfUsQ7vbuReKr6
 2sJFqbUAZ3UdFN0l+IU6P2odlR0yfZGiNMbRc1Kz3AnWg0AXzz8kJNYMK
 uwIiQAO8a0YaQNtzH/J+fh844C1gTBzMiAWNeY6Yt5IsFMmqL+fMf4zlZ
 hOuaLt7OrwWZs8wFXKmXMM2AKus06AaJLt/32jJP38Qppx5nqodCp72hX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kfG+Xq9i
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: use shared devlink to
 store ice_adapters instead of custom xarray
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
X-Rspamd-Queue-Id: 29F524815F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:kuba@kernel.org,m:jiri@resnulli.us,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:jedrzej.jagielski@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:sergey.temerkhanov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]

Refactor our storage and deduplication logic of ice_adapters by moving
it to be handled by shared devlink instance, recently added by
Jiri Pirko [1].

We wanted the devlink instance for whole device anyway - later in the
series I will add devlink resources under it.

Make the shared devlink a parent (wrt. nesting) of the actual PF devices.

[1] commit 411ad0605875 ("Merge branch 'devlink-introduce-shared-devlink-instance-for-pfs-on-same-chip'")
[1]  https://lore.kernel.org/all/20260312100407.551173-1-jiri@resnulli.us
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adapter.h  | 13 +--
 .../net/ethernet/intel/ice/devlink/devlink.c  |  3 +
 drivers/net/ethernet/intel/ice/ice_adapter.c  | 95 ++++++-------------
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
 4 files changed, 42 insertions(+), 73 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index e95266c7f20b..d4ec7e78abb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -6,7 +6,8 @@
 
 #include <linux/types.h>
 #include <linux/spinlock_types.h>
-#include <linux/refcount_types.h>
+
+#include <net/devlink.h>
 
 struct pci_dev;
 struct ice_pf;
@@ -27,27 +28,26 @@ struct ice_port_list {
 
 /**
  * struct ice_adapter - PCI adapter resources shared across PFs
- * @refcount: Reference count. struct ice_pf objects hold the references.
+ * @devlink: ice adapter's devlink (whole dev devlink)
  * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
  *                        register of the PTP clock.
  * @txq_ctx_lock: Spinlock protecting access to the GLCOMM_QTX_CNTX_CTL register
  * @ctrl_pf: Control PF of the adapter
  * @ports: Ports list
- * @index: 64-bit index cached for collision detection on 32bit systems
  */
 struct ice_adapter {
-	refcount_t refcount;
+	struct devlink *devlink;
+
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
 	/* For access to GLCOMM_QTX_CNTX_CTL register */
 	spinlock_t txq_ctx_lock;
 
 	struct ice_pf *ctrl_pf;
 	struct ice_port_list ports;
-	u64 index;
 };
 
 struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
-void ice_adapter_put(struct pci_dev *pdev);
+void ice_adapter_put(struct ice_adapter *adapter);
 
 #endif /* _ICE_ADAPTER_H */
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 641d6e289d5c..f6382d038048 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1750,7 +1750,10 @@ struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
 void ice_devlink_register(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
+	struct ice_adapter *adapter = pf->adapter;
 
+	if (adapter)
+		devl_nested_devlink_set(adapter->devlink, devlink);
 	devl_register(devlink);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index cbb57060bd56..8ec1b600905f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -1,18 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: Copyright Red Hat
 
-#include <linux/cleanup.h>
-#include <linux/mutex.h>
 #include <linux/pci.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
-#include <linux/xarray.h>
+
 #include "ice_adapter.h"
 #include "ice.h"
 
-static DEFINE_XARRAY(ice_adapters);
-static DEFINE_MUTEX(ice_adapters_mutex);
-
 #define ICE_ADAPTER_FIXED_INDEX	BIT_ULL(63)
 
 #define ICE_ADAPTER_INDEX_E825C	\
@@ -40,44 +35,36 @@ static u64 ice_adapter_index(struct pci_dev *pdev)
 	}
 }
 
-static unsigned long ice_adapter_xa_index(struct pci_dev *pdev)
-{
-	u64 index = ice_adapter_index(pdev);
-
-#if BITS_PER_LONG == 64
-	return index;
-#else
-	return (u32)index ^ (u32)(index >> 32);
-#endif
-}
-
-static struct ice_adapter *ice_adapter_new(struct pci_dev *pdev)
+static int ice_adapter_init(void *priv, void *init_param)
 {
-	struct ice_adapter *adapter;
+	struct ice_adapter *adapter = priv;
+	struct devlink *devlink;
 
-	adapter = kzalloc_obj(*adapter);
-	if (!adapter)
-		return NULL;
+	devlink = shd_priv_to_devlink(adapter);
+	adapter->devlink = devlink;
 
-	adapter->index = ice_adapter_index(pdev);
 	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
 	spin_lock_init(&adapter->txq_ctx_lock);
-	refcount_set(&adapter->refcount, 1);
 
 	mutex_init(&adapter->ports.lock);
 	INIT_LIST_HEAD(&adapter->ports.ports);
 
-	return adapter;
+	return 0;
 }
 
-static void ice_adapter_free(struct ice_adapter *adapter)
+static void ice_adapter_fini(void *priv)
 {
+	struct ice_adapter *adapter = priv;
+
 	WARN_ON(!list_empty(&adapter->ports.ports));
 	mutex_destroy(&adapter->ports.lock);
-
-	kfree(adapter);
 }
 
+static const struct devlink_ops ice_adapter_devlink_ops = {
+	.shd_init = ice_adapter_init,
+	.shd_fini = ice_adapter_fini,
+};
+
 /**
  * ice_adapter_get - Get a shared ice_adapter structure.
  * @pdev: Pointer to the pci_dev whose driver is getting the ice_adapter.
@@ -94,28 +81,19 @@ static void ice_adapter_free(struct ice_adapter *adapter)
 struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
 {
 	struct ice_adapter *adapter;
-	unsigned long index;
-	int err;
-
-	index = ice_adapter_xa_index(pdev);
-	scoped_guard(mutex, &ice_adapters_mutex) {
-		adapter = xa_load(&ice_adapters, index);
-		if (adapter) {
-			refcount_inc(&adapter->refcount);
-			WARN_ON_ONCE(adapter->index != ice_adapter_index(pdev));
-			return adapter;
-		}
-		err = xa_reserve(&ice_adapters, index, GFP_KERNEL);
-		if (err)
-			return ERR_PTR(err);
-
-		adapter = ice_adapter_new(pdev);
-		if (!adapter) {
-			xa_release(&ice_adapters, index);
-			return ERR_PTR(-ENOMEM);
-		}
-		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
-	}
+	struct devlink *devlink;
+	char devlink_id[32];
+	u64 index;
+
+	index = ice_adapter_index(pdev);
+	snprintf(devlink_id, sizeof(devlink_id), "%llx", index);
+	devlink = devlink_shd_get(devlink_id, &ice_adapter_devlink_ops,
+				  sizeof(*adapter), NULL, pdev->dev.driver);
+	if (!devlink)
+		return ERR_PTR(-ENOMEM);
+
+	adapter = devlink_shd_get_priv(devlink);
+
 	return adapter;
 }
 
@@ -128,20 +106,7 @@ struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
  *
  * Context: Process, may sleep.
  */
-void ice_adapter_put(struct pci_dev *pdev)
+void ice_adapter_put(struct ice_adapter *adapter)
 {
-	struct ice_adapter *adapter;
-	unsigned long index;
-
-	index = ice_adapter_xa_index(pdev);
-	scoped_guard(mutex, &ice_adapters_mutex) {
-		adapter = xa_load(&ice_adapters, index);
-		if (WARN_ON(!adapter))
-			return;
-		if (!refcount_dec_and_test(&adapter->refcount))
-			return;
-
-		WARN_ON(xa_erase(&ice_adapters, index) != adapter);
-	}
-	ice_adapter_free(adapter);
+	devlink_shd_put(adapter->devlink);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6ebaa41127a4..6e257ad13bd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5349,7 +5349,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 unroll_dev_init:
 	need_dev_deinit = true;
 unroll_adapter:
-	ice_adapter_put(pdev);
+	ice_adapter_put(adapter);
 unroll_hw_init:
 	ice_deinit_hw(hw);
 	if (need_dev_deinit)
@@ -5462,7 +5462,7 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_setup_mc_magic_wake(pf);
 	ice_set_wake(pf);
 
-	ice_adapter_put(pdev);
+	ice_adapter_put(pf->adapter);
 	ice_deinit_hw(&pf->hw);
 
 	ice_deinit_dev(pf);
-- 
2.39.3

