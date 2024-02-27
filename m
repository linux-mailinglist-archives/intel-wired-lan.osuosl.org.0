Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44421868983
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 08:05:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 866CA40735;
	Tue, 27 Feb 2024 07:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M92DJEscYAqy; Tue, 27 Feb 2024 07:05:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E0DE4076D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709017541;
	bh=TXtEex9VuQR1EP3e/5JdrfpeNpYD0e7hgfGq456hgR8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9DSSrAS9TB5mPQOloMw0YtJLYXQEOJbrZgefCJOD5/ti6vXmMT+X3ijbF0tb2xZT+
	 YnbHammD4PM18E99KnWxjCxEorzFpg1tagqivzs0q+UKyH57ckf4C6GUlbInOosLWg
	 BLQwEUh6W/czJZ2Y8NQ19wgaJPkBZtkxqj2e+hhnb/KysF7WO7Qos3XCFqhgYLajIP
	 vwmOJXPmnwlex+l9Qq82IzFlk7o/apyIIbxkNmeGG39Wu5DxSko+yVKJM4EJIjM0DB
	 TK0YAPVM9BdxuJFe4wxD7VDvVNHPf3af50zZxLNNrRl89OBUsp5Cqmpjpy5FSFuvdY
	 MfuMHmR9gF4rA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E0DE4076D;
	Tue, 27 Feb 2024 07:05:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBC5E1BF326
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C62EC81491
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vmS242otIqyT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 07:05:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22f; helo=mail-lj1-x22f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE38181470
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE38181470
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE38181470
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:05:34 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-2d23a22233fso39615341fa.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 23:05:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709017532; x=1709622332;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TXtEex9VuQR1EP3e/5JdrfpeNpYD0e7hgfGq456hgR8=;
 b=jli1OsZnBc2RnB5yHy0Z3GPz36I+c2TegcKH3DRZoMeLEpy63Yq8n+tNotc6W9pLwm
 crh9jzfm44reyZ6G6HOpmrZHNfthgNavv2dcsW49bCNfT/cvLJyUXJHV3zWDHUj6lPpS
 UrEp7UOGnMMj8AwsEklhvlKY1zIWiVtp9vFdbjn9/JDn1Cb57ckgNIYnzYgdj0N1+Vw3
 Ulzy1YCF/4hfdmoeiFHef6B/RJ+G2LRmAwHXLz+z8xjub72ppJ2BJb7jUpZUY5osuW7r
 5xLuCb4yzsarNYssNIHeIawxM4b9Y/cebPBn4NRU497gUiCg3ALaOD+XICzoQSjITzCG
 ypSQ==
X-Gm-Message-State: AOJu0YztqalO4bXzCE8RNXsWfJh9v1I43cAW4jkMklH07kKN9gmTp/Hu
 Crga/t9SwrCZqq3ycBJv2Ci+/aw76GF1YYgiV17j9ZtbgkTM4App5oKLngvXXII=
X-Google-Smtp-Source: AGHT+IHMIHGl/kzP+ATyzsjuczq1RY307sP0jV7fhxbh+RXvsF+7aiwa5DH2o5hrqgxIZaIX+9nM9w==
X-Received: by 2002:ac2:4203:0:b0:512:ab3d:d551 with SMTP id
 y3-20020ac24203000000b00512ab3dd551mr5703787lfh.19.1709017532294; 
 Mon, 26 Feb 2024 23:05:32 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 u20-20020a05600c00d400b00410b0ce91b1sm14061609wmm.25.2024.02.26.23.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 23:05:31 -0800 (PST)
Date: Tue, 27 Feb 2024 08:05:29 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <Zd2JuVAyHigIy5NR@nanopsycho>
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-2-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226151125.45391-2-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709017532; x=1709622332;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TXtEex9VuQR1EP3e/5JdrfpeNpYD0e7hgfGq456hgR8=;
 b=XTF7gP0H0sFgjuenLcKKHAPpcX7V73dX1T6Kt/0ErilkZOHcG3xHju17K+2g9uRtZV
 kK0JvU1MSFajqIx1P9I3vhk3IFHtk8k0v99naQpuQuIDcfO4sWd60qZU3jqbTpz6vITG
 Jlk78A+RGZaQfmELbWBSnYYybZtBy9dccy6M9+Q/bDhV8X1HeJsd+wxUQ9RgSt2CPrA1
 UUyhHmxL4SkXAEprJ68Q/pXDDi1CcyKLUUB9iQPrG+RNM71N3NbeiG6IV4PsD5yk6vBG
 2QRPz3q1J6MQLyiz9FZryzhKA0Q16Woc/gDeNiUYSM72GRZrk5OebT6OgJ58MSAsAhye
 FmqA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=XTF7gP0H
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] ice: add ice_adapter for
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Feb 26, 2024 at 04:11:23PM CET, mschmidt@redhat.com wrote:
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
> drivers/net/ethernet/intel/ice/ice_adapter.c | 67 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_adapter.h | 22 +++++++
> drivers/net/ethernet/intel/ice/ice_main.c    |  8 +++
> 5 files changed, 101 insertions(+), 1 deletion(-)
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
>index 000000000000..deb063401238
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>@@ -0,0 +1,67 @@
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
>+static DEFINE_MUTEX(ice_adapters_lock);

Why you need and extra mutex and not just rely on xarray lock?


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
>+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>+{
>+	unsigned long index = ice_adapter_index(pdev);
>+	struct ice_adapter *a;
>+
>+	guard(mutex)(&ice_adapters_lock);
>+
>+	a = xa_load(&ice_adapters, index);
>+	if (a) {
>+		refcount_inc(&a->refcount);
>+		return a;
>+	}
>+
>+	a = kzalloc(sizeof(*a), GFP_KERNEL);
>+	if (!a)
>+		return NULL;
>+
>+	refcount_set(&a->refcount, 1);
>+
>+	if (xa_is_err(xa_store(&ice_adapters, index, a, GFP_KERNEL))) {
>+		kfree(a);
>+		return NULL;
>+	}
>+
>+	return a;
>+}
>+
>+void ice_adapter_put(const struct pci_dev *pdev)
>+{
>+	unsigned long index = ice_adapter_index(pdev);
>+	struct ice_adapter *a;
>+
>+	guard(mutex)(&ice_adapters_lock);
>+
>+	a = xa_load(&ice_adapters, index);
>+	if (WARN_ON(!a))
>+		return;
>+
>+	if (!refcount_dec_and_test(&a->refcount))
>+		return;
>+
>+	WARN_ON(xa_erase(&ice_adapters, index) != a);
>+	kfree(a);
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
>index 9c2c8637b4a7..4a60957221fc 100644
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
>
