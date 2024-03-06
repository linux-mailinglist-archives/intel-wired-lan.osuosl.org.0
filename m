Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3817873CCA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 18:00:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CF86413D3;
	Wed,  6 Mar 2024 17:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id omaO6BwhYChi; Wed,  6 Mar 2024 17:00:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A53354109F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709744416;
	bh=SS0NRBHuVjXJEm0e2EQJiFfHLmy7AHC7SVYxOl3bBaY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B0KrM5aSI/KoGbRv1K4DO7/1oypPX9Zh63SioqHV/02GllZljhO1pUstIQ8xH3A+9
	 i/2N7FG7HCkpfHR73sWmBYnvOCIg1wySZySMJlQpen2ZIQ8LtFj0iLcLHw1nG/T8FJ
	 UyudnmGHq1jvsy3t3tw8eMi0hmm6vGXlMF3lBVsex+v/uR9dw+HAMjMUlvWJLVHifK
	 kS9549KEO6KFHJVHr+7fUVot9OP0ifJyowICACa4ev/XSkeYCmLEI3bbtyN0XvnqZi
	 LkG3Ruas0NviqvATcciEJpeEWqymE15mRmT5Wxv3MrVur9Ck39v0pfC36aDNNhJLZy
	 X1d5YiwF+x/zA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A53354109F;
	Wed,  6 Mar 2024 17:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3E2D1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 17:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9046741872
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 17:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQbrhn8yVpAc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 17:00:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B826040193
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B826040193
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B826040193
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 17:00:10 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-33d90dfe73cso1992f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 09:00:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709744409; x=1710349209;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SS0NRBHuVjXJEm0e2EQJiFfHLmy7AHC7SVYxOl3bBaY=;
 b=VOja3olT79bankgPOnoDh+LLa/6wU6vjYZ9O8n0mDEA6+YatLCNd7uZ037bf7wMkOi
 7JKRroOGUsVhnIctT15fikfCxZ647DsCX5cKqbUL9F/SwM/7lW8+pQ+e0/gTUpx4K9gJ
 W2CQEj6oqjbWdP9lkP22iiGaElCDEIePoZu/midpX34fNnHYU8sDuvd15PThS0E33vAZ
 cbN79LsEEU5q6weoA0FLqz2BrgRORVde08zNlQ4skeyCBPL62uMfDxPHLz9IBNQN/Vjq
 O1rdPv5lXPOqF8lU2Ktc21xO0XVyQDppGVSdCuwwqXj6cwy6Va45tjfHQr6l3EYf/SoJ
 N6fw==
X-Gm-Message-State: AOJu0YwoqlNVVKozh+ImsjNAYu4/WJE0vtPNS3SmP9bUJeXrxVeySQ5z
 49CD4ZRV0pFUwAakA26j6UFYZp8h7P9irXAYPAvjmyZ7cluxpCd1BKRHbbhHnpM=
X-Google-Smtp-Source: AGHT+IEwlxXfRGecyIlwJLY5axCnmYvHcaYij05RysgU+GJaiTlUs5/S/eVb1Riyqfl+ZemMD0AnfA==
X-Received: by 2002:adf:a197:0:b0:33e:601e:3c21 with SMTP id
 u23-20020adfa197000000b0033e601e3c21mr408wru.19.1709744408660; 
 Wed, 06 Mar 2024 09:00:08 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 co17-20020a0560000a1100b0033e3ca55a4esm9270153wrb.21.2024.03.06.09.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 09:00:08 -0800 (PST)
