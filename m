Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C39FB8A27B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 09:12:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 747E961331;
	Fri, 12 Apr 2024 07:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p0HMBvGlwvV5; Fri, 12 Apr 2024 07:12:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1184C6135A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712905951;
	bh=fEgZTKFa4/CMv1U7zxvT+UAJ2dgJbEGwgUoRe/2HsWY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UvbkLXNsHYnzmkDMYFB+tTlsiUItwSRN/6R2iMKXIla4hVZM3oOGLM/oOg+KR1YhV
	 OP4gEOEhwsyjhatntEBO1/19NMVjxPTkxDb8NFq0LkS7B/pl0m9+xvYybhdRTyWCYj
	 J21DMlo6js90D0rSCirRNbkknPbdb9wqfq7qFGANfMtD6qbHGcF1pH6mZNb7x7adgK
	 ujhvAPi7eL6fQ0Lv9yGb8PHsy8aAGe01PNg2OWin6AXv6mgcIEkL+fkmxHO/dV51ui
	 LzkyS9vJSQar2iQ1wYk4haf/ogSlq2j0IIRi4+iFw7szCL+E4xDrhGuu6/C1IKDiWH
	 PTnoJjsvIdbSQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1184C6135A;
	Fri, 12 Apr 2024 07:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 178571BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0331861310
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Na7C4TiCuRVe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 07:12:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12d; helo=mail-lf1-x12d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3F1FD60625
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F1FD60625
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F1FD60625
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:12:24 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-516dbc36918so772123e87.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 00:12:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712905942; x=1713510742;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fEgZTKFa4/CMv1U7zxvT+UAJ2dgJbEGwgUoRe/2HsWY=;
 b=PBIDMpBEQB29t5F4G7kan/WpTJexheqTT4epA+EXf5AJTBMRmXJJD2ntYvbMc04T0P
 nds9Ojr/mhHomAcd7kAXd/gqgcqgm5E6/CmysnPWoMwQ4ZH86T04W7HBIPePvOimhPsM
 WihvoIrz1aYz1UsmRBOxCWwWEev1WN9zKxHiWL9z8ocCHu8accMcQ6zdXFZNZ+SGH9EQ
 1VI8RH6srn+jxjAOJSZj4SfNqkI6SfOoAoKaun7kTBAmK0H3i5tLxMzjUnpkMkk0aNHk
 iNBVn8UZi+UjTOZDHG2cmSnoaYB6yWhSSUEdUS8F7CmT+UkhS5U0TPwwhfqW0odd+9VF
 CIfg==
X-Gm-Message-State: AOJu0YzPTi1LUTaVBah3mqQvgHq8nDl9/q+6j6+dxixICrXjo3e9D/xE
 36Fm6vFS/EmxnduNKMiyr6O+C2Az/ikYH/IpBLGgpF986KMbGZpvxLZenR0Sx7A=
X-Google-Smtp-Source: AGHT+IFCAMXGnRNcgDob/ykGpyZJTj0vNlubGwLaNmOi0INSTYE7gGLqoZLE2RkH8PKKePp+8qvpyQ==
X-Received: by 2002:a2e:a40c:0:b0:2d8:74f9:925d with SMTP id
 p12-20020a2ea40c000000b002d874f9925dmr894897ljn.13.1712905941500; 
 Fri, 12 Apr 2024 00:12:21 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 t7-20020a05600c198700b0041622c88852sm7914968wmq.16.2024.04.12.00.12.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Apr 2024 00:12:20 -0700 (PDT)
