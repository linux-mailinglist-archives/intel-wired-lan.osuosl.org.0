Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D61F8C22CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 13:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE4A1406E0;
	Fri, 10 May 2024 11:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nRoTN_gKC4lE; Fri, 10 May 2024 11:08:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F35144035D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715339312;
	bh=gOKuPUl8UvDdANa6U7kIRt/Q6FUGDUfYavqOV7dEvMw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lMN8TEJms+OXsvGLitaYcTdytQ7XlkJK0UlP9v9eqWeWsG6Wm/+kMKVezU5hsNhww
	 7rJgV8U5IQDxQfku46Aed3TVCCvjVFMQPv86l73jkYqjK7YUWk1ppdbuZP9z114gCU
	 60ASx2AjqyqIlg7Y9NJaqGQAymybllNy1fsh4gLyIGm8YxKIzl65CG0DlWAW4Q+hQl
	 yV+U55s7002cT6uNi3tIWg06t11WK4wlJxI7pdk5P5hswbUfWuRB5D77Yaiuv0f/4y
	 TEAhPng35tkfIRho23zyDgnfjxmpwNQr0SSdG+pocl2+lABKx/YtZh3AOgwlTTzgLV
	 Y0wX/m7L0zklg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F35144035D;
	Fri, 10 May 2024 11:08:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D4A51BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2851A401C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1QOWYBMXiYMb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 11:08:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42c; helo=mail-wr1-x42c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72CF3401E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72CF3401E0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72CF3401E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:08:28 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-3504ad82a64so631941f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 04:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715339306; x=1715944106;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gOKuPUl8UvDdANa6U7kIRt/Q6FUGDUfYavqOV7dEvMw=;
 b=TnZAoy3PEM4XL5zAdoEQs+h7M9EjKHHDvPxPFwi3r+2TXLd42hQbrlwGDECxoyCXae
 gOzpgAyyhm/VWbNV2KGyAjWsV5yPlMn+wgZ8Njpl4MwMjWySDAdMkf2OvRomJP8IEN36
 Ysh2mZbKMCAaEiElzHA4+9rlVbyMNH424UTN33m+dESBneikBA62t/wp0YpnrHs3RCxJ
 JXCveJLT3k7UU4wibgWv4yFjwcJXa6pmgHwZGtyR7/w1zdCzjKnpbq6Rrs3QHpFApPCN
 rtr8XY7CL5+UH+8aZlaLsRNoxj4BFW3j3jKCFmaxlNdk3eLwimcXQcAve2mN7fu8WPw8
 NFKw==
X-Gm-Message-State: AOJu0Yzcf8HG5Q4wItcZVOw50glmMiI4IClakBVSS2qoY5ol18SBA7iD
 18i86O+SbFrqlq5Mm7VtSIhtB0W7kfhQ5PmeXoHzoPw1LSWgzGSq+ZYMbSRnwCfIe/UWEUx8aHG
 L
X-Google-Smtp-Source: AGHT+IFOwph1SKFRG+4VpIR8QVMwlNF8oz7W6O5bAH5uvTWJZPo2wI99wX0IKWhekFYvmORfwANivA==
X-Received: by 2002:adf:e904:0:b0:349:bd11:1bea with SMTP id
 ffacd0b85a97d-3504a61c94fmr1784950f8f.11.1715339306196; 
 Fri, 10 May 2024 04:08:26 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3502bbbbec5sm4240420f8f.95.2024.05.10.04.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 May 2024 04:08:25 -0700 (PDT)
Date: Fri, 10 May 2024 13:08:22 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zj4AJp250Wok7ROf@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-15-michal.swiatkowski@linux.intel.com>
 <Zjy1LXn4Vj0PX_xs@nanopsycho.orion> <Zj3N4idfTGZUYlNc@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj3N4idfTGZUYlNc@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715339306; x=1715944106;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gOKuPUl8UvDdANa6U7kIRt/Q6FUGDUfYavqOV7dEvMw=;
 b=ESRcce5X4dObisruXxh6CxUnZyI4KKQGGJBphzV6hmpGIUjM9w/rtH4S4TYsVUSk+k
 HABvs18F3nABEiX8chiPglEqL8VAaiwcoXxS7OdivR4U9GzRDETbv8pxMj50aWlsiAzz
 NlSOYXNMuxN7OyEd0C+3/pNkNiOpY/nW/OMQfZUloY9yD8myyuEs4cM6cs6pmKJcge1f
 xBH4TOF77bookgDpbvd6K5Qie9LBwPNZfFbYA8/EGX2OUwgrfy3g2tihLGpQvSL/mi6n
 HVWW4v9v7RiymIVusPhtvywPU2wCjpfMxOtTJpGsZNHMB3D7MTw2DQI2jj7PIPZtPufg
 1tvg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ESRcce5X
