Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 237AF8624B4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Feb 2024 12:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F89B60A4E;
	Sat, 24 Feb 2024 11:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3GTu06AltJyA; Sat, 24 Feb 2024 11:48:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29098608C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708775310;
	bh=ARtDupyOv0uAPA1UjC0KwkM1ld0qhdrIfysuvYlGcUQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jeuWwls8QFfaFnp4IB8t6ZGtL0BGVQE9LbHw3nOr2FZUq/sC63GbTGPB2O7lEZReU
	 U+qzpmVGEfUKGh3PTtAfUm3+JABNjRugh/p2DwbL+1ra3Ct91yZaewtCtjervFn8ao
	 3NgDDtk3jf3Dw+VXBClPWWv8XS2MSZtIJHRENTEO9gdHldbg/uKS6ZZZcymz/CK8Zn
	 OiiUTZlxHtbjNlOb89pFVC6dajlmQlg9ugTb9kNCWwiWLFppRE5vGApJ9pJKtVgUuF
	 7etovIci9w6aFyD8bP0dJn48zfINqRSjqhn8Dd+q2vwya1NbCgHX8QBJwSCDFtFzSb
	 CNuQJ+63hL3RA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29098608C2;
	Sat, 24 Feb 2024 11:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FADE1BF576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 11:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AD3082055
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 11:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ya6WrqrGJ-49 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Feb 2024 11:48:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1562782030
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1562782030
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1562782030
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 11:48:26 +0000 (UTC)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-333-Aok5fmdPNHOqjt2sd9iw5A-1; Sat, 24 Feb 2024 06:48:21 -0500
X-MC-Unique: Aok5fmdPNHOqjt2sd9iw5A-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-68f47e46658so18945066d6.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 03:48:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708775300; x=1709380100;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ARtDupyOv0uAPA1UjC0KwkM1ld0qhdrIfysuvYlGcUQ=;
 b=pQjLjdR9Cnz1FmhP97dZpNVJb/suPzUch3aAEO2NfKMQPIqzFkM5mSpts0wPlWKiQu
 i8miwVXQdv/fJ/Vj9vIBvhUS+stuRqnxfKAo1nIsQkR3htZKLG4J0i4I1+urH1UtoQni
 rLi9tXe5DsCEyaHGWofXwpitZERDlD4a1MHqz0/txOaKK4QL/wFMfr+4AyTdVkWE2xqw
 BlCTWGcs+vSCUJxwa6BbMwSguADpAn+K5hg9hAU28FOi9FqsC6uGlDv25UrcWv+1bdsV
 k6zTIAoUAMGoSaVpMLBiQuoZXQ5C309XY3ZxlHHZecSJOaJGPYVhsKuba8/LZAJ5r54q
 7ILA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuNpQMudthzrvT69iNAzDu3Grzix071qDxzosvc940ZL1hnPw3gwbDQUrzkSg14oZinG0ZjH/lyFHWj1Wy6EJGWfLVTOe4/OozjdohKyU/vg==
X-Gm-Message-State: AOJu0YylvmFgFNIDsvux5PM175sgLndJp9woMvrseSPC44EdHYfGMfEl
 PI4vY+RQkSmyj80lcAvbWZjDlw1jcVvBDxW5SMCdmcQhWxEWzXXFqak5H4YU4Ji3wy7s68G5Klk
 GUDAdYaZkgQCPQ+PnCuKmTgcfOIdkConSx3NKMZM9Q5GKjZtZv8YM8MOGFbt70b7/j3pXnGXwzR
 f0FKhGQmX6s3Cqeov1HBwl+9Tv5oGsjWaQVCoOQ2A6Lw==
X-Received: by 2002:a05:6214:21ec:b0:68f:e46b:47f with SMTP id
 p12-20020a05621421ec00b0068fe46b047fmr2649497qvj.17.1708775300703; 
 Sat, 24 Feb 2024 03:48:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMvdirnqB0wBh3BWcEteWPFOAhhtrJ0sHYxLUnAq7HoIRQZtF4SW3fCcX5vz2DQieUtp1DR633thHR41uwqwA=
X-Received: by 2002:a05:6214:21ec:b0:68f:e46b:47f with SMTP id
 p12-20020a05621421ec00b0068fe46b047fmr2649482qvj.17.1708775300381; Sat, 24
 Feb 2024 03:48:20 -0800 (PST)
MIME-Version: 1.0
References: <20240209100912.82473-1-ksundara@redhat.com>
 <ZctlswYbV1RHU2ip@mev-dev>