Date: Fri, 12 Apr 2024 09:12:18 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zhje0mQgQTMXwICb@nanopsycho>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412063053.339795-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712905942; x=1713510742;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fEgZTKFa4/CMv1U7zxvT+UAJ2dgJbEGwgUoRe/2HsWY=;
 b=Qsv9Eh8dxZz9kpkQkrTZDMTs/pLO19Eqik9kG9MEenUEZR4AAWHGHW4W2QN2xLfufN
 kt77hPV73Wu6zKF4D/67xj01+HzwBxTjZB21UHkk/zqjMyhdVn5xcUMAUuIEhtHIEby8
 vLMmgkblJcLZpO8DinnXdb1uGJE2+qK2OYPWc0+dN385LEpQrZFBm1yH+JTHt7SP6/rN
 qz0m5hsU7DOfhZa4fDFlaxJQ3sCyBCVm6gzriW4/oS+vbUZgf8ZXvkvtw2oomTR7I4Iz
 MTm5f9eVJnhDbqwQh4vLY1wj8+NHawNFxsSzae/44qiIKs6Z0ZK2ZGrEVTChHwmF4jPt
 r+4w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Qsv9Eh8d
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/7] ice: add basic devlink
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Apr 12, 2024 at 08:30:49AM CEST, michal.swiatkowski@linux.intel.com wrote:
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
> .../ethernet/intel/ice/devlink/devlink_port.c | 454 ++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |  30 ++
> drivers/net/ethernet/intel/ice/ice.h          |   4 +
> drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
> drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
> drivers/net/ethernet/intel/ice/ice_main.c     |  12 +-
> 7 files changed, 506 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>index b179eaccc774..661af04c8eef 100644
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
>@@ -1281,6 +1282,8 @@ static const struct devlink_ops ice_devlink_ops = {
> 
> 	.rate_leaf_parent_set = ice_devlink_set_parent,
> 	.rate_node_parent_set = ice_devlink_set_parent,
>+
>+	.port_new = ice_devlink_port_new,
> };
> 
> static int
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>index 13e6790d3cae..f5e305a71bd0 100644
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
>@@ -428,3 +431,454 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> 	devl_rate_leaf_destroy(&vf->devlink_port);
> 	devlink_port_unregister(&vf->devlink_port);
> }
>+
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
>+	dyn_port->active = true;
>+	return 0;

This is odd. You do dummy activation, the actual activation function is
added later on in this patchset. Could you please reorder the patches so
this one is the last one? When user does activation, everything should
work now.


>+
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
>+	dyn_port->active = false;
>+}
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
>+	if (dyn_port->active)
>+		ice_deactivate_dynamic_port(dyn_port);
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
>+		NL_SET_ERR_MSG_MOD(extack, "Port index");

Odd error message, please fix.


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
>+	if (ether_addr_equal(dyn_port->hw_addr, hw_addr)) {
>+		NL_SET_ERR_MSG_MOD(extack, "Address already set");

Is this message necessary? It will print out a warning for user.


>+		return 0;
>+	}
>+
>+	ether_addr_copy(dyn_port->hw_addr, hw_addr);
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
>+	if (dyn_port->active) {
>+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;

Interesting. This means that you don't distinguish between admin state
and operational state. Meaning, when user does activate, you atomically
achive the hw attachment and it is ready to go before activation cmd
returns, correct? I'm just making sure I understand the code.


>+	} else {
>+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
>+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>+	}
>+
>+	return 0;
>+}
>+
>+static const struct devlink_port_ops ice_devlink_port_sf_ops = {
>+	.port_del = ice_devlink_port_del,
>+	.port_fn_hw_addr_get = ice_devlink_port_fn_hw_addr_get,
>+	.port_fn_hw_addr_set = ice_devlink_port_fn_hw_addr_set,
>+	.port_fn_state_get = ice_devlink_port_fn_state_get,
>+	.port_fn_state_set = ice_devlink_port_fn_state_set,
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
>+ * @sfnum: the subfunction number to use for the port
>+ *
>+ * Register PCI subfunction flavour devlink port for a dynamically added
>+ * subfunction port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int
>+ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port, u32 sfnum)
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
>+	attrs.pci_sf.sf = sfnum;
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
>+	if (new_attr->flavour == DEVLINK_PORT_FLAVOUR_PCI_SF) {

Pointless check, this is already sanitized in
ice_devlink_port_new_check_attr()


>+		err = ice_reserve_sf_num(pf, new_attr, extack, &sfnum);
>+		if (err)
>+			return err;
>+	}
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
>+	eth_random_addr(dyn_port->hw_addr);
>+
>+	err = xa_insert(&pf->dyn_ports, vsi->idx, dyn_port, GFP_KERNEL);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Port index reservation failed");
>+		goto unroll_vsi_alloc;
>+	}
>+
>+	err = ice_devlink_create_sf_port(dyn_port, sfnum);
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
>+	if (new_attr->flavour == DEVLINK_PORT_FLAVOUR_PCI_SF)

