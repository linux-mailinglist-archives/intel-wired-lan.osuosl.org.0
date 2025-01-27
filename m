Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF793A1DC1F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 19:34:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BF754053D;
	Mon, 27 Jan 2025 18:34:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YYdKFZkov0OD; Mon, 27 Jan 2025 18:34:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1191640540
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738002887;
	bh=6panixb/x0os5ZapLWWRdFuJUYpBXz06VpJ2DjP+mog=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BXTzt8uaQvxiXLAZ8XRtyFn1yQDfd8uap3mpD34J/MiQCCxXPJllGonUPwDehXpmZ
	 L+N13/d21Bqn5iTkWophB2EImVSY0gzK/dOaG5oeg6CFs7+CCelRk1kAT8RCvGSl4S
	 FEoYVWxvVY+c/h3XuCmVf4Vlway3wL7fIVtA3l5G4X+H5hasUaow4MWETKfRMd/0H7
	 tTpBqUJPAglpbbK/wUGo9VwpUhTIVNHlV/qToeXVWp+HKe4z5QjhpIXUFwkC3A85IZ
	 irecOILVdKkLNY49MEVcLZyX2/SkS//uPGCzPLhE4Cab20LbCvPq+aCX7etwcxbUwh
	 mOdiKAHVB5JKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1191640540;
	Mon, 27 Jan 2025 18:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B1D20976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 18:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DAFC40400
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 18:34:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tFLLzMiCEF_e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 18:34:44 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 27 Jan 2025 18:34:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DF3BD40179
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF3BD40179
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-68982-2025012718293645e0437405f8ca5ece-1ltbas@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF3BD40179
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 18:34:42 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 2025012718293645e0437405f8ca5ece
 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 19:29:37 +0100
Message-ID: <221bb71f7d2464cd566e4a4110423ea56b173cf6.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: Jakub Kicinski <kuba@kernel.org>, Toke
 =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Cc: Stanislav Fomichev <stfomichev@gmail.com>, "Song, Yoong Siang"
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
Date: Mon, 27 Jan 2025 19:29:35 +0100
In-Reply-To: <20250127100441.0b11e1b8@kernel.org>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
 <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
 <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
 <Z5KdSlzmyCKUyXTn@mini-arch> <87bjvwqvtl.fsf@toke.dk>
 <20250127100441.0b11e1b8@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=6panixb/x0os5ZapLWWRdFuJUYpBXz06VpJ2DjP+mog=;
 b=A1zeyUFFCuD1/01IlvyP8a7nStl/yDefRzLmN46eDButuHBxshahsCwHerO9PK5bZUwBaa
 JjuZ5wN8wapbhPC7RQH833+3AZaTuy5Hg9Ykwfzz2qbR4tv9DDUEljsoo1ZPr0Oe7Ctz7mC+
 wTnT8ep8aZOaz2/vVNjJtHPEGReehUgGbNGdIiGu/viqY/zVDKE21ZWEMttrkvLeZcasGW7/
 bUjQ/l9tUym2erHZPCi2O/EuxulhwAgkra8vG+fKXFKYgN5pwU4OI0YQpq+ElJ/AqKR+EZmY
 GFEQX2KONvo3NAcX/+vsmHnehfI7eOIDOwh9xoWZpnQY3dJH4fvY2VUg==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=A1zeyUFF
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

On Mon, 2025-01-27 at 10:04 -0800, Jakub Kicinski wrote:
> On Fri, 24 Jan 2025 12:45:42 +0100 Toke H=C3=B8iland-J=C3=B8rgensen wrote=
:
> > > > I think there is no simple fix for that. That needs some discussion
> > > > around the "expectations" to the headroom / meta data area in front=
 of
> > > > the actual packet data. =20
> > >=20
> > > By 'simple' you mean without some new UAPI to signal the size of that
> > > 'reserved area' by the driver? I don't see any other easy way out as =
well :-/ =20
> >=20
> > Yeah, I don't think we can impose UAPI restrictions on the metadata are=
a
> > at this point. I guess the best we can do is to educate users that they
> > should call the timestamp kfunc before they modify the metadata?
>=20
> I may be misunderstanding the discussion, but I think the answer=20
> is that the driver must be fixed. The metadata-in-prepend problem
> also exists for simple adjust head use case, so it existed since
> early days of BPF. The driver should copy out (or parse) the metadata
> before it invokes the XDP prog. The nfp driver does that.

That would have to happen for each packet, without affecting ZC
performance. How can that be achieved?

So we have at least two drivers with that problem, igc + nfp.=20

My main point: Enabling and implementing ZC (zero copy) mode at one
hand, but then starting to copy the meta data for each packet doesn't
sound reasonable.
