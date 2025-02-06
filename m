Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D232A2AB29
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 15:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F30F40391;
	Thu,  6 Feb 2025 14:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWSGgwvH_fh1; Thu,  6 Feb 2025 14:26:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 923AB403BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738851999;
	bh=vFpnP2A4/jyxQ+239FLRFLuBGlWqmVUn471qHfuxa9w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NRzJNZr5koNuKZVZXaEc/c/h+/lmLQJHzVeMKT/OPcFvUNKJM2GcqDTXG9HhC6sBZ
	 WI4mRIj55XxI+dPxJo9CDyFfoqetvVszXHj6mujMj6wqvSIV0RRpPtr3zBzcb12XV7
	 VPDQZTNENfk4iyTyMOM224CH5qHY8va9cqDfNEV7eNfpfGoL6mFJLx101SBuTiOJHQ
	 NLwgH8SKrtXZvVxlVi7SIs4m5pJYgwRHfDdemtztWRKr7nRorgSyeyUeAuQUWDbs3k
	 ziz+TZG4jm5D0brzLiV9Zbv5701NaPZ4xyI34Ah99XNtjo6hIuotXhxqnUSl+chTgh
	 FSOlyBWiIhIkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 923AB403BD;
	Thu,  6 Feb 2025 14:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 04D45E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:26:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7EFB6060A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQGP3R4DnKDL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 14:26:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB3AB600D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB3AB600D4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB3AB600D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:26:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3615F5C0FCD;
 Thu,  6 Feb 2025 14:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCC85C4CEDF;
 Thu,  6 Feb 2025 14:26:33 +0000 (UTC)
Date: Thu, 6 Feb 2025 16:26:29 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Bharat Bhushan <bharatb.linux@gmail.com>
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
Message-ID: <20250206142629.GQ74886@unreal>
References: <cover.1738778580.git.leon@kernel.org>
 <e536ca28cd1686dfbb613de7ccfc01fbe5a734e4.1738778580.git.leon@kernel.org>
 <CAAeCc_kfRt8LhKgRmLsaaSmJs94hjH85DxCjEnJA6OQc5S5XXw@mail.gmail.com>
 <20250206085443.GO74886@unreal>
 <CAAeCc_n-xXBdfyAkRh0KEnvKuuJSHtPQB0umzeSL2aNzJFPXGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAeCc_n-xXBdfyAkRh0KEnvKuuJSHtPQB0umzeSL2aNzJFPXGQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738851994;
 bh=PaYho1V012rs8ReQRCNuW1GskgxiLwS+MzDcZOTtoDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RsLd0ut8C8HHGUz6yhYWOHGcDEib3EbCPJzBJmttfnn28R8FDNzQkcTKGbLzr+hmX
 p3JkdL6HPtStvfnL3QTFQt5EnEa7BV/9hiYgxQ/FABJ92gUZkWz613Ff4I3+lO2Uaj
 bbXzQY+2VhRbOx6t6HpmOyPmNKJU8ZbcSYWznFNRGE4zDOuDDgYpXbabu4MvcMRrIX
 x1Abjk6F+AL4a2i2vzFMRw7h4IVqvK9nR+UmVEEaruPxkO4uI3WFdBFZetrZrAoiU9
 nbvTiCOcrYKYyHnOGNm5fk1Lae4tF9mp0LnFVypcJiM9JgSi2udzoLbXBIxqXqn545
 I8/PhBaXaT0jg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RsLd0ut8
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 1/5] xfrm: delay
 initialization of offload path till its actually requested
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

