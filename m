Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0499B39BDA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 13:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 665D040DBC;
	Thu, 28 Aug 2025 11:43:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iMPI8b1feR1t; Thu, 28 Aug 2025 11:43:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78D8540C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756381409;
	bh=At/+UKG7o7s9yjCycozJFd+LEEjzdxgvXyjaRDSFnb8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9SC4zE4VNN1BjHw334dqt5nfiwkr72gDqZxOUWKydVFIaKVu5QiliLZ3lo/ojtAhd
	 /7/+1MTX+7xAQrDWTX9+jeaET08ojjWqosjX5yXlRbV6Yqc4bY0P+8EbErMI+vsaNU
	 0DlEkrEyncQvmHXu6NhkAoavSiksNyvlBAqtFIdbaCNYp1xdnR2AI83e6bITySPNcS
	 E1EFNGu+DJvZZt/tcnCnxU+c5wbQWNnViNUcZn6A7bdg2Alti2tiSImKyk/5yNOb5U
	 jA79kcGTJAVgJdjRcqOET10xgVYPt6y69WBVy3jLeU2t6KNgDSI65KrsFLKvIRzr7Z
	 hWhYWCK9ZW16g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78D8540C39;
	Thu, 28 Aug 2025 11:43:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 610531B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DE9940CFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Be7PDd93qg2b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 11:43:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::435; helo=mail-wr1-x435.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F0BB140C8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0BB140C8B
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0BB140C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:43:20 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-3c6df24f128so538716f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 04:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756381399; x=1756986199;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=At/+UKG7o7s9yjCycozJFd+LEEjzdxgvXyjaRDSFnb8=;
 b=RZ1Jq5NgUCCDXc/MTlJnycZrRGALbufttt8Ojauhya3oZWNrELvx1dBaIglBxh1GJL
 Vkq2abkWXLpHtcOlGolee4dQ8sopkSf2y3oZ8DDmOaNbCrskjpPaOdcUqdMRnlX880OW
 cL9l6ynngSc2vxELnDRUrbZLWVwKWi8nncaaFTFUsVzkkA1ayXREWJ3Q7bfOuFI+VUn5
 419vCEFhVLuwK40SpySJoBsm8MZIndVC6JYIxM5rBTCDsjL48B93RyF+qn1kbYeZ8MHG
 u6W0IqiTT8AFojLOHE6OggIESr6cBBGfdbioQDjbZHAvdDQHffeCFNAcYrgA822M8q6R
 uHNg==
X-Gm-Message-State: AOJu0YzkN8q58iRWHZLG6H8a5JgWepducGOdNjlX06jj5gZRwAiTcbud
 M0VNwuQwf4gYXhQZObwKqtUCnU0rG6BIrX5xJmccsBB2Uw+fMecKzjZkCaZgIfh5Jco=
X-Gm-Gg: ASbGnctTM+FKo5Un2KVgg3vmiTsel3QdYiwRkLKjJMNd8x4W6/pXBilRHSJWsfijlHf
 5Z+y7ef75WG68Wpi9qeEiPRfCJ+bgHVM4ls7O4E4f+LfoVzYtad5A8MUIUUGhA4I7lKdJrImxgk
 0es+o4q7zowe6x7vKtImWRZDxsR5zFDLxrsfjlWA1b0oIxbr7lw5vN2aXCrUvjtnJNyyNLxkzmT
 pf1qmIYbhEKqSZ+kRz4N1nRSUfdvknLNkz+rPBDD5iCiB/xUcm/zYpF9s+93/3BWcFULOGUndfG
 Fl3ySPduEmGcuYtfBMDJRKYzDX5jSx5eBzOuv4pWIOcVgZz7SD9OT8sk4DXxG/CS9v05CqcHxPv
 cCwSzVlk61iR/Q5Nv9Uc1L9PI6CjEPC1oNlc=
X-Google-Smtp-Source: AGHT+IGp5dBjpRzjY49aqe/QenUi3apAjO5ZEefw6f+AyK8a3dUeRX3nZIMy7HD2Rg7v9smMeUcwHw==
X-Received: by 2002:a05:6000:1886:b0:3cb:1cb3:70e2 with SMTP id
 ffacd0b85a97d-3cb1cb37c94mr7767308f8f.23.1756381398563; 
 Thu, 28 Aug 2025 04:43:18 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3c70e4ba1eesm25961792f8f.2.2025.08.28.04.43.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 04:43:18 -0700 (PDT)