Date: Wed, 6 Mar 2024 18:00:05 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZeihFVgwBBLOZ4CL@nanopsycho>
References: <20240306162907.84247-1-mschmidt@redhat.com>
 <20240306162907.84247-2-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240306162907.84247-2-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709744409; x=1710349209;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SS0NRBHuVjXJEm0e2EQJiFfHLmy7AHC7SVYxOl3bBaY=;
 b=OSNRL3CViFJifmvz1iitul6FL4k13H+fZvHU+d9N8NXqFLhApqkZfA+6Yy3lmboRNx
 6mOR5tgkJYf6Lfk8o+difA1pyfyQBtuMtXGAZ22RTVDsbGzGMDrTKOn0zlFO4NWtmuXL
 zRm79C1m0ot1OxspVGDHIL1jkAGgMVd5kLY1ESelfGoiaoJGnG5f413IAXyoCPRHCnqp
 f+o1SWGGyndyqDL334iWaF/aJbZzUTkjIjvvXiE/eGO5RkTf0o5tdaTbRDOomHZTg/fS
 tvrpkh01QwlU7UUBc5BncE/xfcZ34h0ecfpHk0rb7prMV+Y3gv43p8OqBstxs9jOcdHj
 lK/w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=OSNRL3CV
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Mar 06, 2024 at 05:29:05PM CET, mschmidt@redhat.com wrote:
>There is a need for synchronization between ice PFs on the same physical
>adapter.
>
>Add a "struct ice_adapter" for holding data shared between PFs of the
>same multifunction PCI device. The struct is refcounted - each ice_pf
>holds a reference to it.
>
>Its first use will be for PTP. I expect it will be useful also to
>improve the ugliness that is ice_prot_id_tbl.
>
>Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>---
> drivers/net/ethernet/intel/ice/Makefile      |  3 +-
> drivers/net/ethernet/intel/ice/ice.h         |  2 +
> drivers/net/ethernet/intel/ice/ice_adapter.c | 85 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_adapter.h | 22 +++++
> drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++
> 5 files changed, 119 insertions(+), 1 deletion(-)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
>
>diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>index cddd82d4ca0f..4fa09c321440 100644
>--- a/drivers/net/ethernet/intel/ice/Makefile
>+++ b/drivers/net/ethernet/intel/ice/Makefile
>@@ -36,7 +36,8 @@ ice-y := ice_main.o	\
> 	 ice_repr.o	\
> 	 ice_tc_lib.o	\
> 	 ice_fwlog.o	\
>-	 ice_debugfs.o
>+	 ice_debugfs.o  \
>+	 ice_adapter.o
> ice-$(CONFIG_PCI_IOV) +=	\
> 	ice_sriov.o		\
> 	ice_virtchnl.o		\
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index 365c03d1c462..1ffecbdd361a 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -77,6 +77,7 @@
> #include "ice_gnss.h"
> #include "ice_irq.h"
> #include "ice_dpll.h"
>+#include "ice_adapter.h"
> 
> #define ICE_BAR0		0
> #define ICE_REQ_DESC_MULTIPLE	32
>@@ -544,6 +545,7 @@ struct ice_agg_node {
> 
> struct ice_pf {
> 	struct pci_dev *pdev;
>+	struct ice_adapter *adapter;
> 
> 	struct devlink_region *nvm_region;
> 	struct devlink_region *sram_region;
>diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>new file mode 100644
>index 000000000000..b93b4db4c04c
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>@@ -0,0 +1,85 @@
>+// SPDX-License-Identifier: GPL-2.0-only
>+// SPDX-FileCopyrightText: Copyright Red Hat
>+
>+#include <linux/cleanup.h>
>+#include <linux/mutex.h>
>+#include <linux/pci.h>
>+#include <linux/slab.h>
>+#include <linux/xarray.h>
>+#include "ice_adapter.h"
>+
>+static DEFINE_XARRAY(ice_adapters);
>+
>+static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>+{
>+	unsigned int domain = pci_domain_nr(pdev->bus);
>+
>+	WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
>+	return ((unsigned long)domain << 13) |
>+	       ((unsigned long)pdev->bus->number << 5) |
>+	       PCI_SLOT(pdev->devfn);
>+}
>+
>+static struct ice_adapter *ice_adapter_new(void)
>+{
>+	struct ice_adapter *a;
>+
>+	a = kzalloc(sizeof(*a), GFP_KERNEL);
>+	if (!a)
>+		return NULL;
>+
>+	refcount_set(&a->refcount, 1);
>+
>+	return a;
>+}
>+
>+static void ice_adapter_free(struct ice_adapter *a)
>+{
>+	kfree(a);
>+}
>+
>+DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
>+
>+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>+{
>+	struct ice_adapter *ret, __free(ice_adapter_free) *a = NULL;
>+	unsigned long index = ice_adapter_index(pdev);
>+
>+	a = ice_adapter_new();

Please consider some non-single-letter variable name.


>+	if (!a)
>+		return NULL;
>+
>+	xa_lock(&ice_adapters);
>+	ret = __xa_cmpxchg(&ice_adapters, index, NULL, a, GFP_KERNEL);

This is atomic section, can't sleep.


>+	if (xa_is_err(ret)) {
>+		ret = NULL;

Why don't you propagate err through ERR_PTR() ?


>+		goto unlock;
>+	}
>+	if (ret) {
>+		refcount_inc(&ret->refcount);
>+		goto unlock;
>+	}
>+	ret = no_free_ptr(a);
>+unlock:
>+	xa_unlock(&ice_adapters);
>+	return ret;
>+}
>+
>+void ice_adapter_put(const struct pci_dev *pdev)
>+{
>+	unsigned long index = ice_adapter_index(pdev);
>+	struct ice_adapter *a;
>+
>+	xa_lock(&ice_adapters);
>+	a = xa_load(&ice_adapters, index);
>+	if (WARN_ON(!a))
>+		goto unlock;
>+
>+	if (!refcount_dec_and_test(&a->refcount))
>+		goto unlock;
>+
>+	WARN_ON(__xa_erase(&ice_adapters, index) != a);

Nice paranoia level :)


>+	ice_adapter_free(a);
>+unlock:
>+	xa_unlock(&ice_adapters);
>+}
>diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>new file mode 100644
>index 000000000000..cb5a02eb24c1
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>@@ -0,0 +1,22 @@
>+/* SPDX-License-Identifier: GPL-2.0-only */
>+/* SPDX-FileCopyrightText: Copyright Red Hat */
>+
>+#ifndef _ICE_ADAPTER_H_
>+#define _ICE_ADAPTER_H_
>+
>+#include <linux/refcount_types.h>
>+
>+struct pci_dev;
>+
>+/**
>+ * struct ice_adapter - PCI adapter resources shared across PFs
>+ * @refcount: Reference count. struct ice_pf objects hold the references.
>+ */
>+struct ice_adapter {
>+	refcount_t refcount;
>+};
>+
>+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
>+void ice_adapter_put(const struct pci_dev *pdev);
>+
>+#endif /* _ICE_ADAPTER_H */
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index 8f73ba77e835..413219d81a12 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -5093,6 +5093,7 @@ static int
> ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> {
> 	struct device *dev = &pdev->dev;
>+	struct ice_adapter *adapter;
> 	struct ice_pf *pf;
> 	struct ice_hw *hw;
> 	int err;
>@@ -5145,7 +5146,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> 
> 	pci_set_master(pdev);
> 
>+	adapter = ice_adapter_get(pdev);
>+	if (!adapter)
>+		return -ENOMEM;
>+
> 	pf->pdev = pdev;
>+	pf->adapter = adapter;
> 	pci_set_drvdata(pdev, pf);
> 	set_bit(ICE_DOWN, pf->state);
> 	/* Disable service task until DOWN bit is cleared */
>@@ -5196,6 +5202,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> err_load:
> 	ice_deinit(pf);
> err_init:
>+	ice_adapter_put(pdev);
> 	pci_disable_device(pdev);
> 	return err;
> }
>@@ -5302,6 +5309,7 @@ static void ice_remove(struct pci_dev *pdev)
> 	ice_setup_mc_magic_wake(pf);
> 	ice_set_wake(pf);
> 
>+	ice_adapter_put(pdev);
> 	pci_disable_device(pdev);
> }
> 
>-- 
>2.43.2
>