On Thu, Feb 06, 2025 at 07:29:13PM +0530, Bharat Bhushan wrote:
> On Thu, Feb 6, 2025 at 2:24 PM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > On Thu, Feb 06, 2025 at 02:16:08PM +0530, Bharat Bhushan wrote:
> > > Hi Leon,
> > >
> > > On Wed, Feb 5, 2025 at 11:50 PM Leon Romanovsky <leon@kernel.org> wrote:
> > > >
> > > > From: Leon Romanovsky <leonro@nvidia.com>
> > > >
> > > > XFRM offload path is probed even if offload isn't needed at all. Let's
> > > > make sure that x->type_offload pointer stays NULL for such path to
> > > > reduce ambiguity.
> > > >
> > > > Fixes: 9d389d7f84bb ("xfrm: Add a xfrm type offload.")
> > > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > > ---
> > > >  include/net/xfrm.h     | 12 +++++++++++-
> > > >  net/xfrm/xfrm_device.c | 14 +++++++++-----
> > > >  net/xfrm/xfrm_state.c  | 22 +++++++++-------------
> > > >  net/xfrm/xfrm_user.c   |  2 +-
> > > >  4 files changed, 30 insertions(+), 20 deletions(-)
> >
> > <...>
> >
> > > > +       x->type_offload = xfrm_get_type_offload(x->id.proto, x->props.family);
> > > > +       if (!x->type_offload) {
> >
> > <...>
> >
> > > > +               xfrm_put_type_offload(x->type_offload);
> > > > +               x->type_offload = NULL;
> > >
> > > We always set type_offload to NULL. Can we move type_offload = NULL in
> > > xfrm_put_type_offload() ?
> >
> > We can, but it will require change to xfrm_get_type_offload() too,
> > otherwise we will get asymmetrical get/put.
> 
> "x->type_offload = NULL" is always set after the put() function. so I
> thought that maybe moving "x->type_offload = NULL" to the put()
> function would simplify.
> Yes, get/put will be asymmetric. Maybe setting "x->type_offload" can
> be done in get/put().
> Anyway it is not a major comment. ignore if this does not simplify.

Thanks, let's wait for other comments. If I need respin the series, I'll
change the functions to the proposed below.

Thanks


> 
> Thanks
> -Bharat
> 
> >
> > Do you want something like that?
> > int xfrm_get_type_offload(struct xfrm_state *x);
> > void xfrm_put_type_offload(struct xfrm_state *x);
> >
> > Thansk
> >
> > >
> > > Thanks
> > > -Bharat
> > >
> > > >                 /* User explicitly requested packet offload mode and configured
> > > >                  * policy in addition to the XFRM state. So be civil to users,
> > > >                  * and return an error instead of taking fallback path.
> > > > diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
> > > > index ad2202fa82f3..568fe8df7741 100644
> > > > --- a/net/xfrm/xfrm_state.c
> > > > +++ b/net/xfrm/xfrm_state.c
> > > > @@ -424,11 +424,12 @@ void xfrm_unregister_type_offload(const struct xfrm_type_offload *type,
> > > >  }
> > > >  EXPORT_SYMBOL(xfrm_unregister_type_offload);
> > > >
> > > > -static const struct xfrm_type_offload *
> > > > -xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
> > > > +const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
> > > > +                                                     unsigned short family)
> > > >  {
> > > >         const struct xfrm_type_offload *type = NULL;
> > > >         struct xfrm_state_afinfo *afinfo;
> > > > +       bool try_load = true;
> > > >
> > > >  retry:
> > > >         afinfo = xfrm_state_get_afinfo(family);
> > > > @@ -456,11 +457,7 @@ xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
> > > >
> > > >         return type;
> > > >  }
> > > > -
> > > > -static void xfrm_put_type_offload(const struct xfrm_type_offload *type)
> > > > -{
> > > > -       module_put(type->owner);
> > > > -}
> > > > +EXPORT_SYMBOL(xfrm_get_type_offload);
> > > >
> > > >  static const struct xfrm_mode xfrm4_mode_map[XFRM_MODE_MAX] = {
> > > >         [XFRM_MODE_BEET] = {
> > > > @@ -609,8 +606,6 @@ static void ___xfrm_state_destroy(struct xfrm_state *x)
> > > >         kfree(x->coaddr);
> > > >         kfree(x->replay_esn);
> > > >         kfree(x->preplay_esn);
> > > > -       if (x->type_offload)
> > > > -               xfrm_put_type_offload(x->type_offload);
> > > >         if (x->type) {
> > > >                 x->type->destructor(x);
> > > >                 xfrm_put_type(x->type);
> > > > @@ -784,6 +779,9 @@ void xfrm_dev_state_free(struct xfrm_state *x)
> > > >         struct xfrm_dev_offload *xso = &x->xso;
> > > >         struct net_device *dev = READ_ONCE(xso->dev);
> > > >
> > > > +       xfrm_put_type_offload(x->type_offload);
> > > > +       x->type_offload = NULL;
> > > > +
> > > >         if (dev && dev->xfrmdev_ops) {
> > > >                 spin_lock_bh(&xfrm_state_dev_gc_lock);
> > > >                 if (!hlist_unhashed(&x->dev_gclist))
> > > > @@ -3122,7 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
> > > >
> > > > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
> > > > +int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> > > >                       struct netlink_ext_ack *extack)
> > > >  {
> > > >         const struct xfrm_mode *inner_mode;
> > > > @@ -3178,8 +3176,6 @@ int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
> > > >                 goto error;
> > > >         }
> > > >
> > > > -       x->type_offload = xfrm_get_type_offload(x->id.proto, family, offload);
> > > > -
> > > >         err = x->type->init_state(x, extack);
> > > >         if (err)
> > > >                 goto error;
> > > > @@ -3229,7 +3225,7 @@ int xfrm_init_state(struct xfrm_state *x)
> > > >  {
> > > >         int err;
> > > >
> > > > -       err = __xfrm_init_state(x, true, false, NULL);
> > > > +       err = __xfrm_init_state(x, true, NULL);
> > > >         if (!err)
> > > >                 x->km.state = XFRM_STATE_VALID;
> > > >
> > > > diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
> > > > index 08c6d6f0179f..82a768500999 100644
> > > > --- a/net/xfrm/xfrm_user.c
> > > > +++ b/net/xfrm/xfrm_user.c
> > > > @@ -907,7 +907,7 @@ static struct xfrm_state *xfrm_state_construct(struct net *net,
> > > >                         goto error;
> > > >         }
> > > >
> > > > -       err = __xfrm_init_state(x, false, attrs[XFRMA_OFFLOAD_DEV], extack);
> > > > +       err = __xfrm_init_state(x, false, extack);
> > > >         if (err)
> > > >                 goto error;
> > > >
> > > > --
> > > > 2.48.1
> > > >
> > > >
> > >