In-Reply-To: <ZctlswYbV1RHU2ip@mev-dev>
From: Karthik Sundaravel <ksundara@redhat.com>
Date: Sat, 24 Feb 2024 17:18:09 +0530
Message-ID: <CAPh+B4+DaFRPDX_sq+3jg8LSWP3OyM-6rKGmQe8_0=HUezO4+g@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000c7d09506121f40b8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708775305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ARtDupyOv0uAPA1UjC0KwkM1ld0qhdrIfysuvYlGcUQ=;
 b=LdDgKcnsN7ePFadU7KrpgepNNHRrZsbh9xhXddeqzFfy/u94iD8zUy0gZsckQrIhpZFl4b
 gVDwVIVbOXie5xKSgnJ+h9v2oKorZ3sUD+kMNyzkcrybxCFIt2r2TQVitQUj4An3a8BYjg
 Ui9V59jsWRoLanZVsbJjwCMwbfVS+kE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=LdDgKcns
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

--000000000000c7d09506121f40b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 13, 2024 at 6:21=E2=80=AFPM Michal Swiatkowski <
michal.swiatkowski@linux.intel.com> wrote:

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
> > diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
> b/drivers/net/ethernet/intel/ice/ice_devlink.c
> > index 80dc5445b50d..7ed61b10312c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> > @@ -1576,6 +1576,89 @@ void ice_devlink_destroy_pf_port(struct ice_pf
> *pf)
> >       devlink_port_unregister(&pf->devlink_port);
> >  }
> >
> > +/**
> > + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink
> handler
> > + * @port: devlink port structure
> > + * @hw_addr: MAC address of the port
> > + * @hw_addr_len: length of MAC address
> > + * @extack: extended netdev ack structure
> > + *
> > + * Callback for the devlink .port_fn_hw_addr_get operation
> > + * Return: zero on success or an error code on failure.
> > + */
> > +
> > +static int ice_devlink_port_get_vf_mac_address(struct devlink_port
> *port,
> > +                                            u8 *hw_addr, int
> *hw_addr_len,
> > +                                            struct netlink_ext_ack
> *extack)
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
> > + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink
> handler
> > + * @port: devlink port structure
> > + * @hw_addr: MAC address of the port
> > + * @hw_addr_len: length of MAC address
> > + * @extack: extended netdev ack structure
> > + *
> > + * Callback for the devlink .port_fn_hw_addr_set operation
> > + * Return: zero on success or an error code on failure.
> > + */
> > +static int ice_devlink_port_set_vf_mac_address(struct devlink_port
> *port,
> > +                                            const u8 *hw_addr,
> > +                                            int hw_addr_len,
> > +                                            struct netlink_ext_ack
> *extack)
> > +{
> > +     struct net_device *netdev =3D port->type_eth.netdev;
> Is it PF netdev?
>
its VF netdev

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
> > +                                          vsi->idx,
> &ice_devlink_vf_port_ops);
> >       if (err) {
> >               dev_err(dev, "Failed to create devlink port for VF %d,
> error %d\n",
> >                       vf->vf_id, err);
> > --
> > 2.39.3 (Apple Git-145)
> >
>
>

--000000000000c7d09506121f40b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 13, 2024 at 6:21=E2=80=AF=
PM Michal Swiatkowski &lt;<a href=3D"mailto:michal.swiatkowski@linux.intel.=
com">michal.swiatkowski@linux.intel.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">On Fri, Feb 09, 2024 at 03:39:12PM +=
0530, Karthik Sundaravel wrote:<br>
&gt; Changing the MAC address of the VFs are not available<br>
&gt; via devlink. Add the function handlers to set and get<br>
&gt; the HW address for the VFs.<br>
&gt; <br>
&gt; Signed-off-by: Karthik Sundaravel &lt;<a href=3D"mailto:ksundara@redha=
t.com" target=3D"_blank">ksundara@redhat.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/ethernet/intel/ice/ice_devlink.c | 86 ++++++++++++++=
+++++-<br>
&gt;=C2=A0 1 file changed, 85 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/ne=
t/ethernet/intel/ice/ice_devlink.c<br>
&gt; index 80dc5445b50d..7ed61b10312c 100644<br>
&gt; --- a/drivers/net/ethernet/intel/ice/ice_devlink.c<br>
&gt; +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c<br>
&gt; @@ -1576,6 +1576,89 @@ void ice_devlink_destroy_pf_port(struct ice_pf =
*pf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0devlink_port_unregister(&amp;pf-&gt;devlink_=
port);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; +/**<br>
&gt; + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink=
 handler<br>
&gt; + * @port: devlink port structure<br>
&gt; + * @hw_addr: MAC address of the port<br>
&gt; + * @hw_addr_len: length of MAC address<br>
&gt; + * @extack: extended netdev ack structure<br>
&gt; + *<br>
&gt; + * Callback for the devlink .port_fn_hw_addr_get operation<br>
&gt; + * Return: zero on success or an error code on failure.<br>
&gt; + */<br>
&gt; +<br>
&gt; +static int ice_devlink_port_get_vf_mac_address(struct devlink_port *p=
ort,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u8 *hw_addr, int *hw_addr_len,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct netlink_ext_ack *extack)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct devlink_port_attrs *attrs =3D &amp;port-&g=
t;attrs;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct devlink_port_pci_vf_attrs *pci_vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct devlink *devlink =3D port-&gt;devlink;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct ice_pf *pf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct ice_vf *vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int vf_id;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pf =3D devlink_priv(devlink);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (attrs-&gt;flavour =3D=3D DEVLINK_PORT_FLAVOUR=
_PCI_VF) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pci_vf =3D &amp;attrs=
-&gt;pci_vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vf_id =3D pci_vf-&gt;=
vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NL_SET_ERR_MSG_MOD(ex=
tack, &quot;Unable to get the vf id&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EADDRNOTAVAIL=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0vf =3D ice_get_vf_by_id(pf, vf_id);<br>
You need to call ice_put_vf(vf); when you finish with vf.<br>
<br>
This way to get vf pointer is fine, I wonder if it can be done using<br>
container_of on port variable. Jake, what do you think?<br>
CC: Jacob Keller<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!vf) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NL_SET_ERR_MSG_MOD(ex=
tack, &quot;Unable to get the vf&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ether_addr_copy(hw_addr, vf-&gt;dev_lan_addr);<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0*hw_addr_len =3D ETH_ALEN;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +/**<br>
&gt; + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink=
 handler<br>
&gt; + * @port: devlink port structure<br>
&gt; + * @hw_addr: MAC address of the port<br>
&gt; + * @hw_addr_len: length of MAC address<br>
&gt; + * @extack: extended netdev ack structure<br>
&gt; + *<br>
&gt; + * Callback for the devlink .port_fn_hw_addr_set operation<br>
&gt; + * Return: zero on success or an error code on failure.<br>
&gt; + */<br>
&gt; +static int ice_devlink_port_set_vf_mac_address(struct devlink_port *p=
ort,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 const u8 *hw_addr,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 int hw_addr_len,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct netlink_ext_ack *extack)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct net_device *netdev =3D port-&gt;type_eth.n=
etdev;<br>
Is it PF netdev?<br></blockquote><div>its VF netdev=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct devlink_port_attrs *attrs =3D &amp;port-&g=
t;attrs;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct devlink_port_pci_vf_attrs *pci_vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 mac[ETH_ALEN];<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int vf_id;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (attrs-&gt;flavour =3D=3D DEVLINK_PORT_FLAVOUR=
_PCI_VF) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pci_vf =3D &amp;attrs=
-&gt;pci_vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vf_id =3D pci_vf-&gt;=
vf;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NL_SET_ERR_MSG_MOD(ex=
tack, &quot;Unable to get the vf id&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EADDRNOTAVAIL=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!netdev) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NL_SET_ERR_MSG_MOD(ex=
tack, &quot;Unable to get the netdev&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EADDRNOTAVAIL=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ether_addr_copy(mac, hw_addr);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ice_set_vf_mac(netdev, vf_id, mac);<br>
&gt; +}<br>
&gt; +<br>
&gt; +static const struct devlink_port_ops ice_devlink_vf_port_ops =3D {<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0.port_fn_hw_addr_get =3D ice_devlink_port_get_vf_=
mac_address,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0.port_fn_hw_addr_set =3D ice_devlink_port_set_vf_=
mac_address,<br>
&gt; +};<br>
&gt; +<br>
&gt;=C2=A0 /**<br>
&gt;=C2=A0 =C2=A0* ice_devlink_create_vf_port - Create a devlink port for t=
his VF<br>
&gt;=C2=A0 =C2=A0* @vf: the VF to create a port for<br>
&gt; @@ -1611,7 +1694,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0devlink_port_attrs_set(devlink_port, &amp;at=
trs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0devlink =3D priv_to_devlink(pf);<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0err =3D devlink_port_register(devlink, devlink_po=
rt, vsi-&gt;idx);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0err =3D devlink_port_register_with_ops(devlink, d=
evlink_port,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 vsi-&gt;idx, &amp;ice_devlink_vf_port_ops);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &qu=
ot;Failed to create devlink port for VF %d, error %d\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0vf-&gt;vf_id, err);<br>
&gt; -- <br>
&gt; 2.39.3 (Apple Git-145)<br>
&gt; <br>
<br>
</blockquote></div></div>

--000000000000c7d09506121f40b8--

