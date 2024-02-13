Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CC9852BB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 09:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAA9A60B10;
	Tue, 13 Feb 2024 08:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-yb5Qmt6bhg; Tue, 13 Feb 2024 08:55:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DFAB60B17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707814536;
	bh=Y/89vosut6nVjUXeZeVGgQddnwZJJmOONT3Mms07J9E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RCBKA+H7f3ZM7PfAjP6GmINDirTact5pyEs/mj/MWMa/4BwutFEufPXqFB0CxpZ8A
	 j48TqbXgiz65FGnvClwGxRiVsvsEJIdMazXqOgIicFIHMTwQv79cOeF2KM53zFMpWx
	 aEhG1G4DVwhYPfmRTfuLC4nmDCvZG/gKdhSlN4te0VzPzpFEt2G51injlSRNok6Kb+
	 DsN0JPgBedfBbxf76G8KF0LkzKppZ8SbkCYdkSa2pGzESVM+ctrK0LTlV7TUUaUgPm
	 kmU2CuS+ADXtsYQy5jOAHYsCNaiyb6xMuw0xntLtgERCF3tLJtlQlFjWwNh7Z9IPlR
	 C+A9Jfu4riagg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DFAB60B17;
	Tue, 13 Feb 2024 08:55:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 777BD1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 08:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F36840B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 08:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCMWOYFZ9bmv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 08:55:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12a; helo=mail-lf1-x12a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8587A40156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8587A40156
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8587A40156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 08:55:27 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-51183b02564so775993e87.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 00:55:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707814525; x=1708419325;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y/89vosut6nVjUXeZeVGgQddnwZJJmOONT3Mms07J9E=;
 b=m/uejvPykaq4bSm+lnreRoooaEayoX9UpMwu9fsnjhUZiZGTXHDKyosJGWEg318ubl
 1uA11mN6/H0PUt1mxpIaOkVWkwO5Y8xGd9a2s9LkJ/t43VZs45cqqWNrFQhy38rJSHX6
 uPnqVgGqfNsyA2HSyEFNRa0keTlMJe46CN9iQ+yy3mLuH45WrZ61E9/r3yvRmNQtjmKh
 DQPqObTx1PZWfmpvOhMlI+z/pDvET+df0VUWAQxxQpU4eWlltuSGRkK0xsnlJE5Duqni
 ubt4puYzHf75m7a+Ev7rCoKbyyqDIPDo76P8nnNN9oDBNRi5XPyD+wkW8n6QPgMyNTNV
 CsWw==
X-Gm-Message-State: AOJu0Yw6yEKAnbfeStF0LKkLT9VaPYJ2XVYU9Lg/Y+CCut1qgMT6r+U5
 IIn4AMwRKompEO95xPJpncX3R26YbhY8WppHD32bBvbBi0rNXObByOGEN/wYd4g=
X-Google-Smtp-Source: AGHT+IHwakbLqs+i8yoL7bR6AO5v4aJwwyneQ5rnf3vrlMYTZ6Jpt8JyHcXj2QAAKxF8X2jstoDYsw==
X-Received: by 2002:a05:6512:5c9:b0:511:970b:2cdc with SMTP id
 o9-20020a05651205c900b00511970b2cdcmr793749lfo.35.1707814524989; 
 Tue, 13 Feb 2024 00:55:24 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVBS4ONY9ppKuKvZH2uhXMB9r/InpMxmJNac4iPi0niHqHu34iVa5UsANhtXIbeVd9nFtaHwAupn7bH+GTWMAFYyHQdU7PkLJNkTW2AcURQ+BH0gQtfV+HnVy95YiULiIrdz/taKZlhppYBlGOA4t0LLEOELiItTguLWJuzRzAu38rZ/T4wUT/yA8vy2cEFUSdJ3SDw1Kt+2CIuLaE+e/YlRF5B1t+rWukEl7NciVwzP/VLFEfIREe6hB8esEsTL4JgDy1yHrswIP0TpFkCMtZkuvhtIPr1FRmXPzq3kXQJ9jWC1Hw4dgCVnV6wfLteS+PKCS/CZhsLpjro13HzA9n2htARwyxwVNi+j53IHs/SxIjqUz7uw4irBundShg6V48hXrU1QMtEc959LI9pb37kY8Tp
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 s21-20020a05600c45d500b0040fd1629443sm11095936wmo.18.2024.02.13.00.55.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 00:55:24 -0800 (PST)
Date: Tue, 13 Feb 2024 09:55:20 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZcsueJ1tr-GdseIt@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-5-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213072724.77275-5-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707814525; x=1708419325;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Y/89vosut6nVjUXeZeVGgQddnwZJJmOONT3Mms07J9E=;
 b=AwS718vqsf1+rPvF0dcSPBUp2TJZ+AHw2ND973U8sdhdveQ2bRr2X6pPRRkeuF76EF
 uYNIZFvnLllG11ohnH8Xlt2OS62Rczd0859CkV4m4ulax5QNZGSGV1T7pSErc+BC1eNN
 ibe+SbG7aWlOhETkL3AxYuVST7QlBqkFUdHJb2EGxM2+NPHPv9t1cJoZPVSJD5/EPhf/
 KW83N1dFn64EnzpvmS/U7f+vUxhDiFXPPzoz5ChC/RviIAuAbtH0cWFv4vgMK2Gh6L+Y
 h5mf1ZYhitebeEXCyhMbAI6bcwHrvldqxo21Dj+1Nkq808OHFuEi7OqDo8ac/o7hnWhi
 BvbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=AwS718vq
