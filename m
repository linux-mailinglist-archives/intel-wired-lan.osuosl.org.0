Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E3C8955E7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 15:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9242940983;
	Tue,  2 Apr 2024 13:57:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TjVS-TsA1gJ2; Tue,  2 Apr 2024 13:57:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 508894094D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712066274;
	bh=BwIJukPzdelvXDcQMgUp/22xDxOhihi+wolcq3WNR8U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8KOZOIq/iXHTVl+YKyLTZiP6XqHgh/uQikK99WnaEkyCMsZU3YGatmgU1uqQ6wHoe
	 1F0ypEiwdPy9Xfhk97lgoh3rir2VTiziQsP6T5RHBMRiBWnB/RaMB04TAVuC5uUxOj
	 tQcUnWykCcFVx5GH2Smqldk9rkdfxAv5boeJWzsVmoO8EvqmprV3wa8Fx6EgpEihvu
	 7DCKTvmRcm4HlMqTuimQzvIXti0uW60Q2763NxhVK4H2apF4V9FRGRgcDTPXY+fUYm
	 +igW0z8Hp8izJXHrs3VuESMy1krPc7I/Ih/I/iGBw0RguNJln673X1DeAxep52XFqF
	 qmkFmvPxIVsiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 508894094D;
	Tue,  2 Apr 2024 13:57:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2FA61BF836
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 13:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB0E740919
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 13:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id puLzfGwvWlJN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 13:57:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 83ECB408EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83ECB408EA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83ECB408EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 13:57:50 +0000 (UTC)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-504-v-zG3F3iPKm9X3ERmLdRfA-1; Tue, 02 Apr 2024 09:57:48 -0400
X-MC-Unique: v-zG3F3iPKm9X3ERmLdRfA-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-698f85bf400so26492636d6.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Apr 2024 06:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712066267; x=1712671067;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BwIJukPzdelvXDcQMgUp/22xDxOhihi+wolcq3WNR8U=;
 b=cTEVk8uM0UjB2PwaOUlb9erbEUEnMyHd8Kjpy1at8EbjpMrQyWiYfsFYQdndiBznd4
 eLMTMyaeaMYYfyEtn6QgaWVWGFFw4NjCLtVZ0HpsMPyhs3MLC/Iq4VVxT2lv3O02QHfg
 zr6wG+1QWBiZUZ7BzPf6AqEWOS1JsjCW9AL6Xk0S8SjoQQTVBYL/+In2Pyx2yBNNUmwz
 HUeHTIUqMsupUDmesoLqTBn+IbTP9L1ON4+3fr7KMPOvFOiCujyHL9KFoBXHOkRWgyVA
 SDfKuQOtgJbfdWxGQRnt/x5I5hCwffZDYoZq7dx744acmAxq7syknt2fy10vCXLQVPdl
 uPFQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWAvhdKn53zcWLK8XRZrUlN3EX7tgO6+sAOTzpxAi2zSQSXL/zOAmQ1dl0HadTsASYb9GrCtes7YvWV/xotLLu862wxlx/VkGJl0bo3nmrmVA==
X-Gm-Message-State: AOJu0YyeOMfaN/KmzZbV6jlIalGSF/eMOXqAETBiUmzg2GwhbuXF5WDT
 qHF3b6n/W4Byy7jjSdnhCoecRbccQvYYKuyk7VUZH11H5RgU6u4EJ6x+TBgfqiHpMGMx4mCprrQ
 WHqhdvU85Yjnjxzu4noVDfv2OcCHmLtGpa1eS82JeEg2Vk1ITNcBgw7aKhSfiNFWLnL1UDt3YRx
 4AEl29+nOwwkWOxm96OMM57suNlryqKKB38DYUqI7Wqg==
X-Received: by 2002:a0c:cdcf:0:b0:696:ac91:41c2 with SMTP id
 a15-20020a0ccdcf000000b00696ac9141c2mr13131333qvn.48.1712066267635; 
 Tue, 02 Apr 2024 06:57:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/DCRnBSkIpLSO6upnOO5Tzpg9MZq14xq1VxJcq3TklZyO57ExfrbUAPMJpM/KYX4BnzjqDGw2LVs7yJ/z494=
X-Received: by 2002:a0c:cdcf:0:b0:696:ac91:41c2 with SMTP id
 a15-20020a0ccdcf000000b00696ac9141c2mr13131314qvn.48.1712066267330; Tue, 02
 Apr 2024 06:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240402092254.3891-1-ksundara@redhat.com>
 <20240402092254.3891-2-ksundara@redhat.com>
 <ZgvqPHYj3jS7vGHO@nanopsycho>
