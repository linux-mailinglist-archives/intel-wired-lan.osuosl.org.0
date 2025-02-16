Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A875A373E6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2025 12:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44F5640B49;
	Sun, 16 Feb 2025 11:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywZFz3WsW0Io; Sun, 16 Feb 2025 11:07:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B1C240B63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739704042;
	bh=A6fpiFeoeSG+Py7TrTf9HpbPeewou5vIWvbCfxmXA88=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qXKBp2c8I3Fwn6B6yP1bgwf5yT+/By38WMeg+4bOjvY48VAxvFacdqJCfB5+96Mbe
	 K7w/zQXu6tHUz+b8oxs3tb83SAvs7wieMNBITC5fG1gtxG8bUiOfuplIE5hMOlnUIB
	 lPbSBAHjsbOSWee9WdTIdPwk5vmw+LpAtXEe01QyLWW3gFxMELfthh0JXpVT0R3gfH
	 8PPhcLAZf3a+HeA5N43r/yQ3oj2DcG4lXjBlXwsWvwEfe7Kh6rqzLA5FK5r+wtZvjY
	 4VTF1qcKyIlkV81AJeCyPlH0ArS/oIEzQec3irJ+zb14ml2bQGwXfBicjUF3lsYiGM
	 S2ZcFZPk8A20w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B1C240B63;
	Sun, 16 Feb 2025 11:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 175F7DE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 11:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECA2540FA0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 11:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E6OPaR_KO9jm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2025 11:07:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0A3A40F8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0A3A40F8F
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0A3A40F8F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 11:07:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2CBDAA40B52;
 Sun, 16 Feb 2025 11:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08955C4CEDD;
 Sun, 16 Feb 2025 11:07:16 +0000 (UTC)
Date: Sun, 16 Feb 2025 13:07:11 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Zhu Yanjun <yanjun.zhu@linux.dev>
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal <ayush.sawal@chelsio.com>,
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
Message-ID: <20250216110711.GU17863@unreal>
References: <cover.1738778580.git.leon@kernel.org>
 <d2aa8f840b0c81e33239e2a4b126730ae40864f1.1738778580.git.leon@kernel.org>
 <647895d9-e8d1-4921-b5ba-b38b2176604e@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <647895d9-e8d1-4921-b5ba-b38b2176604e@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739704036;
 bh=Uk6rLoER8BRIA7iCbn8kKYYcjuD4hDrsTvEO8AmLDFo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Iuj+7qei6zcPfTh3qOoDezjkO34QekJqHIdM6/d+4DBfpRS2vnXYyEdLPfzxfzwin
 OdUkhcBIZVIXIERPlgZMgC3YM2uySi/ffPGKarWx9Fsr1AL+D4AJGE71efsicDUs1j
 +9yAdBE1sQtZffUDZCbeQjtHM1zwyXN6vutu0OscvkByjBBk4nqPCV5ZePJxnmMT9O
 H17A3qTgTZNOlHfwh3qcZvCk/IaNL+hUUXEhYNsJ9KzE8rEOeQM3r2RFVLbsPhHEvC
 JmJygg65bFuQJLnBK9owt5d2kAbYvwrq0NBESuPY+4mm8a2k6iXhB9KFJG/Vlc6CtS
 yp9zUJuh6Z8AQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Iuj+7qei
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 4/5] xfrm: provide common
 xdo_dev_offload_ok callback implementation
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

On Sun, Feb 16, 2025 at 10:33:59AM +0100, Zhu Yanjun wrote:
> 在 2025/2/5 19:20, Leon Romanovsky 写道:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Almost all drivers except bond and nsim had same check if device
> > can perform XFRM offload on that specific packet. The check was that
> > packet doesn't have IPv4 options and IPv6 extensions.
> > 
> > In NIC drivers, the IPv4 HELEN comparison was slightly different, but
> > the intent was to check for the same conditions. So let's chose more
> > strict variant as a common base.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >   Documentation/networking/xfrm_device.rst      |  3 ++-
> >   drivers/net/bonding/bond_main.c               | 16 +++++---------
> >   .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   | 21 -------------------
> >   .../inline_crypto/ch_ipsec/chcr_ipsec.c       | 16 --------------
> >   .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 21 -------------------
> >   drivers/net/ethernet/intel/ixgbevf/ipsec.c    | 21 -------------------
> >   .../marvell/octeontx2/nic/cn10k_ipsec.c       | 15 -------------
> >   .../mellanox/mlx5/core/en_accel/ipsec.c       | 16 --------------
> >   .../net/ethernet/netronome/nfp/crypto/ipsec.c | 11 ----------
> >   drivers/net/netdevsim/ipsec.c                 | 11 ----------
> >   drivers/net/netdevsim/netdevsim.h             |  1 -
> >   net/xfrm/xfrm_device.c                        | 15 +++++++++++++
> >   12 files changed, 22 insertions(+), 145 deletions(-)
> > 
> > diff --git a/Documentation/networking/xfrm_device.rst b/Documentation/networking/xfrm_device.rst
> > index 66f6e9a9b59a..39bb98939d1f 100644
> > --- a/Documentation/networking/xfrm_device.rst
> > +++ b/Documentation/networking/xfrm_device.rst
> > @@ -126,7 +126,8 @@ been setup for offload, it first calls into xdo_dev_offload_ok() with
> >   the skb and the intended offload state to ask the driver if the offload
> >   will serviceable.  This can check the packet information to be sure the
> >   offload can be supported (e.g. IPv4 or IPv6, no IPv4 options, etc) and
> > -return true of false to signify its support.
> > +return true of false to signify its support. In case driver doesn't implement
> 
> In this commit, remove the functions cxgb4_ipsec_offload_ok,
> ch_ipsec_offload_ok, ixgbe_ipsec_offload_ok, ixgbevf_ipsec_offload_ok,
> cn10k_ipsec_offload_ok, mlx5e_ipsec_offload_ok, nfp_net_ipsec_offload_ok and
> nsim_ipsec_offload_ok, use the function xfrm_dev_offload_ok to do the same
> work.
> 
> But in the file xfrm_device.rst, "return true or false to signify its
> support"?

This sentence continued in the xfrm_device.rst: "...  In case driver doesn't implement
this callback, the stack provides reasonable defaults."

> 
> of --> should be "or"
> 
> Thanks a lot.
> Reviewed-by: Zhu Yanjun <yanjun.zhu@linux.dev>

Thanks

> 
> Zhu Yanjun
> 
> > +this callback, the stack provides reasonable defaults.
> >   Crypto offload mode:
> >   When ready to send, the driver needs to inspect the Tx packet for the
> > diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
> > index e45bba240cbc..bfb55c23380b 100644
> > --- a/drivers/net/bonding/bond_main.c
> > +++ b/drivers/net/bonding/bond_main.c
> > @@ -676,22 +676,16 @@ static void bond_ipsec_free_sa(struct xfrm_state *xs)
> >   static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
