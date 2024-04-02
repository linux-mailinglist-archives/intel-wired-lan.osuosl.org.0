Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6328951B1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 13:21:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8ACE5414A1;
	Tue,  2 Apr 2024 11:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I7reGsjx6nwL; Tue,  2 Apr 2024 11:21:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C3F54149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712056902;
	bh=hgU+nZuiX4o0PnBgeKWW+EtIi7N1M71d0zV+QPmKFhc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aBfpywnBnpCkiOpZ/cBncqBfipfcIT9xCq8+mRrc7C65rqnUIdOsmakJ7jl/MBmk+
	 y7Z5E0PRH3LFiOy627T52t+Wr8aFZIwK5Y3dIx+1cYKi8ukNVkJC0ZOXrGWtMHohx7
	 HUO7UdeHEoj4R4T/hOylzqPH8LjR1mFThdKb8q8R0HWcDufPBOr3eke90Oiw50Ulvv
	 Muz7cT+yb21VBWqjcoHvbnT5goMnk8GeRpvIik8DRai4imVLJ4rRN2je6+kE55QAN7
	 j/9cOo/Prfx41SsflPjLfZN05oSFaQVPD+SMaeAevjOJLMiOdb0of3skAvRFyyrP8u
	 L4iLodEhI/ztg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C3F54149A;
	Tue,  2 Apr 2024 11:21:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB96D1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D742360AFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:21:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oPC5tHbhNRDN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 11:21:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22c; helo=mail-lj1-x22c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BC1160AFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BC1160AFA
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BC1160AFA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:21:36 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2d48d75ab70so74321151fa.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Apr 2024 04:21:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712056894; x=1712661694;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hgU+nZuiX4o0PnBgeKWW+EtIi7N1M71d0zV+QPmKFhc=;
 b=jSsEqZnfEovoR/zog42Zky3MWQqOQzIVSDnRBZAfOQU9sEu+U1ar3S2nUNdhyiiuvv
 xzcQTwQHFdUwhAQ+kQcMchuzbNvkHtd4dvKJESzFVGGooAEubHIRCDeaxsqYiV+LAQlv
 uoGtiBjTa4MPiFg+SMG8+KWb/EJcHlEoVxepV9NVaIFEXeQMKlbaL5QeRAZmX4wb0iz6
 nQxN9FFzk0xbcZBbwOpVww5S1Vq3NPnvm39Z1BzmuNDeS+FSsvdokgNnriQ5i+dm2qWI
 CzlXqsrMD3j0613DQq8ltfn2mc53VpPUY3OWBv58YYT0i4DmNBamA2cw9kn+ZgB4vk9j
 rJlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGW4ic/vwbc3VAzPA7af+iexJ5Bjol4c2gKudPjEfFHujY1CtwMnQ3IK0Esx3edlraYOgHJLi3sqZDiFB6/SdV+MpaqqbnNOJx4V827rtoYg==
X-Gm-Message-State: AOJu0YwFKKYa3S+70y81aCDXK+Ozf2aEs6A2QYVtPAzog9JbjOg3kR+N
 sbXaN9wHXobqhuPTH0JCXxyi/6hMWfwK0vZTGkHUVVvFywnDguYCv/kFoehm3Ko=
X-Google-Smtp-Source: AGHT+IGUgv/nFejl9dY+nxeDofI2G44Drc4/N4dAbJlhZL1H0IE7lOaZ6fKO8N2RwLmw/tJcnDgCVw==
X-Received: by 2002:a2e:890b:0:b0:2d6:c4ec:782 with SMTP id
 d11-20020a2e890b000000b002d6c4ec0782mr8428163lji.49.1712056894282; 
 Tue, 02 Apr 2024 04:21:34 -0700 (PDT)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 o12-20020adfa10c000000b00341bb338407sm13969803wro.99.2024.04.02.04.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Apr 2024 04:21:33 -0700 (PDT)
Date: Tue, 2 Apr 2024 13:21:32 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <ZgvqPHYj3jS7vGHO@nanopsycho>
References: <20240402092254.3891-1-ksundara@redhat.com>
 <20240402092254.3891-2-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240402092254.3891-2-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712056894; x=1712661694;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hgU+nZuiX4o0PnBgeKWW+EtIi7N1M71d0zV+QPmKFhc=;
 b=0GkdZbAjcIezvNWXHDNJNOjrJjQdjP8ws79O7m12/yyQYT/8bUKLmzgrC7iVb2HfIv
 NNjEezRjJ3/vOGGWM3ECrFnU2KeZ5n9pOqDlQvQouyN+hUlhqOXd0icM7wdU5l8dGJMr
 tiIK/rfgohQLQMvlguEZ2Lml9K8/t1i5VUXlPosJeuuFOYB9Nm6r1/iWyJbBgLNAf7cx
 6X5EFFD9WSwZtLaPIdXvu15Rq9NoBTq8tczlnlLPjGljoJ6cHhthrv4+4qzUm5UszmP2
 xTcN4HNrrfE4LkrsxM2lPqqcFaCh4AVDiyyqelPV6UyKZAdRylnJH1QFEB0kEL5N/k6r
 +spw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=0GkdZbAj
Subject: Re: [Intel-wired-lan] [PATCH v7] ice: Add get/set hw address for
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
 michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com,
 cfontain@redhat.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 vchundur@redhat.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 kuba@kernel.org, rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net,
 sumang@marvell.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Apr 02, 2024 at 11:22:54AM CEST, ksundara@redhat.com wrote:
