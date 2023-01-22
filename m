Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2F8676CB2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Jan 2023 13:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D91FA81842;
	Sun, 22 Jan 2023 12:13:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D91FA81842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674389632;
	bh=D8Y3KYrAC/aFSxEO1yenQr3nNRRbJTk4W7EjabsuhOc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ytkd7ZK/jYN5UAUhyXKHNPxxxCVWbmGyDtJh3QtMZHxN0m/zUeayFNakc2kU36vAI
	 J6+DC7/gNSbHCrLGIHudEH1KPt9orLLm7CUTnwJiJ2Y85cNrSoYZcp33/bK796kDer
	 NhVAwnvH9cBdgCuQ93v8gqsx/sMxtckhk/w0HfsJp+DI42mMtlNFn+mkgFl14XGe71
	 NYVIo/TNf6vQ/xBnEOr5vtiSlujdZHdXe4zZf4/jds13WXvbvSUEYg28O1ap1JZFrx
	 f0BG8mwM3ODXCflPpYmPyLnUCaSSHQPQZ9JFb4pVnlEpBlmLO3Q/hXEjP2YmN/ys4f
	 B1Y6IA7ddG8gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vz6LSryDXWfs; Sun, 22 Jan 2023 12:13:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E43A8817A3;
	Sun, 22 Jan 2023 12:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E43A8817A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 488981BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 12:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D59C405A0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 12:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D59C405A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7fV6O3rxywP6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jan 2023 12:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80D5C4010E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80D5C4010E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 12:13:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C770360BB8;
 Sun, 22 Jan 2023 12:13:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD95AC433D2;
 Sun, 22 Jan 2023 12:13:44 +0000 (UTC)
Date: Sun, 22 Jan 2023 13:13:41 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Martin KaFai Lau <martin.lau@linux.dev>
Message-ID: <Y80odbX/CVjlYalh@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <acc9460e6e29dfe02cf474735277e196b500d2ef.1674234430.git.lorenzo@kernel.org>
 <d0232e99-862b-3255-aeac-7c04486cb773@linux.dev>
MIME-Version: 1.0
In-Reply-To: <d0232e99-862b-3255-aeac-7c04486cb773@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674389625;
 bh=nejjdNUwfU0DIrqoZxOV5br+QIBkmnp0CISUYJT/5Qw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ITtVZ7Ndr10M6em5OTP/bLAVZ3qKxXv/6Qb84zRWZogu72llAjYmYIiVUthsCa/Gz
 vbT3xv2JIhXdeV/dCCd77gywboNBPKxn57/flP3wPdlVUtIr9sN+RgBWS0gGeCh3aw
 oycDNN4zwS1vmuO7ArZva8dSREyQecLdZ+BM247/FzhRtxAatSmUR42UoOBVJzK6pt
 9tP5eu30tP59hx0+fjSpud8upT79ln7bYT25yiJsTWL2LLy8nduLrrlJuyy7Oq5r+U
 DsJHwePEncpclqNX2F1E1/mrJhUox0j7i6eP/uuIFX4lC0cQXd8p+XTUzbYkOa9oLZ
 ApOa7PrGVz/9g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ITtVZ7Nd
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/7] bpf: devmap: check XDP
 features in bpf_map_update_elem and __xdp_enqueue
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
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============5510649357662304656=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5510649357662304656==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xWUqnwFWf7284WXp"
Content-Disposition: inline


--xWUqnwFWf7284WXp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 1/20/23 9:16 AM, Lorenzo Bianconi wrote:
> > ---
> >   kernel/bpf/devmap.c | 25 +++++++++++++++++++++----
> >   net/core/filter.c   | 13 +++++--------
> >   2 files changed, 26 insertions(+), 12 deletions(-)
> >=20
> > diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
> > index d01e4c55b376..69ceecc792df 100644
> > --- a/kernel/bpf/devmap.c
> > +++ b/kernel/bpf/devmap.c
> > @@ -474,7 +474,11 @@ static inline int __xdp_enqueue(struct net_device =
*dev, struct xdp_frame *xdpf,
> >   {
> >   	int err;
> > -	if (!dev->netdev_ops->ndo_xdp_xmit)
> > +	if (!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT))
>=20
> The current "dev->netdev_ops->ndo_xdp_xmit" check is self explaining.
> Any plan to put some document for the NETDEV_XDP_ACT_* values?
>=20

I am not a yaml description expert but I guess we can xdp features descript=
ion
in Documentation/netlink/specs/netdev.yaml.

@Jakub: what do you think?

Regards,
Lorenzo

--xWUqnwFWf7284WXp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY80odQAKCRA6cBh0uS2t
rOZZAP4xiweG52WS6f8PS7IkQtzz2xIQ3sDMfAU6uQvmNajMXwEA2UFIc2hPjg7J
X/vug32zo0B7cWy9Cy2A9j+RGGE+rAk=
=csRR
-----END PGP SIGNATURE-----

--xWUqnwFWf7284WXp--

--===============5510649357662304656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5510649357662304656==--
