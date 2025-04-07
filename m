Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1701BA7DD0D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 14:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC84781E9D;
	Mon,  7 Apr 2025 12:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DPlcC3jakIvU; Mon,  7 Apr 2025 12:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E7EA81496
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744027428;
	bh=C12lql4gahPwXCUXebElvygf5+dGXZFoZDJkgABwuxw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B+h+PvLzLMSi0s19o9RwqwOaCqpXNLuCHAiu71ye3ZT0y3x2UPGS/pThPirfpwqWN
	 774NeInZJV/9+MGdA6ukaqtBJ0siPuCsBUtz4bRGgcZijutDriOoyD2iJifhmdj8wo
	 WBUpscL4gHBIJIHs5GrMj/aKCQfZ+JBpdrNnjnf5SMwfQXIPXx+MjyhjOtJPvnl/wI
	 I03OMdxcQsVzW2zPNHnJv/esrIhdg/Z9c30TDUcQja/+uQr9K7UvdaeHfTCr9KQ3Ik
	 v3d+08mz66OLKjGOn+8S8l3uNLq8xlrAWLUXaH+R38nFiNYPfJUgYIrQ3i6i/gwpZD
	 s4p9JOVAoo9Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E7EA81496;
	Mon,  7 Apr 2025 12:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E95421DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C63CC40BDD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b03AH1Yt2-Gu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 12:03:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E0F4440913
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0F4440913
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0F4440913
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:03:43 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-43d0782d787so29359305e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Apr 2025 05:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744027421; x=1744632221;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C12lql4gahPwXCUXebElvygf5+dGXZFoZDJkgABwuxw=;
 b=lPfmqFBr+o74r9ARXJji4zIbolZVqcxznE1UspFD+8rA4Hq2Md4GIQxuShqewK3Lve
 hHdltA0AHBdqYyrJooIQPJM15a1cmjZs1pk2CnFoJmdzLgHLnM2NYdtp5zGEuuj9WmZq
 5KhYgZT77v1XyXSTFjcKZl8c82btcHK48kBu+Yx3jumDKQ5sUsPfzGBBxOp+bWdSgLlK
 LHx6O+IbOoPuZdZlywvYS8sCNXHUgJG8kQX07a8HfKBxIVL5YweZWnwNrR72qie5mhj6
 Oq8J3+JWWRvJYEfcTNHV8mHBfw99ss3y0QLkb95jjn096JlBt1oVckBXCWvnRxC1Su5H
 WnJA==
X-Gm-Message-State: AOJu0YxK+q8prDanIXSqnVvZocVv6s6WcnmNB3Urx+4ct0QazABaedox
 WxXAbZ6GGHeRbG9Zs/ecK86XhWLkXAErZMpbV6cSewdWzHt2EOmczlLBjGgQlE4=
X-Gm-Gg: ASbGncsmnIsFLmCNSsby/Oi6FcCGzgoarI09JdO00oSvJ+4tRB2n3OcdBU0UCVv2F5l
 J7SvbJUQpC4taxVcZUhKzH+3/3IFBONo5WYNDo2wKBMtBRuRCnp6lk2hgfq20CPPqn0adab3xd0
 qkJO8WxIcpjMKyxD6FAmJuqVILQP0OCOq5HhS5b/Uu59QsAZVmUMObahyig/jJVmOaaiO55fEtF
 du29rZVa0TWOfoCoWkDuMWEcYC9IcPv3TOSl4o0GaywMSbPNUzqIK6cV7IYKMqaPGi87G5Q/mJi
 W/sABHKGEtsT8s0jHj5UWJ5HsJ7CUCmq9lX1b319PJR3459D9XnR
X-Google-Smtp-Source: AGHT+IELXe9d7cJXM5xrxldV23WqITZfBAhRcUkgK50uOVSxKr87JLfKlxqrzPPTtf0xmaWE47z2ag==
X-Received: by 2002:a05:600c:35d6:b0:43c:f6b0:e807 with SMTP id
 5b1f17b1804b1-43ed0db3b8emr90104625e9.31.1744027420756; 
 Mon, 07 Apr 2025 05:03:40 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43ec364c959sm127278765e9.25.2025.04.07.05.03.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Apr 2025 05:03:40 -0700 (PDT)
