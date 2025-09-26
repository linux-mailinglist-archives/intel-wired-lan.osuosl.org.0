Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4724BA3B6D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 14:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EBD984B73;
	Fri, 26 Sep 2025 12:55:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3WmGPH5cCrPQ; Fri, 26 Sep 2025 12:55:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D366A84B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758891356;
	bh=dbMv3p8FiJahh5zPkFgPHxN3Uni2wC7w9k04H4hqTzY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oUFjhvWoG4CdYF3eeMdru/TQ1+v3lLcFECOMUTWkM1AjjrWfK7JmLVWWCxcZppkpf
	 8th4/HN5DJ/up60/xfdeYiYPdxlayZUp1ekwpS9p1LeVL4rjejQ84ecClj85Cmd0Mi
	 yqgdnRaUyr2sRHG9hGQYj1PMok+Pk0amTEQnY1R5pOqHTHhhUXakseLKeheEphT1FN
	 npPuYNB6hprlfKKsSIERhyobm8TcHjgAhCky93ult7fn88ew3T4F+9a0ue+bzhj+07
	 P+Caix/CSKPKhkg2KS85Axdyx/aHCD1Ntf3mKp7lliS1cGQyBB7bp4m40RoGBBguOt
	 Cp8i82aQ9lBVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D366A84B69;
	Fri, 26 Sep 2025 12:55:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3DDA198
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 12:55:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9B4C42093
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 12:55:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DyAvlamaaB8M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 12:55:53 +0000 (UTC)
X-Greylist: delayed 98701 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 26 Sep 2025 12:55:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C07F441FDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C07F441FDD
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C07F441FDD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 12:55:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E34C5417E9;
 Fri, 26 Sep 2025 12:55:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 467C7C4CEF4;
 Fri, 26 Sep 2025 12:55:52 +0000 (UTC)
Date: Fri, 26 Sep 2025 14:55:50 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 kernel-team <kernel-team@cloudflare.com>
Message-ID: <aNaNVl13LV_HWbP3@lore-desk>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <87bjmy508n.fsf@cloudflare.com> <aNUb2rB8QAJj-aUX@lore-desk>
 <87tt0q3ik9.fsf@cloudflare.com>
 <fdb8a364-a12d-4c1f-9591-9dac3e27b321@kernel.org>
 <87ldm12zoq.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="+8nn4MSiO0Z4/+w5"
Content-Disposition: inline
In-Reply-To: <87ldm12zoq.fsf@cloudflare.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758891352;
 bh=duSa904xzX7uTYjxszUBwrwGR3o5pCjjI0NEhThlExo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AIwrH/FwH+7LYFdACvS1oqcYl+azT3xaZoOGIaQZlPbaYUtrM/14fw9uvvPM2LUMa
 U0T10X4/wNwuq2T2+KbyQlPSJiqfX9/UZJF9HhbVQ9kKHH757ekObZGQsjnxhSJTM2
 ORYD1PKdQC63B5kujlklKMPuaVbagyRm5dfu1rnfBFP30KeTsNwizF2pnEZHRKnSu9
 /7FQRL1GJhqUq7gnAV3GvyU+h2kL/qQ1LfT3PctsoMjLFqbJhQ13ZHaH63Er7O2c7v
 JwHzUYVGcQLk684+s9sJN+WY/iPaGIfn7Cv1iNaOdRpOq2K2fXO1bR44fIbLlfnMKz
 4wJ4ZVHvY4Ssw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AIwrH/Fw
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--+8nn4MSiO0Z4/+w5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Fri, Sep 26, 2025 at 01:45 PM +02, Jesper Dangaard Brouer wrote:
> > On 25/09/2025 12.58, Jakub Sitnicki wrote:
> >> On Thu, Sep 25, 2025 at 12:39 PM +02, Lorenzo Bianconi wrote:
> >>>> On Thu, Sep 25, 2025 at 11:30 AM +02, Lorenzo Bianconi wrote:
> >>>>> Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the=
 HW
> >>>>> RX cheksum results in the eBPF program binded to the NIC.
> >>>>> Implement xmo_rx_checksum callback for veth and ice drivers.
> >>>>
> >>>> What are going to do with HW RX checksum once XDP prog can access it?
> >>>
> >>> I guess there are multiple use-cases for bpf_xdp_metadata_rx_checksum=
()
> >>> kfunc. The first the I have in mind is when packets are received by a=
n af_xdp
> >>> application. In this case I think we currently do not have any way to=
 check if
> >>> the packet checksum is correct, right?
> >>> I think Jesper has other use-cases in mind, I will let him comment
> >>> here.
> >> Can you share more details on what the AF_XDP application would that
> >> info?
> >
> > Today the AF_XDP application need to verify the packet checksum, as it
> > gets raw xdp_frame packets directly from hardware (no layer in-between
> > checked this).  Getting the RX-checksum validation from hardware info
> > will be very useful for AF_XDP, as it can avoid doing this in software.
> >
> >
> >> Regarding the use cases that Jesper is trying to unlock, as things sta=
nd
> >> we don't have a way, or an agreement on how to inject/propagate even t=
he
> >> already existing NIC hints back into the network stack.
> >>=20
> >
> > This patchset have its own merits and shouldn't be connected with my
> > use-case of (optionally) including hardware offloads in the xdp_frame.
> > Sure, I obviously also want this RX-checksum added, but this patchset is
> > useful on it's own.
> >
> >> Hence my question - why do we want to expose another NIC hint to XDP
> >> that we can't consume in any useful way yet?
> >>=20
> >
> > Well here *are* useful ways to use this RX-checksum info on its own.
> > See my explanation of the DDoS use-case here[1] in other email.
> >
> > Cloudflare actually also have a concrete use-case for needing this.
> > Our XDP based Unimog[2] load-balancer (and DDoS) encapsulate all
> > packets when they are XDP_TX forwarded. The encap receiving NIC lacking
> > inner-packet checksum validation make us loose this hardware offload.
> > This would allow us to save some checksum validation or even just DDOS =
drop
> > based on hardware checksum validation prior to encap (as in [1]).
>=20
> Thanks for filling in the blanks, Jesper. That's the context that I was
> missing.
>=20
> Lorenzo, this motivaton seems worth including in the cover letter.

ack, I will do.

Regards,
Lorenzo


--+8nn4MSiO0Z4/+w5
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaNaNVgAKCRA6cBh0uS2t
rL3XAQD8GN9wvWAXagWwB1Sz8I/terYM2elqSFXzjHbVzB4I9gD+K7WMUCpKHc20
3uWnZNrOOHV0R5Qjh7lK1nf04Gg9kQk=
=UrqH
-----END PGP SIGNATURE-----

--+8nn4MSiO0Z4/+w5--
