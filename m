Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EE98C0EAF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 13:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35B0460EBA;
	Thu,  9 May 2024 11:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id daFLhiom1Gw7; Thu,  9 May 2024 11:07:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AC9A60EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715252826;
	bh=9uXqYchpwUJ5l7izFzyWFwLWWLL66EG6OcReGAN+Tx0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OZwTjy2kEodPnHDU7Xt+rAQsu56AzCkB+pPqnkld6FTxrSHWkDu1sJpUi+/qais2H
	 /L/qtmWglBCQ2iSqS0F/cYjD37CeF4wCc8bC/FX8gXt75Qhg+gDObshNBazgv2ygKr
	 oNjRPLFNbyF2Qj4xgF6of2jJu7CdOkGgQ263wLOJwl42rmFSDglYg10Zcj3XX7KE/t
	 y6WYko3uNaBIQiaAOFQr9LExW0f8PzrtD31Zau8fb4nHAnrX4YmUUWuAu3YYF1UjYX
	 q0Aa8diANs6i5wncw3HmoLGjDwJ7rdaFCOzoUmJx8PDQfgcjcU6i+WisBT2JHnMZMx
	 kQzpnr97rPZ8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AC9A60EC6;
	Thu,  9 May 2024 11:07:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 72E6A1BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C51D81E82
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:07:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vQ_hs-Qf0OfX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 11:07:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::630; helo=mail-ej1-x630.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B855A83CFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B855A83CFB
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B855A83CFB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:06:59 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-a59b81d087aso175741566b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 May 2024 04:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715252817; x=1715857617;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9uXqYchpwUJ5l7izFzyWFwLWWLL66EG6OcReGAN+Tx0=;
 b=FJo+ZdOPwG50LctzRKY95+e0mxwaY0lhwFFWR2A+Lm0nVpNX/2LVHpzjsj5A/zlnbe
 cG08+5+PkEqSuZC006S8NNCDIASzpS0RTZFADuJtE2160DHZf1UDfak1uZjOAbDFLjgX
 BRS/J2WLg4b/7Q++/pYkX9p35hvcKFxWD9CROM/ad3ifgbBH292qtabI/jse5kTl+/nw
 t3/pnoqVfPYW6PZsQqFQ3L2sh4yHwzjtv+9Zz4ZB17Mk6cEg4+Yq5k2u1cHBgT6ARCbI
 fSBvcDdrW5ksuK4mRy/rv7OTIcOXx7TjPVdzB3icntc/+GuJ6FOnRt2EZo4nWiUGXhpH
 5/aw==
X-Gm-Message-State: AOJu0YxspCtHxcPQslmgrTvLeLU/HLmyro3gaqcjGGVUc6eMNV1D6yts
 NGQdOpNUe7s1tvWo7gBuLmgokhS+/k5KJEIHjNAUm+cLjP8Xrn0PKdqYIQKnSos=
X-Google-Smtp-Source: AGHT+IHG5Z4S2HT+ANQbZuipH+hFwfiEJRLYd2Lh7UfSe+O2LNiJvKatmfgbpzFqxGHcVfxQAXcL2Q==
X-Received: by 2002:a17:906:194e:b0:a59:efd0:b247 with SMTP id
 a640c23a62f3a-a59fb9587a9mr430184766b.40.1715252817271; 
 Thu, 09 May 2024 04:06:57 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a5a1781cf60sm62688866b.14.2024.05.09.04.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 May 2024 04:06:56 -0700 (PDT)
Date: Thu, 9 May 2024 13:06:52 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZjyuTA_zMXzZSa7L@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507114516.9765-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715252817; x=1715857617;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=9uXqYchpwUJ5l7izFzyWFwLWWLL66EG6OcReGAN+Tx0=;
 b=DV+xlG4sa/O798xszbYMeQgQIAZqsUlCV7AIORrj1k49NOnBPTfClK/cxIN5ntAE6i
 MdVCsmKCHjWr9QeOhc447H1EY0ucQA5pzR3evBHuHU1Zmze9oBSVcHvlSrkqVqcJ0olq
 ELOy2e7B14A9+xjmHamW/dLXCjV/2b+6kueBmycQUPBIp3lSkeD4O9rCe+sSkZcyQpW+
 0/U0oTp9WopKLN+YM2ujaj8fJthCpQRh9e5YplBu5G5W+oAvYAtb2FD0X6k1LEzQMJKr
 bRAx/1Lag/CHzNTYFbs0twpF+a+zSzbs2ODMFntd5epPFGW3cunFK/fq0mvWm4d9k6hT
 4B8g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=DV+xlG4s