Date: Mon, 7 Apr 2025 14:03:30 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <umik2eecoutyaf666hy3h2g2bbbchvfb7veqwrcqkb6aevntxz@yhslcltafqxy>
References: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1744027421; x=1744632221;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=C12lql4gahPwXCUXebElvygf5+dGXZFoZDJkgABwuxw=;
 b=cIjwsEysbdzXGGPU5svpXzaP8JLyrFBpRwTsINIIS+Kme0tc+4W9jRir899b874oIw
 1tVVn2pIZt7J9IRbWdHZHuoA6u/Rzlt5LdZR8ar5qPG3LpYGi3brd7Pgt8AO9F5VoIag
 qB3nBWYefaIZZwR9PPe7yAZGoWLn1YPJcssnIva+OpNbmnMLtIYww40EKnbw7uaga0e7
 +4ptNFD5xPkibHc6qVFRmMdplWJQ52/RGzAEhNOihs/vDSqXq6xqy7JC+++/7CitCsjU
 U3JS8W3C/nG59FKqf6oGVXT+WpsAQUP7WtC+BvSpaA5HO0CTJcAh++rnDlFpqbhOURhF
 UT2g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=cIjwsEys
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: use DSN instead of
 PCI BDF for ice_adapter index
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

Mon, Apr 07, 2025 at 01:20:05PM +0200, przemyslaw.kitszel@intel.com wrote:
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
>---
>CC: Karol Kolacinski <karol.kolacinski@intel.com>
>CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
>CC: Michal Schmidt <mschmidt@redhat.com>
>CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
>v2:
> - target to -net (Jiri)
> - mix both halves of u64 DSN on 32bit systems (Jiri)
> - (no changes in terms of fallbacks for pre-prod HW)
> - warn when there is DSN collision after reducing to 32bit
>
>v1:
>https://lore.kernel.org/netdev/20250306211159.3697-2-przemyslaw.kitszel@intel.com
>---
> drivers/net/ethernet/intel/ice/ice_adapter.h |  6 ++-
> drivers/net/ethernet/intel/ice/ice_adapter.c | 43 ++++++++------------
> 2 files changed, 20 insertions(+), 29 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>index e233225848b3..ac15c0d2bc1a 100644
>--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
>+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>@@ -32,17 +32,19 @@ struct ice_port_list {
>  * @refcount: Reference count. struct ice_pf objects hold the references.
>  * @ctrl_pf: Control PF of the adapter
>  * @ports: Ports list
>+ * @device_serial_number: DSN cached for collision detection on 32bit systems
>  */
> struct ice_adapter {
> 	refcount_t refcount;
> 	/* For access to the GLTSYN_TIME register */
> 	spinlock_t ptp_gltsyn_time_lock;
> 
> 	struct ice_pf *ctrl_pf;
> 	struct ice_port_list ports;
>+	u64 device_serial_number;
> };
> 
>-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
>-void ice_adapter_put(const struct pci_dev *pdev);
>+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
>+void ice_adapter_put(struct pci_dev *pdev);
> 
> #endif /* _ICE_ADAPTER_H */
>diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>index 01a08cfd0090..3df3fa6d5129 100644
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
>@@ -14,29 +13,13 @@
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
>+static unsigned long ice_adapter_index(u64 dsn)
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
>+#if BITS_PER_LONG == 64
>+	return dsn;
>+#else
>+	return (u32)dsn ^ u32(dsn >> 32);
>+#endif
> }
> 
> static struct ice_adapter *ice_adapter_new(void)
>@@ -77,25 +60,29 @@ static void ice_adapter_free(struct ice_adapter *adapter)
>  * Return:  Pointer to ice_adapter on success.
>  *          ERR_PTR() on error. -ENOMEM is the only possible error.
>  */
>-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
> {
>-	unsigned long index = ice_adapter_index(pdev);
>+	u64 dsn = pci_get_dsn(pdev);
> 	struct ice_adapter *adapter;
>+	unsigned long index;
> 	int err;
> 
>+	index = ice_adapter_index(dsn);
> 	scoped_guard(mutex, &ice_adapters_mutex) {
> 		err = xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
> 		if (err == -EBUSY) {
> 			adapter = xa_load(&ice_adapters, index);
> 			refcount_inc(&adapter->refcount);
>+			WARN_ON_ONCE(adapter->device_serial_number != dsn);

Warn and done? How unlikely is this? I mean, can this happen in real
world? If yes, that's a bug.


> 			return adapter;
> 		}
> 		if (err)
> 			return ERR_PTR(err);
> 
> 		adapter = ice_adapter_new();
> 		if (!adapter)
> 			return ERR_PTR(-ENOMEM);
>+		adapter->device_serial_number = dsn;
> 		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
> 	}
> 	return adapter;
>@@ -110,11 +97,13 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>  *
>  * Context: Process, may sleep.
>  */
>-void ice_adapter_put(const struct pci_dev *pdev)
>+void ice_adapter_put(struct pci_dev *pdev)
> {
>-	unsigned long index = ice_adapter_index(pdev);
>+	u64 dsn = pci_get_dsn(pdev);
> 	struct ice_adapter *adapter;
>+	unsigned long index;
> 
>+	index = ice_adapter_index(dsn);
> 	scoped_guard(mutex, &ice_adapters_mutex) {
> 		adapter = xa_load(&ice_adapters, index);
> 		if (WARN_ON(!adapter))
>-- 
>2.39.3
>
