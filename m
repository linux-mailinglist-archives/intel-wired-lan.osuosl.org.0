Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 834258C0EE8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 13:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1706860AC6;
	Thu,  9 May 2024 11:36:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FhqEnZic_igk; Thu,  9 May 2024 11:36:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98DC160E13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715254584;
	bh=76BsGxeVLBzyxJ8K4TKonOzVCpXKkP+/i5JWDQpwIJo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4M+1IbP0Lis0m7JkrIHwgafJED+yMeyNyxZl3I3DyaYUqsJriPwpHEU+cmIB31x0D
	 R85S6bHqfUf7ydSJHa9ECa0B15uc4Fw7Z53rrl3NDBuWbu5GrDzxEqyDjsD1Ydx1KW
	 uuHrsyfY42j459sZuIf/HjEP6wtgN8F7p5Na7heHNGbUxftpVH4Ji5CT4T7Ik50GGo
	 O9K5RuzeAs4BagIjS4y3ll40392B9G0LwUBO0fnM5l0Q/dZ1aN+c9tCDxW4FL0Q9CT
	 ccCCxFa59c32kFw/t1fM1eFE6c7Vr7y10bAN9FX4nkCDB4D2n4H9PGsSKOBbfPPd7i
	 3u8Fpp4V6Ajsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98DC160E13;
	Thu,  9 May 2024 11:36:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B31A1BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16AD2401AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wewa0BT3jyLe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 11:36:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32d; helo=mail-wm1-x32d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 37D184013C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37D184013C
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37D184013C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:36:19 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-41b21ed19f5so5976895e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 May 2024 04:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715254578; x=1715859378;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=76BsGxeVLBzyxJ8K4TKonOzVCpXKkP+/i5JWDQpwIJo=;
 b=tGKS60QFVMaQ8fbdKzy3n13COVnq1TVFkmFgTFN8wLHS5cnBDTBaEut4YrDV/9mQ85
 pYbQB6jKKFchjbIaeTYEwm851lhxN6aTv7kLUE7NAeVcNSm2YEZlAEPH9kWHCpskfL3m
 j+0wn+2+j/TxzlwSdS3du91Kh/437413La0R0n3x3nUQl3XY6fiaSnWlMR/RzIjLucKq
 WWK763SYHfiYkQmb9/tZ18cpMM3cQK3LKrQXmpN97RosCtx11IcUouajM6UkyfA5diW0
 0OfcCQ/GruKlX9Q/KuZaDH+JMFUWPbrbahXcKcJ/eWEXQXHl/geWiArZsfJKeak1f+Dp
 Ke2w==
X-Gm-Message-State: AOJu0YwHbFCQ8xlqKhVE8TruU8jrKFPrKcAYL8e6jVfl8Vzb8QFKqntU
 aR06yH41vywgCVlTeMWb+6lmLnNRhDrfdotJzO5a7BOU8iIN47tcw56nOtPKbJtqHZugtSr60u0
 k
X-Google-Smtp-Source: AGHT+IGIaiDUENiA8xynqK6AWFY27jLTjY0IGpqLreCy/rmk21+mM/44oKTeXd0g3N/SGUc+MEhuJQ==
X-Received: by 2002:a05:600c:4f82:b0:418:2ccf:cbc7 with SMTP id
 5b1f17b1804b1-41f71302acemr41602985e9.2.1715254577604; 
 Thu, 09 May 2024 04:36:17 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-41fccbe8fb5sm22749625e9.9.2024.05.09.04.36.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 May 2024 04:36:17 -0700 (PDT)
Date: Thu, 9 May 2024 13:36:13 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zjy1LXn4Vj0PX_xs@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-15-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507114516.9765-15-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715254578; x=1715859378;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=76BsGxeVLBzyxJ8K4TKonOzVCpXKkP+/i5JWDQpwIJo=;
 b=LA+uaQ5zL6JuIkBzwx31XkFYvKzRw6BzaUtpXCL/NXusV+WzQo5pzP92L5N4FzCRu7
 xYDw1O84YEXqA7z0fVFUQP1cAJJKLlNtToCdCefxJaHMtPA4bLoCb5QTUqJwrlvEzGd7
 8dgiL6mLR245i42ap9D2LYF1AwKA0HPcxtDGDj1xA48loHurkWMwKtOFR70iYtt3MFXZ
 jxcLgZrH5PJp+StRVfz2rIZ/LdC38Y8DYyqgrceBHvgg1r+fyFwTgFmQnJPnGFMSUzFA
 oBiENOydeeuazwqVzqzMs6pn8mXT4hnXVfoq7bSDIY4Y7tcf8pIugZa0iehEdkfp5QfA
 it2w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=LA+uaQ5z
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

