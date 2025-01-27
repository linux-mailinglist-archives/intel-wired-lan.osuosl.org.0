Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 974E1A1DBD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 19:04:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B8C780A71;
	Mon, 27 Jan 2025 18:04:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOGkc9Rvwx2t; Mon, 27 Jan 2025 18:04:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEEDC81328
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738001089;
	bh=H/TAc9fGLArvc2BRtJuDGahSmYMiOfZlb3sEWjWRvdk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t/fM36ocux8hheCtwuvAuIhl+PI/oI6j79OBw9SgX4wjbV8OsvGP9m7NfllA7UlGR
	 gScEvIEIzycjOz25tRW0XFP7VG461RAlrLH2iEhTApaa7gaQ2kdlvwDKkp8ykmykMX
	 /X4s9gs4XSdPt0VskJH8AI2sNJVXlEih8ig3fZKFjIbdzNFkQ9Bzsh86YMioFhhkTX
	 YYkkoChb/tiUlWdgmmm//PKiYHwQG4jGRz8Fatsv0vpZCSxs010Y2cNENptHvOneBh
	 tdQrbz8XD/LfA48AsfgYgjAiE7hfUCewhUUgZjpud69db4jN2ZP/Ih2Lto57qn/eAV
	 WPA75vqv8PstA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEEDC81328;
	Mon, 27 Jan 2025 18:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F8F2AF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 18:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A6CC81328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 18:04:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id imDd-CzuT1BE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 18:04:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4037380A71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4037380A71
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4037380A71
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 18:04:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DDDC1A4195C;
 Mon, 27 Jan 2025 18:02:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F93BC4CED2;
 Mon, 27 Jan 2025 18:04:42 +0000 (UTC)
Date: Mon, 27 Jan 2025 10:04:41 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Cc: Stanislav Fomichev <stfomichev@gmail.com>, Florian Bezdeka
 <florian.bezdeka@siemens.com>, "Song, Yoong Siang"
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
Message-ID: <20250127100441.0b11e1b8@kernel.org>
In-Reply-To: <87bjvwqvtl.fsf@toke.dk>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
 <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
 <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
 <Z5KdSlzmyCKUyXTn@mini-arch> <87bjvwqvtl.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738001084;
 bh=H/TAc9fGLArvc2BRtJuDGahSmYMiOfZlb3sEWjWRvdk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pa1i/Uqj8nt3XnOgB4es4hq3WXqmWYJe+K+7Ypr1PhtZKUOMb+h3wCHGV8pGfCXWf
 V/jNdW1KJ0DAgBElQtp27kbynF6Xdb64ebEeDtcaavOt9nt3wH1DLI4Alev/ln14Z5
 8MnTCYVHpwTy5t3/GnzlRYIwYejiGooeUjDn1YgpVCFKG0fB11N85ZNFumQQbSP2kU
 WigdIP+MK+4Ziy2Bpk1ilyK4PIrxFTjdf+y0w2rgNqfwu0cfUToiNhOhF8q3sAM18+
 xPG+JfYTyHktRw2Gk07i3VSNMzu5ZS6RERP5ylIMJESoE+MWfyQ7kbBA6E5MKHoZY2
 EGi/oAiz8W3jA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pa1i/Uqj
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

On Fri, 24 Jan 2025 12:45:42 +0100 Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> >> I think there is no simple fix for that. That needs some discussion
> >> around the "expectations" to the headroom / meta data area in front of
> >> the actual packet data. =20
> >
> > By 'simple' you mean without some new UAPI to signal the size of that
> > 'reserved area' by the driver? I don't see any other easy way out as we=
ll :-/ =20
>=20
> Yeah, I don't think we can impose UAPI restrictions on the metadata area
> at this point. I guess the best we can do is to educate users that they
> should call the timestamp kfunc before they modify the metadata?

I may be misunderstanding the discussion, but I think the answer=20
is that the driver must be fixed. The metadata-in-prepend problem
also exists for simple adjust head use case, so it existed since
early days of BPF. The driver should copy out (or parse) the metadata
before it invokes the XDP prog. The nfp driver does that.