Subject: Re: [Intel-wired-lan] [iwl-next v1 04/15] ice: add basic devlink
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 08:27:13AM CET, michal.swiatkowski@linux.intel.com wrote:
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
>Temporarily, before adding auxiliary bus driver for subfunctions,
>configure subfunction netdev directly for the created devlink
>port. This will be modified in the next patch to properly that handle
>devlink port as the port representor.
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
> drivers/net/ethernet/intel/ice/Makefile       |   1 +
> .../intel/ice/devlink/ice_devlink_port.c      | 508 ++++++++++++++++++
> .../intel/ice/devlink/ice_devlink_port.h      |  30 ++
> drivers/net/ethernet/intel/ice/ice.h          |   4 +
> drivers/net/ethernet/intel/ice/ice_devlink.c  |   3 +
> drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
> drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
> drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
> drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 138 +++++
> drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  15 +
> 10 files changed, 716 insertions(+), 4 deletions(-)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
>
>diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>index cd4ab46d72a7..d56a7165df95 100644
>--- a/drivers/net/ethernet/intel/ice/Makefile
>+++ b/drivers/net/ethernet/intel/ice/Makefile
>@@ -31,6 +31,7 @@ ice-y := ice_main.o	\
> 	 ice_idc.o	\
> 	 ice_devlink.o	\
> 	 devlink/ice_devlink_port.o	\
>+	 ice_sf_eth.o	\
> 	 ice_ddp.o	\
> 	 ice_fw_update.o \
> 	 ice_lag.o	\
>diff --git a/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
>index c8c823467fcf..90efceaddb02 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
>@@ -10,6 +10,8 @@
> #include "ice_eswitch.h"
> #include "ice_fw_update.h"
> #include "ice_dcb_lib.h"
>+#include "ice_sf_eth.h"
>+#include "ice_fltr.h"
> 
> static int ice_active_port_option = -1;
> 
>@@ -432,3 +434,509 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> 	devlink_port_unregister(&vf->devlink_port);
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
>+	switch (dyn_port->devlink_port.attrs.flavour) {
>+	case DEVLINK_PORT_FLAVOUR_PCI_SF:

Pointless switch case.

It looks like you have odd habbit of checking things that cannot happen
all over this patch :) See more below...


>+		err = ice_sf_eth_activate(dyn_port, extack);
>+		if (err)
>+			return err;
>+		break;
>+	default:
>+		NL_SET_ERR_MSG_MOD(extack, "Unsupported port flavour");
>+		return -EOPNOTSUPP;
>+	}
>+
>+	dyn_port->active = 1;

true?


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
>+	switch (dyn_port->devlink_port.attrs.flavour) {
>+	case DEVLINK_PORT_FLAVOUR_PCI_SF:

Pointless switch case. Not possible to be anything else then
DEVLINK_PORT_FLAVOUR_PCI_SF.


>+		ice_sf_eth_deactivate(dyn_port);
>+		break;
>+	default:
>+		WARN(1, "Attempting to deactivate port with unexpected port flavour %d",
>+		     dyn_port->devlink_port.attrs.flavour);
>+	}
>+
>+	dyn_port->active = 0;

