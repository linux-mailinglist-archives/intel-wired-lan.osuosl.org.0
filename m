Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 295E88D8278
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 14:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD9E682222;
	Mon,  3 Jun 2024 12:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kV3Lcu1ggOlP; Mon,  3 Jun 2024 12:38:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5035482241
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717418323;
	bh=66sQ4OCDCpaCDV4/jKK7MhZm8aGeMyEaPiYZ1qH50os=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BuQ7dzB3tqBPdVZlNNcyJCYJgfzwkv60TA3g5KQ96cqOZRIfh2dLj08yy/FgatMK1
	 5nUqRL98pKuJlexowzBksXrbY8sPnJokFqFRoIW0DDBdLDORS3iUCjSQFmfOJfFu16
	 1ESXDsz9txUGEoCebCcRQFFk1PawpT+/V8DphGRiICR4MjT4/HVhxRqEKouWBTTtbI
	 cRFInr3ln1MsXuQTHpWIH+CklPK074vo6rLI+pUF9jjE1w5p7kjsosJDocGvH/Ci8n
	 vxuHSr6fE5M9G8/VkSgPFhL9/WGTMnwxLVM9qsAblOghx1oE94QURorZ+qzQf8Tiw3
	 S5VpMon7wq2JQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5035482241;
	Mon,  3 Jun 2024 12:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A12EB1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 92FDD4016D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:38:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E75gSNgC2xUL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 12:38:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12e; helo=mail-lf1-x12e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E747E40152
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E747E40152
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E747E40152
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:38:36 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-52b840cfecdso4090754e87.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Jun 2024 05:38:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717418315; x=1718023115;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=66sQ4OCDCpaCDV4/jKK7MhZm8aGeMyEaPiYZ1qH50os=;
 b=fG3KyN2e7hnG23CqIPKe7Gcd2+1CEOGrwm2N0raESpMoHmwhNVTWk12Uyx6P1zzFqd
 LuOmXquByNAAk+gsVsKEr1q7eE+wx16PMiOtkx7il2Y90/hINbnepQyMHZT6lpusQIDc
 lkEvALz7bab/w5LuBvmzaZX7k3mm7vmlG2raA5ApwubwJ5NvfOyG2gd0MWsI6U4+RD7z
 j3u+0z+7BxVeabvPB2u0a0Mr+WEdFXCCuHDa1u5Jihnxotio1y6l4AuXoiWUxwwJkxq4
 OLDM+rXhpkqE97GYwBRcNaoedYKtycLFw1qd1G5c7TxZ7IkqnuSvhN7sYKDkuHLw2IkP
 0C1A==
X-Gm-Message-State: AOJu0YyFG7kdcIaRco4/lEkPWTVYICn7RFMOCDCMlyt13kifpee4aLEN
 rhg0LD6DbhUwk2jO/+q4sj/NO2DAlC2xVZjCMxhFMhVE/JDN9aey3gVaIs1S35g=
X-Google-Smtp-Source: AGHT+IHZrMbd4rwiIHWpYvTAswn9KEG+TUH8crWWVgs7kGrnY962S77WYVCCeIkVfCVSzHCtlzg8Kg==
X-Received: by 2002:a05:6512:1152:b0:52b:9c8a:7356 with SMTP id
 2adb3069b0e04-52b9c8a74e6mr1718565e87.49.1717418314441; 
 Mon, 03 Jun 2024 05:38:34 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4212b84ae09sm116408985e9.18.2024.06.03.05.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Jun 2024 05:38:33 -0700 (PDT)
Date: Mon, 3 Jun 2024 14:38:30 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zl25Rioa4K2BmYe6@nanopsycho.orion>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
 <20240603095025.1395347-6-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240603095025.1395347-6-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1717418315; x=1718023115;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=66sQ4OCDCpaCDV4/jKK7MhZm8aGeMyEaPiYZ1qH50os=;
 b=Qz+Wn+F+V4DmcWX1nxM9DTJf/JoO8o6CR+BPTS/tipcc16huU/r9LbMJ9QXkG8Z7/F
 WSXM+wJZ8hm+6blmUjhYGdiJWDtDl8E3wkiR+w4z8mhb5VGoZOHIhVa+py88owbClN0n
 mYBFhn+4PfCzquEf8K0fsp1ADNa4GGAOs75BLkHk+pLoMynTGjjGT0HR5lBdLse6ETVj
 +Uy4bJaRXaP4MZj8r8DL2OzdLpIDHkAp3hUH23VydpfWtvuSTcG/gIJdmLPNa9U02IsZ
 c5hU2YjuaKiYBuH7Z+LG8odeHI3YJwSjh0/Q6MO1w1qMudWPGtW5k9OIG4DHg2ARvurU
 FnXA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Qz+Wn+F+
