Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39728A35A5C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:29:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E589D81046;
	Fri, 14 Feb 2025 09:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id THuz11fWDoLd; Fri, 14 Feb 2025 09:29:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2439980FA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739525385;
	bh=fhrJLVONWyN7lozy7dAfShs/BOPSfryeG22TLnl5EA0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VeUfXgLsqyd6FZeig/ixuQHxgR7WueMFzmV8XMlUjWHbBGkj1gye92sq9hYuz2g21
	 1Be0douxFYQmqIfozrq1hEj+2futskd3W5Smt/tAKEQKNDBX7EzYqc8aqT/wk+2jna
	 Yf3CW9G8+AbsDOVUW37XIdmVZ4KCFzYIIjvmtTewoSD55xjBnlRn/tkmYqqHVrqdjV
	 6k/ek8LrNaIic7BPTILK9XYklR6qraIUXzqSc6jrLTel5aPmj3xOdxtR8k/Io185hx
	 djFwMQ6X8uFFR4wHjxKBJCNpsCtGWhIRdRC6FCWOtluIA91414dp8kTH9lSJfhuMkr
	 GaD+/teVHrMDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2439980FA4;
	Fri, 14 Feb 2025 09:29:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0579BC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E85F940104
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cx2M9yXbBank for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:29:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=mx1.secunet.com; envelope-from=steffen.klassert@secunet.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07A3E4012F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07A3E4012F
Received: from mx1.secunet.com (mx1.secunet.com [62.96.220.36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07A3E4012F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mx1.secunet.com (Postfix) with ESMTP id 8E8DD207BE;
 Fri, 14 Feb 2025 10:29:37 +0100 (CET)
X-Virus-Scanned: by secunet
Received: from mx1.secunet.com ([127.0.0.1])
 by localhost (mx1.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3pmxnVF2Uw53; Fri, 14 Feb 2025 10:29:36 +0100 (CET)
Received: from cas-essen-02.secunet.de (rl2.secunet.de [10.53.40.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.secunet.com (Postfix) with ESMTPS id D702820561;
 Fri, 14 Feb 2025 10:29:36 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.secunet.com D702820561
Received: from mbx-essen-02.secunet.de (10.53.40.198) by
 cas-essen-02.secunet.de (10.53.40.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Feb 2025 10:29:36 +0100
Received: from gauss2.secunet.de (10.182.7.193) by mbx-essen-02.secunet.de
 (10.53.40.198) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 14 Feb
 2025 10:29:36 +0100
Received: by gauss2.secunet.de (Postfix, from userid 1000)
 id EAE3E31840A6; Fri, 14 Feb 2025 10:29:35 +0100 (CET)
Date: Fri, 14 Feb 2025 10:29:35 +0100
From: Steffen Klassert <steffen.klassert@secunet.com>
To: Leon Romanovsky <leon@kernel.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal
 <ayush.sawal@chelsio.com>, Bharat Bhushan <bbhushan2@marvell.com>, "Eric
 Dumazet" <edumazet@google.com>, Geetha sowjanya <gakula@marvell.com>,
 hariprasad <hkelam@marvell.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Jay
 Vosburgh" <jv@jvosburgh.net>, Jonathan Corbet <corbet@lwn.net>,
 <linux-doc@vger.kernel.org>, <linux-rdma@vger.kernel.org>, Louis Peens
 <louis.peens@corigine.com>, <netdev@vger.kernel.org>,
 <oss-drivers@corigine.com>, Paolo Abeni <pabeni@redhat.com>, "Potnuri Bharat
 Teja" <bharat@chelsio.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
Message-ID: <Z68M/4jka5FwrvLV@gauss3.secunet.de>
References: <cover.1738778580.git.leon@kernel.org>
 <dcadf7c144207017104657f85d512889a2d1a09e.1738778580.git.leon@kernel.org>
 <Z6yMgPSfPzgGHTkD@gauss3.secunet.de>
 <20250212183020.GJ17863@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250212183020.GJ17863@unreal>
X-ClientProxiedBy: cas-essen-02.secunet.de (10.53.40.202) To
 mbx-essen-02.secunet.de (10.53.40.198)
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=secunet.com; s=202301; t=1739525376;
 bh=fhrJLVONWyN7lozy7dAfShs/BOPSfryeG22TLnl5EA0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To:From;
 b=nwIkIr6/lFy/+/yC8ca/y5f7qR7zJgV70vLW7VuHr60QRWAKT5o7XJUFrbjbVj4Zz
 yPOxD5YzQP0kXHxe9O9p/8oT0Bgtg0atJtSj0/6u0ysLHaAfCkfo1RAu17uvyTZxtn
 oV8ReSd6wdie7LLjmkIb3P0cEV4L5itbMXHvUyqXfaA/ZPV2XlFnTo1Xjt9JV+mtIs
 MNAmk4RrYST8wIVXuSrDi8irJgTXUvLXn8AjIewO2hcJrfx8IRpZ/fB3H3/eWBaqa7
 tk4H838MtBHD5p+CQF+qLAiwo8nOwjVZxVGWNW63BX0+I/PJJ4hhThu6vSByIGHkhN
 xALe/QFZSanPQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=secunet.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=secunet.com header.i=@secunet.com header.a=rsa-sha256
 header.s=202301 header.b=nwIkIr6/
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

On Wed, Feb 12, 2025 at 08:30:20PM +0200, Leon Romanovsky wrote:
> On Wed, Feb 12, 2025 at 12:56:48PM +0100, Steffen Klassert wrote:
> > On Wed, Feb 05, 2025 at 08:20:21PM +0200, Leon Romanovsky wrote:
> > > From: Leon Romanovsky <leonro@nvidia.com>
> > > 
> > > SA replay mode is initialized differently for user-space and
> > > kernel-space users, but the call to xfrm_init_replay() existed in
> > > common path with boolean protection. That caused to situation where
> > > we have two different function orders.
> > > 
> > > So let's rewrite the SA initialization flow to have same order for
> > > both in-kernel and user-space callers.
> > > 
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---
> > >  include/net/xfrm.h    |  3 +--
> > >  net/xfrm/xfrm_state.c | 22 ++++++++++------------
> > >  net/xfrm/xfrm_user.c  |  2 +-
> > >  3 files changed, 12 insertions(+), 15 deletions(-)
> > > 
> > > diff --git a/include/net/xfrm.h b/include/net/xfrm.h
> > > index 28355a5be5b9..58f8f7661ec4 100644
> > > --- a/include/net/xfrm.h
> > > +++ b/include/net/xfrm.h
> > > @@ -1770,8 +1770,7 @@ void xfrm_spd_getinfo(struct net *net, struct xfrmk_spdinfo *si);
> > >  u32 xfrm_replay_seqhi(struct xfrm_state *x, __be32 net_seq);
> > >  int xfrm_init_replay(struct xfrm_state *x, struct netlink_ext_ack *extack);
> > >  u32 xfrm_state_mtu(struct xfrm_state *x, int mtu);
> > > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> > > -		      struct netlink_ext_ack *extack);
> > > +int __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack);
> > >  int xfrm_init_state(struct xfrm_state *x);
> > >  int xfrm_input(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_type);
> > >  int xfrm_input_resume(struct sk_buff *skb, int nexthdr);
> > > diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
> > > index 568fe8df7741..42799b0946a3 100644
> > > --- a/net/xfrm/xfrm_state.c
> > > +++ b/net/xfrm/xfrm_state.c
> > > @@ -3120,8 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
> > >  }
> > >  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
> > >  
> > > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> > > -		      struct netlink_ext_ack *extack)
> > > +int __xfrm_init_state(struct xfrm_state *x, struct netlink_ext_ack *extack)
> > 
> > The whole point of having __xfrm_init_state was to
> > sepatate codepaths that need init_replay and those
> > who don't need it. That was a bandaid for something,
> > unfortunately I don't remenber for what.
> > 
> > If we don't need that anymore, maybe we can merge
> > __xfrm_init_state into xfrm_init_state, as it was
> > before.
> 
> Main difference between __xfrm_init_state and xfrm_init_state is that
> latter is called without extack, which doesn't exist in kernel path.

That split happened ~ 15 years ago, we did not have extack back than.
But I'm also ok with keeping it if extack is a reason for it.

Do you plan to respin, or should I take the patchset as is?

Thanks!
