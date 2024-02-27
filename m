Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A278869BBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 17:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22ECB40662;
	Tue, 27 Feb 2024 16:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDfWjJ64VQhr; Tue, 27 Feb 2024 16:13:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBA7A40682
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709050401;
	bh=U0zlUbDRUti/0fQkXKr609F+U7sVS+VPdTOuFz0F/Bk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nuNVvyHswQa3ULIUX1QUH3t4obKD8eQxIGEe92ntum0PRGYZnDYD6O48Au/YWDM6a
	 kPVoSWLCwdThPIgX7u5rhSQ1dlIeE9c52KawXBpMgbmlfkQQPmkxjyh5MVBwqIWpzA
	 s12a5SKYV/s10H3q3PPecMeXlXnPt2n3XpvHR/yBon7hHvdQM20OHIqGTx/juKtgW8
	 yfM/H/dZn6h6ValUkX/AoM8xLu1+z4O2MgnD4DBDf3KFIMLXBiJQkwQwIaIO4Ij7Ku
	 RnQBmM1s0liekM/q89FR3xc8ZbCAPRk4fdcwSoTdRCZ5tY5FoXIL8TbEBV87mjw1QS
	 3aJR9vaQr9PPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBA7A40682;
	Tue, 27 Feb 2024 16:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 818EE1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 16:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CEC781E14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 16:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXudolial0AJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 16:13:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12c; helo=mail-lf1-x12c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D7B928128D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7B928128D
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7B928128D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 16:13:16 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-512f54c81d2so3069788e87.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 08:13:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709050394; x=1709655194;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=U0zlUbDRUti/0fQkXKr609F+U7sVS+VPdTOuFz0F/Bk=;
 b=cbvJ/R+/IoqHa5i7en/BieUIJ6/QQhpJkA361gF6b6m5I5o/YC/h5pvzHIemBHPl/R
 ie7pGyEp0OsXaACZFG0myBGzsnf+T0YTU64PwVKaixzLr2q5nRflZBHXi78Y0Hsxvxwf
 ZapMeODPuFFprazYBTCVRItWCXXw/8tFMqj79Q0WIjjHL86soUTg9mQsPyBHcT4wHr4c
 djQ1UvPGxx6TBfbtX4eX9cDVD7r3FHiwOdGlBicqggeCH6cRV0ITSQa5nFcp4N5uwBSM
 gPeSpgeHuFw1CXXj0caLUh+X+kOBaFGDAdnfcPbAix0zOCl7h5psPdq0FFVpL5DUF+Si
 iGKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUo1ACo5SDfB+Ml63dGU7s2Mjjkp6GQ2JqGWsEUaYcf/tEzyShE+kmV6lsmDxNXMIyeBsdPltb7tIFPY/UWyESD8cjNIGgIccLVBIj3S1bQow==
X-Gm-Message-State: AOJu0YyeS0aCkGLmpdkBZO2LSdVyvkAqE7cad+gns+qRaiNypk5DWN4J
 zEKnGO628wbkhmYpuvjP9Gr7lM0hF5+mpbYb58s+j3SP45sw1DSTsshYjqmPBlU=
X-Google-Smtp-Source: AGHT+IGdncA4Y+RRQwxvVBuwQR7ctR1zSWoNVd6L0U1b5mZoDC5tYdlxznJIjlJBo0jpK+3MajGWdg==
X-Received: by 2002:ac2:5e3c:0:b0:512:a959:af3d with SMTP id
 o28-20020ac25e3c000000b00512a959af3dmr5733841lfg.52.1709050394044; 
 Tue, 27 Feb 2024 08:13:14 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 k2-20020a5d6d42000000b0033b79d385f6sm11694326wri.47.2024.02.27.08.13.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Feb 2024 08:13:12 -0800 (PST)
Date: Tue, 27 Feb 2024 17:13:09 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <Zd4KFZINps0CloD-@nanopsycho>
References: <20240224124406.11369-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240224124406.11369-1-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709050394; x=1709655194;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=U0zlUbDRUti/0fQkXKr609F+U7sVS+VPdTOuFz0F/Bk=;
 b=pn8kqiHWJdSga/f1UmbLvO4R4CKmV33VY/Yrm0mQGHFP5Q23s27QPGN2gmNH6la92B
 rZFpxhZdXesptDD7iORHGIHJ5Y3S5gi17HhOZHWxlG36WdfyIVMG3lehdNo9EBnUKO25
 t6Ma+LmhVdcHOaneIIF/ilwvpoU9cubkdX3gScg3zvSsDJfqvdBa7CGDH2Lqe+rTUF6o
 AzkfvJ2A4VMy3UqJPCkmwiVJC5cmyAKNO+o4tGcKMXmb0en4REzD9GROHV1kKNfavnjS
 mRLaysQo1AI8Jv+u4DLouzP/M3RrZkiDJcMes8o03k/a1GInLih2p6kp0v/tBo9TJKQe
 FYHA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=pn8kqiHW
