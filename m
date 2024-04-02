Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C94B895705
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 16:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F2E14056E;
	Tue,  2 Apr 2024 14:38:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5IAkH3lGFbB; Tue,  2 Apr 2024 14:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 438D240570
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712068724;
	bh=jb91MyD/GfnMjJ42GMj31sctff97Hftn6+nj+lz8QO0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fe9S9qUmV6vpg4e68lXEiBLrMFueQohUAx8NR4raYYIh2Jfu+d0WhDUPSXLs1dRsG
	 K6nE0l8xH0HYNLWFK3/X7jmE5aDw2DJAkFIYb4gOOtGb5F9lNen2qrX0wdR8k2vYsB
	 GlsvgLAC76Gdw8QBfQyDGDc8iiq6wvZAc/B4SSrSrjgo8Dss4iWWTDE3g5O1BnXudB
	 9Vn0uSNRmNXdU7ZArkxyfIRnMIwLHTusHu1ZfWREEwrsySm0akqAJYjCCaZ50xjJFH
	 7zghXo++ptaVvKOuqR71rRiijtidK4Vjo1wemid8ZA0aq/MyifKvyaLSXH2tcDovD9
	 pNGIro1c/8PWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 438D240570;
	Tue,  2 Apr 2024 14:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D30081BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEA1760B74
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:38:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mK1fK2ROXo9i for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 14:38:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42a; helo=mail-wr1-x42a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0455660789
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0455660789
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0455660789
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:38:37 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id
 ffacd0b85a97d-34373f95c27so371212f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Apr 2024 07:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712068716; x=1712673516;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jb91MyD/GfnMjJ42GMj31sctff97Hftn6+nj+lz8QO0=;
 b=uy1p0P3PcUab9Gl5xMP7wVVn+IXC3snO0YQABWUCDhtbPKCOp22Q2fgC1IOxIPkiTm
 9hTeZp12iq6EWD89FG0Dnxe+Yntzt/r+QA9x2UZ+84KZKlk9nYS5hNRrjWONx29V1z2n
 k8egH4t2x69tblCFzpB4LQjLcT4z1DbTvy1ELX2x8Jp0i2GE3zRu28W689VfHJD7qCKe
 JJF1sGZz9diGuwRtBXMXeJgr5aS0nEcvlumtKkKNIoI0/uUCEYPyr2em5U3kwvMuNxxX
 TkTYvV93Pj0ncspc97PeP9wqcFuJo9+JwDa8n5R5vUOxiGPwU0yGspb6V6A+sN5DK85r
 8qKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1G8P7rHQnFxWO9Aa0PhxWoAiNYP/tKebp/Ma5hSV32ELgh70G9KyCWByliJIJEEj+qaDcgbk70ZUVxbu5by1X1qioUUv075pM40CYQDlrkQ==
X-Gm-Message-State: AOJu0YxR4CpBvel+ZEXezZhfcBfz0b7XhQRjHYv5qjvADfGsAbC2V44H
 FzdGBTr3VjGNEijv3rgaN06FZSqadHImz8w66cYcIrm2/Knce1Djj+6hSW0MReQ=
X-Google-Smtp-Source: AGHT+IFIqNO1IAuDmEGvalsUNnPRkm7aTf10+J9YuPNVfuj68WVf+nyhGTiSSpbChANmgbaQc+YBdg==
X-Received: by 2002:a5d:648b:0:b0:343:53ca:cee1 with SMTP id
 o11-20020a5d648b000000b0034353cacee1mr4278272wri.13.1712068715849; 
 Tue, 02 Apr 2024 07:38:35 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 i13-20020adfe48d000000b00341bdbf0b07sm14249642wrm.50.2024.04.02.07.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Apr 2024 07:38:35 -0700 (PDT)
