Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB6F852BDC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:03:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8800240815;
	Tue, 13 Feb 2024 09:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gvd78SH1ITAD; Tue, 13 Feb 2024 09:03:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 578074081B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707814995;
	bh=j5ArfzYXN0Gx+Is8EX0U/hVLoCA2YC09SY9D27ZQazs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AHB1AD6+8rLi74+SlPZq75ewQA6tvP6WbykmxWphOKhg9VU3aZvciOkv+P7XlHyeg
	 /dlCxNUoWzqcJ6NU2tfMbEwLx6UfrCpDvcR4t76i86s4iCtG7Efs0ORhYPSk7kLOUb
	 eRKwtwue6pEcybcVt+JrzYCUM34VCODRMplpFDiNR9GaKtWNEDeD4OutZce+VN5R2i
	 /ccZPF9iSVEfkGj2jQPiLbkvgDr9wnedO8ItZXSzZpBAPki53o95H+9Cjcd0GDdg8D
	 0IoZ8nFPcl3RQPozvIQZhqoaaBmCGMCih7XDPLmvI6GrL4uVXacuzC4ZvHQ72jeIMa
	 /nlL2I2aZmjrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 578074081B;
	Tue, 13 Feb 2024 09:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DCDC1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8912E820CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSenRN94SpQI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:03:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A1AB82034
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A1AB82034
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A1AB82034
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:03:12 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-560037b6975so4562187a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 01:03:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707814990; x=1708419790;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j5ArfzYXN0Gx+Is8EX0U/hVLoCA2YC09SY9D27ZQazs=;
 b=Yns2tp1+uMYnZZyVf6vRAoqN0A8tS7HgfgM2H+Ifw8RriyuJZhITq+dOHvAqAwi7BX
 3Qgw04p+VGamBSHvA4ZuUHZGDwBhnmOdlb6dQxpHzl8lz3g/aGuYM6hTsMFdvMm4ZF13
 Cyoo8XVi/rXTRvRIRMEemH1rqXNXgjP/mIwaH6Og4k3SLV4vA29SQiYIfAjzqzGcWgrz
 j5h+U0yf6OSUUUwwxV3gKpUMVxs+Nkkc3Hxbt+wzf99qj3mqXdxoWB8dxzI9eKSPQOso
 +UeBCs9vEDkdsU3FTueUNMWIROr2lA2daeJQR25mIyd5f/KKWYql4DsP3bUZkIYup9KU
 Be9g==
X-Gm-Message-State: AOJu0YwBAKXniHgY4niQ7WiW9Pgmhs9QA5qZl17BJqa6/CEkgAtWgvAd
 iuEciz7jO19MqBySIHoZSKZfkKxMUVlHuUAwV1Ox0zj/m58IpKnxKhO7ZwMeUek=
X-Google-Smtp-Source: AGHT+IEUMKS5DtBbjBuFJ3GMudR12YrlAEVgDNF/7K45EDBfnS3CdK/DuVoSgtJ3+1ph0PaoH70unQ==
X-Received: by 2002:aa7:d7c9:0:b0:55f:f7bb:40fd with SMTP id
 e9-20020aa7d7c9000000b0055ff7bb40fdmr7531816eds.2.1707814989618; 
 Tue, 13 Feb 2024 01:03:09 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXScrc9CW4/rq1Jdgxfe7VslxByeyTKI1/PwlqoVt62PQ8jmB6LnNmaxdfyV7H7yXJ7/G2InJH98OnUjYP82uyouKN17CWuwSk8aTKG0zDxs0Zgcn4w+SWOdcbjvtAQKXzathJdiMmjEObiKi7mrq2VbeJRYQUNzpr5FqLRIGaVSUNuHXF9Tun/Qu0jFrahiyQXzh0nn30JE9KD5f4m7FV8nSoVEiyy6IaU5toIc6bU3QH1dtPgLYCeqlBjL08QH8E0qORJ6/2pGm0YP5E1kuZb6KzGV2D2S7j5Ebgfu+dpnaxmelw75vLW+huZNj0iYqmOP2uR3QI8yiscClmCMiy4lT+3v7gzmtlqyiOaugoFpdiP8tJ5rQ0vhpHECwHaQH/YFUfSaBpzWiV4y3ycUuTQKlNG6t59ycYFAeGn1siVcsRKY3EM3h3VLZmx5Lw6SaV1MW/9
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 e8-20020a056402148800b0055ff9299f71sm3545447edv.46.2024.02.13.01.03.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 01:03:09 -0800 (PST)
Date: Tue, 13 Feb 2024 10:03:05 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZcswSYA5GqtOb3ll@nanopsycho>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213073509.77622-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707814990; x=1708419790;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=j5ArfzYXN0Gx+Is8EX0U/hVLoCA2YC09SY9D27ZQazs=;
 b=O7mwltg4iBZna3zWHyaVZNsZ+4lZMtYt6RCn/SdVO2rLFAaSKoPPSEnbKS2TaUyZqB
 AfhNE/EX7YOBD/kPcC48fQie4CLFkfKUH4IHUOsL/DAL+X2epz83oPdT8btgLrCbjtF9
 lzvsyZkKJLoOiOeeXWI5T6lNTjV4dW1FuY+lMI2xpqMsndXGmpKpOFTLIX4nAZMUDhWm
 3QQzHvOvjj6DtoPU1amN2wTPiipwJOjOx7vmyBpA4gesfPJ+37lnxqPTo+AcHOMQjP6M
 3swovOyxOuPO8q3nOpGa2CaOJ5cZsmCJ8oURqC3WdGpIeNIIuni4DES3anTjIId2z9j6
 Jn/A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=O7mwltg4
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/7] ice: devlink PF MSI-X max
 and min parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 08:35:03AM CET, michal.swiatkowski@linux.intel.com wrote:
>Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>range.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h         |  8 ++
> drivers/net/ethernet/intel/ice/ice_devlink.c | 82 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_irq.c     |  6 ++
> 3 files changed, 96 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index c4127d5f2be3..24085f3c0966 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -94,6 +94,7 @@
> #define ICE_MIN_LAN_TXRX_MSIX	1
> #define ICE_MIN_LAN_OICR_MSIX	1
> #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>+#define ICE_MAX_MSIX		256
> #define ICE_FDIR_MSIX		2
> #define ICE_RDMA_NUM_AEQ_MSIX	4
> #define ICE_MIN_RDMA_MSIX	2
>@@ -535,6 +536,12 @@ struct ice_agg_node {
> 	u8 valid;
> };
> 
>+struct ice_pf_msix {
>+	u16 cur;
>+	u16 min;
>+	u16 max;
>+};
>+
> struct ice_pf {
> 	struct pci_dev *pdev;
> 
>@@ -604,6 +611,7 @@ struct ice_pf {
> 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
> 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>+	struct ice_pf_msix msix;
> 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> 	u16 num_lan_tx;		/* num LAN Tx queues setup */
> 	u16 num_lan_rx;		/* num LAN Rx queues setup */
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index cc717175178b..b82ff9556a4b 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -1603,6 +1603,78 @@ enum ice_param_id {
> 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
> };
> 
>+static int
>+ice_devlink_msix_max_pf_get(struct devlink *devlink, u32 id,
>+			    struct devlink_param_gset_ctx *ctx)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+
>+	ctx->val.vu16 = pf->msix.max;
>+
>+	return 0;
>+}
>+
>+static int
>+ice_devlink_msix_max_pf_set(struct devlink *devlink, u32 id,
>+			    struct devlink_param_gset_ctx *ctx)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	u16 max = ctx->val.vu16;
>+
>+	pf->msix.max = max;

What's permanent about this exactly?


>+
>+	return 0;
>+}
>+
>+static int
>+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
>+				 union devlink_param_value val,
>+				 struct netlink_ext_ack *extack)
>+{
>+	if (val.vu16 > ICE_MAX_MSIX) {
>+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
>+static int
>+ice_devlink_msix_min_pf_get(struct devlink *devlink, u32 id,
>+			    struct devlink_param_gset_ctx *ctx)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+
>+	ctx->val.vu16 = pf->msix.min;
>+
>+	return 0;
>+}
>+
>+static int
>+ice_devlink_msix_min_pf_set(struct devlink *devlink, u32 id,
>+			    struct devlink_param_gset_ctx *ctx)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	u16 min = ctx->val.vu16;
>+
>+	pf->msix.min = min;

What's permanent about this exactly?


>+
>+	return 0;
>+}
>+
>+static int
>+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
>+				 union devlink_param_value val,
>+				 struct netlink_ext_ack *extack)
>+{
>+	if (val.vu16 <= ICE_MIN_MSIX) {
>+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");
>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
> static const struct devlink_param ice_devlink_params[] = {
> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> 			      ice_devlink_enable_roce_get,
>@@ -1618,6 +1690,16 @@ static const struct devlink_param ice_devlink_params[] = {
> 			     ice_devlink_loopback_get,
> 			     ice_devlink_loopback_set,
> 			     ice_devlink_loopback_validate),
>+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
>+			      BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>+			      ice_devlink_msix_max_pf_get,
>+			      ice_devlink_msix_max_pf_set,
>+			      ice_devlink_msix_max_pf_validate),
>+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
>+			      BIT(DEVLINK_PARAM_CMODE_PERMANENT),

....


pw-bot: cr


>+			      ice_devlink_msix_min_pf_get,
>+			      ice_devlink_msix_min_pf_set,
>+			      ice_devlink_msix_min_pf_validate),
> };
> 
> static void ice_devlink_free(void *devlink_ptr)
>diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
>index ad82ff7d1995..fa7178a68b94 100644
>--- a/drivers/net/ethernet/intel/ice/ice_irq.c
>+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
>@@ -254,6 +254,12 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
> 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
> 	int vectors, max_vectors;
> 
>+	/* load default PF MSI-X range */
>+	if (!pf->msix.min)
>+		pf->msix.min = ICE_MIN_MSIX;
>+	if (!pf->msix.max)
>+		pf->msix.max = total_vectors / 2;
>+
> 	vectors = ice_ena_msix_range(pf);
> 
> 	if (vectors < 0)
>-- 
>2.42.0
>
>
