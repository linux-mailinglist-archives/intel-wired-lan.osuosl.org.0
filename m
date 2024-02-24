Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EBA8624C2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Feb 2024 12:52:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B94F660A58;
	Sat, 24 Feb 2024 11:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C4SQ5lgL3Nhb; Sat, 24 Feb 2024 11:52:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E783E60A50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708775575;
	bh=SVWQffDK/ZUjAh++ittTy+1YShatNEsUrXGS8707I/s=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l07ZO08JS365hMSBgQjB2RhqmFLE5XKj9Ysk+A+v4clCKr384zhZCOSl3tOK62gs2
	 QDi/IXgkN7hUtLUnyBLr06zudocLoqbvZwiUgcHna6dJO1Z6Mx5jndJuy6LY/jaiOM
	 F25iaQaO2O3WNtvI4ZE9ysAugcooMNbvERwqfPb3LhETnLXxO4clac6O5kifZUFgkW
	 kJbc6Cwy1ZhgcaY284Inv47UZ/3Qpi/+rinbLHUqHgMKSHW0oMGrLpu7tdLp8L4Lh6
	 2vGLxFYAJ7mHJLSTDGUwCKACa3rxY7gCjqvsVuo5xxD2WLD5VcZTxfgDet6eacu3sX
	 sQ4k45DDJ7Riw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E783E60A50;
	Sat, 24 Feb 2024 11:52:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B21341BF576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 11:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E0D582055
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 11:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6mgI-IaQ-G9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Feb 2024 11:52:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F09382030
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F09382030
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F09382030
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 11:52:49 +0000 (UTC)
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-67scNt0ENwmrItNnnblmLg-1; Sat, 24 Feb 2024 06:52:46 -0500
X-MC-Unique: 67scNt0ENwmrItNnnblmLg-1
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-68f447d1d6bso12239316d6.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 03:52:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708775566; x=1709380366;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SVWQffDK/ZUjAh++ittTy+1YShatNEsUrXGS8707I/s=;
 b=C+O1RzKJn21RuYGC/hvtlTlwa0EAYTNu6TlFJlBUIOwvGl37jp3C/8/W79ZJbtYUnN
 w2Ir665fID6PPpN97Gx8KqshBlDvPmrtcgaVKrghi7M8Rm7f5/q73xk2ssGJH8qcS/tx
 3Cuwytexlan1QtLDatiAdn8mtGZgc7EjJ9vQZlG1fYVhTr7lwluiTyQ8gaRr3PvO0eyO
 4pbcHsfFvU+GZtu74P4ce/nCAD+y0GbjRTsHeFIonVsszPoE0jciluj65S6HU7cVg/mC
 vFtskYUCRSqT0H7BC8Ta+R0q/3Kbs4tntVTV/9gthLaJck6nm+96u6OVsN6buw0vmtm3
 oEAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWVwM3xbAOJqI+y1zceP65TP1zI7WtibR6oDLdg9hd0Vg9w/RDGQghIr9R5InUBkhpmPGMjH2fIiwtB3g5P0vLWSFWpEMd2+2aTfbzAySw5zA==
X-Gm-Message-State: AOJu0YwlNeFupoqYA1TpfFF1DnKuj4e3qMp+4fcVW7fAg1hBOxscsj4q
 vU+pljRigeQ17TwlvIPccOvvktMTnWw4JmvIPsvJlB8P7qgFeBqHP4mtNfV7tHKk4qKVLh2oyKA
 MFUkM34N/VDEU3+dOJgdft+H5qIFGHHX/QQnsOo5KQSTZepkF2tI3iyxraCFdKhz1C926ss288t
 QSMQT9xpFmyLawkotkZ5Pvkd4y7+p+wrpIHj0n9J8/Cg==
X-Received: by 2002:a0c:f051:0:b0:68f:d23c:9c40 with SMTP id
 b17-20020a0cf051000000b0068fd23c9c40mr2163231qvl.30.1708775566330; 
 Sat, 24 Feb 2024 03:52:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqFfJNn3YyEHSZdbCj5QSsTY41zQB8+5mJC0GreQRD8BADwcjsJXHeMW2gR+qhAamQCfaMVGW3tSUYdKdsc/E=
X-Received: by 2002:a0c:f051:0:b0:68f:d23c:9c40 with SMTP id
 b17-20020a0cf051000000b0068fd23c9c40mr2163211qvl.30.1708775566058; Sat, 24
 Feb 2024 03:52:46 -0800 (PST)
MIME-Version: 1.0
References: <20240209100912.82473-1-ksundara@redhat.com>
 <ZctlswYbV1RHU2ip@mev-dev>
In-Reply-To: <ZctlswYbV1RHU2ip@mev-dev>
From: Karthik Sundaravel <ksundara@redhat.com>
Date: Sat, 24 Feb 2024 17:22:35 +0530
Message-ID: <CAPh+B4KrsKiN=QOU4HntCQh4OrJR=NpxJcOzvB05yxnc1WgKzw@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708775568;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SVWQffDK/ZUjAh++ittTy+1YShatNEsUrXGS8707I/s=;
 b=h+GVFbGois68P0WrqvjqPze2RFSPLymwBrC+WyfWMDSrhEvZDwVGD/rZFluhhkcGt1OUsz
 JLa+1YI1YBLJeBWOUEl8o7Pl0QwQVNV7OZ3gKKOh+LddFg+YsROlbSUvOZ8eMXdtsRLZJp
 0PWWlGhdcAl0QZOpu8fw427Q/7BNuIs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=h+GVFbGo