false?


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
>+	if (devlink_port->attrs.flavour == DEVLINK_PORT_FLAVOUR_PCI_SF)

I don't understand how this check could be false. Remove it.


>+		xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
>+
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
>+	struct devlink *devlink = priv_to_devlink(pf);
>+	struct ice_dynamic_port *dyn_port;
>+	unsigned long index;
>+
>+	devl_lock(devlink);
>+	xa_for_each(&pf->dyn_ports, index, dyn_port)
>+		ice_dealloc_dynamic_port(dyn_port);
>+	devl_unlock(devlink);

Hmm, I would assume that the called should already hold the devlink
instance lock when doing remove. What is stopping user from issuing
port_new command here, after devl_unlock()?


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
>+		NL_SET_ERR_MSG_MOD(extack, "Port index is autogenerated by the driver");

Does not look like an error message. Please re-phrase.


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
>+	if (!dyn_port) {

Can't happen. Remove the check.


>+		NL_SET_ERR_MSG_MOD(extack, "Failed to find Subfunction port with a given index");
>+		return -EINVAL;
>+	}
>+
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
>+	if (port->attrs.flavour != DEVLINK_PORT_FLAVOUR_PCI_SF) {

How exactly this can happen? It could not. Remove the check. Remove it
from the rest of the ops too.


>+		NL_SET_ERR_MSG_MOD(extack, "Port is not a Subfunction");
>+		return -EOPNOTSUPP;
>+	}
>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+
>+	if (hw_addr_len != ETH_ALEN || !is_valid_ether_addr(hw_addr)) {
>+		NL_SET_ERR_MSG_MOD(extack, "Invalid ethernet address");
>+		return -EADDRNOTAVAIL;
>+	}
>+
>+	if (ether_addr_equal(dyn_port->hw_addr, hw_addr)) {
>+		NL_SET_ERR_MSG_MOD(extack, "address already set");

You start with capital letter in the rest of the messages.


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
>+	if (port->attrs.flavour != DEVLINK_PORT_FLAVOUR_PCI_SF)
>+		return -EOPNOTSUPP;

Pointless check.


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
>+	if (port->attrs.flavour != DEVLINK_PORT_FLAVOUR_PCI_SF) {
>+		NL_SET_ERR_MSG_MOD(extack, "Port is not a Subfunction");
>+		return -EOPNOTSUPP;
>+	}

Pointless check.


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
>+	if (port->attrs.flavour != DEVLINK_PORT_FLAVOUR_PCI_SF) {
>+		NL_SET_ERR_MSG_MOD(extack, "Port is not a Subfunction");
>+		return -EOPNOTSUPP;
>+	}

Pointless check.


>+
>+	dyn_port = ice_devlink_port_to_dyn(port);
>+
>+	if (dyn_port->active) {
>+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
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
>+	dyn_port->active = 0;

Pointless init, the memory is already zeroed.


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
>+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);

Pointless cast.


>+	struct device *dev = ice_pf_to_dev(pf);
>+	int err;
>+
>+	dev_dbg(dev, "%s flavour:%d index:%d pfnum:%d\n", __func__,
>+		new_attr->flavour, new_attr->port_index, new_attr->pfnum);

How this message could ever help anyone?


>+
>+	err = ice_devlink_port_new_check_attr(pf, new_attr, extack);
>+	if (err)
>+		return err;
>+
>+	return ice_alloc_dynamic_port(pf, new_attr, extack, devlink_port);
>+}
>+
>diff --git a/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.h
>index 983d136f5ddf..2bb203c1713f 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.h
>@@ -4,9 +4,39 @@
> #ifndef _ICE_DEVLINK_PORT_H_
> #define _ICE_DEVLINK_PORT_H_
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
> #endif /* _ICE_DEVLINK_PORT_H_ */
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index c40fc339a604..767ea80684e7 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -646,6 +646,9 @@ struct ice_pf {
> 	struct ice_eswitch eswitch;
> 	struct ice_esw_br_port *br_port;
> 
>+	struct xarray dyn_ports;
>+	struct xarray sf_nums;
>+
> #define ICE_INVALID_AGG_NODE_ID		0
> #define ICE_PF_AGG_NODE_ID_START	1
> #define ICE_MAX_PF_AGG_NODES		32
>@@ -902,6 +905,7 @@ int ice_vsi_open(struct ice_vsi *vsi);
> void ice_set_ethtool_ops(struct net_device *netdev);
> void ice_set_ethtool_repr_ops(struct net_device *netdev);
> void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
>+void ice_set_ethtool_sf_ops(struct net_device *netdev);
> u16 ice_get_avail_txq_count(struct ice_pf *pf);
> u16 ice_get_avail_rxq_count(struct ice_pf *pf);
> int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked);
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index e5f275ca82e5..c186e793153d 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -6,6 +6,7 @@
> #include "ice.h"
> #include "ice_lib.h"
> #include "ice_devlink.h"
>+#include "devlink/ice_devlink_port.h"
> #include "ice_eswitch.h"
> #include "ice_fw_update.h"
> #include "ice_dcb_lib.h"
>@@ -1131,6 +1132,8 @@ static const struct devlink_ops ice_devlink_ops = {
> 
> 	.rate_leaf_parent_set = ice_devlink_set_parent,
> 	.rate_node_parent_set = ice_devlink_set_parent,
>+
>+	.port_new = ice_devlink_port_new,
> };
> 
> static int
>diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>index 8706d0589caa..3472011922c1 100644
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
>index aa3a85d31f95..9cc7cc57e41a 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lib.h
>+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
>@@ -97,6 +97,8 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
> 
> int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
> int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params);
>+struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
>+void ice_vsi_free(struct ice_vsi *vsi);
> 
> bool ice_is_reset_in_progress(unsigned long *state);
> int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index b0f6a11ae744..e4269a7df7d6 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -16,6 +16,7 @@
> #include "ice_devlink.h"
> #include "ice_hwmon.h"
> #include "devlink/ice_devlink_port.h"
>+#include "ice_sf_eth.h"
> /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
>  * ice tracepoint functions. This must be done exactly once across the
>  * ice driver.
>@@ -3929,6 +3930,9 @@ static void ice_deinit_pf(struct ice_pf *pf)
> 
> 	if (pf->ptp.clock)
> 		ptp_clock_unregister(pf->ptp.clock);
>+
>+	xa_destroy(&pf->dyn_ports);
>+	xa_destroy(&pf->sf_nums);
> }
> 
> /**
>@@ -4022,6 +4026,9 @@ static int ice_init_pf(struct ice_pf *pf)
> 	hash_init(pf->vfs.table);
> 	ice_mbx_init_snapshot(&pf->hw);
> 
>+	xa_init(&pf->dyn_ports);
>+	xa_init(&pf->sf_nums);
>+
> 	return 0;
> }
> 
>@@ -5250,6 +5257,8 @@ static void ice_remove(struct pci_dev *pdev)
> 	struct ice_pf *pf = pci_get_drvdata(pdev);
> 	int i;
> 
>+	ice_dealloc_all_dynamic_ports(pf);
>+
> 	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
> 		if (!ice_is_reset_in_progress(pf->state))
> 			break;
>@@ -6561,7 +6570,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
> 
> 	if (vsi->port_info &&
> 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
>+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
>+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
> 		ice_print_link_msg(vsi, true);
> 		netif_tx_start_all_queues(vsi->netdev);
> 		netif_carrier_on(vsi->netdev);
>@@ -7217,7 +7227,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
> 
> 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
> 
>-	if (vsi->type == ICE_VSI_PF) {
>+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
> 		/* Notify the stack of the actual queue counts. */
> 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
> 		if (err)
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>new file mode 100644
>index 000000000000..f569f176f29f
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>@@ -0,0 +1,138 @@
>+// SPDX-License-Identifier: GPL-2.0
>+/* Copyright (c) 2023, Intel Corporation. */

