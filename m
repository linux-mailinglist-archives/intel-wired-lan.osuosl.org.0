Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2561AA2A3A6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 09:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB6B483ED9;
	Thu,  6 Feb 2025 08:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jDphnmxtEW3; Thu,  6 Feb 2025 08:54:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4E3083ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738832094;
	bh=MQL9LFhjTNompnXLAIwEZpR14J8/nXobkdIT6rj39Dg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qzqxw3fx8P9+oicsdulrD0GZUlZ+1R1M7rBtmEDlGoHFbxB3CIFKzR2+jEAamyyvT
	 aNd+lfwsjFGsihSV/hsojFAF5x+NbIeu/xggyIl31EXuZmwe3nicVMNFGpw9iCgsE5
	 U5OCZNfl1vNsuxPE5d+Um9An8Aq/S7J6u3nhsfyXDAXF/5uVo1ujxEtDukD9ojimGk
	 2hge8CdMssrkWOlzkSJqJgIYIWOL/hbN1eIFw9CT1fgqq3mNL8qEPSgncmlGd1D9zX
	 1iB9qTCRzcTWrqKwRN8QAGI4wQ2voUU7r8lNJ1L7fr1QI2Afj+JROkXnGQUx6p4xz3
	 uW3kszpEavl9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4E3083ECA;
	Thu,  6 Feb 2025 08:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AA7F1B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A5AF4133A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:54:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AkM0RMCnpy7G for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 08:54:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D325F41337
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D325F41337
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D325F41337
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:54:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5658FA43F55;
 Thu,  6 Feb 2025 08:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5944CC4CEDD;
 Thu,  6 Feb 2025 08:54:48 +0000 (UTC)
Date: Thu, 6 Feb 2025 10:54:43 +0200
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
Message-ID: <20250206085443.GO74886@unreal>
References: <cover.1738778580.git.leon@kernel.org>
 <e536ca28cd1686dfbb613de7ccfc01fbe5a734e4.1738778580.git.leon@kernel.org>
 <CAAeCc_kfRt8LhKgRmLsaaSmJs94hjH85DxCjEnJA6OQc5S5XXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAeCc_kfRt8LhKgRmLsaaSmJs94hjH85DxCjEnJA6OQc5S5XXw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738832089;
 bh=yULdxGqmQ06JbHuTh2NwOIHtkfoYPeXquDIDEV+zq3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wiu/wDulu4gSCxASFwwD1coOYNpze48vT261YPsNdXwWfAtCOALgHZHXBNL+crSLH
 iGotaThdawnMRYinh/yaO/wm9kInQAifQaDwIu4+EROEmHS9rRFaMuAIjA4t5HjAv/
 KUGlw5pT+cgpcQGJw4pqHQZgCI5Rst/1Rgp/GSEYnxXAwyM0HS+aMRoTVzTG+DO9yM
 edZjU/8A8vCz2ntZxkRN+oXActOuYAXlENKVCsR6HxOkNUSERw1irTJRDvG0PJ57Wr
 hxDREJBYp0BlTflvZGI8439Ne0nKKUG0TJI9DfrIFxYcM+LOPmLRauyv1oAVewMNF6
 tUcfZMfg2pPFQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Wiu/wDul
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

On Thu, Feb 06, 2025 at 02:16:08PM +0530, Bharat Bhushan wrote:
> Hi Leon,
> 
> On Wed, Feb 5, 2025 at 11:50 PM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > From: Leon Romanovsky <leonro@nvidia.com>
> >
> > XFRM offload path is probed even if offload isn't needed at all. Let's
> > make sure that x->type_offload pointer stays NULL for such path to
> > reduce ambiguity.
> >
> > Fixes: 9d389d7f84bb ("xfrm: Add a xfrm type offload.")
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  include/net/xfrm.h     | 12 +++++++++++-
> >  net/xfrm/xfrm_device.c | 14 +++++++++-----
> >  net/xfrm/xfrm_state.c  | 22 +++++++++-------------
> >  net/xfrm/xfrm_user.c   |  2 +-
> >  4 files changed, 30 insertions(+), 20 deletions(-)

<...>

