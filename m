Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA6F67FF4A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Jan 2023 14:05:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCE4981973;
	Sun, 29 Jan 2023 13:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCE4981973
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674997519;
	bh=JVtimbH7yIG5dLX+un5+Ruyac5n2VQdM5gnncZCBbY8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qQ+MUKeuGp/khSEYbOeM7/U/Re4WwFFFjh7yk6oJoz00Y2Gyu2Xeh2JTD1146/yt+
	 7hqiMCIoknsD++fymP8NVlktBpB9NJpqSxGwqrhMsFFNFeg14W9EnNvXXlBGoxgRBP
	 npkTzcvKm5pjuLe7Ync9CwUyU5bOsg18SfRCmvsWD7CIWUlKOUPd0s/gCPcrmeknFy
	 WoRbVY1B+Rsf2noqvrV5cLdCPVkIG2uBAYlorkGSURZVGL02fARgQCIR6blwrhIc9x
	 NCOy2C8vmdI0ayemdLHq3Kz7nAl+zxQTuNuuNR/PlKzxrVIos54HqMtAlqnB01XPJJ
	 KvWtVr3kzOQiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uh9HSPG0WCl8; Sun, 29 Jan 2023 13:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE34581934;
	Sun, 29 Jan 2023 13:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE34581934
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 790281BF396
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jan 2023 13:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43FBB60F25
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jan 2023 13:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43FBB60F25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5U-Cs7AvVg4 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Jan 2023 13:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F89B60F20
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F89B60F20
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jan 2023 13:05:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 438FF60D3A;
 Sun, 29 Jan 2023 13:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EDFFC433D2;
 Sun, 29 Jan 2023 13:05:11 +0000 (UTC)
Date: Sun, 29 Jan 2023 14:05:07 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Gerhard Engleder <gerhard@engleder-embedded.com>
Message-ID: <Y9ZvA7+RMwbNlFoy@lore-desk>
References: <cover.1674606193.git.lorenzo@kernel.org>
 <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
 <28eedfd5-4444-112b-bfbc-1c7682385c88@engleder-embedded.com>
MIME-Version: 1.0
In-Reply-To: <28eedfd5-4444-112b-bfbc-1c7682385c88@engleder-embedded.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674997511;
 bh=YRnCFG8ntf0bBC/MtPuhGtlsw+ZD+Y1feXB+ZAguOFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pM7mbhS46Zc3vsSb/cRYRpSBpu4zsXFLTKZKoi2W9W8Gn1mIszVsY3goULoFTBdsL
 6N7rc9XSk4HmChaH+vMU5CV8tWptrMWwNKzc/fklambxb7qw0KSOA20MjTIwmbBUFD
 oWhrrJqewgPnftnf8iSQVGr1o8U6saypScis+5Ryll0IjJEFexqbYhzhG4KjXdjPVr
 rfhVyjmo/z4Chd3f7VXs/+ZQqgWPIVnjQJO+/kXDdupYlDwig+GMIFY5veiNobNGkx
 88YpSDlIyIZTFbzEWtTNBY0pDEPIxzKptAN2zcX3lFcJ4MPxvSknnTUhv1Q8+iWtiM
 c8isIlzzXMAdg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pM7mbhS4
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============8813846565586111745=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============8813846565586111745==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U7/gIV1/sudiaFss"
Content-Disposition: inline


--U7/gIV1/sudiaFss
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 25.01.23 01:33, Lorenzo Bianconi wrote:
> > From: Marek Majtyka <alardam@gmail.com>
> >=20
> > A summary of the flags being set for various drivers is given below.
> > Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
> > that can be turned off and on at runtime. This means that these flags
> > may be set and unset under RTNL lock protection by the driver. Hence,
> > READ_ONCE must be used by code loading the flag value.
> >=20
> > Also, these flags are not used for synchronization against the availabi=
lity
> > of XDP resources on a device. It is merely a hint, and hence the read
> > may race with the actual teardown of XDP resources on the device. This
> > may change in the future, e.g. operations taking a reference on the XDP
> > resources of the driver, and in turn inhibiting turning off this flag.
> > However, for now, it can only be used as a hint to check whether device
> > supports becoming a redirection target.
> >=20
> > Turn 'hw-offload' feature flag on for:
> >   - netronome (nfp)
> >   - netdevsim.
> >=20
> > Turn 'native' and 'zerocopy' features flags on for:
> >   - intel (i40e, ice, ixgbe, igc)
> >   - mellanox (mlx5).
> >   - stmmac
> >=20
> > Turn 'native' features flags on for:
> >   - amazon (ena)
> >   - broadcom (bnxt)
> >   - freescale (dpaa, dpaa2, enetc)
> >   - funeth
> >   - intel (igb)
> >   - marvell (mvneta, mvpp2, octeontx2)
> >   - mellanox (mlx4)
> >   - qlogic (qede)
> >   - sfc
> >   - socionext (netsec)
> >   - ti (cpsw)
> >   - tap
> >   - veth
> >   - xen
> >   - virtio_net.
> >=20
> > Turn 'basic' (tx, pass, aborted and drop) features flags on for:
> >   - netronome (nfp)
> >   - cavium (thunder)
> >   - hyperv.
> >=20
> > Turn 'redirect_target' feature flag on for:
> >   - amanzon (ena)
> >   - broadcom (bnxt)
> >   - freescale (dpaa, dpaa2)
> >   - intel (i40e, ice, igb, ixgbe)
> >   - ti (cpsw)
> >   - marvell (mvneta, mvpp2)
> >   - sfc
> >   - socionext (netsec)
> >   - qlogic (qede)
> >   - mellanox (mlx5)
> >   - tap
> >   - veth
> >   - virtio_net
> >   - xen
>=20
> XDP support for tsnep was merged to net-next last week. So this driver
> cannot get XDP feature support in bpf-next as it is not there currently.
> Should I add these flags with a fix afterwards? Or would net-next be the
> better target for this patch series?

bpf-next has been rebased on top of net-next so we can add tsnep support to=
 the
series. Do you think the patch below is fine?

Regards,
Lorenzo

diff --git a/drivers/net/ethernet/engleder/tsnep_main.c b/drivers/net/ether=
net/engleder/tsnep_main.c
index c3cf427a9409..6982aaa928b5 100644
--- a/drivers/net/ethernet/engleder/tsnep_main.c
+++ b/drivers/net/ethernet/engleder/tsnep_main.c
@@ -1926,6 +1926,10 @@ static int tsnep_probe(struct platform_device *pdev)
 	netdev->features =3D NETIF_F_SG;
 	netdev->hw_features =3D netdev->features | NETIF_F_LOOPBACK;
=20
+	netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+			       NETDEV_XDP_ACT_NDO_XMIT |
+			       NETDEV_XDP_ACT_NDO_XMIT_SG;
+
 	/* carrier off reporting is important to ethtool even BEFORE open */
 	netif_carrier_off(netdev);
=20
>=20
> Gerhard

--U7/gIV1/sudiaFss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY9ZvAwAKCRA6cBh0uS2t
rNw7AP0alud03ewTG9GBiClcWsJQ6C9O0dUGXriI2e1W5/22hAEAyOa3eNzEGfre
fkTdDTwpzezmuA3GUsyCVIEgbzhVrA0=
=Vws7
-----END PGP SIGNATURE-----

--U7/gIV1/sudiaFss--

--===============8813846565586111745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8813846565586111745==--