Date: Thu, 28 Aug 2025 13:43:11 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: mheib@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com, 
 netdev@vger.kernel.org, horms@kernel.org, jacob.e.keller@intel.com, 
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Message-ID: <pdanf5ciga5ddl7xyi2zkltcznyz4wtnyqyaqm7f5oqpcrubfz@ma4juoq4qlph>
References: <20250823094952.182181-1-mheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250823094952.182181-1-mheib@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1756381399; x=1756986199;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=At/+UKG7o7s9yjCycozJFd+LEEjzdxgvXyjaRDSFnb8=;
 b=rMVlHY5virmSTG37p8nT37kH479t9VpbdcG4J4v6g1jio8IVdRLKe5dHKJ7xC54K7h
 QmhqHIGR+mTijn1bYO/QIEnvJiRZSsLNqglYIElyz3bBxUyu6VqxKCbeIDodT5CjGv1u
 /Rb1SH0Hsq71LkRQ69tA8NfE7bb+68FAATyJ69NouLzvmklX8RLGXvO12pqJ8yUicAqa
 UgnvhnmF/UHMo19+D+t8e4vPdm8gZEo1MhKASQfoGcIA/XEMu5PzWQxjeEhNPvNAvck8
 zKFBiEsCocMBtlCblbMaFWJd4e/kxACXZYEFCC+rl4uj3c/oIEOu+vc1NCdJPLzMbnCx
 v6tw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=rMVlHY5v
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: add devlink param to
 control VF MAC address limit
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