Subject: Re: [Intel-wired-lan] [iwl-next v4 05/15] ice: allocate devlink for
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jun 03, 2024 at 11:50:15AM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Make devlink allocation function generic to use it for PF and for SF.
>
>Add function for SF devlink port creation. It will be used in next
>patch.
>
>Create header file for subfunction device. Define subfunction device
>structure there as it is needed for devlink allocation and port
>creation.
>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/devlink/devlink.c  | 33 +++++++++++++++
> .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> .../ethernet/intel/ice/devlink/devlink_port.c | 41 +++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++++
> 5 files changed, 99 insertions(+)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>index bfb3d5b59a62..00f549daca57 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>@@ -10,6 +10,7 @@
> #include "ice_eswitch.h"
> #include "ice_fw_update.h"
> #include "ice_dcb_lib.h"
>+#include "ice_sf_eth.h"
> 
> /* context for devlink info version reporting */
> struct ice_info_ctx {
>@@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops = {
> 	.port_new = ice_devlink_port_new,
> };
> 
>+static const struct devlink_ops ice_sf_devlink_ops;
>+
> static int
> ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> 			    struct devlink_param_gset_ctx *ctx)
>@@ -1422,6 +1425,7 @@ static void ice_devlink_free(void *devlink_ptr)
>  * Allocate a devlink instance for this device and return the private area as
>  * the PF structure. The devlink memory is kept track of through devres by
>  * adding an action to remove it when unwinding.
>+ *
>  */
> struct ice_pf *ice_allocate_pf(struct device *dev)
> {
>@@ -1438,6 +1442,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> 	return devlink_priv(devlink);
> }
> 
>+/**
>+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
>+ * @dev: the device to allocate for
>+ * @pf: pointer to the PF structure
>+ *
>+ * Allocate a devlink instance for SF.
>+ *
>+ * Return: ice_sf_priv pointer to allocated memory or ERR_PTR in case of error
>+ */
>+struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
>+{
>+	struct devlink *devlink;
>+	int err;
>+
>+	devlink = devlink_alloc_ns(&ice_sf_devlink_ops,
>+				   sizeof(struct ice_sf_priv),
>+				   devlink_net(priv_to_devlink(pf)), dev);

I don't think this is correct. This is devlink instance for the actual
SF. It is probed on auxiliary bus. I don't see any reason why the
devlink instance netns should be determined by the PF devlink netns.
For VFs, you also don't do it. In mlx5, the only SF implementation, SF
devlink instances are created in initial netns. Please follow that.



>+	if (!devlink)
>+		return ERR_PTR(-ENOMEM);
>+
>+	err = devl_nested_devlink_set(priv_to_devlink(pf), devlink);
>+	if (err) {
>+		devlink_free(devlink);
>+		return ERR_PTR(err);
>+	}
>+
>+	return devlink_priv(devlink);
>+}
>+
> /**
>  * ice_devlink_register - Register devlink interface for this PF
>  * @pf: the PF to register the devlink for.
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
>index d291c0e2e17b..1af3b0763fbb 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
>@@ -5,6 +5,7 @@
> #define _ICE_DEVLINK_H_
> 
> struct ice_pf *ice_allocate_pf(struct device *dev);
>+struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf);
> 
> void ice_devlink_register(struct ice_pf *pf);
> void ice_devlink_unregister(struct ice_pf *pf);
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>index 5d1fe08e4bab..f06baabd0112 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>@@ -489,6 +489,47 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> 	devl_port_unregister(&vf->devlink_port);
> }
> 
>+/**
>+ * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
>+ * @sf_dev: the subfunction device to create a devlink port for
>+ *
>+ * Register virtual flavour devlink port for the subfunction auxiliary device
>+ * created after activating a dynamically added devlink port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
>+{
>+	struct devlink_port_attrs attrs = {};
>+	struct ice_dynamic_port *dyn_port;
>+	struct devlink_port *devlink_port;
>+	struct devlink *devlink;
>+	struct ice_vsi *vsi;
>+
>+	dyn_port = sf_dev->dyn_port;
>+	vsi = dyn_port->vsi;
>+
>+	devlink_port = &sf_dev->priv->devlink_port;
>+
>+	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
>+
>+	devlink_port_attrs_set(devlink_port, &attrs);
>+	devlink = priv_to_devlink(sf_dev->priv);
>+
>+	return devl_port_register(devlink, devlink_port, vsi->idx);
>+}
>+
>+/**
>+ * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
>+ * @sf_dev: the subfunction device to create a devlink port for
>+ *
>+ * Unregisters the virtual port associated with this subfunction.
>+ */
>+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
>+{
>+	devl_port_unregister(&sf_dev->priv->devlink_port);
>+}
>+
> /**
>  * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>  * @dyn_port: dynamic port instance to deallocate
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>index 08ebf56664a5..97b21b58c300 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>@@ -5,6 +5,7 @@
> #define _DEVLINK_PORT_H_
> 
> #include "../ice.h"
>+#include "../ice_sf_eth.h"
> 
> /**
>  * struct ice_dynamic_port - Track dynamically added devlink port instance
>@@ -34,6 +35,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf);
> void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
> void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
>+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
>+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
> 
> #define ice_devlink_port_to_dyn(port) \
> 	container_of(port, struct ice_dynamic_port, devlink_port)
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>new file mode 100644
>index 000000000000..a08f8b2bceef
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>@@ -0,0 +1,21 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+/* Copyright (c) 2024, Intel Corporation. */
>+
>+#ifndef _ICE_SF_ETH_H_
>+#define _ICE_SF_ETH_H_
>+
>+#include <linux/auxiliary_bus.h>
>+#include "ice.h"
>+
>+struct ice_sf_dev {
>+	struct auxiliary_device adev;
>+	struct ice_dynamic_port *dyn_port;
>+	struct ice_sf_priv *priv;
>+};
>+
>+struct ice_sf_priv {
>+	struct ice_sf_dev *dev;
>+	struct devlink_port devlink_port;
>+};
>+
>+#endif /* _ICE_SF_ETH_H_ */
>-- 
>2.42.0
>
>