> > +       x->type_offload = xfrm_get_type_offload(x->id.proto, x->props.family);
> > +       if (!x->type_offload) {

<...>

> > +               xfrm_put_type_offload(x->type_offload);
> > +               x->type_offload = NULL;
> 
> We always set type_offload to NULL. Can we move type_offload = NULL in
> xfrm_put_type_offload() ?

We can, but it will require change to xfrm_get_type_offload() too,
otherwise we will get asymmetrical get/put.

Do you want something like that?
int xfrm_get_type_offload(struct xfrm_state *x);
void xfrm_put_type_offload(struct xfrm_state *x);

Thansk

> 
> Thanks
> -Bharat
> 
> >                 /* User explicitly requested packet offload mode and configured
> >                  * policy in addition to the XFRM state. So be civil to users,
> >                  * and return an error instead of taking fallback path.
> > diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
> > index ad2202fa82f3..568fe8df7741 100644
> > --- a/net/xfrm/xfrm_state.c
> > +++ b/net/xfrm/xfrm_state.c
> > @@ -424,11 +424,12 @@ void xfrm_unregister_type_offload(const struct xfrm_type_offload *type,
> >  }
> >  EXPORT_SYMBOL(xfrm_unregister_type_offload);
> >
> > -static const struct xfrm_type_offload *
> > -xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
> > +const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
> > +                                                     unsigned short family)
> >  {
> >         const struct xfrm_type_offload *type = NULL;
> >         struct xfrm_state_afinfo *afinfo;
> > +       bool try_load = true;
> >
> >  retry:
> >         afinfo = xfrm_state_get_afinfo(family);
> > @@ -456,11 +457,7 @@ xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
> >
> >         return type;
> >  }
> > -
> > -static void xfrm_put_type_offload(const struct xfrm_type_offload *type)
> > -{
> > -       module_put(type->owner);
> > -}
> > +EXPORT_SYMBOL(xfrm_get_type_offload);
> >
> >  static const struct xfrm_mode xfrm4_mode_map[XFRM_MODE_MAX] = {
> >         [XFRM_MODE_BEET] = {
> > @@ -609,8 +606,6 @@ static void ___xfrm_state_destroy(struct xfrm_state *x)
> >         kfree(x->coaddr);
> >         kfree(x->replay_esn);
> >         kfree(x->preplay_esn);
> > -       if (x->type_offload)
> > -               xfrm_put_type_offload(x->type_offload);
> >         if (x->type) {
> >                 x->type->destructor(x);
> >                 xfrm_put_type(x->type);
> > @@ -784,6 +779,9 @@ void xfrm_dev_state_free(struct xfrm_state *x)
> >         struct xfrm_dev_offload *xso = &x->xso;
> >         struct net_device *dev = READ_ONCE(xso->dev);
> >
> > +       xfrm_put_type_offload(x->type_offload);
> > +       x->type_offload = NULL;
> > +
> >         if (dev && dev->xfrmdev_ops) {
> >                 spin_lock_bh(&xfrm_state_dev_gc_lock);
> >                 if (!hlist_unhashed(&x->dev_gclist))
> > @@ -3122,7 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
> >  }
> >  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
> >
> > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
> > +int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> >                       struct netlink_ext_ack *extack)
> >  {
> >         const struct xfrm_mode *inner_mode;
> > @@ -3178,8 +3176,6 @@ int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
> >                 goto error;
> >         }
> >
> > -       x->type_offload = xfrm_get_type_offload(x->id.proto, family, offload);
> > -
> >         err = x->type->init_state(x, extack);
> >         if (err)
> >                 goto error;
> > @@ -3229,7 +3225,7 @@ int xfrm_init_state(struct xfrm_state *x)
> >  {
> >         int err;
> >
> > -       err = __xfrm_init_state(x, true, false, NULL);
> > +       err = __xfrm_init_state(x, true, NULL);
> >         if (!err)
> >                 x->km.state = XFRM_STATE_VALID;
> >
> > diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
> > index 08c6d6f0179f..82a768500999 100644
> > --- a/net/xfrm/xfrm_user.c
> > +++ b/net/xfrm/xfrm_user.c
> > @@ -907,7 +907,7 @@ static struct xfrm_state *xfrm_state_construct(struct net *net,
> >                         goto error;
> >         }
> >
> > -       err = __xfrm_init_state(x, false, attrs[XFRMA_OFFLOAD_DEV], extack);
> > +       err = __xfrm_init_state(x, false, extack);
> >         if (err)
> >                 goto error;
> >
> > --
> > 2.48.1
> >
> >
> 