Sat, Aug 23, 2025 at 11:49:52AM +0200, mheib@redhat.com wrote:
>From: Mohammad Heib <mheib@redhat.com>
>
>This patch introduces a new devlink runtime parameter that controls
>the maximum number of MAC filters allowed per VF.
>
>The parameter is an integer value. If set to a non-zero number, it is
>used as a strict per-VF cap. If left at zero, the driver falls back to
>the default limit calculated from the number of allocated VFs and
>ports.
>
>This makes the limit policy explicit and configurable by user space,
>instead of being only driver internal logic.
>
>Example command to enable per-vf mac limit:
> - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>	value 12 \
>	cmode runtime
>
>- Previous discussion about this change:
>  https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com
>
>Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
>Signed-off-by: Mohammad Heib <mheib@redhat.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>---
> Documentation/networking/devlink/i40e.rst     | 22 ++++++++
> drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
> .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
> .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++----
> 4 files changed, 95 insertions(+), 12 deletions(-)
>
>diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
>index d3cb5bb5197e..f8d5b00bb51d 100644
>--- a/Documentation/networking/devlink/i40e.rst
>+++ b/Documentation/networking/devlink/i40e.rst
>@@ -7,6 +7,28 @@ i40e devlink support
> This document describes the devlink features implemented by the ``i40e``
> device driver.
> 
>+Parameters
>+==========
>+
>+.. list-table:: Driver specific parameters implemented
>+    :widths: 5 5 90
>+
>+    * - Name
>+      - Mode
>+      - Description
>+    * - ``max_mac_per_vf``
>+      - runtime
>+      - Controls the maximum number of MAC addresses a VF can use on i40e devices.
>+
>+        By default (``0``), the driver enforces its internally calculated per-VF
>+        MAC filter limit, which is based on the number of allocated VFS.
>+
>+        If set to a non-zero value, this parameter acts as a strict cap:
>+        the driver enforces the maximum of the user-provided value and ignore
>+        internally calculated limit.
>+
>+        The default value is ``0``.
>+
> Info versions
> =============
> 
>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>index 801a57a925da..d2d03db2acec 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>@@ -574,6 +574,10 @@ struct i40e_pf {
> 	struct i40e_vf *vf;
> 	int num_alloc_vfs;	/* actual number of VFs allocated */
> 	u32 vf_aq_requests;
>+	/* If set to non-zero, the device uses this value
>+	 * as maximum number of MAC filters per VF.
>+	 */
>+	u32 max_mac_per_vf;
> 	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
> 	struct ratelimit_state mdd_message_rate_limit;
> 	/* DCBx/DCBNL capability for PF that indicates
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>index cc4e9e2addb7..8532e40b5c7d 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>@@ -5,6 +5,42 @@
> #include "i40e.h"
> #include "i40e_devlink.h"
> 
>+static int i40e_max_mac_per_vf_set(struct devlink *devlink,
>+				   u32 id,
>+				   struct devlink_param_gset_ctx *ctx,
>+				   struct netlink_ext_ack *extack)
>+{
>+	struct i40e_pf *pf = devlink_priv(devlink);
>+
>+	pf->max_mac_per_vf = ctx->val.vu32;
>+	return 0;
>+}
>+
>+static int i40e_max_mac_per_vf_get(struct devlink *devlink,
>+				   u32 id,
>+				   struct devlink_param_gset_ctx *ctx)
>+{
>+	struct i40e_pf *pf = devlink_priv(devlink);
>+
>+	ctx->val.vu32 = pf->max_mac_per_vf;
>+	return 0;
>+}
>+
>+enum i40e_dl_param_id {
>+	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>+	I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,

What's so i40 specific about this? Sounds pretty generic to be.



>+};
>+
>+static const struct devlink_param i40e_dl_params[] = {
>+	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
>+			     "max_mac_per_vf",
>+			     DEVLINK_PARAM_TYPE_U32,
>+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>+			     i40e_max_mac_per_vf_get,
>+			     i40e_max_mac_per_vf_set,
>+			     NULL),
>+};
>+
> static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
> {
> 	u8 dsn[8];
>@@ -165,7 +201,19 @@ void i40e_free_pf(struct i40e_pf *pf)
>  **/
> void i40e_devlink_register(struct i40e_pf *pf)
> {
>-	devlink_register(priv_to_devlink(pf));
>+	int err;
>+	struct devlink *dl = priv_to_devlink(pf);
>+	struct device *dev = &pf->pdev->dev;
>+
>+	err = devlink_params_register(dl, i40e_dl_params,
>+				      ARRAY_SIZE(i40e_dl_params));
>+	if (err) {
>+		dev_err(dev,
>+			"devlink params register failed with error %d", err);
>+	}
>+
>+	devlink_register(dl);
>+
> }
> 
> /**
>@@ -176,7 +224,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
>  **/
> void i40e_devlink_unregister(struct i40e_pf *pf)
> {
>-	devlink_unregister(priv_to_devlink(pf));
>+	struct devlink *dl = priv_to_devlink(pf);
>+
>+	devlink_unregister(dl);
>+	devlink_params_unregister(dl, i40e_dl_params,
>+				  ARRAY_SIZE(i40e_dl_params));
> }
> 
> /**
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>index 081a4526a2f0..e7c0c791eed1 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>@@ -2935,19 +2935,23 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
> 		if (!f)
> 			++mac_add_cnt;
> 	}
>-
>-	/* If this VF is not privileged, then we can't add more than a limited
>-	 * number of addresses.
>+	/* Determine the maximum number of MAC addresses this VF may use.
>+	 *
>+	 * - For untrusted VFs: use a fixed small limit.
>+	 *
>+	 * - For trusted VFs: limit is calculated by dividing total MAC
>+	 *  filter pool across all VFs/ports.
> 	 *
>-	 * If this VF is trusted, it can use more resources than untrusted.
>-	 * However to ensure that every trusted VF has appropriate number of
>-	 * resources, divide whole pool of resources per port and then across
>-	 * all VFs.
>+	 * - User can override this by devlink param "max_mac_per_vf".
>+	 *   If set its value is used as a strict cap.
> 	 */
>-	if (!vf_trusted)
>+	if (!vf_trusted) {
> 		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
>-	else
>+	} else {
> 		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
>+		if (pf->max_mac_per_vf > 0)
>+			mac_add_max = pf->max_mac_per_vf;
>+	}
> 
> 	/* VF can replace all its filters in one step, in this case mac_add_max
> 	 * will be added as active and another mac_add_max will be in
>@@ -2961,7 +2965,8 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
> 			return -EPERM;
> 		} else {
> 			dev_err(&pf->pdev->dev,
>-				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
>+				"Cannot add more MAC addresses: trusted VF reached its maximum allowed limit (%d)\n",
>+				mac_add_max);
> 			return -EPERM;
> 		}
> 	}
>-- 
>2.47.3
>
