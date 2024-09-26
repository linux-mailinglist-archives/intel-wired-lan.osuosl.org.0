Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 216A2987617
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2024 16:57:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AF0041244;
	Thu, 26 Sep 2024 14:57:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jTfScIP9x-lF; Thu, 26 Sep 2024 14:57:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5689141234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727362658;
	bh=PQMY3AHbIEHeV19liJoVt2s+ygkFoHunIk7CJFInMwU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z1CUwLyjEtejFkfBnqRnud9AY1n8AxIqNOvPMou6TndCI31TBxdEpVhbwl8cghiTl
	 WVTp6xuiM4B2q3NWmgfEmzDVLndcxnlv46iB+vbKmC4deXQsKOK5mIN5/3X/VYaXAZ
	 PYoJonL297dgAqBVdXljksqe4aWqpo7hyayE3vVo7obmdr/ZyKW9n9d324azEeuO+I
	 2pFQQMX3uioiNKcnONF02LPzdtJmGEQMTrhsQDrht0LqOkrSa3S2VpV2Wb2yJbQfOI
	 5qAHIdIfNOTOvgAjHwJofK0/lJHPmXleO2JPI+2d/acJKTHC4NIiw84DoxCvCaMhTp
	 5ZDnL1oGYZIUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5689141234;
	Thu, 26 Sep 2024 14:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AD5A1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 14:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 583EC845CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 14:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id omm-7apTf-JI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2024 14:57:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5B85D845C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B85D845C7
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B85D845C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 14:57:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5A2DDA451FF;
 Thu, 26 Sep 2024 14:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FB6DC4CEC6;
 Thu, 26 Sep 2024 14:57:32 +0000 (UTC)
Date: Thu, 26 Sep 2024 16:57:28 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <ZvV2WLUa1KB8qu3L@lore-rh-laptop>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <ZvA6hIl6XWJ4UEJW@lore-desk> <874j62u1lb.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Ye/IXUGKfZM9t2/H"
Content-Disposition: inline
In-Reply-To: <874j62u1lb.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727362653;
 bh=4ZGxuM2gdOgaQUTxnoqPu90dT3FeX/dRZmua+ueQAE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TwnD5WyzztQGgQwWsq5xsAdz59AeF0vhzrK73U7lZaQSF8dy0+k2uDdATt8IkJadT
 qNCm23fmba+4rrqJgbssKWqLDdpKlvLyOLEYFg/8H0Y56vBb8Dt5PBQID8HsqItibE
 gwhy5PN/rHESvBYjh2U6yy/3pLXU/+pWxtUtgSF0yLipRCvxPjhrRz9N9IRDhNWrRj
 MKe6mzZyvepVU9TgApGffNwYd4kyU8/aewLYl+otOv7s5/BCwPY9Rfm0r0/vfVT65z
 EInv2tIaS6MBan2tp09IvJzSOJ4UuhTt0kqO4Ay/Q2SyvtpcbYrtpjgc+nI3SyxFRs
 rnWU/HSP6ouLA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TwnD5Wyz
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, Yan Zhai <yan@cloudflare.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, daniel@iogearbox.net,
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 alexandre.torgue@foss.st.com, Arthur Fabre <afabre@cloudflare.com>,
 netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--Ye/IXUGKfZM9t2/H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:
>=20
> >> I'm hinting at some complications here (with the EFAULT return) that
> >> needs to be resolved: there is no guarantee that a given packet will be
> >> in sync with the current status of the registered metadata, so we need
> >> explicit checks for this. If metadata entries are de-registered again
> >> this also means dealing with holes and/or reshuffling the metadata
> >> layout to reuse the released space (incidentally, this is the one place
> >> where a TLV format would have advantages).
> >
> > I like this approach but it seems to me more suitable for 'sw' metadata
> > (this is main Arthur and Jakub use case iiuc) where the userspace would
> > enable/disable these functionalities system-wide.
> > Regarding device hw metadata (e.g. checksum offload) I can see some iss=
ues
> > since on a system we can have multiple NICs with different capabilities.
> > If we consider current codebase, stmmac driver supports only rx timesta=
mp,
> > while mlx5 supports all of them. In a theoretical system with these two
> > NICs, since pkt_metadata_registry is global system-wide, we will end-up
> > with quite a lot of holes for the stmmac, right? (I am not sure if this
> > case is relevant or not). In other words, we will end-up with a fixed
> > struct for device rx hw metadata (like xdp_rx_meta). So I am wondering
> > if we really need all this complexity for xdp rx hw metadata?
>=20
> Well, the "holes" will be there anyway (in your static struct approach).
> They would just correspond to parts of the "struct xdp_rx_meta" being
> unset.

