Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7A9A35C3F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 12:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 666BE6FBE5;
	Fri, 14 Feb 2025 11:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9XQ70owPf-Ao; Fri, 14 Feb 2025 11:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3EFB6FBD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739531687;
	bh=/89jGhK6vPerbydEanGr47SknZZAd9+GUvMvlUhQ0m8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bGnVRfSp45xxP8oBkBif1WOMYDk/wSI5JFOoxu0X2CtSRQXixW9jBNQaX7/LFYZ9/
	 j7atHkag5eEVqDN5cHz1lL0ctbhtEcrNyS5gPX8KxEiYxSWd7dOb1UXORQCL8Q0por
	 VO3jfd74ypdoDdefjD0ZzaKIJlClpk3aojZcHArcT543bxePh/uLkeFlUxtMd3GAoD
	 bq3hyhZkWAc8ROl6PQiV5Z+ujmRCH+RhMcUsPFZM4f09N2HUtT4LHXQv2u/S+RKakt
	 R50PzFW61WFGAFRQdzE1r5vRI1ESLlt+g9yqQ6Wkm4q5s+HXDa0dxIdhU0hyWvUcmh
	 ozxi8boXhE/XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3EFB6FBD3;
	Fri, 14 Feb 2025 11:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75ED3C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 11:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65A906FB96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 11:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZvCw6pqaPgM8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 11:14:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 811E36FB21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 811E36FB21
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 811E36FB21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 11:14:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8939A5C56A5;
 Fri, 14 Feb 2025 11:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37094C4AF0B;
 Fri, 14 Feb 2025 11:14:42 +0000 (UTC)
Received: from phl-compute-10.internal (phl-compute-10.phl.internal
 [10.202.2.50])
 by mailfauth.phl.internal (Postfix) with ESMTP id 171CB1200043;
 Fri, 14 Feb 2025 06:14:41 -0500 (EST)
Received: from phl-imap-12 ([10.202.2.86])
 by phl-compute-10.internal (MEProxy); Fri, 14 Feb 2025 06:14:41 -0500
X-ME-Sender: <xms:oCWvZ55JMyEB0-iKQan1E9T3MM_3JPKNsLvNG5kY504jtsGeaiUYNg>
 <xme:oCWvZ25omGA3WGMsS319f9OFrsCIETmuYk1Fscn0L4nBtM6nxd5zdUmWTCfa2E3b2
 4UKxhxjTMvr6e6-D18>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdegleehtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdfnvghonhcutfhomhgrnhhovhhskhihfdcuoehlvghonheskhgvrh
 hnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeejvefflefgledvgfevvdetleehhfdv
 ffehgeffkeevleeiveefjeetieelueeuvdenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehlvghonhdomhgvshhmthhprghuthhhphgvrhhsohhn
 rghlihhthidquddvfedtheefleekgedqvdejjeeljeejvdekqdhlvghonheppehkvghrnh
 gvlhdrohhrgheslhgvohhnrdhnuhdpnhgspghrtghpthhtohepvdeipdhmohguvgepshhm
 thhpohhuthdprhgtphhtthhopegrhihushhhrdhsrgifrghlsegthhgvlhhsihhordgtoh
 hmpdhrtghpthhtohepsghhrghrrghtsegthhgvlhhsihhordgtohhmpdhrtghpthhtohep
 lhhouhhishdrphgvvghnshestghorhhighhinhgvrdgtohhmpdhrtghpthhtohepohhssh
 dqughrihhvvghrshestghorhhighhinhgvrdgtohhmpdhrtghpthhtohephhgvrhgsvghr
 thesghhonhguohhrrdgrphgrnhgrrdhorhhgrdgruhdprhgtphhtthhopegvughumhgrii
 gvthesghhoohhglhgvrdgtohhmpdhrtghpthhtoheprghnthhhohhnhidrlhdrnhhguhih
 vghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepphhriigvmhihshhlrgifrdhkihhtsh
 iivghlsehinhhtvghlrdgtohhmpdhrtghpthhtohepjhhvsehjvhhoshgsuhhrghhhrdhn
 vght
X-ME-Proxy: <xmx:oCWvZwejf68vGpUuT6T7bTrCY5Ugkt3VDZeu_KYFa2RZHm6qvbbxrQ>
 <xmx:oSWvZyIgKAdrOLr1Z8BNvhcMTp1ABJldb16i1iHxLswvvRbOqOnHsQ>
 <xmx:oSWvZ9L-j3DB9bHYdkC0urq4nHzTOvPab5ahAM9w5DM1QZPwfYvc5A>
 <xmx:oSWvZ7zHvtJ8SfOYb8GbeCTLnkK9XIfnHMzeRa5-cPcyqDFWOBfr8Q>
 <xmx:oSWvZ5KEm76cXOh3dQwdghf4O5W92GjuCBf-3NT_mJr-ZJPPG59_1GGY>
Feedback-ID: i927946fb:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id DF44F1C20066; Fri, 14 Feb 2025 06:14:40 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 14 Feb 2025 13:14:21 +0200
From: "Leon Romanovsky" <leon@kernel.org>
To: "Steffen Klassert" <steffen.klassert@secunet.com>
Cc: "Andrew Lunn" <andrew+netdev@lunn.ch>,
 "Ayush Sawal" <ayush.sawal@chelsio.com>,
 "Bharat Bhushan" <bbhushan2@marvell.com>,
 "Eric Dumazet" <edumazet@google.com>, "Geetha sowjanya" <gakula@marvell.com>, 
 hariprasad <hkelam@marvell.com>, "Herbert Xu" <herbert@gondor.apana.org.au>,
 intel-wired-lan@lists.osuosl.org, "Jakub Kicinski" <kuba@kernel.org>,
 "Jay Vosburgh" <jv@jvosburgh.net>, "Jonathan Corbet" <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-rdma@vger.kernel.org,
 "Louis Peens" <louis.peens@corigine.com>, netdev@vger.kernel.org,
 oss-drivers@corigine.com, "Paolo Abeni" <pabeni@redhat.com>,
 "Potnuri Bharat Teja" <bharat@chelsio.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>,
 "Saeed Mahameed" <saeedm@nvidia.com>,
 "Subbaraya Sundeep" <sbhatta@marvell.com>,
 "Sunil Goutham" <sgoutham@marvell.com>, "Tariq Toukan" <tariqt@nvidia.com>,
 "Tony Nguyen" <anthony.l.nguyen@intel.com>, "Ilia Lin" <ilia.lin@kernel.org>
