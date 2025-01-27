Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEFFA1DCA2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 20:20:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D285406C4;
	Mon, 27 Jan 2025 19:20:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J0pr4h6qgyF9; Mon, 27 Jan 2025 19:20:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EAA7402B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738005654;
	bh=YeJVXMPKQVT2qsyx36ahTAqXBMoa9oYa3q1Abfi3NGk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zDzuG/wigWLkqAyVtwJgFm0Tr1mq6h1xpSRDUgvTHMDRacozk4jC6n7r94+WsVwmi
	 Xoy9DoiWveauzbTWqFOvvZ0R9dA/PoVuPJK79nqYtBlZk84AuE/Cs+liEGSDSEC2//
	 GZpTH4SsiO/p54UXIuN6N/qYXQekFlnEdADWaszdK7uCu/ZH/OeXpDcfSH7o2wr5vr
	 GROwQRs0zvC+gzKHMusZcfjm+2VGz0cDnt9d1KK9w2CH8OBvgPceCxFpaOer85Vbiy
	 R42QSDWr+7D95M2GXCYGtYI6lYCXC+vMZswGxwyiuksXoYLmNJF3K7TGlgdmzT67yq
	 8thnLnGFmCCdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EAA7402B1;
	Mon, 27 Jan 2025 19:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C856E976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 19:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5E6040179
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 19:20:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UWXbL4SYV55O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 19:20:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C8DB40259
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C8DB40259
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C8DB40259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 19:20:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D5F8FA419E9;
 Mon, 27 Jan 2025 19:19:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E1C8C4CED2;
 Mon, 27 Jan 2025 19:20:46 +0000 (UTC)
Date: Mon, 27 Jan 2025 11:20:45 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Florian Bezdeka <florian.bezdeka@siemens.com>
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?=  <toke@redhat.com>,
 Stanislav Fomichev <stfomichev@gmail.com>, "Song, Yoong Siang"
 <yoong.siang.song@intel.com>, "Bouska, Zdenek" <zdenek.bouska@siemens.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Willem de Bruijn <willemb@google.com>, Donald Hunter
 <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Bjorn Topel
 <bjorn@kernel.org>, "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Jonathan Lemon
 <jonathan.lemon@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, "Damato, Joe" <jdamato@fastly.com>, Stanislav
 Fomichev <sdf@fomichev.me>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, Mina
 Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP
 Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "xdp-hints@xdp-project.net"
 <xdp-hints@xdp-project.net>
Message-ID: <20250127112045.7e3997fc@kernel.org>
In-Reply-To: <221bb71f7d2464cd566e4a4110423ea56b173cf6.camel@siemens.com>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
 <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
 <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
 <Z5KdSlzmyCKUyXTn@mini-arch> <87bjvwqvtl.fsf@toke.dk>
 <20250127100441.0b11e1b8@kernel.org>
 <221bb71f7d2464cd566e4a4110423ea56b173cf6.camel@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738005648;
 bh=YeJVXMPKQVT2qsyx36ahTAqXBMoa9oYa3q1Abfi3NGk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X/EKy9OgP8a/LbZ2+lTRgcEO98s5Q0e1iAJTMz4l9hD2J3dHrzjvTTRln8GGKfwMx
 gXoEPDaOxs1078NbidR7ETR3lQXPuvQj6o97rpdgTt5nmVX7CnW9kVpybWiq52kcjO
 PnQSV0eQyFqEIM6fwU09ysiQVyygIu5mQBoh6wcWh00yGxuCAqMy84r6TrUt3JqcGQ
 Ige7cvkgY8D7eTqbUJ4smnrzZK9K6t1/No66UKwMjSznrq7Izo3TDhCW3hQRaV2U8A
 EL0zrywHlI0Sj+Y7YMn+op7H7PbtXeAbIz0riCWqAKG/P6SGefd57yFL550KIAwfnZ
 TbJou8dble8Xw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=X/EKy9Og
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next v6 4/4] igc:
 Add launch time support to XDP ZC
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

On Mon, 27 Jan 2025 19:29:35 +0100 Florian Bezdeka wrote:
> > > Yeah, I don't think we can impose UAPI restrictions on the metadata a=
rea
> > > at this point. I guess the best we can do is to educate users that th=
ey
> > > should call the timestamp kfunc before they modify the metadata? =20
> >=20
> > I may be misunderstanding the discussion, but I think the answer=20
> > is that the driver must be fixed. The metadata-in-prepend problem
> > also exists for simple adjust head use case, so it existed since
> > early days of BPF. The driver should copy out (or parse) the metadata
> > before it invokes the XDP prog. The nfp driver does that. =20
>=20
> That would have to happen for each packet, without affecting ZC
> performance. How can that be achieved?

Are you asking how we can make it not affect performance?
We should really see some benchmarks before we say that it is okay
to sacrifice correctness..

> So we have at least two drivers with that problem, igc + nfp.=20

To be clear nfp copies the HW metadata out before calling XDP.
So XDP program can do whatever it wants to the space before the packet.

> My main point: Enabling and implementing ZC (zero copy) mode at one
> hand, but then starting to copy the meta data for each packet doesn't
> sound reasonable.

=F0=9F=A4=B7=EF=B8=8F
