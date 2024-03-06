Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B99873C42
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 17:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 793A74079D;
	Wed,  6 Mar 2024 16:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d8VLGp9zwqvs; Wed,  6 Mar 2024 16:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50008407D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709742610;
	bh=+fsWmx0nj50Lh+doC/roNXZssPVnSfRMUSeLuEMih28=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PpGVJ0nwugLWdfEZTRmvLHOEsOP7fBLC1tUaU8VaZ0lMyClKMUEi/3SNY2OKKqzSR
	 zAWNh+clF0S2RwJVqXJtHB1UBSpk8Bz2Sk9vB/17Pt1GmnohDtMRmGczTMScV5cBXk
	 pvB1tHBhJwqL05u8wF4O09Ac0BumaDS5ezJDBwD+raPFxzfyObWYH0gJj+zUVpTT1Y
	 uHqMZWGOFD/lleRtDgR7oRDz0/gMgDvUr+KcS0O+Vp/fkiIQ0ENA7jyOrTjQckQgEG
	 6wGnJBSkskC0BOnrM9S4ZdN1dbIaBxr//GJIPvBjqfa1Vv7HjtwN1jenxUcl3XMtTa
	 EFtiJuPvtOd4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50008407D5;
	Wed,  6 Mar 2024 16:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42D441BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FC2060A91
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KkETjL6BlAsn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 16:30:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EF8A66062B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF8A66062B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF8A66062B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:30:04 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-690-8zSwdDkMMlStH-xdkEjzPg-1; Wed,
 06 Mar 2024 11:29:59 -0500
X-MC-Unique: 8zSwdDkMMlStH-xdkEjzPg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2901B2804808;
 Wed,  6 Mar 2024 16:29:59 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.224.200])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 288A640C6CBD;
 Wed,  6 Mar 2024 16:29:56 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Mar 2024 17:29:05 +0100
Message-ID: <20240306162907.84247-2-mschmidt@redhat.com>
In-Reply-To: <20240306162907.84247-1-mschmidt@redhat.com>
References: <20240306162907.84247-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709742603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+fsWmx0nj50Lh+doC/roNXZssPVnSfRMUSeLuEMih28=;
 b=A96xGwE66QsaYL0/P0ICHnaKa8MrXpopaN+K70Qg7rJJUGgJHK6cDDvo6PwdeUqlktRMSU
 nS8TqUw4Alk5/pGfNCWyWX4V8+P1cASaNSzASOxsjKR69kPT/ufJJ1N1semba/Az9KWMoL
 29hXLYkXZ/1fkgNb7BI3BL703e5mISI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=A96xGwE6
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: add ice_adapter for
 shared data across PFs on the same NIC
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a need for synchronization between ice PFs on the same physical
adapter.

Add a "struct ice_adapter" for holding data shared between PFs of the
same multifunction PCI device. The struct is refcounted - each ice_pf
holds a reference to it.

Its first use will be for PTP. I expect it will be useful also to
improve the ugliness that is ice_prot_id_tbl.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/Makefile      |  3 +-
 drivers/net/ethernet/intel/ice/ice.h         |  2 +
 drivers/net/ethernet/intel/ice/ice_adapter.c | 85 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.h | 22 +++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++
 5 files changed, 119 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index cddd82d4ca0f..4fa09c321440 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -36,7 +36,8 @@ ice-y := ice_main.o	\
 	 ice_repr.o	\
 	 ice_tc_lib.o	\
 	 ice_fwlog.o	\
-	 ice_debugfs.o
+	 ice_debugfs.o  \
+	 ice_adapter.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 365c03d1c462..1ffecbdd361a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -77,6 +77,7 @@
 #include "ice_gnss.h"
 #include "ice_irq.h"
 #include "ice_dpll.h"