Message-Id: <a2157143-4adc-4551-b910-d9d99e192487@app.fastmail.com>
In-Reply-To: <Z68M/4jka5FwrvLV@gauss3.secunet.de>
References: <cover.1738778580.git.leon@kernel.org>
 <dcadf7c144207017104657f85d512889a2d1a09e.1738778580.git.leon@kernel.org>
 <Z6yMgPSfPzgGHTkD@gauss3.secunet.de> <20250212183020.GJ17863@unreal>
 <Z68M/4jka5FwrvLV@gauss3.secunet.de>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739531682;
 bh=h0lJOOGwOy62qvljHZCMnbxB3nLk6xpE2zTPjM/UO1w=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=ocH3TY7oh6QnyTnSMB7GtnWO83350elHqsUkln5QUOo8dAUEGytA2WwFF0q5K6162
 ywjf7zcXMqx9U3D0wvge8YscwLu08ZEjoPw9vQxFzaT3BNUzEJ9Vw7xZjVb0+opSI6
 A5YbdOiKZqNOq8VIOFh6Ib304NBtIrQaruL4tczO/pJysiKnfpj+ETJQz5kEGFd2Jp
 IVegqM+4QUUKdGgjDW7jfSEkGFuZe5HQSolx8ScwMpLBXkPh7eH9Vs0l+qf1qbXnFK
 /ulv9uGsVI0dcT2Y0nn/xJmPgjsQ/YIIKhGHrCH3c9DCegNMajwiEDjRutjwcEySEk
 f9Z8y0RuZY+Vg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ocH3TY7o
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 2/5] xfrm: simplify SA
 initialization routine
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



On Fri, Feb 14, 2025, at 11:29, Steffen Klassert wrote:
> On Wed, Feb 12, 2025 at 08:30:20PM +0200, Leon Romanovsky wrote:
>> On Wed, Feb 12, 2025 at 12:56:48PM +0100, Steffen Klassert wrote:
>> > On Wed, Feb 05, 2025 at 08:20:21PM +0200, Leon Romanovsky wrote:
>> > > From: Leon Romanovsky <leonro@nvidia.com>
>> > > 
>> > > SA replay mode is initialized differently for user-space and
>> > > kernel-space users, but the call to xfrm_init_replay() existed in
>> > > common path with boolean protection. That caused to situation where
>> > > we have two different function orders.
>> > > 
>> > > So let's rewrite the SA initialization flow to have same order for
>> > > both in-kernel and user-space callers.
>> > > 
>> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>> > > ---
>> > >  include/net/xfrm.h    |  3 +--
>> > >  net/xfrm/xfrm_state.c | 22 ++++++++++------------
>> > >  net/xfrm/xfrm_user.c  |  2 +-
>> > >  3 files changed, 12 insertions(+), 15 deletions(-)
>> > > 
>> > > diff --git a/include/net/xfrm.h b/include/net/xfrm.h
>> > > index 28355a5be5b9..58f8f7661ec4 100644
>> > > --- a/include/net/xfrm.h
>> > > +++ b/include/net/xfrm.h
>> > > @@ -1770,8 +1770,7 @@ void xfrm_spd_getinfo(struct net *net, struct xfrmk_spdinfo *si);
>> > >  u32 xfrm_replay_seqhi(struct xfrm_state *x, __be32 net_seq);
>> > >  int xfrm_init_replay(struct xfrm_state *x, struct netlink_ext_ack *extack);
>> > >  u32 xfrm_state_mtu(struct xfrm_state *x, int mtu);
>> > > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
>> > > -		      struct netlink_ext_ack *extack);
>> > > +int __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack);
>> > >  int xfrm_init_state(struct xfrm_state *x);
>> > >  int xfrm_input(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_type);
>> > >  int xfrm_input_resume(struct sk_buff *skb, int nexthdr);
>> > > diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
>> > > index 568fe8df7741..42799b0946a3 100644
>> > > --- a/net/xfrm/xfrm_state.c
>> > > +++ b/net/xfrm/xfrm_state.c
>> > > @@ -3120,8 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
>> > >  }
>> > >  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
>> > >  
>> > > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
>> > > -		      struct netlink_ext_ack *extack)
>> > > +int __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack)
>> > 
>> > The whole point of having __xfrm_init_state was to
>> > sepatate codepaths that need init_replay and those
>> > who don't need it. That was a bandaid for something,
>> > unfortunately I don't remenber for what.
>> > 
>> > If we don't need that anymore, maybe we can merge
>> > __xfrm_init_state into xfrm_init_state, as it was
>> > before.
>> 
>> Main difference between __xfrm_init_state and xfrm_init_state is that
>> latter is called without extack, which doesn't exist in kernel path.
>
> That split happened ~ 15 years ago, we did not have extack back than.
> But I'm also ok with keeping it if extack is a reason for it.
>
> Do you plan to respin, or should I take the patchset as is?

The best way will be if you can take this series as is.

>
> Thanks!