It's 2024


>+
>+#include "ice.h"
>+#include "ice_lib.h"
>+#include "ice_txrx.h"
>+#include "ice_fltr.h"
>+#include "ice_sf_eth.h"
>+#include "devlink/ice_devlink_port.h"
>+
>+static const struct net_device_ops ice_sf_netdev_ops = {
>+	.ndo_open = ice_open,
>+	.ndo_stop = ice_stop,
>+	.ndo_start_xmit = ice_start_xmit,
>+	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
>+	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
>+	.ndo_change_mtu = ice_change_mtu,
>+	.ndo_get_stats64 = ice_get_stats64,
>+	.ndo_tx_timeout = ice_tx_timeout,
>+	.ndo_bpf = ice_xdp,
>+	.ndo_xdp_xmit = ice_xdp_xmit,
>+	.ndo_xsk_wakeup = ice_xsk_wakeup,
>+};
>+
>+/**
>+ * ice_sf_cfg_netdev - Allocate, configure and register a netdev
>+ * @dyn_port: subfunction associated with configured netdev
>+ *
>+ * Returns 0 on success, negative value on failure
>+ */
>+static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port)
>+{
>+	struct net_device *netdev;
>+	struct ice_vsi *vsi = dyn_port->vsi;
>+	struct ice_netdev_priv *np;
>+	int err;
>+
>+	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
>+				    vsi->alloc_rxq);
>+	if (!netdev)
>+		return -ENOMEM;
>+
>+	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
>+	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
>+	vsi->netdev = netdev;
>+	np = netdev_priv(netdev);
>+	np->vsi = vsi;
>+
>+	ice_set_netdev_features(netdev);
>+
>+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
>+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
>+			       NETDEV_XDP_ACT_RX_SG;
>+
>+	eth_hw_addr_set(netdev, dyn_port->hw_addr);
>+	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
>+	netdev->netdev_ops = &ice_sf_netdev_ops;
>+	SET_NETDEV_DEVLINK_PORT(netdev, &dyn_port->devlink_port);
>+
>+	err = register_netdev(netdev);

