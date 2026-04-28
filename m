Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AomBJ6V8GmrVQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 13:10:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D2F4835FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 13:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F217680DF3;
	Tue, 28 Apr 2026 11:10:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E3hnkoa4gjY2; Tue, 28 Apr 2026 11:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19E9880D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777374616;
	bh=O1AkPynYqIymYpL+Gq8gW6WV8NTbD1Q/jdfJ1I78mNE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VMnwMHIZbkMA1SoB9sqFcFs30Alw0GCSU/ST12/HEbFre4CTR+jsPOOAOYL23Z7eP
	 8yivMiSGPwS3X8Qy92wb1BZilOl5YLbKpLNmDnaHWnG+UHGVWkp/A8JeI3SrtWj8Cg
	 8ULQHCslEDy1Xm9spOFpOiPiw/MP7YrskLIkWCR8TrLmt6Da6+E34fwQeoFHDjq2tO
	 SWNqJMdHjHFnWKee3weIf+3yB5Rf43z8/0+Aj+P0mKSfuFDn/6Xzzt918VFP9vP3EL
	 mGqOl6mzec7r0kTTZSpOdrKF/9M1OJHRst6JNrbifR64zBlm6X/Z3CcgkJ/OQpkw0B
	 R9kmVc4QmtyBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19E9880D47;
	Tue, 28 Apr 2026 11:10:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 08CD8231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 11:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE291608DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 11:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xk95yf0Zk_bh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 11:10:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0B7D46077F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B7D46077F
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B7D46077F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 11:10:09 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-483487335c2so109663875e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 04:10:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777374607; x=1777979407;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=O1AkPynYqIymYpL+Gq8gW6WV8NTbD1Q/jdfJ1I78mNE=;
 b=b4Qhoq0aoIMqCaRqfOQbk9WWLX45nGS9D3E4yUKVHRg8GGP3Yv7d9FEFkwVeWE8ocG
 gpZZtFtmmRz3iTKNAJlpulSP9Nb2NCr8oCSrufgoHwkLDkrk45qemGqjMLZK3fmphx4P
 LSROtNgr0M0wKBPf+fB/e9oiwx6TZI4j3GltT26jM0BGlW5IHyiVZhRnhB1GAXtUjFbL
 PH0dHxOQ0NfY42Kd8Plr2szUVALEt18eJ05G3SxHH07V1CK+kw4sGydQYJ/lFVEWIrnW
 QDJJK0YCnsawmjNothRBOagW8B/3ArNEphBhVCl4qdckp+ugGcCqePq4OEuU31FGpcc0
 sGnA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+SNLYR1RA+wHO4Q+51M2GHU3C4qkGxRLdDRlCMwQQeVOtbpnhnwMacgC/Q+25fvy9G9IFsw8sRh/Z2LU4eAgM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzF2QP0OOJyzrcj+X4dT0UEtCPnnc1aexI5cGS4Jq/VWM9myP2U
 /kL62/lHlxQmHs+NK+mvsv4gDsgRgC60OzX/F9lsEdp7rnsJ60+IAqyIRIuxwboHzMI=
X-Gm-Gg: AeBDieuy3rFC1gIJ3uJJf5aZntdCn5852J25lCPTlQ2ooFCtLOqmcH9jEW3UsNZUZPk
 dkVaccucXJIWyb6+yeGYtYmvZqa1xqKBKDbyzMtCCSAX4K7458c/Twzs4pxzX1a2P/bIELq3rLJ
 neZPWbHIIC5Ed2mhFoAnpFY2z0hotgAuCAt8ThXi7525ncPl1FfiMRsswkkH+rL90VNLcCKPD9a
 yUlbwTK5XRCQ71Ml0bo7y7qAL/dzYb9qYLSJOsIyVzcvt/30w1vAuxsIAf34VxnGMwF1w51fT2F
 6sLm4Wdtxbamd0AEEj/Hh13MZUIr1cNmTr69EG0E1IpEj1/Za4Qa62Z+ewWA8RcSw70weDHGx5F
 T4EuZbOoOAjas/2VdADP7OEcv8nlduBSxdyOLNiW5cTymOccr5XVPXXRNAs+8LlxmEDk8r92DqH
 ZWc/6hVmkTPm++rLGFRGD+o4p4Ag0KL11sCEieUGGQNw==
X-Received: by 2002:a05:600c:3208:b0:486:fb0b:ad79 with SMTP id
 5b1f17b1804b1-48a77e64f4cmr23425765e9.20.1777374606361; 
 Tue, 28 Apr 2026 04:10:06 -0700 (PDT)
