Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F16087E908
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 12:55:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 933CD408AF;
	Mon, 18 Mar 2024 11:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UvkYD5ceHAUh; Mon, 18 Mar 2024 11:55:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1754B408B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710762955;
	bh=Fji/TsjIDfTCqMth9RdPpKg7LeX5LQN9MfRyiB39gCM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nxipXc2JEas/qu2zKCoeNglSZHE0tVZlWIiIGmCgKCn9UBq5vh+VLWKSsy84xIaVm
	 H7u+/mRJDr6m1VJwuLFkOLKIY+1qfrsiPnqNafagBn9b9b16davhwUo1479XiN5l+F
	 xcyPJwmCxM97agysGWs5URqrt+DvP0/AYCX0iiDGYeIo5LKLaJNLIEpfClpi7HbiK3
	 z3DaAoRKWMuFG9EBefOD/YgRkq5kzusyWXF5GgUpIIlWYLXU/LSIIiG2vK0QlByVPC
	 TyYoTaRYBq5h/MW6kfrSbWzBkczieVG5PGMGNcoHLuMFH0erZ/tJOCXrrD301C/3AF
	 adxOfUSQtZDJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1754B408B8;
	Mon, 18 Mar 2024 11:55:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BA8E1BF366
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 11:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 564208142B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 11:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ynIA_6N7QsDv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 11:55:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D3268128C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D3268128C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D3268128C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 11:55:51 +0000 (UTC)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-15-5LGEQ507NQmiPvdio4lRUQ-1; Mon, 18 Mar 2024 07:55:48 -0400
X-MC-Unique: 5LGEQ507NQmiPvdio4lRUQ-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-69057317d23so80825176d6.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 04:55:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710762948; x=1711367748;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Fji/TsjIDfTCqMth9RdPpKg7LeX5LQN9MfRyiB39gCM=;
 b=OJTT4hwEVCHPLcypbcK/yxlDMjfFpbN8OLcyg5cjlSwODmPAe9mv3mnBfAAyXvNB8c
 XOsD+nBBkAq9LIbHn0DZnDqiZLzSe/bk0aWBTMzAtbdlNfAyaHeAfgUw2XBK42WJMKJ0
 qps8r/I4fGkfmEsP8D7tEQRqt3F4XmazGAvbnB6sVctA1jRVlKjQK4prxx9oAPD9jXdx
 sdx7cJmISozrB5lTJS4dYpk2iUcmGQpbkdBWOnDYXiLSr0tlHkQbCu1NB8kd/ar+Bz98
 UVfikd22o1VirDfxpGlWoQZGf1rsesENQg2gcdZ9+QVYvvTcjR8oH29VM6RleuLZxQYl
 ArJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1nQ26/vubrZ/+R2HXsIsR6dxXPAh5HUoumNUyNsPD42zz1KEA6kFvaEh6NiCsBAg/zVSkkpDLM/MLqF812hbhVq6crgvTciVrAEbmRLr58w==
X-Gm-Message-State: AOJu0YyS7bhqjb2GVjjQV9L/O5ZaD4q0BxnxMXM9Pa9oncY298Zc0ZsT
 E6kJIWuCzpmfUd6GvQX24hZDpZLBzQhkFA2MHRNcnGBtTFB8nZbr64x5hF3PMk/kN8UDieDpJnR
 DAEUJJ81SKFbP3avIh04YVMcUaDbaYLIUDmun/5kj5+zSIP0MTeH+nhE4NrjF0XWt1y/vZm2S0/
 vvZYmgCOkatJ5KrYHmMBREZHvjFoGi/VHFpT7xs1sFdA==
X-Received: by 2002:ad4:59ce:0:b0:690:b99a:22b2 with SMTP id
 el14-20020ad459ce000000b00690b99a22b2mr11868581qvb.44.1710762948429; 
 Mon, 18 Mar 2024 04:55:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0piHQYTZV/rsZPduwXaeEr6xmXop1gS4YV8C6uj4H5QpQhwzW2Ggp4jNCLBfoiZjU3fR9zbEn00eRonXYHig=
X-Received: by 2002:ad4:59ce:0:b0:690:b99a:22b2 with SMTP id
 el14-20020ad459ce000000b00690b99a22b2mr11868565qvb.44.1710762948065; Mon, 18
 Mar 2024 04:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240305152641.53489-1-ksundara@redhat.com>
 <SJ0PR18MB5216589DBE2D5345BD016BE0DB272@SJ0PR18MB5216.namprd18.prod.outlook.com>