>Changing the MAC address of the VFs is currently unsupported via devlink.
>Add the function handlers to set and get the HW address for the VFs.
>
>Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 63 +++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 +++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 +++
> 3 files changed, 132 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index 80dc5445b50d..10735715403a 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -1576,6 +1576,66 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
> 	devlink_port_unregister(&pf->devlink_port);
> }
> 
>+/**
>+ * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
>+ * @port: devlink port structure
>+ * @hw_addr: MAC address of the port
>+ * @hw_addr_len: length of MAC address
>+ * @extack: extended netdev ack structure
>+ *
>+ * Callback for the devlink .port_fn_hw_addr_get operation
>+ * Return: zero on success or an error code on failure.
>+ */
>+
>+static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
>+					  u8 *hw_addr, int *hw_addr_len,
>+					  struct netlink_ext_ack *extack)
>+{
>+	struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);
>+
>+	ether_addr_copy(hw_addr, vf->dev_lan_addr);
>+	*hw_addr_len = ETH_ALEN;
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handler
>+ * @port: devlink port structure
>+ * @hw_addr: MAC address of the port
>+ * @hw_addr_len: length of MAC address
>+ * @extack: extended netdev ack structure
>+ *
>+ * Callback for the devlink .port_fn_hw_addr_set operation
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
>+					  const u8 *hw_addr,
>+					  int hw_addr_len,
>+					  struct netlink_ext_ack *extack)
>+
>+{
>+	struct devlink_port_attrs *attrs = &port->attrs;
>+	struct devlink_port_pci_vf_attrs *pci_vf;
>+	struct devlink *devlink = port->devlink;
>+	struct ice_pf *pf;
>+	u8 mac[ETH_ALEN];

Why you need this extra variable?


>+	u16 vf_id;
>+
>+	pf = devlink_priv(devlink);
>+	pci_vf = &attrs->pci_vf;
>+	vf_id = pci_vf->vf;
>+
>+	ether_addr_copy(mac, hw_addr);
>+
>+	return ice_set_vf_fn_mac(pf, vf_id, mac);
>+}
>+
>+static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>+	.port_fn_hw_addr_get = ice_devlink_port_get_vf_fn_mac,
>+	.port_fn_hw_addr_set = ice_devlink_port_set_vf_fn_mac,
>+};
>+
> /**
>  * ice_devlink_create_vf_port - Create a devlink port for this VF
>  * @vf: the VF to create a port for
>@@ -1611,7 +1671,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> 	devlink_port_attrs_set(devlink_port, &attrs);
> 	devlink = priv_to_devlink(pf);
> 
>-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
>+	err = devlink_port_register_with_ops(devlink, devlink_port,
>+					     vsi->idx, &ice_devlink_vf_port_ops);
> 	if (err) {
> 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
> 			vf->vf_id, err);
>diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
>index 31314e7540f8..b1e5cd188fd7 100644
>--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
>+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
>@@ -1216,6 +1216,68 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
> 	return ret;
> }
> 
>+/**
>+ * ice_set_vf_fn_mac
>+ * @pf: PF to be configure
>+ * @vf_id: VF identifier
>+ * @mac: MAC address
>+ *
>+ * program VF MAC address
>+ */
>+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, u8 *mac)
>+{
>+	struct device *dev;
>+	struct ice_vf *vf;
>+	int ret;
>+
>+	dev = ice_pf_to_dev(pf);
>+	if (is_multicast_ether_addr(mac)) {
>+		dev_err(dev, "%pM not a valid unicast address\n", mac);
>+		return -EINVAL;
>+	}
>+
>+	vf = ice_get_vf_by_id(pf, vf_id);
>+	if (!vf)
>+		return -EINVAL;
>+
>+	/* nothing left to do, unicast MAC already set */
>+	if (ether_addr_equal(vf->dev_lan_addr, mac) &&
>+	    ether_addr_equal(vf->hw_lan_addr, mac)) {
>+		ret = 0;
>+		goto out_put_vf;
>+	}
>+
>+	ret = ice_check_vf_ready_for_cfg(vf);
>+	if (ret)
>+		goto out_put_vf;
>+
>+	mutex_lock(&vf->cfg_lock);
>+
>+	/* VF is notified of its new MAC via the PF's response to the
>+	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
>+	 */
>+	ether_addr_copy(vf->dev_lan_addr, mac);
>+	ether_addr_copy(vf->hw_lan_addr, mac);
>+	if (is_zero_ether_addr(mac)) {
>+		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
>+		vf->pf_set_mac = false;
>+		dev_info(dev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
>+			 vf->vf_id);
>+	} else {
>+		/* PF will add MAC rule for the VF */
>+		vf->pf_set_mac = true;
>+		dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
>+			 mac, vf_id);
>+	}
>+
>+	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>+	mutex_unlock(&vf->cfg_lock);
>+
>+out_put_vf:
>+	ice_put_vf(vf);
>+	return ret;
>+}
>+
> /**
>  * ice_set_vf_mac
>  * @netdev: network interface device structure
>diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
>index 346cb2666f3a..11cc522b1d9f 100644
>--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
>+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
>@@ -28,6 +28,7 @@
> #ifdef CONFIG_PCI_IOV
> void ice_process_vflr_event(struct ice_pf *pf);
> int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
>+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, u8 *mac);
> int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
> int
> ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
>@@ -76,6 +77,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
> 	return -EOPNOTSUPP;
> }
> 
>+static inline int
>+ice_set_vf_fn_mac(struct ice_pf __always_unused *pf,
>+		  u16 __always_unused vf_id, u8 __always_unused *mac)
>+{
>+	return -EOPNOTSUPP;
>+}
>+
> static inline int
> ice_set_vf_mac(struct net_device __always_unused *netdev,
> 	       int __always_unused vf_id, u8 __always_unused *mac)
>-- 
>2.39.3 (Apple Git-146)
>