Received: from FV6GYCPJ69 ([85.163.81.98]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a773aeb49sm48738645e9.4.2026.04.28.04.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 04:10:05 -0700 (PDT)
Date: Tue, 28 Apr 2026 13:10:01 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, 
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, 
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Mark Bloch <mbloch@nvidia.com>, Simon Horman <horms@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <afCU-3Xmole6v4X4@FV6GYCPJ69>
References: <20260428090912.3461-1-przemyslaw.kitszel@intel.com>
 <20260428090912.3461-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260428090912.3461-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1777374607; x=1777979407;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=O1AkPynYqIymYpL+Gq8gW6WV8NTbD1Q/jdfJ1I78mNE=;
 b=r52Km7hyLbtMaBvgjLEoav185Q7d0kr6syzFgP4n+YJUVOgTy+FPFztXhfNK6oGUc0
 Ys/+StbbhU6mE+Cx20et+UQAgWLQK/IU6pQVQkp8bQD0kZSdTbfCIEOEIXwuhTiBI7R8
 ytElmDZamE3QwV10yGRQGK/SB0iBGuNUmCVXRbIdgazy7U5NMNSacv1oGfF/BTaDbXbT
 s9qhfDInsB2f2M5bfon7fEPKds5SsNm7rew0RT9qO7AE1J/xGwCwkgMuCLzPVDpG/tdU
 f7wQsi/Vj/Hn53AkqlYvMAFGxvFZB12vyPskhAxPSQvGV9dLLIS2JYHIHZIV/iXSwELP
 XHyA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=r52Km7hy
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink,
 mlx5: add init/fini ops for shared devlink
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
X-Rspamd-Queue-Id: A0D2F4835FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:jedrzej.jagielski@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.972];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

