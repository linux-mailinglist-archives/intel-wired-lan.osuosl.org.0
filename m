Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9899678C0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 00:30:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B72D482008;
	Mon, 23 Jan 2023 23:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B72D482008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674516609;
	bh=mG+vUy1OX0vUwwjyTbqQnEv3T7NF70gm4F4/9T/kM0U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BvVIzynaN7vDFuLsO6f6/8lRxHr14S0HG+WfXNgYLWU3aF3bJSAyogV2GR7+2xMSH
	 PbW9xjMFTPYpmuxxsACnD6zNUZT3lqdIscKKcped9lrSbMLhEWtW5BPOKyeMBejJcx
	 thTnhUyUV7f53KU1DDFPds5R7+kuBPSOD0XCeexzRGjOSvtEEQsvNRZ1PBwlu9eskW
	 nfFrh2kS9osv3/QaDLlM0xVVPjmAasd/neVbP5RRtNyG78cfwW3gWifc2fUV1wZs5l
	 33fuAYcWY9Rq/LAf65DHhFEvn7UF+Krtb/Zn84ArGvtpXAJcY1tfOIsPY4mQ2F3fNP
	 phO/VtWfw2NLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4PiHh_U0bFUm; Mon, 23 Jan 2023 23:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3235781FF3;
	Mon, 23 Jan 2023 23:30:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3235781FF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E647C1BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CBB4081FF3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:30:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBB4081FF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibCbwFMnVs3x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 23:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4F4681FEF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4F4681FEF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:30:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0636761140;
 Mon, 23 Jan 2023 23:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E951EC433D2;
 Mon, 23 Jan 2023 23:29:58 +0000 (UTC)
Date: Tue, 24 Jan 2023 00:29:55 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y88YczKFr8YKjPFH@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
 <20230120191126.06c9d514@kernel.org> <Y82//2EX6QQoZkV/@lore-desk>
 <20230123120101.555a3446@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230123120101.555a3446@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674516599;
 bh=domWxXnxx3FfeQl1v33UBPNFj+bob4ka74pFOFtg76Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q2CVM+3qDh+hMNvlsjx20J6175W3EVVRtwNzhVmWSkLjERRjHH8rW1lvSy2rp/uo/
 XJ9L8fl4wYeqtnRNcR3b5UdBTLgAzjdojy2sq23jbqqbntkewDaz1niwvje75pMqxU
 ZPksp76z62HXB2AFmUzDlr6onOiSN1J9HFkLbWqNzfyyQ+ZnKfdWRISSvR95vJRWOr
 0Ov+EDS27MpjDxCk6p9u8xyx9jzOrbAF+Rm9RPQkm9qmZtCIxkG3KE3Qd0Co7YoS4o
 EL2Jr7d1iqc3o/ubwmOO0oZSS80QSQh60z9rRplkXPquOt8Ykl6y6cFRKA00cj5+mE
 HozU4OxO5VsJw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q2CVM+3q
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a
 simple family for netdev stuff
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
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============3559844593598933116=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3559844593598933116==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cnQ6IPZiAYco6BFA"
Content-Disposition: inline


--cnQ6IPZiAYco6BFA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Mon, 23 Jan 2023 00:00:15 +0100 Lorenzo Bianconi wrote:
> > > FWIW I'm not 100% sure if we should scope the family to all of netdev
> > > or just xdp. Same for the name of the op, should we call the op dev_g=
et
> > > or dev_xdp_get.. =20
> >=20
> > is it likely we are going to add non-xdp info here in the near future? =
If not
> > I would say we can target just xdp for the moment.
>=20
> What brought it to mind for me was offloads like the NVMe/DDP for
> instance. Whether that stuff should live in ethtool or a netdev
> family is a bit unclear.

ack, let's keep netdev in this case.

>=20
> > > These defines don't belong in uAPI. Especially the use of BIT(). =20
> >=20
> > since netdev xdp_features is a bitmask, can we use 'flags' as type for =
definitions in
> > netdev.yaml so we can get rid of this BIT() definitions for both user a=
nd
> > kernel space?
>=20
> If you have no use for the bit numbers - definitely.

ack

Regards,
Lorenzo

--cnQ6IPZiAYco6BFA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY88YcwAKCRA6cBh0uS2t
rOF4AP9C2wVT/PPgkyjFhjEV3z+Ky+cm5rPk6r4RiIoRN2MyowD/RFwIwU4420X4
YZMgnouKUu3uTnXJn5Iduqoy0AWvkwM=
=jF9+
-----END PGP SIGNATURE-----

--cnQ6IPZiAYco6BFA--

--===============3559844593598933116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3559844593598933116==--
