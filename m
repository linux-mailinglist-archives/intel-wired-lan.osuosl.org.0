Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A15A567F6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 13:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4064741497;
	Fri,  7 Mar 2025 12:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gR2zrBSBymja; Fri,  7 Mar 2025 12:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB6CE4149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741351165;
	bh=KLxjmjLkVRGspcnvhP5Tie8EHIy+vTThaMLWJT47qSg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=769eODaBok7u6fUuoLTrBf8wyQty0U1d9afjXB4oXcVV1t4rBtqH2/aNWqymraBoQ
	 uWfH1+Vm84giqtsPhXC3pz0l4QtvhpRiV1zKkYb5Z6uMVuTpid//bUyCnnvxUdHJ7/
	 X3hfBFPDezAZwYn2DKk/kWO822G5LYn5WgCNZYeC1fVqteqZGJCVd1RXaDoZfJZDEF
	 HwisfG5+ZYhjx2qYbY73DAkr6IrmyyF65Vv1lvvqbXDn1KbJ0622b5afqjc/ddhlyn
	 Yp3oqCCIjZM7iQef5MJuLtRmPaRr95uPB972FUJxHNNTXxQ5hmRLrooWFdE4Y70H/T
	 XjHmKm3u/FoWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB6CE4149A;
	Fri,  7 Mar 2025 12:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B46C571F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 842F860A38
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2d3nHxuqJ8IN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 12:39:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B9780608FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9780608FC
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9780608FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:39:18 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3912e96c8e8so962052f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Mar 2025 04:39:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741351157; x=1741955957;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KLxjmjLkVRGspcnvhP5Tie8EHIy+vTThaMLWJT47qSg=;
 b=JuYtpFHb7eurYpFAGewvkE4+B204Ni+xh887PNJuBrtXqL/27ZJtbNetUYjGdDIAnb
 AfjTBnbBvuqdmA9xz1yyZBVA6mK/8eEnD5/PzwCXb0eJkall1U0Z1efjhZALc7ZUO0v1
 QJh6bgiQi2099MG0Eobmq3XPj2o+eqpauRcyyKjTKkkVseHl0R+wx2lqRT5hEO5Y6dsM
 d8RmlvxxtI//7tcRVDIDyMBPMhGJYj1aeE7foNoak9unGiLnTY2/fa2IPnrQ9mT9XuQ5
 Q6ky+w0N9OcnI+Rpm1GA52VT1feB+irv6t1iCYpxM//7kHmfhSqBnoiuyuz7z2UvQ8R/
 kuFw==
X-Gm-Message-State: AOJu0YxT9AE5UQM4H7+8cfr5Lmwu8QaH4m754rUj2MJL7kZUwbtuOZpH
 zf6DtkCh97futx4sZqrDmr+3Y2SWZkjU4dJvx9/jNsHjAm8hQklf91HLFtf+Qpw=
X-Gm-Gg: ASbGnctqa+0YpI7ZixoxWA5UwTNMURyqEdY0g6Qc/gbFmf9wuTsRkY6w42ZcAVQti2r
 lWuFnAg/SiR/SO4NswARk6noMe9ogm8AhOa6/JPEJcybVk6jtFs/k0CCrjarKQCkbY5YiuvWQfH
 NCjczh1mPn2Y8Et6k5Pnk+qwJSSgoYoGpLmUgF2SKQwROa++RWQA8aCF9kGs3dO/45nzK5VMJBI
 YUH11arXBJyRTJiE+pqw5Gys0owDVc8nxoHofT+349TkRtF6GVrFj2RQ0l130IVDQ3AoKhVmlwp
 XmvMrX3iuOmUGWkMl6BKscIqr5c5+hcEAmxEKXRE3Xnx3nLHkauImA+tHGDWHrjWJlUiToI=
X-Google-Smtp-Source: AGHT+IHR5/bjxcOF4ghKK6eX06+rvtgu0QOh/X6knPpArqGexZx3AqXE2S2EqJKr184Vp250Aioa1g==
X-Received: by 2002:a05:6000:1fa9:b0:391:31f2:b998 with SMTP id
 ffacd0b85a97d-39132d16fdcmr2109600f8f.6.1741351156730; 
 Fri, 07 Mar 2025 04:39:16 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3912bfdfa52sm5104218f8f.21.2025.03.07.04.39.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Mar 2025 04:39:16 -0800 (PST)