Subject: Re: [Intel-wired-lan] [PATCH v3] ice: Add get/set hw address for
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, vchundur@redhat.com, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, kuba@kernel.org, rjarry@redhat.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 6:21=E2=80=AFPM Michal Swiatkowski
<michal.swiatkowski@linux.intel.com> wrote:
>
> On Fri, Feb 09, 2024 at 03:39:12PM +0530, Karthik Sundaravel wrote:
> > Changing the MAC address of the VFs are not available
> > via devlink. Add the function handlers to set and get
> > the HW address for the VFs.
> >
> > Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_devlink.c | 86 +++++++++++++++++++-
> >  1 file changed, 85 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net=
/ethernet/intel/ice/ice_devlink.c
> > index 80dc5445b50d..7ed61b10312c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> > @@ -1576,6 +1576,89 @@ void ice_devlink_destroy_pf_port(struct ice_pf *=
pf)
> >       devlink_port_unregister(&pf->devlink_port);
> >  }
> >
> > +/**
> > + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink =
handler
> > + * @port: devlink port structure
> > + * @hw_addr: MAC address of the port
> > + * @hw_addr_len: length of MAC address
> > + * @extack: extended netdev ack structure
> > + *
> > + * Callback for the devlink .port_fn_hw_addr_get operation
> > + * Return: zero on success or an error code on failure.
> > + */
> > +
> > +static int ice_devlink_port_get_vf_mac_address(struct devlink_port *po=
rt,
> > +                                            u8 *hw_addr, int *hw_addr_=
len,
> > +                                            struct netlink_ext_ack *ex=
tack)
> > +{
> > +     struct devlink_port_attrs *attrs =3D &port->attrs;
> > +     struct devlink_port_pci_vf_attrs *pci_vf;
> > +     struct devlink *devlink =3D port->devlink;
> > +     struct ice_pf *pf;
> > +     struct ice_vf *vf;
> > +     int vf_id;
> > +
> > +     pf =3D devlink_priv(devlink);
> > +     if (attrs->flavour =3D=3D DEVLINK_PORT_FLAVOUR_PCI_VF) {
> > +             pci_vf =3D &attrs->pci_vf;
> > +             vf_id =3D pci_vf->vf;
> > +     } else {
> > +             NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
> > +             return -EADDRNOTAVAIL;
> > +     }
> > +     vf =3D ice_get_vf_by_id(pf, vf_id);
> You need to call ice_put_vf(vf); when you finish with vf.
>
> This way to get vf pointer is fine, I wonder if it can be done using
> container_of on port variable. Jake, what do you think?
> CC: Jacob Keller
>
> > +     if (!vf) {
> > +             NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");
> > +             return -EINVAL;
> > +     }
> > +     ether_addr_copy(hw_addr, vf->dev_lan_addr);
> > +     *hw_addr_len =3D ETH_ALEN;
> > +     return 0;
> > +}
> > +
> > +/**
> > + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink =
handler
> > + * @port: devlink port structure
> > + * @hw_addr: MAC address of the port
> > + * @hw_addr_len: length of MAC address
> > + * @extack: extended netdev ack structure
> > + *
> > + * Callback for the devlink .port_fn_hw_addr_set operation
> > + * Return: zero on success or an error code on failure.
> > + */
> > +static int ice_devlink_port_set_vf_mac_address(struct devlink_port *po=
rt,
> > +                                            const u8 *hw_addr,
> > +                                            int hw_addr_len,
> > +                                            struct netlink_ext_ack *ex=
tack)
> > +{
> > +     struct net_device *netdev =3D port->type_eth.netdev;
> Is it PF netdev?
Its VF netdev
>
> > +     struct devlink_port_attrs *attrs =3D &port->attrs;
> > +     struct devlink_port_pci_vf_attrs *pci_vf;
> > +     u8 mac[ETH_ALEN];
> > +     int vf_id;
> > +
> > +     if (attrs->flavour =3D=3D DEVLINK_PORT_FLAVOUR_PCI_VF) {
> > +             pci_vf =3D &attrs->pci_vf;
> > +             vf_id =3D pci_vf->vf;
> > +     } else {
> > +             NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
> > +             return -EADDRNOTAVAIL;
> > +     }
> > +
> > +     if (!netdev) {
> > +             NL_SET_ERR_MSG_MOD(extack, "Unable to get the netdev");
> > +             return -EADDRNOTAVAIL;
> > +     }
> > +     ether_addr_copy(mac, hw_addr);
> > +
> > +     return ice_set_vf_mac(netdev, vf_id, mac);
> > +}
> > +
> > +static const struct devlink_port_ops ice_devlink_vf_port_ops =3D {
> > +     .port_fn_hw_addr_get =3D ice_devlink_port_get_vf_mac_address,
> > +     .port_fn_hw_addr_set =3D ice_devlink_port_set_vf_mac_address,
> > +};
> > +
> >  /**
> >   * ice_devlink_create_vf_port - Create a devlink port for this VF
> >   * @vf: the VF to create a port for
> > @@ -1611,7 +1694,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> >       devlink_port_attrs_set(devlink_port, &attrs);
> >       devlink =3D priv_to_devlink(pf);
> >
> > -     err =3D devlink_port_register(devlink, devlink_port, vsi->idx);
> > +     err =3D devlink_port_register_with_ops(devlink, devlink_port,
> > +                                          vsi->idx, &ice_devlink_vf_po=
rt_ops);
> >       if (err) {
> >               dev_err(dev, "Failed to create devlink port for VF %d, er=
ror %d\n",
> >                       vf->vf_id, err);
> > --
> > 2.39.3 (Apple Git-145)
> >
>