Tue, Apr 28, 2026 at 11:09:11AM +0200, przemyslaw.kitszel@intel.com wrote:
>Add .shd_init() and .shd_fini() ops, that will be called for the first
>devlink_shd_get() (to initialize driver' priv data) and on the last
>devlink_shd_put() (to allow for the cleanup). Both ops are optional.
>
>.shd_init() could return an error, which will stop creation of shd
>instance. The initializer also gets an additional, optional param,
>that driver could use for any needs.
>
>If any of the callbacks will need to get devlink instance, it could
>be accessed by shd_priv_to_devlink().
>
>Both callbacks are called with devl_lock held and devlink registered.
>
>Next commit will make use of the callbacks, another one will make use also
>of the non-null additional param (outside of this series).
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>---
>first discussed at:
>https://lore.kernel.org/netdev/20260325063143.261806-3-przemyslaw.kitszel@intel.com
>
>Sashiko suggested to convert devlink_shd_create() to return ERR_PTR(),
>and propagate that up to the driver. It think it will just make code more
>verbose for not much benefit. And drivers could just store err if they
>want in the passed @init_param.
>
>---
> include/net/devlink.h                         | 26 +++++++++++++
> .../ethernet/mellanox/mlx5/core/sh_devlink.c  |  2 +-
> net/devlink/sh_dev.c                          | 39 ++++++++++++++++++-
> 3 files changed, 64 insertions(+), 3 deletions(-)
>
>diff --git a/include/net/devlink.h b/include/net/devlink.h
>index bcd31de1f890..5d3a1337bfa1 100644
>--- a/include/net/devlink.h
>+++ b/include/net/devlink.h
>@@ -1586,6 +1586,30 @@ struct devlink_ops {
> 				    struct devlink_rate *parent,
> 				    void *priv_child, void *priv_parent,
> 				    struct netlink_ext_ack *extack);
>+
>+	/**
>+	 * shd_init: Shared devlink instance initializer
>+	 * @priv: shd_devlink' priv
>+	 * @init_param: additional param to pass to driver callback
>+	 *
>+	 * Called once when the shared instance is first created (by the first
>+	 * devlink_shd_get() call).
>+	 * Should initialize the driver's private data embedded in the shared
>+	 * devlink. May be NULL.
>+	 *
>+	 * Return: 0 on success, negative to prevent shared instance usage.
>+	 */
>+	int (*shd_init)(void *priv, void *init_param);

1. "param" has specific meaning in devlink context
2. You don't use the arg in driver

Care to drop it?

Otherwise, this looks fine to me. Thanks! (small nitpick below)


>+	/**
>+	 * shd_fini: Shared devlink instance finalizer
>+	 * @priv: shd_devlink' priv
>+	 *
>+	 * Called once when the last reference is dropped and the shared
>+	 * instance is destroyed. Should clean up the driver's private data.
>+	 * May be NULL.
>+	 */
>+	void (*shd_fini)(void *priv);
>+
> 	/**
> 	 * selftests_check() - queries if selftest is supported
> 	 * @devlink: devlink instance
>@@ -1651,9 +1675,11 @@ void devlink_free(struct devlink *devlink);
> struct devlink *devlink_shd_get(const char *id,
> 				const struct devlink_ops *ops,
> 				size_t priv_size,
>+				void *init_param,
> 				const struct device_driver *driver);
> void devlink_shd_put(struct devlink *devlink);
> void *devlink_shd_get_priv(struct devlink *devlink);
>+struct devlink *shd_priv_to_devlink(void *priv);
> 
> /**
>  * struct devlink_port_ops - Port operations
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c b/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c
>index b925364765ac..1b8b1ce7e72d 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c
>@@ -43,7 +43,7 @@ int mlx5_shd_init(struct mlx5_core_dev *dev)
> 	*end = '\0';
> 
> 	/* Get or create shared devlink instance */
>-	devlink = devlink_shd_get(sn, &mlx5_shd_ops, 0, pdev->dev.driver);
>+	devlink = devlink_shd_get(sn, &mlx5_shd_ops, 0, NULL, pdev->dev.driver);
> 	kfree(sn);
> 	if (!devlink)
> 		return -ENOMEM;
>diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
>index 85acce97e788..048a2a6adc9e 100644
>--- a/net/devlink/sh_dev.c
>+++ b/net/devlink/sh_dev.c
>@@ -34,6 +34,7 @@ static struct devlink_shd *devlink_shd_lookup(const char *id)
> static struct devlink_shd *devlink_shd_create(const char *id,
> 					      const struct devlink_ops *ops,
> 					      size_t priv_size,
>+					      void *init_param,
> 					      const struct device_driver *driver)
> {
> 	struct devlink_shd *shd;
>@@ -49,16 +50,30 @@ static struct devlink_shd *devlink_shd_create(const char *id,
> 	if (!shd->id)
> 		goto err_devlink_free;
> 	shd->priv_size = priv_size;
>-	refcount_set(&shd->refcount, 1);
> 
> 	devl_lock(devlink);
> 	devl_register(devlink);
>+
>+	if (ops->shd_init) {
>+		int err;
>+
>+		err = ops->shd_init(shd->priv, init_param);
>+		if (err)
>+			goto err_unregister;
>+	}
>+
> 	devl_unlock(devlink);
> 
>+	refcount_set(&shd->refcount, 1);
> 	list_add_tail(&shd->list, &shd_list);
> 
> 	return shd;
> 
>+err_unregister:
>+	devl_unregister(devlink);
>+	devl_unlock(devlink);
>+	kfree(shd->id);
>+
> err_devlink_free:
> 	devlink_free(devlink);
> 	return NULL;
>@@ -69,7 +84,12 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
> 	struct devlink *devlink = priv_to_devlink(shd);
> 
> 	list_del(&shd->list);
>+

Not sure why to add empty line here.


> 	devl_lock(devlink);
>+
>+	if (devlink->ops->shd_fini)
>+		devlink->ops->shd_fini(shd->priv);
>+
> 	devl_unregister(devlink);
> 	devl_unlock(devlink);
> 	kfree(shd->id);
>@@ -81,6 +101,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
>  * @id: Identifier string (e.g., serial number) for the shared instance
>  * @ops: Devlink operations structure
>  * @priv_size: Size of private data structure
>+ * @init_param: Passed to .shd_init() callback alongside driver's priv
>  * @driver: Driver associated with the shared devlink instance
>  *
>  * Get an existing shared devlink instance identified by @id, or create
>@@ -96,16 +117,17 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
> struct devlink *devlink_shd_get(const char *id,
> 				const struct devlink_ops *ops,
> 				size_t priv_size,
>+				void *init_param,
> 				const struct device_driver *driver)
> {
> 	struct devlink *devlink;
> 	struct devlink_shd *shd;
> 
> 	mutex_lock(&shd_mutex);
> 
> 	shd = devlink_shd_lookup(id);
> 	if (!shd) {
>-		shd = devlink_shd_create(id, ops, priv_size, driver);
>+		shd = devlink_shd_create(id, ops, priv_size, init_param, driver);
> 		goto unlock;
> 	}
> 
>@@ -159,3 +181,16 @@ void *devlink_shd_get_priv(struct devlink *devlink)
> 	return shd->priv;
> }
> EXPORT_SYMBOL_GPL(devlink_shd_get_priv);
>+
>+/** shd_priv_to_devlink - Get devlink instance from shd_devlink's priv
>+ * @priv: Driver's priv data
>+ *
>+ * Return: pointer to shared devlink instance the @priv belongs to.
>+ */
>+struct devlink *shd_priv_to_devlink(void *priv)
>+{
>+	struct devlink_shd *shd = container_of(priv, struct devlink_shd, priv);
>+
>+	return priv_to_devlink(shd);
>+}
>+EXPORT_SYMBOL_GPL(shd_priv_to_devlink);
>-- 
>2.39.3
>