Pointless check, this is already sanitized in
ice_devlink_port_new_check_attr()


>+		xa_erase(&pf->sf_nums, sfnum);
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
>index 9223bcdb6444..30146fef64b9 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>@@ -4,9 +4,39 @@
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
>+	u8 active : 1;

Hmm, odd whitespace to my eye. Shouldn't this be:
	u8 active: 1;
?


>+	struct devlink_port devlink_port;
>+	struct ice_pf *pf;
>+	struct ice_vsi *vsi;
>+};
>+
>+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
>+
> int ice_devlink_create_pf_port(struct ice_pf *pf);
> void ice_devlink_destroy_pf_port(struct ice_pf *pf);
> int ice_devlink_create_vf_port(struct ice_vf *vf);
> void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> 
>+#define ice_devlink_port_to_dyn(p) \
>+	container_of(port, struct ice_dynamic_port, devlink_port)
>+
>+int
>+ice_devlink_port_new(struct devlink *devlink,
>+		     const struct devlink_port_new_attrs *new_attr,
>+		     struct netlink_ext_ack *extack,
>+		     struct devlink_port **devlink_port);
> #endif /* _DEVLINK_PORT_H_ */
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index 5f7757a44b72..edc93d14464c 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -649,6 +649,9 @@ struct ice_pf {
> 	struct ice_eswitch eswitch;
> 	struct ice_esw_br_port *br_port;
> 
>+	struct xarray dyn_ports;
>+	struct xarray sf_nums;
>+
> #define ICE_INVALID_AGG_NODE_ID		0
> #define ICE_PF_AGG_NODE_ID_START	1
> #define ICE_MAX_PF_AGG_NODES		32
>@@ -905,6 +908,7 @@ int ice_vsi_open(struct ice_vsi *vsi);
> void ice_set_ethtool_ops(struct net_device *netdev);
> void ice_set_ethtool_repr_ops(struct net_device *netdev);
> void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
>+void ice_set_ethtool_sf_ops(struct net_device *netdev);
> u16 ice_get_avail_txq_count(struct ice_pf *pf);
> u16 ice_get_avail_rxq_count(struct ice_pf *pf);
> int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked);
>diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>index cff0bb6ba428..3e5c0651534b 100644
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
>index a57213062b7f..198cfd1fdca0 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lib.h
>+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
>@@ -103,6 +103,8 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
> 
> int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
> int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params);
>+struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
>+void ice_vsi_free(struct ice_vsi *vsi);
> 
> bool ice_is_reset_in_progress(unsigned long *state);
> int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index 058d2a8836b0..29552598ddb6 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -3964,6 +3964,9 @@ static void ice_deinit_pf(struct ice_pf *pf)
> 
> 	if (pf->ptp.clock)
> 		ptp_clock_unregister(pf->ptp.clock);
>+
>+	xa_destroy(&pf->dyn_ports);
>+	xa_destroy(&pf->sf_nums);
> }
> 
> /**
>@@ -4057,6 +4060,9 @@ static int ice_init_pf(struct ice_pf *pf)
> 	hash_init(pf->vfs.table);
> 	ice_mbx_init_snapshot(&pf->hw);
> 
>+	xa_init(&pf->dyn_ports);
>+	xa_init(&pf->sf_nums);
>+
> 	return 0;
> }
> 
>@@ -5376,6 +5382,7 @@ static void ice_remove(struct pci_dev *pdev)
> 		ice_remove_arfs(pf);
> 
> 	devl_lock(priv_to_devlink(pf));
>+	ice_dealloc_all_dynamic_ports(pf);
> 	ice_deinit_devlink(pf);
> 
> 	ice_unload(pf);
>@@ -6670,7 +6677,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
> 
> 	if (vsi->port_info &&
> 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
>+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
>+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
> 		ice_print_link_msg(vsi, true);
> 		netif_tx_start_all_queues(vsi->netdev);
> 		netif_carrier_on(vsi->netdev);
>@@ -7368,7 +7376,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
> 
> 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
> 
>-	if (vsi->type == ICE_VSI_PF) {
>+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
> 		/* Notify the stack of the actual queue counts. */
> 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
> 		if (err)

These 2 last hunks seem somewhat disconnected from the rest of the
patch. Could that be a separate patch perhaps?


>-- 
>2.42.0
>
>