It the the actual subfunction or eswitch port representor of the
subfunction. Looks like the port representor. In that case. It should be
created no matter if the subfunction is activated, when it it created.

If this is the actual subfunction netdev, you should not link it to
devlink port here.



>+	if (err) {
>+		free_netdev(netdev);
>+		vsi->netdev = NULL;
>+		return -ENOMEM;
>+	}
>+	set_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>+	netif_carrier_off(netdev);
>+	netif_tx_stop_all_queues(netdev);
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_sf_eth_activate - Activate Ethernet subfunction port
>+ * @dyn_port: the dynamic port instance for this subfunction
>+ * @extack: extack for reporting error messages
>+ *
>+ * Setups netdev resources and filters for a subfunction.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+int
>+ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>+		    struct netlink_ext_ack *extack)
>+{
>+	struct ice_vsi_cfg_params params = {};
>+	struct ice_vsi *vsi = dyn_port->vsi;
>+	struct ice_pf *pf = dyn_port->pf;
>+	int err;
>+
>+	params.type = ICE_VSI_SF;
>+	params.pi = pf->hw.port_info;
>+	params.flags = ICE_VSI_FLAG_INIT;
>+
>+	err = ice_vsi_cfg(vsi, &params);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Subfunction vsi config failed");
>+		return err;
>+	}
>+
>+	err = ice_sf_cfg_netdev(dyn_port);
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack, "Subfunction netdev config failed");
>+		goto err_vsi_decfg;
>+	}
>+
>+	err = ice_fltr_add_mac_and_broadcast(vsi, vsi->netdev->dev_addr,
>+					     ICE_FWD_TO_VSI);
>+	if (err)
>+		NL_SET_ERR_MSG_MOD(extack, "can't add MAC filters for subfunction VSI");

Start with capital letter here.


>+
>+	ice_napi_add(vsi);
>+
>+	return err;
>+
>+err_vsi_decfg:
>+	ice_vsi_decfg(vsi);
>+	return err;
>+}
>+
>+/**
>+ * ice_sf_eth_deactivate - Deactivate subfunction
>+ * @dyn_port: the dynamic port instance for this subfunction
>+ *
>+ * Free netdev resources and filters for a subfunction.
>+ */
>+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port)
>+{
>+	struct ice_vsi *vsi = dyn_port->vsi;
>+
>+	ice_vsi_close(vsi);
>+	unregister_netdev(vsi->netdev);
>+	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>+	free_netdev(vsi->netdev);
>+	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
>+	vsi->netdev = NULL;
>+	ice_vsi_decfg(vsi);
>+}
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>new file mode 100644
>index 000000000000..f4b8b36b1a67
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>@@ -0,0 +1,15 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+/* Copyright (c) 2023, Intel Corporation. */
>+
>+#ifndef _ICE_SF_ETH_H_
>+#define _ICE_SF_ETH_H_
>+
>+#include "ice.h"
>+#include "devlink/ice_devlink_port.h"
>+
>+int
>+ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>+		    struct netlink_ext_ack *extack);
>+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port);
>+
>+#endif /* _ICE_SF_ETH_H_ */
>-- 
>2.42.0

pw-bot: cr

>
>