Tue, May 07, 2024 at 01:45:15PM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Use previously implemented SF aux driver. It is probe during SF
>activation and remove after deactivation.
>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../ethernet/intel/ice/devlink/devlink_port.c | 108 ++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |   6 +
> drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 107 +++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_sf_eth.h   |   3 +
> 4 files changed, 224 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>index e8929e91aff2..43ed05e5c883 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>@@ -482,6 +482,42 @@ void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
> 	devl_port_unregister(&sf_dev->priv->devlink_port);
> }
> 
>+/**
>+ * ice_activate_dynamic_port - Activate a dynamic port
>+ * @dyn_port: dynamic port instance to activate
>+ * @extack: extack for reporting error messages
>+ *
>+ * Activate the dynamic port based on its flavour.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
>+			  struct netlink_ext_ack *extack)
>+{
>+	int err;
>+
>+	err = ice_sf_eth_activate(dyn_port, extack);
>+	if (err)
>+		return err;
>+
>+	dyn_port->active = true;
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_deactivate_dynamic_port - Deactivate a dynamic port
>+ * @dyn_port: dynamic port instance to deactivate
>+ *
>+ * Undo activation of a dynamic port.
>+ */
>+static void ice_deactivate_dynamic_port(struct ice_dynamic_port *dyn_port)
>+{
>+	ice_sf_eth_deactivate(dyn_port);
>+	dyn_port->active = false;
>+}
>+
> /**
>  * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>  * @dyn_port: dynamic port instance to deallocate
>@@ -494,6 +530,9 @@ static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
> 	struct devlink_port *devlink_port = &dyn_port->devlink_port;
> 	struct ice_pf *pf = dyn_port->pf;
> 
>+	if (dyn_port->active)
>+		ice_deactivate_dynamic_port(dyn_port);
>+
> 	xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
> 	ice_eswitch_detach_sf(pf, dyn_port);
> 	ice_vsi_free(dyn_port->vsi);
>@@ -638,10 +677,79 @@ ice_devlink_port_fn_hw_addr_get(struct devlink_port *port, u8 *hw_addr,
> 	return 0;
> }
> 
>+/**
>+ * ice_devlink_port_fn_state_set - devlink handler for port state set
>+ * @port: pointer to devlink port
>+ * @state: state to set
>+ * @extack: extack for reporting error messages
>+ *
>+ * Activates or deactivates the port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_port_fn_state_set(struct devlink_port *port,
>+			      enum devlink_port_fn_state state,
>+			      struct netlink_ext_ack *extack)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+
>+	switch (state) {
>+	case DEVLINK_PORT_FN_STATE_ACTIVE:
>+		if (!dyn_port->active)
>+			return ice_activate_dynamic_port(dyn_port, extack);
>+		break;
>+	case DEVLINK_PORT_FN_STATE_INACTIVE:
>+		if (dyn_port->active)
>+			ice_deactivate_dynamic_port(dyn_port);
>+		break;
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_fn_state_get - devlink handler for port state get
>+ * @port: pointer to devlink port
>+ * @state: admin configured state of the port
>+ * @opstate: current port operational state
>+ * @extack: extack for reporting error messages
>+ *
>+ * Gets port state.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_port_fn_state_get(struct devlink_port *port,
>+			      enum devlink_port_fn_state *state,
>+			      enum devlink_port_fn_opstate *opstate,
>+			      struct netlink_ext_ack *extack)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+
>+	if (dyn_port->active)
>+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>+	else
>+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
>+
>+	if (dyn_port->attached)
>+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
>+	else
>+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>+
>+	return 0;
>+}
>+
> static const struct devlink_port_ops ice_devlink_port_sf_ops = {
> 	.port_del = ice_devlink_port_del,
> 	.port_fn_hw_addr_get = ice_devlink_port_fn_hw_addr_get,
> 	.port_fn_hw_addr_set = ice_devlink_port_fn_hw_addr_set,
>+	.port_fn_state_get = ice_devlink_port_fn_state_get,
>+	.port_fn_state_set = ice_devlink_port_fn_state_set,
> };
> 
> /**
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>index 6e14b9e4d621..28574e585341 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>@@ -14,17 +14,23 @@
>  * @devlink_port: the associated devlink port structure
>  * @pf: pointer to the PF private structure
>  * @vsi: the VSI associated with this port
>+ * @sf_dev: pointer to the subfunction device
>  *
>  * An instance of a dynamically added devlink port. Each port flavour
>  */
> struct ice_dynamic_port {
> 	u8 hw_addr[ETH_ALEN];
> 	u8 active: 1;
>+	u8 attached: 1;
> 	struct devlink_port devlink_port;
> 	struct ice_pf *pf;
> 	struct ice_vsi *vsi;
> 	unsigned long repr_id;
> 	u32 sfnum;
>+	/* Flavour-specific implementation data */
>+	union {
>+		struct ice_sf_dev *sf_dev;
>+	};
> };
> 
> void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>index 3a540a2638d1..c01190c9403f 100644
>--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>@@ -147,6 +147,7 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
> 	devl_unlock(devlink);
> 
> 	devlink_register(devlink);
>+	dyn_port->attached = true;
> 
> 	return 0;
> 
>@@ -186,6 +187,8 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
> 	devl_unlock(devlink);
> 	devlink_free(devlink);
> 	ice_vsi_decfg(vsi);
>+
>+	dyn_port->attached = false;
> }
> 
> static const struct auxiliary_device_id ice_sf_dev_id_table[] = {
>@@ -202,6 +205,8 @@ static struct auxiliary_driver ice_sf_driver = {
> 	.id_table = ice_sf_dev_id_table
> };
> 
>+static DEFINE_XARRAY_ALLOC1(ice_sf_aux_id);
>+
> /**
>  * ice_sf_driver_register - Register new auxiliary subfunction driver
>  *
>@@ -220,3 +225,105 @@ void ice_sf_driver_unregister(void)
> {
> 	auxiliary_driver_unregister(&ice_sf_driver);
> }
>+
>+/**
>+ * ice_sf_dev_release - Release device associated with auxiliary device
>+ * @device: pointer to the device
>+ *
>+ * Since most of the code for subfunction deactivation is handled in
>+ * the remove handler, here just free tracking resources.
>+ */
>+static void ice_sf_dev_release(struct device *device)
>+{
>+	struct auxiliary_device *adev = to_auxiliary_dev(device);
>+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
>+
>+	xa_erase(&ice_sf_aux_id, adev->id);
>+	kfree(sf_dev);
>+}
>+
>+/**
>+ * ice_sf_eth_activate - Activate Ethernet subfunction port
>+ * @dyn_port: the dynamic port instance for this subfunction
>+ * @extack: extack for reporting error messages
>+ *
>+ * Activate the dynamic port as an Ethernet subfunction. Setup the netdev
>+ * resources associated and initialize the auxiliary device.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+int
>+ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>+		    struct netlink_ext_ack *extack)
>+{
>+	struct ice_pf *pf = dyn_port->pf;
>+	struct ice_sf_dev *sf_dev;
>+	struct pci_dev *pdev;
>+	int err;
>+	u32 id;
>+
>+	err  = xa_alloc(&ice_sf_aux_id, &id, NULL, xa_limit_32b,

Double space.


>+			GFP_KERNEL);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate subfunction ID");
>+		return err;
>+	}
>+
>+	sf_dev = kzalloc(sizeof(*sf_dev), GFP_KERNEL);
>+	if (!sf_dev) {
>+		err = -ENOMEM;
>+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate sf_dev memory");
>+		goto xa_erase;
>+	}
>+	pdev = pf->pdev;
>+
>+	sf_dev->dyn_port = dyn_port;
>+	sf_dev->adev.id = id;
>+	sf_dev->adev.name = "sf";
>+	sf_dev->adev.dev.release = ice_sf_dev_release;
>+	sf_dev->adev.dev.parent = &pdev->dev;
>+
>+	err = auxiliary_device_init(&sf_dev->adev);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Failed to initialize auxiliary device");
>+		goto sf_dev_free;
>+	}
>+
>+	err = auxiliary_device_add(&sf_dev->adev);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Auxiliary device failed to probe");

How do you know? Probe may happen async.


>+		goto aux_dev_uninit;
>+	}
>+
>+	dyn_port->sf_dev = sf_dev;
>+
>+	return 0;
>+
>+aux_dev_uninit:
>+	auxiliary_device_uninit(&sf_dev->adev);
>+sf_dev_free:
>+	kfree(sf_dev);
>+xa_erase:
>+	xa_erase(&ice_sf_aux_id, id);
>+
>+	return err;
>+}
>+
>+/**
>+ * ice_sf_eth_deactivate - Deactivate Ethernet subfunction port
>+ * @dyn_port: the dynamic port instance for this subfunction
>+ *
>+ * Deactivate the Ethernet subfunction, removing its auxiliary device and the
>+ * associated resources.
>+ */
>+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port)
>+{
>+	struct ice_sf_dev *sf_dev = dyn_port->sf_dev;
>+
>+	if (sf_dev) {
>+		auxiliary_device_delete(&sf_dev->adev);
>+		auxiliary_device_uninit(&sf_dev->adev);
>+	}
>+
>+	dyn_port->sf_dev = NULL;
>+}
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>index e972c50f96c9..c558cad0a183 100644
>--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>@@ -27,4 +27,7 @@ ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
> int ice_sf_driver_register(void);
> void ice_sf_driver_unregister(void);
> 
>+int ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>+			struct netlink_ext_ack *extack);
>+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port);
> #endif /* _ICE_SF_ETH_H_ */
>-- 
>2.42.0
>
>