Subject: Re: [Intel-wired-lan] [PATCH v4] ice: Add get/set hw address for
 VFs using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com,
 michal.swiatkowski@linux.intel.com, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 vchundur@redhat.com, netdev@vger.kernel.org, kuba@kernel.org,
 rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sat, Feb 24, 2024 at 01:44:06PM CET, ksundara@redhat.com wrote:
>Changing the MAC address of the VFs are not available
>via devlink. Add the function handlers to set and get
>the HW address for the VFs.
>
>Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 88 +++++++++++++++++++-
> 1 file changed, 87 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index 80dc5445b50d..c3813edd6a76 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -1576,6 +1576,91 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
> 	devlink_port_unregister(&pf->devlink_port);
> }
> 
>+/**
>+ * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
>+ * @port: devlink port structure
>+ * @hw_addr: MAC address of the port
>+ * @hw_addr_len: length of MAC address
>+ * @extack: extended netdev ack structure
>+ *
>+ * Callback for the devlink .port_fn_hw_addr_get operation
>+ * Return: zero on success or an error code on failure.
>+ */
>+
>+static int ice_devlink_port_get_vf_mac_address(struct devlink_port *port,
>+					       u8 *hw_addr, int *hw_addr_len,
>+					       struct netlink_ext_ack *extack)
>+{
>+	struct devlink_port_attrs *attrs = &port->attrs;
>+	struct devlink_port_pci_vf_attrs *pci_vf;
>+	struct devlink *devlink = port->devlink;
>+	struct ice_pf *pf;
>+	struct ice_vf *vf;
>+	int vf_id;
>+
>+	pf = devlink_priv(devlink);
>+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
>+		pci_vf = &attrs->pci_vf;
>+		vf_id = pci_vf->vf;
>+	} else {
>+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
>+		return -EADDRNOTAVAIL;
>+	}
>+	vf = ice_get_vf_by_id(pf, vf_id);
>+	if (!vf) {
>+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");
>+		return -EINVAL;
>+	}
>+	ether_addr_copy(hw_addr, vf->dev_lan_addr);
>+	*hw_addr_len = ETH_ALEN;
>+
>+	ice_put_vf(vf);
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
>+ * @port: devlink port structure
>+ * @hw_addr: MAC address of the port
>+ * @hw_addr_len: length of MAC address
>+ * @extack: extended netdev ack structure
>+ *
>+ * Callback for the devlink .port_fn_hw_addr_set operation
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int ice_devlink_port_set_vf_mac_address(struct devlink_port *port,

Better to have "fn" in the name of the function, so it is clear this
sets the mac of function itself.


>+					       const u8 *hw_addr,
>+					       int hw_addr_len,
>+					       struct netlink_ext_ack *extack)
>+{
>+	struct net_device *netdev = port->type_eth.netdev;
>+	struct devlink_port_attrs *attrs = &port->attrs;
>+	struct devlink_port_pci_vf_attrs *pci_vf;
>+	u8 mac[ETH_ALEN];
>+	int vf_id;
>+
>+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
>+		pci_vf = &attrs->pci_vf;
>+		vf_id = pci_vf->vf;
>+	} else {
>+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");

How exactly this can happen? I'm pretty sure it can't.


>+		return -EADDRNOTAVAIL;
>+	}
>+
>+	if (!netdev) {

How exactly this can happen? I'm pretty sure it can't.


>+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the netdev");
>+		return -EADDRNOTAVAIL;
>+	}
>+	ether_addr_copy(mac, hw_addr);
>+
>+	return ice_set_vf_mac(netdev, vf_id, mac);

It's misleading to call ice_set_vf_mac like this. It is originally used
by legacy ip vf api, where the netdev is the PF netdev. Here you pass
devlink port representor netdev. Internally ice_set_vf_mac() gets
pointer to struct ice_pf.

Could you please use:
struct ice_pf *pf = devlink_priv(devlink);
and pass it to some variant of ice_set_vf_mac() function?


pw-bot: cr


>+}
>+
>+static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>+	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
>+	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
>+};
>+
> /**
>  * ice_devlink_create_vf_port - Create a devlink port for this VF
>  * @vf: the VF to create a port for
>@@ -1611,7 +1696,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> 	devlink_port_attrs_set(devlink_port, &attrs);
> 	devlink = priv_to_devlink(pf);
> 
>-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
>+	err = devlink_port_register_with_ops(devlink, devlink_port,
>+					     vsi->idx, &ice_devlink_vf_port_ops);
> 	if (err) {
> 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
> 			vf->vf_id, err);
>-- 
>2.39.3 (Apple Git-145)
>