+#include "ice_adapter.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -544,6 +545,7 @@ struct ice_agg_node {
 
 struct ice_pf {
 	struct pci_dev *pdev;
+	struct ice_adapter *adapter;
 
 	struct devlink_region *nvm_region;
 	struct devlink_region *sram_region;
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
new file mode 100644
index 000000000000..b93b4db4c04c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: Copyright Red Hat
+
+#include <linux/cleanup.h>
+#include <linux/mutex.h>
+#include <linux/pci.h>
+#include <linux/slab.h>
+#include <linux/xarray.h>
+#include "ice_adapter.h"
+
+static DEFINE_XARRAY(ice_adapters);
+
+static unsigned long ice_adapter_index(const struct pci_dev *pdev)
+{
+	unsigned int domain = pci_domain_nr(pdev->bus);
+
+	WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
+	return ((unsigned long)domain << 13) |
+	       ((unsigned long)pdev->bus->number << 5) |
+	       PCI_SLOT(pdev->devfn);
+}
+
+static struct ice_adapter *ice_adapter_new(void)
+{
+	struct ice_adapter *a;
+
+	a = kzalloc(sizeof(*a), GFP_KERNEL);
+	if (!a)
+		return NULL;
+
+	refcount_set(&a->refcount, 1);
+
+	return a;
+}
+
+static void ice_adapter_free(struct ice_adapter *a)
+{
+	kfree(a);
+}
+
+DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
+
+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
+{
+	struct ice_adapter *ret, __free(ice_adapter_free) *a = NULL;
+	unsigned long index = ice_adapter_index(pdev);
+
+	a = ice_adapter_new();
+	if (!a)
+		return NULL;
+
+	xa_lock(&ice_adapters);
+	ret = __xa_cmpxchg(&ice_adapters, index, NULL, a, GFP_KERNEL);
+	if (xa_is_err(ret)) {
+		ret = NULL;
+		goto unlock;
+	}
+	if (ret) {
+		refcount_inc(&ret->refcount);
+		goto unlock;
+	}
+	ret = no_free_ptr(a);
+unlock:
+	xa_unlock(&ice_adapters);
+	return ret;
+}
+
+void ice_adapter_put(const struct pci_dev *pdev)
+{
+	unsigned long index = ice_adapter_index(pdev);
+	struct ice_adapter *a;
+
+	xa_lock(&ice_adapters);
+	a = xa_load(&ice_adapters, index);
+	if (WARN_ON(!a))
+		goto unlock;
+
+	if (!refcount_dec_and_test(&a->refcount))
+		goto unlock;
+
+	WARN_ON(__xa_erase(&ice_adapters, index) != a);
+	ice_adapter_free(a);
+unlock:
+	xa_unlock(&ice_adapters);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
new file mode 100644
index 000000000000..cb5a02eb24c1
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: Copyright Red Hat */
+
+#ifndef _ICE_ADAPTER_H_
+#define _ICE_ADAPTER_H_
+
+#include <linux/refcount_types.h>
+
+struct pci_dev;
+
+/**
+ * struct ice_adapter - PCI adapter resources shared across PFs
+ * @refcount: Reference count. struct ice_pf objects hold the references.
+ */
+struct ice_adapter {
+	refcount_t refcount;
+};
+
+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
+void ice_adapter_put(const struct pci_dev *pdev);
+
+#endif /* _ICE_ADAPTER_H */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8f73ba77e835..413219d81a12 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5093,6 +5093,7 @@ static int
 ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 {
 	struct device *dev = &pdev->dev;
+	struct ice_adapter *adapter;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	int err;
@@ -5145,7 +5146,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	pci_set_master(pdev);
 
+	adapter = ice_adapter_get(pdev);
+	if (!adapter)
+		return -ENOMEM;
+
 	pf->pdev = pdev;
+	pf->adapter = adapter;
 	pci_set_drvdata(pdev, pf);
 	set_bit(ICE_DOWN, pf->state);
 	/* Disable service task until DOWN bit is cleared */
@@ -5196,6 +5202,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_load:
 	ice_deinit(pf);
 err_init:
+	ice_adapter_put(pdev);
 	pci_disable_device(pdev);
 	return err;
 }
@@ -5302,6 +5309,7 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_setup_mc_magic_wake(pf);
 	ice_set_wake(pf);
 
+	ice_adapter_put(pdev);
 	pci_disable_device(pdev);
 }
 
-- 
2.43.2