Date: Tue, 2 Apr 2024 16:38:31 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <ZgwYZ-_aiSknTGZj@nanopsycho>
References: <20240402092254.3891-1-ksundara@redhat.com>
 <20240402092254.3891-2-ksundara@redhat.com>
 <ZgvqPHYj3jS7vGHO@nanopsycho>
 <CAPh+B4LJokN=-ii7fMkpSsucsBK7uROHwDSwXypX+moDRkiKXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPh+B4LJokN=-ii7fMkpSsucsBK7uROHwDSwXypX+moDRkiKXw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712068716; x=1712673516;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=jb91MyD/GfnMjJ42GMj31sctff97Hftn6+nj+lz8QO0=;
 b=Z0LC2+ZDcjoQm0/94sBBidx4cjStC/wz1CiZ04e51ckOIDQ+ZipTMS6M+cVpVv+o1v
 Mw6QO4CW1ROyfar3j+EjRJCAC4TuRmOSQBhHGW/802pdS6HWUn294SFPppMynrC5jXxW
 ic2muV4sk6zOHzKjE9AkvhTIyxWgV2jT3VTdsbzq90iOsocAgcH1i/2/Cf2H5U0f4pw9
 0hZbZzJmD5kb3x449LUaoplJB5waicDNZN32LIDLEl38eeLULvrr821OFoEEGws6RaNZ
 tkvF8cgJtPpwnBk6V6AKTdpUt6ZFrzpS7rDOvQLPSXshrTMctVVNbGbKLlpyoNEMUihf
 pveg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Z0LC2+ZD
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