In-Reply-To: <SJ0PR18MB5216589DBE2D5345BD016BE0DB272@SJ0PR18MB5216.namprd18.prod.outlook.com>
From: Karthik Sundaravel <ksundara@redhat.com>
Date: Mon, 18 Mar 2024 17:25:37 +0530
Message-ID: <CAPh+B4JH-Wb1qetsqfnCeLcxTpOM72TSTwreqP9H6sxnP9Kn9A@mail.gmail.com>
To: Suman Ghosh <sumang@marvell.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710762950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fji/TsjIDfTCqMth9RdPpKg7LeX5LQN9MfRyiB39gCM=;
 b=R56LrXyrkguQBlgoZhSqOuq/M/OEo/s6iMRJg+fFH0+SlGgV/th9KeahafaN9SWtcF4vBA
 1CuAtgAE+T2+F+TFPU/LNP1tag4ra5Ad/5zVPSIIUeVvX0cZuF5MKcOlvf9Iu/PLsCVuuD
 JmUB1UemhIbInBXFlwoBNiqnuQI8KnI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=R56LrXyr
Subject: Re: [Intel-wired-lan] [EXTERNAL] [PATCH v5] ice: Add get/set hw
 address for VFs using devlink commands
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "aharivel@redhat.com" <aharivel@redhat.com>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "cfontain@redhat.com" <cfontain@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "vchundur@redhat.com" <vchundur@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "rjarry@redhat.com" <rjarry@redhat.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 8, 2024 at 3:28=E2=80=AFPM Suman Ghosh <sumang@marvell.com> wro=
te:
>
> >----------------------------------------------------------------------
> >Changing the MAC address of the VFs are not available via devlink. Add
> >the function handlers to set and get the HW address for the VFs.
> >
> >Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> >---
> > drivers/net/ethernet/intel/ice/ice_devlink.c | 78 +++++++++++++++++++-
> > drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 ++++++++++++++++
> > drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 ++
> > 3 files changed, 147 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >index 80dc5445b50d..39d4d79ac731 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >@@ -1576,6 +1576,81 @@ void ice_devlink_destroy_pf_port(struct ice_pf
> >*pf)
> >       devlink_port_unregister(&pf->devlink_port);
> > }
> >
> >+/**
> >+ * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink
> >+handler
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
> >+      struct devlink_port_attrs *attrs =3D &port->attrs;
> [Suman] I agree with Wojciech about using container_of:

[Karthik] when I use container_of(), on some occasions I get core dump
in get and set functions.
These issues were not seen in the earlier versions.
Can you please suggest any pointers on what could have gone wrong ?

struct ice_vf *vf =3D container_of(port, struct ice_vf, devlink_port);

[  597.658325] ------------[ cut here ]------------
[  597.658329] refcount_t: underflow; use-after-free.
[  597.658430] CPU: 18 PID: 1926 Comm: devlink Not tainted 6.8.0-rc5-dirty =
#1
[  ...]
[  597.658506]  ? refcount_warn_saturate+0xbe/0x110
[  597.658509]  ice_devlink_port_get_vf_fn_mac+0x39/0x70 [ice]
[  597.658607]  ? __pfx_ice_devlink_port_get_vf_fn_mac+0x10/0x10 [ice]
[  597.658676]  devlink_nl_port_fill+0x314/0xa30
[  ...]
[  597.658835] ---[ end trace 0000000000000000 ]---


[  859.989482] ------------[ cut here ]------------
[  859.989485] refcount_t: saturated; leaking memory.
[  859.989500] WARNING: CPU: 0 PID: 1965 at lib/refcount.c:19
refcount_warn_saturate+0x9b/0x110
[  ...]
[  859.989671]  ? refcount_warn_saturate+0x9b/0x110
[  859.989674]  ice_get_vf_by_id+0x87/0xa0 [ice]
[  859.989777]  ice_set_vf_fn_mac+0x33/0x150 [ice]
[  859.989858]  ice_devlink_port_set_vf_fn_mac+0x61/0x90 [ice]
[  859.989940]  devlink_nl_port_set_doit+0x1d3/0x610
[  ...]
[  952.413933] ---[ end trace 0000000000000000 ]---

>
> >+      struct devlink_port_pci_vf_attrs *pci_vf;
> >+      struct devlink *devlink =3D port->devlink;
> >+      struct ice_pf *pf;
> >+      struct ice_vf *vf;
> >+      int vf_id;
> >+
> >+      pf =3D devlink_priv(devlink);
> >+      pci_vf =3D &attrs->pci_vf;
> >+      vf_id =3D pci_vf->vf;
> >+
> >+      vf =3D ice_get_vf_by_id(pf, vf_id);
> >+      if (!vf) {
> >+              NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");
> >+              return -EINVAL;
> >+      }
> >+      ether_addr_copy(hw_addr, vf->dev_lan_addr);
> >+      *hw_addr_len =3D ETH_ALEN;
> >+
> >+      ice_put_vf(vf);
> >+      return 0;
> >+}
> >+
> >+/**
> >+ * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink
> >+handler
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
> >+      int vf_id;
> >+
> >+      pf =3D devlink_priv(devlink);
> >+      pci_vf =3D &attrs->pci_vf;
> >+      vf_id =3D pci_vf->vf;
> >+
> >+      ether_addr_copy(mac, hw_addr);
> >+
> >+      return ice_set_vf_fn_mac(pf, vf_id, mac); }
> >+
> >+static const struct devlink_port_ops ice_devlink_vf_port_ops =3D {
> >+      .port_fn_hw_addr_get =3D ice_devlink_port_get_vf_fn_mac,
> >+      .port_fn_hw_addr_set =3D ice_devlink_port_set_vf_fn_mac, };
> >+
> > /**
> >  * ice_devlink_create_vf_port - Create a devlink port for this VF
> >  * @vf: the VF to create a port for
> >@@ -1611,7 +1686,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> >       devlink_port_attrs_set(devlink_port, &attrs);
> >       devlink =3D priv_to_devlink(pf);
> >
> >-      err =3D devlink_port_register(devlink, devlink_port, vsi->idx);
> >+      err =3D devlink_port_register_with_ops(devlink, devlink_port,
> >+                                           vsi->idx, &ice_devlink_vf_po=
rt_ops);
> >       if (err) {
> >               dev_err(dev, "Failed to create devlink port for VF %d, er=
ror
> >%d\n",
> >                       vf->vf_id, err);
> >diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> >b/drivers/net/ethernet/intel/ice/ice_sriov.c
> >index 31314e7540f8..73cf1d9e9daa 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> >@@ -1216,6 +1216,68 @@ ice_get_vf_cfg(struct net_device *netdev, int
> >vf_id, struct ifla_vf_info *ivi)
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
> >+int ice_set_vf_fn_mac(struct ice_pf *pf, int vf_id, u8 *mac) {
> >+      struct device *dev;
> >+      struct ice_vf *vf;
> >+      int ret;
> >+
> >+      dev =3D ice_pf_to_dev(pf);
> >+      if (is_multicast_ether_addr(mac)) {
> >+              dev_err(dev, "%pM not a valid unicast address\n", mac);
> >+              return -EINVAL;
> >+      }
> [Suman] I would suggest put all the validation checks at the beginning of=
 the function.
> >+
> >+      vf =3D ice_get_vf_by_id(pf, vf_id);
> [Suman] Any reason we are passing vf_id instead of the vf itself? If you =
decide to pass vf itself please move the ether_addr_equal() check at the be=
ginning also.
>
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
 MAC
> >*/
> >+              vf->pf_set_mac =3D false;
> >+              dev_info(dev, "Removing MAC on VF %d. VF driver will be
> >reinitialized\n",
> >+                       vf->vf_id);
> >+      } else {
> >+              /* PF will add MAC rule for the VF */
> >+              vf->pf_set_mac =3D true;
> >+              dev_info(dev, "Setting MAC %pM on VF %d. VF driver will b=
e
> >reinitialized\n",
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
> >  * @netdev: network interface device structure diff --git
> >a/drivers/net/ethernet/intel/ice/ice_sriov.h
> >b/drivers/net/ethernet/intel/ice/ice_sriov.h
> >index 346cb2666f3a..a03be184a806 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> >+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> >@@ -28,6 +28,7 @@
> > #ifdef CONFIG_PCI_IOV
> > void ice_process_vflr_event(struct ice_pf *pf);  int
> >ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
> >+int ice_set_vf_fn_mac(struct ice_pf *pf, int vf_id, u8 *mac);
> > int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);  int
> >ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info
> >*ivi); @@ -76,6 +77,13 @@ ice_sriov_configure(struct pci_dev
> >__always_unused *pdev,
> >       return -EOPNOTSUPP;
> > }
> >
> >+static inline int
> >+ice_set_vf_fn_mac(struct ice_pf __always_unused *pf,
> >+                int __always_unused vf_id, u8 __always_unused *mac) {
> >+      return -EOPNOTSUPP;
> >+}
> >+
> > static inline int
> > ice_set_vf_mac(struct net_device __always_unused *netdev,
> >              int __always_unused vf_id, u8 __always_unused *mac)
> >--
> >2.39.3 (Apple Git-145)
> >
>