In-Reply-To: <ZgvqPHYj3jS7vGHO@nanopsycho>
From: Karthik Sundaravel <ksundara@redhat.com>
Date: Tue, 2 Apr 2024 19:27:35 +0530
Message-ID: <CAPh+B4LJokN=-ii7fMkpSsucsBK7uROHwDSwXypX+moDRkiKXw@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1712066269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BwIJukPzdelvXDcQMgUp/22xDxOhihi+wolcq3WNR8U=;
 b=IQ0gDneavECPBbS9I2HNumWGMtA25FKk6z3Vz6ypNr2NBnxSDyIZJBmhVsvB/DmJhjb5XA
 W8aOCFejeTAQEFZmqxwD83TqIcd4wEdeHHi16q7iocYD8PGVpEq9Vs64eWNwKgNH2GTB8u
 w1gkXzrh3nvCnhOkwE7RCockyF6QIxE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IQ0gDnea
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

On Tue, Apr 2, 2024 at 4:51=E2=80=AFPM Jiri Pirko <jiri@resnulli.us> wrote:
>
> Tue, Apr 02, 2024 at 11:22:54AM CEST, ksundara@redhat.com wrote:
> >Changing the MAC address of the VFs is currently unsupported via devlink=
.
> >Add the function handlers to set and get the HW address for the VFs.
> >
> >Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> >---
> > drivers/net/ethernet/intel/ice/ice_devlink.c | 63 +++++++++++++++++++-
> > drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 +++++++++++++++++++
> > drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 +++
> > 3 files changed, 132 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/=
ethernet/intel/ice/ice_devlink.c
> >index 80dc5445b50d..10735715403a 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >@@ -1576,6 +1576,66 @@ void ice_devlink_destroy_pf_port(struct ice_pf *p=
f)
> >       devlink_port_unregister(&pf->devlink_port);
> > }
> >
> >+/**
> >+ * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handle=
r
> >+ * @port: devlink port structure
> >+ * @hw_addr: MAC address of the port
> >+ * @hw_addr_len: length of MAC address
> >+ * @extack: extended netdev ack structure
> >+ *
> >+ * Callback for the devlink .port_fn_hw_addr_get operation
> >+ * Return: zero on success or an error code on failure.
> >+ */
> >+
> >+static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
> >+                                        u8 *hw_addr, int *hw_addr_len,
> >+                                        struct netlink_ext_ack *extack)
> >+{
> >+      struct ice_vf *vf =3D container_of(port, struct ice_vf, devlink_p=
ort);
> >+
> >+      ether_addr_copy(hw_addr, vf->dev_lan_addr);
> >+      *hw_addr_len =3D ETH_ALEN;
> >+
> >+      return 0;
> >+}
> >+
> >+/**
> >+ * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handle=
r
> >+ * @port: devlink port structure
> >+ * @hw_addr: MAC address of the port
> >+ * @hw_addr_len: length of MAC address
> >+ * @extack: extended netdev ack structure
> >+ *
> >+ * Callback for the devlink .port_fn_hw_addr_set operation
> >+ * Return: zero on success or an error code on failure.
> >+ */
> >+static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
> >+                                        const u8 *hw_addr,
> >+                                        int hw_addr_len,
> >+                                        struct netlink_ext_ack *extack)
> >+
> >+{
> >+      struct devlink_port_attrs *attrs =3D &port->attrs;
> >+      struct devlink_port_pci_vf_attrs *pci_vf;
> >+      struct devlink *devlink =3D port->devlink;
> >+      struct ice_pf *pf;
> >+      u8 mac[ETH_ALEN];
>
> Why you need this extra variable?
The function signature of ice_set_vf_fn_mac() is kept to match
ice_set_vf_mac(), and hence the ``u8 *mac`` is used instead of ``const
u8 *mac``.
A copy of the mac is made to facilitate the same.
Considering the usage of mac in ice_set_vf_fn_mac(), the function
signature could be modified to take a ``const u8 *mac`` as well.
>
>
> >+      u16 vf_id;
> >+
> >+      pf =3D devlink_priv(devlink);
> >+      pci_vf =3D &attrs->pci_vf;
> >+      vf_id =3D pci_vf->vf;
> >+
> >+      ether_addr_copy(mac, hw_addr);
> >+
> >+      return ice_set_vf_fn_mac(pf, vf_id, mac);
> >+}
> >+
> >+static const struct devlink_port_ops ice_devlink_vf_port_ops =3D {
> >+      .port_fn_hw_addr_get =3D ice_devlink_port_get_vf_fn_mac,
> >+      .port_fn_hw_addr_set =3D ice_devlink_port_set_vf_fn_mac,
> >+};
> >+
> > /**
> >  * ice_devlink_create_vf_port - Create a devlink port for this VF
> >  * @vf: the VF to create a port for
> >@@ -1611,7 +1671,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> >       devlink_port_attrs_set(devlink_port, &attrs);
> >       devlink =3D priv_to_devlink(pf);
> >
> >-      err =3D devlink_port_register(devlink, devlink_port, vsi->idx);
> >+      err =3D devlink_port_register_with_ops(devlink, devlink_port,
> >+                                           vsi->idx, &ice_devlink_vf_po=
rt_ops);
> >       if (err) {
> >               dev_err(dev, "Failed to create devlink port for VF %d, er=
ror %d\n",
> >                       vf->vf_id, err);
> >diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/et=
hernet/intel/ice/ice_sriov.c
> >index 31314e7540f8..b1e5cd188fd7 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> >@@ -1216,6 +1216,68 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_=
id, struct ifla_vf_info *ivi)
> >       return ret;
> > }
> >
> >+/**
> >+ * ice_set_vf_fn_mac
> >+ * @pf: PF to be configure
> >+ * @vf_id: VF identifier
> >+ * @mac: MAC address
> >+ *
> >+ * program VF MAC address
> >+ */
> >+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, u8 *mac)
> >+{
> >+      struct device *dev;
> >+      struct ice_vf *vf;
> >+      int ret;
> >+
> >+      dev =3D ice_pf_to_dev(pf);
> >+      if (is_multicast_ether_addr(mac)) {
> >+              dev_err(dev, "%pM not a valid unicast address\n", mac);
> >+              return -EINVAL;
> >+      }
> >+
> >+      vf =3D ice_get_vf_by_id(pf, vf_id);
> >+      if (!vf)
> >+              return -EINVAL;
> >+
> >+      /* nothing left to do, unicast MAC already set */
> >+      if (ether_addr_equal(vf->dev_lan_addr, mac) &&
> >+          ether_addr_equal(vf->hw_lan_addr, mac)) {
> >+              ret =3D 0;
> >+              goto out_put_vf;
> >+      }
> >+
> >+      ret =3D ice_check_vf_ready_for_cfg(vf);
> >+      if (ret)
> >+              goto out_put_vf;
> >+
> >+      mutex_lock(&vf->cfg_lock);
> >+
> >+      /* VF is notified of its new MAC via the PF's response to the
> >+       * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been res=
et
> >+       */
> >+      ether_addr_copy(vf->dev_lan_addr, mac);
> >+      ether_addr_copy(vf->hw_lan_addr, mac);
> >+      if (is_zero_ether_addr(mac)) {
> >+              /* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its=
 MAC */
> >+              vf->pf_set_mac =3D false;
> >+              dev_info(dev, "Removing MAC on VF %d. VF driver will be r=
einitialized\n",
> >+                       vf->vf_id);
> >+      } else {
> >+              /* PF will add MAC rule for the VF */
> >+              vf->pf_set_mac =3D true;
> >+              dev_info(dev, "Setting MAC %pM on VF %d. VF driver will b=
e reinitialized\n",
> >+                       mac, vf_id);
> >+      }
> >+
> >+      ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> >+      mutex_unlock(&vf->cfg_lock);
> >+
> >+out_put_vf:
> >+      ice_put_vf(vf);
> >+      return ret;
> >+}
> >+
> > /**
> >  * ice_set_vf_mac
> >  * @netdev: network interface device structure
> >diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/et=
hernet/intel/ice/ice_sriov.h
> >index 346cb2666f3a..11cc522b1d9f 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> >+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> >@@ -28,6 +28,7 @@
> > #ifdef CONFIG_PCI_IOV
> > void ice_process_vflr_event(struct ice_pf *pf);
> > int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
> >+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, u8 *mac);
> > int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
> > int
> > ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_inf=
o *ivi);
> >@@ -76,6 +77,13 @@ ice_sriov_configure(struct pci_dev __always_unused *p=
dev,
> >       return -EOPNOTSUPP;
> > }
> >
> >+static inline int
> >+ice_set_vf_fn_mac(struct ice_pf __always_unused *pf,
> >+                u16 __always_unused vf_id, u8 __always_unused *mac)
> >+{
> >+      return -EOPNOTSUPP;
> >+}
> >+
> > static inline int
> > ice_set_vf_mac(struct net_device __always_unused *netdev,
> >              int __always_unused vf_id, u8 __always_unused *mac)
> >--
> >2.39.3 (Apple Git-146)
> >
>