Subject: Re: [Intel-wired-lan] [iwl-next v1 14/14] ice: allow to activate
 and deactivate subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, May 10, 2024 at 09:33:54AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, May 09, 2024 at 01:36:13PM +0200, Jiri Pirko wrote:
>> Tue, May 07, 2024 at 01:45:15PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >
>> >Use previously implemented SF aux driver. It is probe during SF
>> >activation and remove after deactivation.
>> >
>> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > .../ethernet/intel/ice/devlink/devlink_port.c | 108 ++++++++++++++++++
>> > .../ethernet/intel/ice/devlink/devlink_port.h |   6 +
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 107 +++++++++++++++++
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |   3 +
>> > 4 files changed, 224 insertions(+)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>> >index e8929e91aff2..43ed05e5c883 100644
>> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>> >@@ -482,6 +482,42 @@ void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
>> > 	devl_port_unregister(&sf_dev->priv->devlink_port);
>> > }
>> > 
>> >+/**
>> >+ * ice_activate_dynamic_port - Activate a dynamic port
>> >+ * @dyn_port: dynamic port instance to activate
>> >+ * @extack: extack for reporting error messages
>> >+ *
>> >+ * Activate the dynamic port based on its flavour.
>> >+ *
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+static int
>> >+ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
>> >+			  struct netlink_ext_ack *extack)
>> >+{
>> >+	int err;
>> >+
>> >+	err = ice_sf_eth_activate(dyn_port, extack);
>> >+	if (err)
>> >+		return err;
>> >+
>> >+	dyn_port->active = true;
>> >+
>> >+	return 0;
>> >+}
>> >+
>> >+/**
>> >+ * ice_deactivate_dynamic_port - Deactivate a dynamic port
>> >+ * @dyn_port: dynamic port instance to deactivate
>> >+ *
>> >+ * Undo activation of a dynamic port.
>> >+ */
>> >+static void ice_deactivate_dynamic_port(struct ice_dynamic_port *dyn_port)
>> >+{
>> >+	ice_sf_eth_deactivate(dyn_port);
>> >+	dyn_port->active = false;
>> >+}
>> >+
>> > /**
>> >  * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>> >  * @dyn_port: dynamic port instance to deallocate
>> >@@ -494,6 +530,9 @@ static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
>> > 	struct devlink_port *devlink_port = &dyn_port->devlink_port;
>> > 	struct ice_pf *pf = dyn_port->pf;
>> > 
>> >+	if (dyn_port->active)
>> >+		ice_deactivate_dynamic_port(dyn_port);
>> >+
>> > 	xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
>> > 	ice_eswitch_detach_sf(pf, dyn_port);
>> > 	ice_vsi_free(dyn_port->vsi);
>> >@@ -638,10 +677,79 @@ ice_devlink_port_fn_hw_addr_get(struct devlink_port *port, u8 *hw_addr,
>> > 	return 0;
>> > }
>> > 
>> >+/**
>> >+ * ice_devlink_port_fn_state_set - devlink handler for port state set
>> >+ * @port: pointer to devlink port
>> >+ * @state: state to set
>> >+ * @extack: extack for reporting error messages
>> >+ *
>> >+ * Activates or deactivates the port.
>> >+ *
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+static int
>> >+ice_devlink_port_fn_state_set(struct devlink_port *port,
>> >+			      enum devlink_port_fn_state state,
>> >+			      struct netlink_ext_ack *extack)
>> >+{
>> >+	struct ice_dynamic_port *dyn_port;
>> >+
>> >+	dyn_port = ice_devlink_port_to_dyn(port);
>> >+
>> >+	switch (state) {
>> >+	case DEVLINK_PORT_FN_STATE_ACTIVE:
>> >+		if (!dyn_port->active)
>> >+			return ice_activate_dynamic_port(dyn_port, extack);
>> >+		break;
>> >+	case DEVLINK_PORT_FN_STATE_INACTIVE:
>> >+		if (dyn_port->active)
>> >+			ice_deactivate_dynamic_port(dyn_port);
>> >+		break;
>> >+	}
>> >+
>> >+	return 0;
>> >+}
>> >+
>> >+/**
>> >+ * ice_devlink_port_fn_state_get - devlink handler for port state get
>> >+ * @port: pointer to devlink port
>> >+ * @state: admin configured state of the port
>> >+ * @opstate: current port operational state
>> >+ * @extack: extack for reporting error messages
>> >+ *
>> >+ * Gets port state.
>> >+ *
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+static int
>> >+ice_devlink_port_fn_state_get(struct devlink_port *port,
>> >+			      enum devlink_port_fn_state *state,
>> >+			      enum devlink_port_fn_opstate *opstate,
>> >+			      struct netlink_ext_ack *extack)
>> >+{
>> >+	struct ice_dynamic_port *dyn_port;
>> >+
>> >+	dyn_port = ice_devlink_port_to_dyn(port);
>> >+
>> >+	if (dyn_port->active)
>> >+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>> >+	else
>> >+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
>> >+
>> >+	if (dyn_port->attached)
>> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
>> >+	else
>> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>> >+
>> >+	return 0;
>> >+}
>> >+
>> > static const struct devlink_port_ops ice_devlink_port_sf_ops = {
>> > 	.port_del = ice_devlink_port_del,
>> > 	.port_fn_hw_addr_get = ice_devlink_port_fn_hw_addr_get,
>> > 	.port_fn_hw_addr_set = ice_devlink_port_fn_hw_addr_set,
>> >+	.port_fn_state_get = ice_devlink_port_fn_state_get,
>> >+	.port_fn_state_set = ice_devlink_port_fn_state_set,
>> > };
>> > 
>> > /**
>> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>> >index 6e14b9e4d621..28574e585341 100644
>> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>> >@@ -14,17 +14,23 @@
>> >  * @devlink_port: the associated devlink port structure
>> >  * @pf: pointer to the PF private structure
>> >  * @vsi: the VSI associated with this port
>> >+ * @sf_dev: pointer to the subfunction device
>> >  *
>> >  * An instance of a dynamically added devlink port. Each port flavour
>> >  */
>> > struct ice_dynamic_port {
>> > 	u8 hw_addr[ETH_ALEN];
>> > 	u8 active: 1;
>> >+	u8 attached: 1;
>> > 	struct devlink_port devlink_port;
>> > 	struct ice_pf *pf;
>> > 	struct ice_vsi *vsi;
>> > 	unsigned long repr_id;
>> > 	u32 sfnum;
>> >+	/* Flavour-specific implementation data */
>> >+	union {
>> >+		struct ice_sf_dev *sf_dev;
>> >+	};
>> > };
>> > 
>> > void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> >index 3a540a2638d1..c01190c9403f 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> >@@ -147,6 +147,7 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
>> > 	devl_unlock(devlink);
>> > 
>> > 	devlink_register(devlink);
>> >+	dyn_port->attached = true;
>> > 
>> > 	return 0;
>> > 
>> >@@ -186,6 +187,8 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
>> > 	devl_unlock(devlink);
>> > 	devlink_free(devlink);
>> > 	ice_vsi_decfg(vsi);
>> >+
>> >+	dyn_port->attached = false;
>> > }
>> > 
>> > static const struct auxiliary_device_id ice_sf_dev_id_table[] = {
>> >@@ -202,6 +205,8 @@ static struct auxiliary_driver ice_sf_driver = {
>> > 	.id_table = ice_sf_dev_id_table
>> > };
>> > 
>> >+static DEFINE_XARRAY_ALLOC1(ice_sf_aux_id);
>> >+
>> > /**
>> >  * ice_sf_driver_register - Register new auxiliary subfunction driver
>> >  *
>> >@@ -220,3 +225,105 @@ void ice_sf_driver_unregister(void)
>> > {
>> > 	auxiliary_driver_unregister(&ice_sf_driver);
>> > }
>> >+
>> >+/**
>> >+ * ice_sf_dev_release - Release device associated with auxiliary device
>> >+ * @device: pointer to the device
>> >+ *
>> >+ * Since most of the code for subfunction deactivation is handled in
>> >+ * the remove handler, here just free tracking resources.
>> >+ */
>> >+static void ice_sf_dev_release(struct device *device)
>> >+{
>> >+	struct auxiliary_device *adev = to_auxiliary_dev(device);
>> >+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
>> >+
>> >+	xa_erase(&ice_sf_aux_id, adev->id);
>> >+	kfree(sf_dev);
>> >+}
>> >+
>> >+/**
>> >+ * ice_sf_eth_activate - Activate Ethernet subfunction port
>> >+ * @dyn_port: the dynamic port instance for this subfunction
>> >+ * @extack: extack for reporting error messages
>> >+ *
>> >+ * Activate the dynamic port as an Ethernet subfunction. Setup the netdev
>> >+ * resources associated and initialize the auxiliary device.
>> >+ *
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+int
>> >+ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>> >+		    struct netlink_ext_ack *extack)
>> >+{
>> >+	struct ice_pf *pf = dyn_port->pf;
>> >+	struct ice_sf_dev *sf_dev;
>> >+	struct pci_dev *pdev;
>> >+	int err;
>> >+	u32 id;
>> >+
>> >+	err  = xa_alloc(&ice_sf_aux_id, &id, NULL, xa_limit_32b,
>> 
>> Double space.
>> 
>
>Thanks, will fix.
>
>> 
>> >+			GFP_KERNEL);
>> >+	if (err) {
>> >+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate subfunction ID");
>> >+		return err;
>> >+	}
>> >+
>> >+	sf_dev = kzalloc(sizeof(*sf_dev), GFP_KERNEL);
>> >+	if (!sf_dev) {
>> >+		err = -ENOMEM;
>> >+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate sf_dev memory");
>> >+		goto xa_erase;
>> >+	}
>> >+	pdev = pf->pdev;
>> >+
>> >+	sf_dev->dyn_port = dyn_port;
>> >+	sf_dev->adev.id = id;
>> >+	sf_dev->adev.name = "sf";
>> >+	sf_dev->adev.dev.release = ice_sf_dev_release;
>> >+	sf_dev->adev.dev.parent = &pdev->dev;
>> >+
>> >+	err = auxiliary_device_init(&sf_dev->adev);
>> >+	if (err) {
>> >+		NL_SET_ERR_MSG_MOD(extack, "Failed to initialize auxiliary device");
>> >+		goto sf_dev_free;
>> >+	}
>> >+
>> >+	err = auxiliary_device_add(&sf_dev->adev);
>> >+	if (err) {
>> >+		NL_SET_ERR_MSG_MOD(extack, "Auxiliary device failed to probe");
>> 
>> How do you know? Probe may happen async.
>> 
>
>"Failed to add SF aux device" will be fine?

Sure.

>
>> 
>> >+		goto aux_dev_uninit;
>> >+	}
>> >+
>> >+	dyn_port->sf_dev = sf_dev;
>> >+
>> >+	return 0;
>> >+
>> >+aux_dev_uninit:
>> >+	auxiliary_device_uninit(&sf_dev->adev);
>> >+sf_dev_free:
>> >+	kfree(sf_dev);
>> >+xa_erase:
>> >+	xa_erase(&ice_sf_aux_id, id);
>> >+
>> >+	return err;
>> >+}
>> >+
>> >+/**
>> >+ * ice_sf_eth_deactivate - Deactivate Ethernet subfunction port
>> >+ * @dyn_port: the dynamic port instance for this subfunction
>> >+ *
>> >+ * Deactivate the Ethernet subfunction, removing its auxiliary device and the
>> >+ * associated resources.
>> >+ */
>> >+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port)
>> >+{
>> >+	struct ice_sf_dev *sf_dev = dyn_port->sf_dev;
>> >+
>> >+	if (sf_dev) {
>> >+		auxiliary_device_delete(&sf_dev->adev);
>> >+		auxiliary_device_uninit(&sf_dev->adev);
>> >+	}
>> >+
>> >+	dyn_port->sf_dev = NULL;
>> >+}
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>> >index e972c50f96c9..c558cad0a183 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>> >+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>> >@@ -27,4 +27,7 @@ ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
>> > int ice_sf_driver_register(void);
>> > void ice_sf_driver_unregister(void);
>> > 
>> >+int ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>> >+			struct netlink_ext_ack *extack);
>> >+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port);
>> > #endif /* _ICE_SF_ETH_H_ */
>> >-- 
>> >2.42.0
>> >
>> >
