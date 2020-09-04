Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 127DE25DBB2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 16:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B87C986DA1;
	Fri,  4 Sep 2020 14:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0Jqjh48pMkt; Fri,  4 Sep 2020 14:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A19EB86ACF;
	Fri,  4 Sep 2020 14:29:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D33C61BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 07:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CEE9C87501
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 07:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iBgAaIH0phvP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 07:54:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59CF987500
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 07:54:46 +0000 (UTC)
Received: from localhost (unknown [151.66.86.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 757F3206A5;
 Fri,  4 Sep 2020 07:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599206086;
 bh=73lKRVfJ/rpz6cddiuQ+4cCkIdxHssgvQFs+/VrA49w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MR5LNOGK4FKu6c4JCxsOM1/KA9hWGmTSbW/xhIob2Q7SmOUAVdnohaN3JhKKGRrie
 s5ZSW2MoTqJR9Nhd4oE2RQRRJsNhiYZ02Hslt/0+LtavYsmT+qP+GxHQrDn87PUILY
 gur5IAHkRwr2DCZN2kdlgaHcLPQxQIghEy8vujuU=
Date: Fri, 4 Sep 2020 09:54:41 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <20200904075441.GD2884@lore-desk>
References: <cover.1599165031.git.lorenzo@kernel.org>
 <05822dfe200c5d581d6a6cad89c1b63bb7a1c566.1599165031.git.lorenzo@kernel.org>
 <20200904093542.4dc43682@carbon>
MIME-Version: 1.0
In-Reply-To: <20200904093542.4dc43682@carbon>
X-Mailman-Approved-At: Fri, 04 Sep 2020 14:29:37 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 2/9] xdp: initialize
 xdp_buff mb bit to 0 in all XDP drivers
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
Cc: shayagr@amazon.com, daniel@iogearbox.net, netdev@vger.kernel.org,
 ast@kernel.org, lorenzo.bianconi@redhat.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, sameehj@amazon.com,
 kuba@kernel.org, bpf@vger.kernel.org, davem@davemloft.net, echaudro@redhat.com
Content-Type: multipart/mixed; boundary="===============7232590709436168644=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7232590709436168644==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rz+pwK2yUstbofK6"
Content-Disposition: inline


--rz+pwK2yUstbofK6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Thu,  3 Sep 2020 22:58:46 +0200
> Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>=20
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/ne=
t/ethernet/intel/ixgbe/ixgbe_main.c
> > index 0b675c34ce49..20c8fd3cd4a3 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -2298,6 +2298,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vect=
or *q_vector,
> >  #if (PAGE_SIZE < 8192)
> >  	xdp.frame_sz =3D ixgbe_rx_frame_truesize(rx_ring, 0);
> >  #endif
> > +	xdp.mb =3D 0;
> > =20
> >  	while (likely(total_rx_packets < budget)) {
> >  		union ixgbe_adv_rx_desc *rx_desc;
>=20
> In this ixgbe driver you are smart and init the xdp.mb bit outside the
> (like xdp.frame_sz, when frame_sz is constant).   This is a nice
> optimization, but the driver developer that adds XDP multi-buffer
> support must remember to reset it.  The patch itself is okay, it is
> just something to keep in-mind when reviewing/changing drivers.

yes, I have just decided to avoid unnecessary instructions for the moment.

Regards,
Lorenzo

>=20
> --=20
> Best regards,
>   Jesper Dangaard Brouer
>   MSc.CS, Principal Kernel Engineer at Red Hat
>   LinkedIn: http://www.linkedin.com/in/brouer
>=20

--rz+pwK2yUstbofK6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCX1HyvgAKCRA6cBh0uS2t
rFqvAQCgLw4dWMz9aljcKTss6TRqgt9F4OO2vo5SJMNudbPIEQEAoblSeRiLgC9N
utf0lHJ8YbCnnbvOB8DzxnVz53xAPgQ=
=iTva
-----END PGP SIGNATURE-----

--rz+pwK2yUstbofK6--

--===============7232590709436168644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7232590709436168644==--