Date: Fri, 7 Mar 2025 13:39:10 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <pcmfqg3b5wg4cyzzjrpw23c6dwan62567vakbgnmto3khbwysk@dloxz3hqifdf>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1741351157; x=1741955957;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=KLxjmjLkVRGspcnvhP5Tie8EHIy+vTThaMLWJT47qSg=;
 b=lBBGo7aBxKxNvxSPRtWjPmGk0SHTBLVrWOMTJv8KouSzDKfGeSySxv5IEHvAYctevM
 qKzVLcG9LNf/KAN3kh3ZqjkI28rngbEi/xaXo7du7HCAqIBmNcsnekUO4iGG4Jwf3qWd
 eMrEeojcfpogFjOArP7biWREYfMNsk7VrJgodoazoXBX02nzgvqldnGSeAwAyAEbYrRf
 wSDadVoFTR/jjjAl62hqCNmbufqvieeJyMDcFd5QL5lN9E7/r2lB+Fh0xGyhUzqtUAob
 DIyADGwFaUXw3iSjExsX6k7OKFtU0XPnNBmvnaMlg6/qVi6FtGIp6dvMlzd0m/iioT8x
 11UA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=lBBGo7aB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Mar 06, 2025 at 10:11:46PM +0100, przemyslaw.kitszel@intel.com wrote:
>Use Device Serial Number instead of PCI bus/device/function for
>index of struct ice_adapter.
>Functions on the same physical device should point to the very same
>ice_adapter instance.
>
>This is not only simplification, but also fixes things up when PF
>is passed to VM (and thus has a random BDF).
>
>Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>Suggested-by: Jakub Kicinski <kuba@kernel.org>
>Suggested-by: Jiri Pirko <jiri@resnulli.us>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

From my perspective, this is a bug fix, makes sense to me to send to
-net tree.


>---
>CC: Karol Kolacinski <karol.kolacinski@intel.com>
>CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
>CC: Michal Schmidt <mschmidt@redhat.com>
>CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
> drivers/net/ethernet/intel/ice/ice_adapter.c | 29 +++-----------------
> 2 files changed, 6 insertions(+), 27 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>index e233225848b3..1935163bd32f 100644
>--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
>+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>@@ -42,7 +42,7 @@ struct ice_adapter {
> 	struct ice_port_list ports;
> };
> 
>-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
>-void ice_adapter_put(const struct pci_dev *pdev);
>+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
>+void ice_adapter_put(struct pci_dev *pdev);
> 
> #endif /* _ICE_ADAPTER_H */
>diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>index 01a08cfd0090..b668339ed0ef 100644
>--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
>+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>@@ -1,7 +1,6 @@
> // SPDX-License-Identifier: GPL-2.0-only
> // SPDX-FileCopyrightText: Copyright Red Hat
> 
>-#include <linux/bitfield.h>
> #include <linux/cleanup.h>
> #include <linux/mutex.h>
> #include <linux/pci.h>
>@@ -14,29 +13,9 @@
> static DEFINE_XARRAY(ice_adapters);
> static DEFINE_MUTEX(ice_adapters_mutex);
> 
>-/* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
>-#define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
>-#define INDEX_FIELD_DEV    GENMASK(31, 16)
>-#define INDEX_FIELD_BUS    GENMASK(12, 5)
>-#define INDEX_FIELD_SLOT   GENMASK(4, 0)
>-
>-static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>+static unsigned long ice_adapter_index(struct pci_dev *pdev)
> {
>-	unsigned int domain = pci_domain_nr(pdev->bus);
>-
>-	WARN_ON(domain > FIELD_MAX(INDEX_FIELD_DOMAIN));
>-
>-	switch (pdev->device) {
>-	case ICE_DEV_ID_E825C_BACKPLANE:
>-	case ICE_DEV_ID_E825C_QSFP:
>-	case ICE_DEV_ID_E825C_SFP:
>-	case ICE_DEV_ID_E825C_SGMII:
>-		return FIELD_PREP(INDEX_FIELD_DEV, pdev->device);
>-	default:
>-		return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
>-		       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
>-		       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
>-	}
>+	return (unsigned long)pci_get_dsn(pdev);

How do you ensure there is no xarray index collision then you
cut the number like this?


> }
> 
> static struct ice_adapter *ice_adapter_new(void)
>@@ -77,7 +56,7 @@ static void ice_adapter_free(struct ice_adapter *adapter)
>  * Return:  Pointer to ice_adapter on success.
>  *          ERR_PTR() on error. -ENOMEM is the only possible error.
>  */
>-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
> {
> 	unsigned long index = ice_adapter_index(pdev);
> 	struct ice_adapter *adapter;
>@@ -110,7 +89,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>  *
>  * Context: Process, may sleep.
>  */
>-void ice_adapter_put(const struct pci_dev *pdev)
>+void ice_adapter_put(struct pci_dev *pdev)
> {
> 	unsigned long index = ice_adapter_index(pdev);
> 	struct ice_adapter *adapter;
>-- 
>2.46.0
>
