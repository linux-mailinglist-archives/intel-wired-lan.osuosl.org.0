Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AF9B9214E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 17:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42DA261B18;
	Mon, 22 Sep 2025 15:55:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S_4x0Ty_1h1n; Mon, 22 Sep 2025 15:55:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B30CE61B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758556532;
	bh=mBnE5M+NWsyloUtiCRU9Kd9luyFfmyz6BUHmx1Dlbc0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nkmvb4pt+iuKu7XQSaQGWZvVlQ9Csy9rcstDRLONljPbyzJ7Na+S/tn4u6x5HxNTm
	 dlzykhH362YH/C1cAjq3f0CPbK3IJbcn+lwWtKAsZFCnUrCgfR+RZmPtk6DNNsCfKQ
	 sJiLj+/FqRr8jb2Z2NmIQSEuTi5cmw7Ztsr8y9fZ2n2HI3Jm6zrTSQlIoyu7PiabTx
	 RGa0tkIFkHsIcSeVMfTZqD8V9VkwlloeA6MC8QlYuen58I9Ab4m+j0cgJd/LBrEJAe
	 fLuxELx9ubqUvrI0/YPnqkE1jwn2zN3Tr8R4xpPNwjHnD8PPGPUxTX01VK04Cor6s6
	 KrwNL1deYQK6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B30CE61B15;
	Mon, 22 Sep 2025 15:55:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CC438116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9BED842EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WT4-ut_-cB4e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 15:55:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 08D2A84562
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08D2A84562
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08D2A84562
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:55:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E575F60200;
 Mon, 22 Sep 2025 15:55:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19994C4CEF0;
 Mon, 22 Sep 2025 15:55:27 +0000 (UTC)
Date: Mon, 22 Sep 2025 17:55:25 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
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
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNFxbVqzM1VhxD_G@lore-desk>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
 <20250920-xdp-meta-rxcksum-v1-1-35e76a8a84e7@kernel.org>
 <aNFtljcYeLK3uVo3@mini-arch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="bRMqdsBuSfWUVEkl"
Content-Disposition: inline
In-Reply-To: <aNFtljcYeLK3uVo3@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758556527;
 bh=Onf3CcsEJl0ngxXMEOYfC15DjUX6QEH0Zyjt05mjWVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CqQf93gWSxKJStGz129YFX6KAQwrxTlN5QqPXhCPOyO3gDva8XoByKeTQzuv5anyr
 zLtDABiPBw0iutIDE1ciQelQjDWj4pbHa94uLii2EtmR9LqJDYeZRqdthdLta6AvRo
 /EFlKzIzi/GUIZfQ8DUscmCVWOzfHs6zo7BE8gk6ZWHDnuMuZAVFE+LJ8dzaAkh+u5
 dyExzz37ACD7g3U75rBi6hH87mw1VetRNWkuixHOj+LaFNL7R0GlZ5pp86Mq9pI1ud
 2Gi+QytZJ8Gc2HxWLMaiSQMTa0z9j5lqR8rXoFtgVnMh/0EPxrbRbm5VMvO9R6OOWM
 wcMPEAeusSm0w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CqQf93gW
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next 1/6] netlink: specs: Add
 XDP RX checksum capability to XDP metadata specs
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


--bRMqdsBuSfWUVEkl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sep 22, Stanislav Fomichev wrote:
> On 09/20, Lorenzo Bianconi wrote:
> > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > checksum will be use by devices capable of exposing receive checksum
> > result via bpf_xdp_metadata_rx_checksum().
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >  Documentation/netlink/specs/netdev.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/ne=
tlink/specs/netdev.yaml
> > index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee35=
48098b0c933fd39a4 100644
> > --- a/Documentation/netlink/specs/netdev.yaml
> > +++ b/Documentation/netlink/specs/netdev.yaml
> > @@ -61,6 +61,11 @@ definitions:
> >          doc: |
> >            Device is capable of exposing receive packet VLAN tag via
> >            bpf_xdp_metadata_rx_vlan_tag().
> > +      -
> > +        name: checksum
> > +        doc: |
> > +          Device is capable of exposing receive checksum result via
> > +          bpf_xdp_metadata_rx_checksum().
> >    -
> >      type: flags
> >      name: xsk-flags
>=20
> nit: let's fold it into patch 2? Will be easier to git blame the
> feature..

ack, I will do it posting a proper series.

Regards,
Lorenzo

--bRMqdsBuSfWUVEkl
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaNFxbQAKCRA6cBh0uS2t
rNMHAQCZQ8ZRjtV8RUnz2vY6o7/MqAASpGYpoP/69OTl9wjz7QEA0EogEhTfo2Hk
xMcNGq1A1zWlgoqIzDCE3KQhy/c4BgA=
=RRWF
-----END PGP SIGNATURE-----

--bRMqdsBuSfWUVEkl--