yes, what I wanted to say is I have the feeling we will end up 90% of the
times in the same fields architecture and the cases where we can save some
space seem very limited. Anyway, I am fine to discuss about a common
architecture.

>=20
> What the "userspace can turn off the fields system wide" would
> accomplish is to *avoid* the holes if you know that you will never need
> them. E.g., say a system administrator know that they have no networks
> that use (offloaded) VLANs. They could then disable the vlan offload
> field system-wide, and thus reclaim the four bytes taken up by the
> "vlan" member of struct xdp_rx_meta, freeing that up for use by
> application metadata.

Even if I like the idea of having a common approach for this kernel feature,
hw metadata seems to me quite a corner case with respect of 'user-defined
metadata', since:
- I do not think it is a common scenario to disable hw offload capabilities
  (e.g checksum offload in production)
- I guess it is not just enough to disable them via bpf, but the user/sysad=
min
  will need even to configure the NIC via ethtool (so a 2-steps process).

I think we should pay attention to not overcomplicate something that is 99%
enabled and just need to be fast. E.g I can see an issue of putting the hw =
rx
metadata in metadata field since metadata grows backward and we will probab=
ly
end up putting them in a different cacheline with respect to xdp_frame
(xdp_headroom is usually 256B).

>=20
> However, it may well be that the complexity of allowing fields to be
> turned off is not worth the gains. At least as long as there are only
> the couple of HW metadata fields that we have currently. Having the
> flexibility to change our minds later would be good, though, which is
> mostly a matter of making the API exposed to BPF and/or userspace
> flexible enough to allow us to move things around in memory in the
> future. Which was basically my thought with the API I sketched out in
> the previous email. I.e., you could go:
>=20
> ret =3D bpf_get_packet_metadata_field(pkt, METADATA_ID_HW_HASH,
>                                     &my_hash_vlaue, sizeof(u32))

yes, my plan is to add dedicated bpf kfuncs to store hw metadata in
xdp_frame/xdp_buff

>=20
>=20
> ...and the METADATA_ID_HW_HASH would be a constant defined by the
> kernel, for which the bpf_get_packet_metadata_field() kfunc just has a
> hardcoded lookup into struct xdp_rx_meta. And then, if we decide to move
> the field in the future, we just change the kfunc implementation, with
> no impact to the BPF programs calling it.
>=20

maybe we can use what we Stanislav have already added (maybe removing xdp
prefix):

enum xdp_rx_metadata {
	XDP_METADATA_KFUNC_RX_TIMESTAMP,
	XDP_METADATA_KFUNC_RX_HASH,
	XDP_METADATA_KFUNC_RX_VLAN_TAG
};


> > Maybe we can start with a simple approach for xdp rx hw metadata
> > putting the struct in xdp_frame as suggested by Jesper and covering
> > the most common use-cases. We can then integrate this approach with
> > Arthur/Jakub's solution without introducing any backward compatibility
> > issue since these field are not visible to userspace.
>=20
> Yes, this is basically the gist of my suggestion (as I hopefully managed
> to clarify above): Expose the fields via an API that is flexible enough
> that we can move things around should the need arise, *and* which can
> co-exist with the user-defined application metadata.

ack

Regards,
Lorenzo

>=20
> -Toke
>=20

--Ye/IXUGKfZM9t2/H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZvV2VgAKCRA6cBh0uS2t
rG2DAP4vr17UaschZGwn9hvl6sZvGyw84ELpQebLqdV2Y1HGDAD/U0tzBa1q3Dsi
eBtfJQ/0whO20lu0vKIwenL5eQYxCwM=
=NPbX
-----END PGP SIGNATURE-----

--Ye/IXUGKfZM9t2/H--
