Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39460852BED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D628F40815;
	Tue, 13 Feb 2024 09:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxUjrE5nrAVe; Tue, 13 Feb 2024 09:07:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFD2F4081B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707815246;
	bh=Ffmqna1eQFY7XCg1bFJY3BzV7/JNB64CH2MEWM1SEao=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4ZhCgUYZLpUJUW5kRtveD7RbnAeWq7acivjcHUGWUx0bqgCZniDQ0o/x7tnioYx2W
	 RMlS7vzCVoOaC5ljNe96WEDTS4CJNcpq5ddswJVhOyShAYLlc5mvLvB/HX6nKuocx2
	 0fA2S+Kn23WOP8qgK1THRG/8+AMB7uUb8/15bXbxf9eRp89wpcVPkRSQRnYHp2adSN
	 HK5rLF0PkCoteW5lvu2c9V4s9bpKCOrZmRG6T44zf8YO7IIIuc4zchQOq0Ges9fBRH
	 KTfWs80reBWjIQznGbrwlSipX6bUB5mmTm3Ewuypn1FsniUCqoDTIyXYu2w7unXu3s
	 unZuJ6R0gm6tg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFD2F4081B;
	Tue, 13 Feb 2024 09:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CE8E1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 445F160B03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Gx5ZFQQEQw8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:07:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52f; helo=mail-ed1-x52f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C8BC060A71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8BC060A71
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8BC060A71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:07:22 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-561f4bc306fso430076a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 01:07:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707815240; x=1708420040;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ffmqna1eQFY7XCg1bFJY3BzV7/JNB64CH2MEWM1SEao=;
 b=ZXR3sisvPTBgquxW8zhKUmywpNceCgn97FtgYyBVOCOskbTnmOiTkS/RhKn6YaXl6s
 /TzLpk4Y2VFLzQCjY4nd4vpud2WBcHAUmHDPEBbIrTZ9+fcLI+aO//Vk+t2yOcZ2eYkq
 oFiviA6JhqQ+oXhgdQAZTzvaMIUZowcig3QotoN+fbiGzZUWZLCIo2epSy5xJ4B3kxOt
 pZd36x1mbRLHr0hV8hbU4lDsAPg0TpEVkTcRAn43487GEK80g93E2uZlseTXP3GdtCTV
 mVS22YLK9Z1ahJwXRnM/hoTmGs9vbU6x5P4vuH+U+piSfn2qw3CrhHw+EsE4wTq9pWAK
 BhSQ==
X-Gm-Message-State: AOJu0YxkXwJJ7uav1WCXczj3HC+FtmOW/02BQbecPe9K3othA4lwMIIX
 8F8aSvRwtZF2efzYIgnxhU8Uc6GU1b0eeGB82cr4qq45G9ILTU5ZCsBebJRHajs=
X-Google-Smtp-Source: AGHT+IHcMNYSPv3TFmzsr88My6TJDfmBtLt4LLJ/x425cm8XpRVWxNRqsM04X921LBX5Ywt+xIICtg==
X-Received: by 2002:a17:906:24d8:b0:a3d:1457:446 with SMTP id
 f24-20020a17090624d800b00a3d14570446mr357503ejb.54.1707815240574; 
 Tue, 13 Feb 2024 01:07:20 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVtE76QMANdSm1O2nRZA21Hdn+XmNYaeFVUB338l0GJUsr92Naxy9O11SIbXIOu5ek+3pJ/ZIyJ9n8mhnjQ0HDDl0pzBST3VLWJ2oDNKD9rZm3db2+yUhPcJFSOzn7Rrf0V9OzhB97dyRIKse0LeIuHuljfvHmEx3TdlJ2eal/5avIzOFcR823ygH3OLlXdXIhM+VOfh7vAbOU2nSTNc9FLqyHn68ee4r2NQAo3zxqr+0abQWm2IGwGxgj45/s5r1vKJScPLFB6xBcv5PvPF2Z20WGN6CUGzsD4x5aoLH32uGayOFPOx0pE4j3UnzpSE2RN/Iy3/3HwtCOzEynk0RssX98N7LiYc/86ONpe6S/vyTdz4DoCUD1pKfJUDf7k2acIVDs9A13w6KkW2Cv5sPx7McPiL56JXG438n38VoH2rS+lf73r+EdEL3+v6MJ15Ctwpt0Oy9gPdVcT7g3I04B7GiepZk4y6bWdRxejBO8=
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 qb8-20020a1709077e8800b00a3ccd1c7424sm1076247ejc.132.2024.02.13.01.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 01:07:20 -0800 (PST)
Date: Tue, 13 Feb 2024 10:07:17 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZcsxRRrVvnhjLxn3@nanopsycho>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707815240; x=1708420040;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Ffmqna1eQFY7XCg1bFJY3BzV7/JNB64CH2MEWM1SEao=;
 b=B2EhX1TZcGhuZu1kZiNSMrzmnY6b2flx5wDZn1kDVafxjErT9IWk5in/rrHwcVBnmq
 lm0DourvHh+hezuBh12E1bQrNbU+GCrdYO0P+vZGgquFzclEZjZdUE13io/6ODTSZlO0
 T17XJeboEM3jDhjzvOY8Q2mluaRJf67gfZ8KlWZpZVXtfzyJmgKE+LwYgwLITzXM9YNk
 3MXHCMRReGc4SFbtfih5gON7UD/X9rW4PgM6eggIruGfJPqV61+aDAyfH+0900pZPWCn
 83HXdIUnkTnMgQnaygxmi6KbbmnOuRVqCfeLOn6mqkyDY5La+9TjQKHXuQw1Tu5VPBUC
 hTRg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=B2EhX1TZ