Subject: Re: [Intel-wired-lan] [iwl-next v1 03/14] ice: add basic devlink
 subfunctions support
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

Tue, May 07, 2024 at 01:45:04PM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Implement devlink port handlers responsible for ethernet type devlink
>subfunctions. Create subfunction devlink port and setup all resources
>needed for a subfunction netdev to operate. Configure new VSI for each
>new subfunction, initialize and configure interrupts and Tx/Rx resources.
>Set correct MAC filters and create new netdev.
>
>For now, subfunction is limited to only one Tx/Rx queue pair.
>
>Only allocate new subfunction VSI with devlink port new command.
>This makes sure that real resources are configured only when a new
>subfunction gets activated. Allocate and free subfunction MSIX

Interesting. You talk about actitation, yet you don't implement it here.



>interrupt vectors using new API calls with pci_msix_alloc_irq_at
>and pci_msix_free_irq.
>
>Support both automatic and manual subfunction numbers. If no subfunction
>number is provided, use xa_alloc to pick a number automatically. This
>will find the first free index and use that as the number. This reduces
>burden on users in the simple case where a specific number is not
>required. It may also be slightly faster to check that a number exists
>since xarray lookup should be faster than a linear scan of the dyn_ports
>xarray.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/devlink/devlink.c  |   3 +
> .../ethernet/intel/ice/devlink/devlink_port.c | 357 ++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |  33 ++
> drivers/net/ethernet/intel/ice/ice.h          |   4 +
> drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
> drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
> drivers/net/ethernet/intel/ice/ice_main.c     |   9 +-
> 7 files changed, 410 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>index 10073342e4f0..3fb3a7e828a4 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>@@ -6,6 +6,7 @@
> #include "ice.h"
> #include "ice_lib.h"
> #include "devlink.h"
>+#include "devlink_port.h"
> #include "ice_eswitch.h"
> #include "ice_fw_update.h"
> #include "ice_dcb_lib.h"
>@@ -1277,6 +1278,8 @@ static const struct devlink_ops ice_devlink_ops = {
> 
> 	.rate_leaf_parent_set = ice_devlink_set_parent,
> 	.rate_node_parent_set = ice_devlink_set_parent,
>+
>+	.port_new = ice_devlink_port_new,
> };
> 
> static int
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>index c9fbeebf7fb9..995c11f71b3f 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>@@ -5,6 +5,9 @@
> 
> #include "ice.h"
> #include "devlink.h"
>+#include "devlink_port.h"
>+#include "ice_lib.h"
>+#include "ice_fltr.h"
> 
> static int ice_active_port_option = -1;
> 
>@@ -428,3 +431,357 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> 	devl_rate_leaf_destroy(&vf->devlink_port);
> 	devl_port_unregister(&vf->devlink_port);
> }
>+
>+/**
>+ * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>+ * @dyn_port: dynamic port instance to deallocate
>+ *
>+ * Free resources associated with a dynamically added devlink port. Will
>+ * deactivate the port if its currently active.
>+ */
>+static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
>+{
>+	struct devlink_port *devlink_port = &dyn_port->devlink_port;
>+	struct ice_pf *pf = dyn_port->pf;
>+
>+	xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
>+	devl_port_unregister(devlink_port);
>+	ice_vsi_free(dyn_port->vsi);
>+	xa_erase(&pf->dyn_ports, dyn_port->vsi->idx);
>+	kfree(dyn_port);
>+}
>+
>+/**
>+ * ice_dealloc_all_dynamic_ports - Deallocate all dynamic devlink ports
>+ * @pf: pointer to the pf structure
>+ */
>+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+	unsigned long index;
>+
>+	xa_for_each(&pf->dyn_ports, index, dyn_port)
>+		ice_dealloc_dynamic_port(dyn_port);
>+}
>+
>+/**
>+ * ice_devlink_port_new_check_attr - Check that new port attributes are valid
>+ * @pf: pointer to the PF structure
>+ * @new_attr: the attributes for the new port
>+ * @extack: extack for reporting error messages
>+ *
>+ * Check that the attributes for the new port are valid before continuing to
>+ * allocate the devlink port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_port_new_check_attr(struct ice_pf *pf,
>+				const struct devlink_port_new_attrs *new_attr,
>+				struct netlink_ext_ack *extack)
>+{
>+	if (new_attr->flavour != DEVLINK_PORT_FLAVOUR_PCI_SF) {
>+		NL_SET_ERR_MSG_MOD(extack, "Flavour other than pcisf is not supported");
>+		return -EOPNOTSUPP;
>+	}
>+
>+	if (new_attr->controller_valid) {
>+		NL_SET_ERR_MSG_MOD(extack, "Setting controller is not supported");
>+		return -EOPNOTSUPP;
>+	}
>+
>+	if (new_attr->port_index_valid) {
>+		NL_SET_ERR_MSG_MOD(extack, "Port index is invalid");
>+		return -EOPNOTSUPP;
>+	}
>+
>+	if (new_attr->pfnum != pf->hw.bus.func) {
>+		NL_SET_ERR_MSG_MOD(extack, "Incorrect pfnum supplied");
>+		return -EINVAL;
>+	}
>+
>+	if (!pci_msix_can_alloc_dyn(pf->pdev)) {
>+		NL_SET_ERR_MSG_MOD(extack, "Dynamic MSIX-X interrupt allocation is not supported");
>+		return -EOPNOTSUPP;
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_del - devlink handler for port delete
>+ * @devlink: pointer to devlink
>+ * @port: devlink port to be deleted
>+ * @extack: pointer to extack
>+ *
>+ * Deletes devlink port and deallocates all resources associated with
>+ * created subfunction.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_port_del(struct devlink *devlink, struct devlink_port *port,
>+		     struct netlink_ext_ack *extack)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+	ice_dealloc_dynamic_port(dyn_port);
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_fn_hw_addr_set - devlink handler for mac address set
>+ * @port: pointer to devlink port
>+ * @hw_addr: hw address to set
>+ * @hw_addr_len: hw address length
>+ * @extack: extack for reporting error messages
>+ *
>+ * Sets mac address for the port, verifies arguments and copies address
>+ * to the subfunction structure.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_port_fn_hw_addr_set(struct devlink_port *port, const u8 *hw_addr,
>+				int hw_addr_len,
>+				struct netlink_ext_ack *extack)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+
>+	if (hw_addr_len != ETH_ALEN || !is_valid_ether_addr(hw_addr)) {
>+		NL_SET_ERR_MSG_MOD(extack, "Invalid ethernet address");
>+		return -EADDRNOTAVAIL;
>+	}
>+
>+	ether_addr_copy(dyn_port->hw_addr, hw_addr);

How does this work? You copy the address to the internal structure, but
where you update the HW?


>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_fn_hw_addr_get - devlink handler for mac address get
>+ * @port: pointer to devlink port
>+ * @hw_addr: hw address to set
>+ * @hw_addr_len: hw address length
>+ * @extack: extack for reporting error messages
>+ *
>+ * Returns mac address for the port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_port_fn_hw_addr_get(struct devlink_port *port, u8 *hw_addr,
>+				int *hw_addr_len,
>+				struct netlink_ext_ack *extack)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+
>+	ether_addr_copy(hw_addr, dyn_port->hw_addr);
>+	*hw_addr_len = ETH_ALEN;
>+
>+	return 0;
>+}
>+
>+static const struct devlink_port_ops ice_devlink_port_sf_ops = {
>+	.port_del = ice_devlink_port_del,
>+	.port_fn_hw_addr_get = ice_devlink_port_fn_hw_addr_get,
>+	.port_fn_hw_addr_set = ice_devlink_port_fn_hw_addr_set,
>+};
>+
>+/**
>+ * ice_reserve_sf_num - Reserve a subfunction number for this port
>+ * @pf: pointer to the pf structure
>+ * @new_attr: devlink port attributes requested
>+ * @extack: extack for reporting error messages
>+ * @sfnum: on success, the sf number reserved
>+ *
>+ * Reserve a subfunction number for this port. Only called for
>+ * DEVLINK_PORT_FLAVOUR_PCI_SF ports.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_reserve_sf_num(struct ice_pf *pf,
>+		   const struct devlink_port_new_attrs *new_attr,
>+		   struct netlink_ext_ack *extack, u32 *sfnum)
>+{
>+	int err;
>+
>+	/* If user didn't request an explicit number, pick one */
>+	if (!new_attr->sfnum_valid)
>+		return xa_alloc(&pf->sf_nums, sfnum, NULL, xa_limit_32b,
>+				GFP_KERNEL);
>+
>+	/* Otherwise, check and use the number provided */
>+	err = xa_insert(&pf->sf_nums, new_attr->sfnum, NULL, GFP_KERNEL);
>+	if (err) {
>+		if (err == -EBUSY)
>+			NL_SET_ERR_MSG_MOD(extack, "Subfunction with given sfnum already exists");
>+		return err;
>+	}
>+
>+	*sfnum = new_attr->sfnum;
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_create_sf_port - Register PCI subfunction devlink port
>+ * @dyn_port: the dynamic port instance structure for this subfunction
>+ *
>+ * Register PCI subfunction flavour devlink port for a dynamically added
>+ * subfunction port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
>+{
>+	struct devlink_port_attrs attrs = {};
>+	struct devlink_port *devlink_port;
>+	struct devlink *devlink;
>+	struct ice_vsi *vsi;
>+	struct device *dev;
>+	struct ice_pf *pf;
>+	int err;
>+
>+	vsi = dyn_port->vsi;
>+	pf = dyn_port->pf;
>+	dev = ice_pf_to_dev(pf);
>+
>+	devlink_port = &dyn_port->devlink_port;
>+
>+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_SF;
>+	attrs.pci_sf.pf = pf->hw.bus.func;
>+	attrs.pci_sf.sf = dyn_port->sfnum;
>+
>+	devlink_port_attrs_set(devlink_port, &attrs);
>+	devlink = priv_to_devlink(pf);
>+
>+	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
>+					  &ice_devlink_port_sf_ops);
>+	if (err) {
>+		dev_err(dev, "Failed to create devlink port for Subfunction %d",
>+			vsi->idx);
>+		return err;
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_destroy_sf_port - Destroy the devlink_port for this SF
>+ * @dyn_port: the dynamic port instance structure for this subfunction
>+ *
>+ * Unregisters the devlink_port structure associated with this SF.
>+ */
>+void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port)
>+{
>+       devl_port_unregister(&dyn_port->devlink_port);
>+}
>+
>+/**
>+ * ice_alloc_dynamic_port - Allocate new dynamic port
>+ * @pf: pointer to the pf structure
>+ * @new_attr: devlink port attributes requested
>+ * @extack: extack for reporting error messages
>+ * @devlink_port: index of newly created devlink port
>+ *
>+ * Allocate a new dynamic port instance and prepare it for configuration
>+ * with devlink.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_alloc_dynamic_port(struct ice_pf *pf,
>+		       const struct devlink_port_new_attrs *new_attr,
>+		       struct netlink_ext_ack *extack,
>+		       struct devlink_port **devlink_port)
>+{
>+	struct ice_dynamic_port *dyn_port;
>+	struct ice_vsi *vsi;
>+	u32 sfnum;
>+	int err;
>+
>+	err = ice_reserve_sf_num(pf, new_attr, extack, &sfnum);
>+	if (err)
>+		return err;
>+
>+	dyn_port = kzalloc(sizeof(*dyn_port), GFP_KERNEL);
>+	if (!dyn_port) {
>+		err = -ENOMEM;
>+		goto unroll_reserve_sf_num;
>+	}
>+
>+	vsi = ice_vsi_alloc(pf);
>+	if (!vsi) {
>+		NL_SET_ERR_MSG_MOD(extack, "Unable to allocate VSI");
>+		err = -ENOMEM;
>+		goto unroll_dyn_port_alloc;
>+	}
>+
>+	dyn_port->vsi = vsi;
>+	dyn_port->pf = pf;
>+	dyn_port->sfnum = sfnum;
>+	eth_random_addr(dyn_port->hw_addr);
>+
>+	err = xa_insert(&pf->dyn_ports, vsi->idx, dyn_port, GFP_KERNEL);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Port index reservation failed");
>+		goto unroll_vsi_alloc;
>+	}
>+
>+	err = ice_devlink_create_sf_port(dyn_port);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Port registration failed");
>+		goto unroll_xa_insert;
>+	}
>+
>+	*devlink_port = &dyn_port->devlink_port;
>+
>+	return 0;
>+
>+unroll_xa_insert:
>+	xa_erase(&pf->dyn_ports, vsi->idx);
>+unroll_vsi_alloc:
>+	ice_vsi_free(vsi);
>+unroll_dyn_port_alloc:
>+	kfree(dyn_port);
>+unroll_reserve_sf_num:
>+	xa_erase(&pf->sf_nums, sfnum);
>+
>+	return err;
>+}
>+
>+/**
>+ * ice_devlink_port_new - devlink handler for the new port
>+ * @devlink: pointer to devlink
>+ * @new_attr: pointer to the port new attributes
>+ * @extack: extack for reporting error messages
>+ * @devlink_port: pointer to a new port
>+ *
>+ * Creates new devlink port, checks new port attributes and reject
>+ * any unsupported parameters, allocates new subfunction for that port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+int
>+ice_devlink_port_new(struct devlink *devlink,
>+		     const struct devlink_port_new_attrs *new_attr,
>+		     struct netlink_ext_ack *extack,
>+		     struct devlink_port **devlink_port)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	int err;
>+
>+	err = ice_devlink_port_new_check_attr(pf, new_attr, extack);
>+	if (err)
>+		return err;
>+
>+	return ice_alloc_dynamic_port(pf, new_attr, extack, devlink_port);
>+}
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>index 9223bcdb6444..f20d7cc522a6 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>@@ -4,9 +4,42 @@
> #ifndef _DEVLINK_PORT_H_
> #define _DEVLINK_PORT_H_
> 
>+#include "../ice.h"
>+
>+/**
>+ * struct ice_dynamic_port - Track dynamically added devlink port instance
>+ * @hw_addr: the HW address for this port
>+ * @active: true if the port has been activated
>+ * @devlink_port: the associated devlink port structure
>+ * @pf: pointer to the PF private structure
>+ * @vsi: the VSI associated with this port
>+ *
>+ * An instance of a dynamically added devlink port. Each port flavour
>+ */
>+struct ice_dynamic_port {
>+	u8 hw_addr[ETH_ALEN];
>+	u8 active: 1;
>+	struct devlink_port devlink_port;
>+	struct ice_pf *pf;
>+	struct ice_vsi *vsi;
>+	u32 sfnum;
>+};
>+
>+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
>+
> int ice_devlink_create_pf_port(struct ice_pf *pf);
> void ice_devlink_destroy_pf_port(struct ice_pf *pf);
> int ice_devlink_create_vf_port(struct ice_vf *vf);
> void ice_devlink_destroy_vf_port(struct ice_vf *vf);
>+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
>+void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
>+
>+#define ice_devlink_port_to_dyn(p) \
>+	container_of(port, struct ice_dynamic_port, devlink_port)
> 
>+int
>+ice_devlink_port_new(struct devlink *devlink,
>+		     const struct devlink_port_new_attrs *new_attr,
>+		     struct netlink_ext_ack *extack,
>+		     struct devlink_port **devlink_port);
> #endif /* _DEVLINK_PORT_H_ */
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index 7bdf3fd30f7a..8a30b786b334 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -651,6 +651,9 @@ struct ice_pf {
> 	struct ice_eswitch eswitch;
> 	struct ice_esw_br_port *br_port;
> 
>+	struct xarray dyn_ports;
>+	struct xarray sf_nums;
>+
> #define ICE_INVALID_AGG_NODE_ID		0
> #define ICE_PF_AGG_NODE_ID_START	1
> #define ICE_MAX_PF_AGG_NODES		32
>@@ -907,6 +910,7 @@ int ice_vsi_open(struct ice_vsi *vsi);
> void ice_set_ethtool_ops(struct net_device *netdev);
> void ice_set_ethtool_repr_ops(struct net_device *netdev);
> void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
>+void ice_set_ethtool_sf_ops(struct net_device *netdev);
> u16 ice_get_avail_txq_count(struct ice_pf *pf);
> u16 ice_get_avail_rxq_count(struct ice_pf *pf);
> int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked);
>diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>index e2ce7395e2f2..bab2edaafb99 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lib.c
>+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>@@ -7,6 +7,7 @@
> #include "ice_lib.h"
> #include "ice_fltr.h"
> #include "ice_dcb_lib.h"
>+#include "ice_type.h"
> #include "ice_vsi_vlan_ops.h"
> 
> /**
>@@ -440,7 +441,7 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
>  * This deallocates the VSI's queue resources, removes it from the PF's
>  * VSI array if necessary, and deallocates the VSI
>  */
>-static void ice_vsi_free(struct ice_vsi *vsi)
>+void ice_vsi_free(struct ice_vsi *vsi)
> {
> 	struct ice_pf *pf = NULL;
> 	struct device *dev;
>@@ -612,7 +613,7 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
>  *
>  * returns a pointer to a VSI on success, NULL on failure.
>  */
>-static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
>+struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
> {
> 	struct device *dev = ice_pf_to_dev(pf);
> 	struct ice_vsi *vsi = NULL;
>diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
>index f9ee461c5c06..5de0cc50552c 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lib.h
>+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
>@@ -66,6 +66,8 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
> 
> int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
> int ice_vsi_cfg(struct ice_vsi *vsi);
>+struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
>+void ice_vsi_free(struct ice_vsi *vsi);
> 
> bool ice_is_reset_in_progress(unsigned long *state);
> int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index ce1cf1b03321..7033981666a7 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -3965,6 +3965,9 @@ static void ice_deinit_pf(struct ice_pf *pf)
> 
> 	if (pf->ptp.clock)
> 		ptp_clock_unregister(pf->ptp.clock);
>+
>+	xa_destroy(&pf->dyn_ports);
>+	xa_destroy(&pf->sf_nums);
> }
> 
> /**
>@@ -4058,6 +4061,9 @@ static int ice_init_pf(struct ice_pf *pf)
> 	hash_init(pf->vfs.table);
> 	ice_mbx_init_snapshot(&pf->hw);
> 
>+	xa_init(&pf->dyn_ports);
>+	xa_init(&pf->sf_nums);
>+
> 	return 0;
> }
> 
>@@ -5383,6 +5389,7 @@ static void ice_remove(struct pci_dev *pdev)
> 		ice_remove_arfs(pf);
> 
> 	devl_lock(priv_to_devlink(pf));
>+	ice_dealloc_all_dynamic_ports(pf);
> 	ice_deinit_devlink(pf);
> 
> 	ice_unload(pf);
>@@ -6677,7 +6684,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
> 
> 	if (vsi->port_info &&
> 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
>+	    ((vsi->netdev && vsi->type == ICE_VSI_PF))) {

I think this is some leftover, remove.


> 		ice_print_link_msg(vsi, true);
> 		netif_tx_start_all_queues(vsi->netdev);
> 		netif_carrier_on(vsi->netdev);
>-- 
>2.42.0
>
>
