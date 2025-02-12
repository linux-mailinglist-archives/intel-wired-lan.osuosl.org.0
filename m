Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A230A32EB5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 19:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41D15610A6;
	Wed, 12 Feb 2025 18:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ppf1oPtiEO7X; Wed, 12 Feb 2025 18:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F38B610C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739385029;
	bh=4u8fqNnahw2EuoqwM9x5FCu+gU7jWR3p4679Hr4GvkY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HiKElgVmT6KL7TTZTVt0hPFmLjuIigMJpqM8SH7Enq8/Llhoyz4/S5qFYUrROIDe0
	 Tfjcji9pQg3w9h+J+dPrcZa7Ro73AFN3RWKGWNk+8M1jKlveITfjjEbZDpWqK3jQMJ
	 XMZsOhEC8HlO7ukLL/uH1Q7+R/RbTipque+TZVO38dph+2PkHVzkOQyjv0wc04LMSk
	 QtHF03eUFEMGg4eJmGDM90M6tNWVBX2P3g/vHajRyZ1fgPf8qmsYqoJWGelczMzi+6
	 POCwsnyqjG4DDDE9HMirLuOWqwiN+lJyn7xnlHyWsM0xKiB6h2OGnAsrpOoECObkij
	 iJK72Z7Xl3EYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F38B610C5;
	Wed, 12 Feb 2025 18:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F9331C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E88B480E0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XfLPe_qRFgpI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 18:30:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2367F80E05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2367F80E05
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2367F80E05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:30:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 15FAFA408DA;
 Wed, 12 Feb 2025 18:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68581C4CEE2;
 Wed, 12 Feb 2025 18:30:24 +0000 (UTC)
Date: Wed, 12 Feb 2025 20:30:20 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal <ayush.sawal@chelsio.com>,
 Bharat Bhushan <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Jay Vosburgh <jv@jvosburgh.net>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-rdma@vger.kernel.org,
 Louis Peens <louis.peens@corigine.com>, netdev@vger.kernel.org,
 oss-drivers@corigine.com, Paolo Abeni <pabeni@redhat.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
Message-ID: <20250212183020.GJ17863@unreal>
References: <cover.1738778580.git.leon@kernel.org>
 <dcadf7c144207017104657f85d512889a2d1a09e.1738778580.git.leon@kernel.org>
 <Z6yMgPSfPzgGHTkD@gauss3.secunet.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6yMgPSfPzgGHTkD@gauss3.secunet.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739385025;
 bh=IwYdqSQJRgLMoeK/GduEZ3/5ddSRX0H7Vbfl6aPdU38=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hqwa+ufnSv0IcEn77bHXu6UWAhbLM9qwv4zwh4whoZENjzMlpT3DQrM5ng9LpHoPA
 J3ZtEZtegITE0Z30rG9vSqDjJTFUJ8M6Ad2WPXj2nqBbQu4uuRDOeWd5q04Kc4fzbX
 pliIvYE/3XLJhBtBlRni1rbJLOgqD7sg0XiiCI0OyXlpUJOjZaDSHYmV+RIYZbgIrt
 YqkRZbETkwETttlGxPI6oJ+KCpbyZYDyjf5B4gHGZknk+nguQFLazHEkIi4KQxnsfP
 s55AEti2WyAo5wvzb4aOz9Q1t/J5b0b2apm71AXEkzK3GIotVmkSlrNBuS87HWJf+E
 DQauwx8FDeysA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hqwa+ufn
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

On Wed, Feb 12, 2025 at 12:56:48PM +0100, Steffen Klassert wrote:
> On Wed, Feb 05, 2025 at 08:20:21PM +0200, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > SA replay mode is initialized differently for user-space and
> > kernel-space users, but the call to xfrm_init_replay() existed in
> > common path with boolean protection. That caused to situation where
> > we have two different function orders.
> > 
> > So let's rewrite the SA initialization flow to have same order for
> > both in-kernel and user-space callers.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  include/net/xfrm.h    |  3 +--
> >  net/xfrm/xfrm_state.c | 22 ++++++++++------------
> >  net/xfrm/xfrm_user.c  |  2 +-
> >  3 files changed, 12 insertions(+), 15 deletions(-)
> > 
> > diff --git a/include/net/xfrm.h b/include/net/xfrm.h
> > index 28355a5be5b9..58f8f7661ec4 100644
> > --- a/include/net/xfrm.h
> > +++ b/include/net/xfrm.h
> > @@ -1770,8 +1770,7 @@ void xfrm_spd_getinfo(struct net *net, struct xfrmk_spdinfo *si);
> >  u32 xfrm_replay_seqhi(struct xfrm_state *x, __be32 net_seq);
> >  int xfrm_init_replay(struct xfrm_state *x, struct netlink_ext_ack *extack);
> >  u32 xfrm_state_mtu(struct xfrm_state *x, int mtu);
> > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> > -		      struct netlink_ext_ack *extack);
> > +int __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack);
> >  int xfrm_init_state(struct xfrm_state *x);
> >  int xfrm_input(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_type);
> >  int xfrm_input_resume(struct sk_buff *skb, int nexthdr);
> > diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
> > index 568fe8df7741..42799b0946a3 100644
> > --- a/net/xfrm/xfrm_state.c
> > +++ b/net/xfrm/xfrm_state.c
> > @@ -3120,8 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
> >  }
> >  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
> >  
> > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> > -		      struct netlink_ext_ack *extack)
> > +int __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack)
> 
> The whole point of having __xfrm_init_state was to
> sepatate codepaths that need init_replay and those
> who don't need it. That was a bandaid for something,
> unfortunately I don't remenber for what.
> 
> If we don't need that anymore, maybe we can merge
> __xfrm_init_state into xfrm_init_state, as it was
> before.

Main difference between __xfrm_init_state and xfrm_init_state is that
latter is called without extack, which doesn't exist in kernel path.

E.g  xfrm_init_state(struct xfrm_state *x) vs. __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack).
So if we merge them, we will need to change all xfrm_init_state()
callers to provide extack == NULL.

IMHO, such churn of changing xfrm_init_state() callers is not worth it for now.

Thanks

> 
> The rest of the patchset looks OK to me.