Subject: Re: [Intel-wired-lan] [iwl-next v1 6/7] ice: enable_rdma devlink
 param
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, wojciech.drewek@intel.com,
 marcin.szycik@intel.com, netdev@vger.kernel.org, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 08:35:08AM CET, michal.swiatkowski@linux.intel.com wrote:
>Implement enable_rdma devlink parameter to allow user to turn RDMA
>feature on and off.
>
>It is useful when there is no enough interrupts and user doesn't need
>RDMA feature.
>
>Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 32 ++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_lib.c     |  8 ++++-
> drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++------
> 3 files changed, 45 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index b82ff9556a4b..4f048268db72 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -1675,6 +1675,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>+static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
>+					    union devlink_param_value val,
>+					    struct netlink_ext_ack *extack)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	bool new_state = val.vbool;
>+
>+	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
>+		return -EOPNOTSUPP;
>+
>+	return 0;
>+}
>+
> static const struct devlink_param ice_devlink_params[] = {
> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> 			      ice_devlink_enable_roce_get,
>@@ -1700,6 +1713,8 @@ static const struct devlink_param ice_devlink_params[] = {
> 			      ice_devlink_msix_min_pf_get,
> 			      ice_devlink_msix_min_pf_set,
> 			      ice_devlink_msix_min_pf_validate),
>+	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>+			      NULL, NULL, ice_devlink_enable_rdma_validate),
> };
> 
> static void ice_devlink_free(void *devlink_ptr)
>@@ -1776,9 +1791,22 @@ ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
> int ice_devlink_register_params(struct ice_pf *pf)
> {
> 	struct devlink *devlink = priv_to_devlink(pf);
>+	union devlink_param_value value;
>+	int err;
>+
>+	err = devlink_params_register(devlink, ice_devlink_params,

Interesting, can't you just take the lock before this and call
devl_params_register()?

Moreover, could you please fix your init/cleanup paths for hold devlink
instance lock the whole time?


pw-bot: cr


>+				      ARRAY_SIZE(ice_devlink_params));
>+	if (err)
>+		return err;
> 
>-	return devlink_params_register(devlink, ice_devlink_params,
>-				       ARRAY_SIZE(ice_devlink_params));
>+	devl_lock(devlink);
>+	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>+	devl_param_driverinit_value_set(devlink,
>+					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
>+					value);
>+	devl_unlock(devlink);
>+
>+	return 0;
> }
> 
> void ice_devlink_unregister_params(struct ice_pf *pf)
>diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>index a30d2d2b51c1..4d5c3d699044 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lib.c
>+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>@@ -829,7 +829,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
>  */
> bool ice_is_rdma_ena(struct ice_pf *pf)
> {
>-	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>+	union devlink_param_value value;
>+	int err;
>+
>+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>+					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
>+					      &value);
>+	return err ? false : value.vbool;
> }
> 
> /**
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index 824732f16112..4dd59d888ec7 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -5177,23 +5177,21 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> 	if (err)
> 		goto err_init;
> 
>+	err = ice_init_devlink(pf);
>+	if (err)
>+		goto err_init_devlink;
>+
> 	devl_lock(priv_to_devlink(pf));
> 	err = ice_load(pf);
> 	devl_unlock(priv_to_devlink(pf));
> 	if (err)
> 		goto err_load;
> 
>-	err = ice_init_devlink(pf);
>-	if (err)
>-		goto err_init_devlink;
>-
> 	return 0;
> 
>-err_init_devlink:
>-	devl_lock(priv_to_devlink(pf));
>-	ice_unload(pf);
>-	devl_unlock(priv_to_devlink(pf));
> err_load:
>+	ice_deinit_devlink(pf);
>+err_init_devlink:
> 	ice_deinit(pf);
> err_init:
> 	pci_disable_device(pdev);
>@@ -5290,12 +5288,12 @@ static void ice_remove(struct pci_dev *pdev)
> 	if (!ice_is_safe_mode(pf))
> 		ice_remove_arfs(pf);
> 
>-	ice_deinit_devlink(pf);
>-
> 	devl_lock(priv_to_devlink(pf));
> 	ice_unload(pf);
> 	devl_unlock(priv_to_devlink(pf));
> 
>+	ice_deinit_devlink(pf);
>+
> 	ice_deinit(pf);
> 	ice_vsi_release_all(pf);
> 
>-- 
>2.42.0
>
>