Tue, Apr 02, 2024 at 03:57:35PM CEST, ksundara@redhat.com wrote:
>On Tue, Apr 2, 2024 at 4:51 PM Jiri Pirko <jiri@resnulli.us> wrote:
>>
>> Tue, Apr 02, 2024 at 11:22:54AM CEST, ksundara@redhat.com wrote:
>> >Changing the MAC address of the VFs is currently unsupported via devlink.
>> >Add the function handlers to set and get the HW address for the VFs.
>> >
>> >Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
>> >---
>> > drivers/net/ethernet/intel/ice/ice_devlink.c | 63 +++++++++++++++++++-
>> > drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 +++++++++++++++++++
>> > drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 +++
>> > 3 files changed, 132 insertions(+), 1 deletion(-)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >index 80dc5445b50d..10735715403a 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >@@ -1576,6 +1576,66 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>> >       devlink_port_unregister(&pf->devlink_port);
>> > }
>> >
>> >+/**
>> >+ * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
>> >+ * @port: devlink port structure
>> >+ * @hw_addr: MAC address of the port
>> >+ * @hw_addr_len: length of MAC address
>> >+ * @extack: extended netdev ack structure
>> >+ *
>> >+ * Callback for the devlink .port_fn_hw_addr_get operation
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+
>> >+static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
>> >+                                        u8 *hw_addr, int *hw_addr_len,
>> >+                                        struct netlink_ext_ack *extack)
>> >+{
>> >+      struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);
>> >+
>> >+      ether_addr_copy(hw_addr, vf->dev_lan_addr);
>> >+      *hw_addr_len = ETH_ALEN;
>> >+
>> >+      return 0;
>> >+}
>> >+
>> >+/**
>> >+ * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handler
>> >+ * @port: devlink port structure
>> >+ * @hw_addr: MAC address of the port
>> >+ * @hw_addr_len: length of MAC address
>> >+ * @extack: extended netdev ack structure
>> >+ *
>> >+ * Callback for the devlink .port_fn_hw_addr_set operation
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
>> >+                                        const u8 *hw_addr,
>> >+                                        int hw_addr_len,
>> >+                                        struct netlink_ext_ack *extack)
>> >+
>> >+{
>> >+      struct devlink_port_attrs *attrs = &port->attrs;
>> >+      struct devlink_port_pci_vf_attrs *pci_vf;
>> >+      struct devlink *devlink = port->devlink;
>> >+      struct ice_pf *pf;
>> >+      u8 mac[ETH_ALEN];
>>
>> Why you need this extra variable?
>The function signature of ice_set_vf_fn_mac() is kept to match

Why? Why can't you just make the arg const?


>ice_set_vf_mac(), and hence the ``u8 *mac`` is used instead of ``const
>u8 *mac``.
>A copy of the mac is made to facilitate the same.
>Considering the usage of mac in ice_set_vf_fn_mac(), the function
>signature could be modified to take a ``const u8 *mac`` as well.

Yep.


>>
>>
>> >+      u16 vf_id;
>> >+
>> >+      pf = devlink_priv(devlink);
>> >+      pci_vf = &attrs->pci_vf;
>> >+      vf_id = pci_vf->vf;
>> >+
>> >+      ether_addr_copy(mac, hw_addr);
>> >+
>> >+      return ice_set_vf_fn_mac(pf, vf_id, mac);
>> >+}
>> >+
>> >+static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>> >+      .port_fn_hw_addr_get = ice_devlink_port_get_vf_fn_mac,
>> >+      .port_fn_hw_addr_set = ice_devlink_port_set_vf_fn_mac,
>> >+};
>> >+
>> > /**
>> >  * ice_devlink_create_vf_port - Create a devlink port for this VF
>> >  * @vf: the VF to create a port for
>> >@@ -1611,7 +1671,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>> >       devlink_port_attrs_set(devlink_port, &attrs);
>> >       devlink = priv_to_devlink(pf);
>> >
>> >-      err = devlink_port_register(devlink, devlink_port, vsi->idx);
>> >+      err = devlink_port_register_with_ops(devlink, devlink_port,
>> >+                                           vsi->idx, &ice_devlink_vf_port_ops);
>> >       if (err) {
>> >               dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>> >                       vf->vf_id, err);
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
>> >index 31314e7540f8..b1e5cd188fd7 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
>> >@@ -1216,6 +1216,68 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
>> >       return ret;
>> > }
>> >
>> >+/**
>> >+ * ice_set_vf_fn_mac
>> >+ * @pf: PF to be configure
>> >+ * @vf_id: VF identifier
>> >+ * @mac: MAC address
>> >+ *
>> >+ * program VF MAC address
>> >+ */
>> >+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, u8 *mac)
>> >+{
>> >+      struct device *dev;
>> >+      struct ice_vf *vf;
>> >+      int ret;
>> >+
>> >+      dev = ice_pf_to_dev(pf);
>> >+      if (is_multicast_ether_addr(mac)) {
>> >+              dev_err(dev, "%pM not a valid unicast address\n", mac);
>> >+              return -EINVAL;
>> >+      }
>> >+
>> >+      vf = ice_get_vf_by_id(pf, vf_id);
>> >+      if (!vf)
>> >+              return -EINVAL;
>> >+
>> >+      /* nothing left to do, unicast MAC already set */
>> >+      if (ether_addr_equal(vf->dev_lan_addr, mac) &&
>> >+          ether_addr_equal(vf->hw_lan_addr, mac)) {
>> >+              ret = 0;
>> >+              goto out_put_vf;
>> >+      }
>> >+
>> >+      ret = ice_check_vf_ready_for_cfg(vf);
>> >+      if (ret)
>> >+              goto out_put_vf;
>> >+
>> >+      mutex_lock(&vf->cfg_lock);
>> >+
>> >+      /* VF is notified of its new MAC via the PF's response to the
>> >+       * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
>> >+       */
>> >+      ether_addr_copy(vf->dev_lan_addr, mac);
>> >+      ether_addr_copy(vf->hw_lan_addr, mac);
>> >+      if (is_zero_ether_addr(mac)) {
>> >+              /* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
>> >+              vf->pf_set_mac = false;
>> >+              dev_info(dev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
>> >+                       vf->vf_id);
>> >+      } else {
>> >+              /* PF will add MAC rule for the VF */
>> >+              vf->pf_set_mac = true;
>> >+              dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
>> >+                       mac, vf_id);
>> >+      }
>> >+
>> >+      ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>> >+      mutex_unlock(&vf->cfg_lock);
>> >+
>> >+out_put_vf:
>> >+      ice_put_vf(vf);
>> >+      return ret;
>> >+}
>> >+
>> > /**
>> >  * ice_set_vf_mac
>> >  * @netdev: network interface device structure
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
>> >index 346cb2666f3a..11cc522b1d9f 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
>> >+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
>> >@@ -28,6 +28,7 @@
>> > #ifdef CONFIG_PCI_IOV
>> > void ice_process_vflr_event(struct ice_pf *pf);
>> > int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
>> >+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, u8 *mac);
>> > int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
>> > int
>> > ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
>> >@@ -76,6 +77,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
>> >       return -EOPNOTSUPP;
>> > }
>> >
>> >+static inline int
>> >+ice_set_vf_fn_mac(struct ice_pf __always_unused *pf,
>> >+                u16 __always_unused vf_id, u8 __always_unused *mac)
>> >+{
>> >+      return -EOPNOTSUPP;
>> >+}
>> >+
>> > static inline int
>> > ice_set_vf_mac(struct net_device __always_unused *netdev,
>> >              int __always_unused vf_id, u8 __always_unused *mac)
>> >--
>> >2.39.3 (Apple Git-146)
>> >
>>
>
