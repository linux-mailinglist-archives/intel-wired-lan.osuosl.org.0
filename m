Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4A0A2AD5D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 17:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E0944178E;
	Thu,  6 Feb 2025 16:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8mzJr9H-SwUR; Thu,  6 Feb 2025 16:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B229416D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738858359;
	bh=JkSmWPOCb+asYOBVa33NM1TSxlPpxpo4SUCa1fCfjBE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1C3ctgA6P/N8aHxvgfTniyRO4vGpVOdCYaIQiyYbKgsjfxqvHOsr6hBhSmwc45DQ/
	 mEW9s/809Gjqh4WiKhqqs6bJGjaOUb+XThk5NduS6VT7bK2CEfw8T1EqX24XOFPKRz
	 fLAyx6sPtDB4FqtD7GUsGhpGcfzui7jNBXn6KIle+Sl8IEeBuoKDogeod+YxA+xSRu
	 I2mWkpLEsDndDsA0zSR5wphCYPWhX+QcJPpjlLoSxjPYeVDrR70P0LYkZpbqH3j9kI
	 PsfMS+MNzom+hrf5tZiWyioYrQ9CItOS7IV+zMm6S3rUx8qCYXC83uu0DzHDTKUwTv
	 uyAuaEQJAXDRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B229416D8;
	Thu,  6 Feb 2025 16:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FCB51B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FF5883B37
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:59:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QRJdMKFSVdCr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 13:59:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112c; helo=mail-yw1-x112c.google.com;
 envelope-from=bharatb.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99A348230A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99A348230A
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com
 [IPv6:2607:f8b0:4864:20::112c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99A348230A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:59:27 +0000 (UTC)
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-6f7031ea11cso9261027b3.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Feb 2025 05:59:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738850366; x=1739455166;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JkSmWPOCb+asYOBVa33NM1TSxlPpxpo4SUCa1fCfjBE=;
 b=PLpCUjgZvs6DU+jW7biugLIh8Ntq1/FT+sofiHORA0yRZqv3PGK69XCm8inMAOPvKQ
 ZcOIVc72FyrvUarvq6RxwzYcdpcCzliU6wCnqicVRiJJ7Z3QzUiRz5YjzbTxngED2/C6
 eI7Pp+L4tl9CdG0IUIGpR6CyWttFe9EQ75LOp0g2lqutpOVLh/4kTRNvy4mtBrL4pwpd
 3nRvRoQP6gWPw9rGwn3Ax3qyPpldqzU4TUpUe8FN//bCwyBwPyXYRxB8QQPi6xGBzEb0
 UExjdT6vS5mhZbQ+IU8yNnvb6zAf9dKhZXPG6U+YFupCjqEIcHVsmGyL7VrJ7bAsS5Tl
 kmhA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVGDd1lm4LBw4j+p3Dz1ncjT44dQ8U66VzROy5oOCzno1+8q8UofAfBXtWyA6pTv5+uGNyEXY/+d6GhECDL4o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwOAwB/1Se3ey/lKXPxIaPxtUXmMOqhxSxsJ1dn7OihEb+NKEnv
 zvoP/bxuZKFoJNb9ybOCKCoKutDCUpkl8x0MF/MB2oLl7E45YvZx2vwCaUFeZUSxUMpgXNpBhas
 sq4vBpKFHBcOsxmLMIVWy4scyMHk=
X-Gm-Gg: ASbGnctnpE3yh8Vak6PSBqWBGMLI+6EfeYrY43vmOU+0ll51/D7v1nfE42MXO1mRnFS
 A9GKCbsbJsvBEnld3olAAVP2jIYZdRIqVe26ycxRXgS/7Y7yG8yWSxjM9+0e23ZFZRVuk22c=
X-Google-Smtp-Source: AGHT+IF7QbK88hZIUeOKhP4HUXqRLH/FEPzNp2ncgTrNDqmPPHmt8VMgtwE7tmJot/sChcYQOaDAf5nDVMxooT+csZ0=
X-Received: by 2002:a05:690c:4907:b0:6f4:8207:c68d with SMTP id
 00721157ae682-6f989e3b297mr68197967b3.3.1738850366360; Thu, 06 Feb 2025
 05:59:26 -0800 (PST)
MIME-Version: 1.0
References: <cover.1738778580.git.leon@kernel.org>
 <e536ca28cd1686dfbb613de7ccfc01fbe5a734e4.1738778580.git.leon@kernel.org>
 <CAAeCc_kfRt8LhKgRmLsaaSmJs94hjH85DxCjEnJA6OQc5S5XXw@mail.gmail.com>
 <20250206085443.GO74886@unreal>
In-Reply-To: <20250206085443.GO74886@unreal>
From: Bharat Bhushan <bharatb.linux@gmail.com>
Date: Thu, 6 Feb 2025 19:29:13 +0530
X-Gm-Features: AWEUYZkAMS0xeWv1xX-sqj7qXRsmFL_3wRd3BZAL4CFL2zz343S8a3XHEeWSvn8
Message-ID: <CAAeCc_n-xXBdfyAkRh0KEnvKuuJSHtPQB0umzeSL2aNzJFPXGQ@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 Ayush Sawal <ayush.sawal@chelsio.com>, Bharat Bhushan <bbhushan2@marvell.com>, 
 Eric Dumazet <edumazet@google.com>, Geetha sowjanya <gakula@marvell.com>, 
 hariprasad <hkelam@marvell.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, 
 Jay Vosburgh <jv@jvosburgh.net>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, 
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>, 
 netdev@vger.kernel.org, oss-drivers@corigine.com, 
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, 
 Subbaraya Sundeep <sbhatta@marvell.com>, Sunil Goutham <sgoutham@marvell.com>, 
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Ilia Lin <ilia.lin@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 06 Feb 2025 16:12:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738850366; x=1739455166; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JkSmWPOCb+asYOBVa33NM1TSxlPpxpo4SUCa1fCfjBE=;
 b=DHLS/FSSBMZdKrLIQ0nh5fnh3m8u18pjOTF5fHP3lbh1C1/X2t+ZJ20V5oLhlzBl5T
 npMpKnBY/q2v86oz4CDRodXQb65TECUdx2AfFYHmLCH5XF/6ziqrke2zt7T0DbGz+nMs
 k6AM1IbciUcf3kPFAifW3NchACcK6PdA7RcufCq9/ieGMN2tbw338Blc/NSpTfcoNxJp
 dbXtff6M+rJ0dHBAJb4o/Inn0JSUSClx3trNtBbdzV+rgZ04dXx/pwl1dXfK62G1NIQd
 DlaPOiLS6iAgo7n/zeKsls/Yr9NendCjL8ayNBInK85cj6tezqBhzOOSry28Vr4nzYSI
 AtQw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=DHLS/FSS
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

On Thu, Feb 6, 2025 at 2:24=E2=80=AFPM Leon Romanovsky <leon@kernel.org> wr=
ote:
>
> On Thu, Feb 06, 2025 at 02:16:08PM +0530, Bharat Bhushan wrote:
> > Hi Leon,
> >
> > On Wed, Feb 5, 2025 at 11:50=E2=80=AFPM Leon Romanovsky <leon@kernel.or=
g> wrote:
> > >
> > > From: Leon Romanovsky <leonro@nvidia.com>
> > >
> > > XFRM offload path is probed even if offload isn't needed at all. Let'=
s
> > > make sure that x->type_offload pointer stays NULL for such path to
> > > reduce ambiguity.
> > >
> > > Fixes: 9d389d7f84bb ("xfrm: Add a xfrm type offload.")
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---
> > >  include/net/xfrm.h     | 12 +++++++++++-
> > >  net/xfrm/xfrm_device.c | 14 +++++++++-----
> > >  net/xfrm/xfrm_state.c  | 22 +++++++++-------------
> > >  net/xfrm/xfrm_user.c   |  2 +-
> > >  4 files changed, 30 insertions(+), 20 deletions(-)
>
> <...>
>
> > > +       x->type_offload =3D xfrm_get_type_offload(x->id.proto, x->pro=
ps.family);
> > > +       if (!x->type_offload) {
>
> <...>
>
> > > +               xfrm_put_type_offload(x->type_offload);
> > > +               x->type_offload =3D NULL;
> >
> > We always set type_offload to NULL. Can we move type_offload =3D NULL i=
n
> > xfrm_put_type_offload() ?
>
> We can, but it will require change to xfrm_get_type_offload() too,
> otherwise we will get asymmetrical get/put.

"x->type_offload =3D NULL" is always set after the put() function. so I
thought that maybe moving "x->type_offload =3D NULL" to the put()
function would simplify.
Yes, get/put will be asymmetric. Maybe setting "x->type_offload" can
be done in get/put().
Anyway it is not a major comment. ignore if this does not simplify.

Thanks
-Bharat

>
> Do you want something like that?
> int xfrm_get_type_offload(struct xfrm_state *x);
> void xfrm_put_type_offload(struct xfrm_state *x);
>
> Thansk
>
> >
> > Thanks
> > -Bharat
> >
> > >                 /* User explicitly requested packet offload mode and =
configured
> > >                  * policy in addition to the XFRM state. So be civil =
to users,
> > >                  * and return an error instead of taking fallback pat=
h.
> > > diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
> > > index ad2202fa82f3..568fe8df7741 100644
> > > --- a/net/xfrm/xfrm_state.c
> > > +++ b/net/xfrm/xfrm_state.c
> > > @@ -424,11 +424,12 @@ void xfrm_unregister_type_offload(const struct =
xfrm_type_offload *type,
> > >  }
> > >  EXPORT_SYMBOL(xfrm_unregister_type_offload);
> > >
> > > -static const struct xfrm_type_offload *
> > > -xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load=
)
> > > +const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
> > > +                                                     unsigned short =
family)
> > >  {
> > >         const struct xfrm_type_offload *type =3D NULL;
> > >         struct xfrm_state_afinfo *afinfo;
> > > +       bool try_load =3D true;
> > >
> > >  retry:
> > >         afinfo =3D xfrm_state_get_afinfo(family);
> > > @@ -456,11 +457,7 @@ xfrm_get_type_offload(u8 proto, unsigned short f=
amily, bool try_load)
> > >
> > >         return type;
> > >  }
> > > -
> > > -static void xfrm_put_type_offload(const struct xfrm_type_offload *ty=
pe)
> > > -{
> > > -       module_put(type->owner);
> > > -}
> > > +EXPORT_SYMBOL(xfrm_get_type_offload);
> > >
> > >  static const struct xfrm_mode xfrm4_mode_map[XFRM_MODE_MAX] =3D {
> > >         [XFRM_MODE_BEET] =3D {
> > > @@ -609,8 +606,6 @@ static void ___xfrm_state_destroy(struct xfrm_sta=
te *x)
> > >         kfree(x->coaddr);
> > >         kfree(x->replay_esn);
> > >         kfree(x->preplay_esn);
> > > -       if (x->type_offload)
> > > -               xfrm_put_type_offload(x->type_offload);
> > >         if (x->type) {
> > >                 x->type->destructor(x);
> > >                 xfrm_put_type(x->type);
> > > @@ -784,6 +779,9 @@ void xfrm_dev_state_free(struct xfrm_state *x)
> > >         struct xfrm_dev_offload *xso =3D &x->xso;
> > >         struct net_device *dev =3D READ_ONCE(xso->dev);
> > >
> > > +       xfrm_put_type_offload(x->type_offload);
> > > +       x->type_offload =3D NULL;
> > > +
> > >         if (dev && dev->xfrmdev_ops) {
> > >                 spin_lock_bh(&xfrm_state_dev_gc_lock);
> > >                 if (!hlist_unhashed(&x->dev_gclist))
> > > @@ -3122,7 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mt=
u)
> > >  }
> > >  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
> > >
> > > -int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool o=
ffload,
> > > +int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
> > >                       struct netlink_ext_ack *extack)
> > >  {
> > >         const struct xfrm_mode *inner_mode;
> > > @@ -3178,8 +3176,6 @@ int __xfrm_init_state(struct xfrm_state *x, boo=
l init_replay, bool offload,
> > >                 goto error;
> > >         }
> > >
> > > -       x->type_offload =3D xfrm_get_type_offload(x->id.proto, family=
, offload);
> > > -
> > >         err =3D x->type->init_state(x, extack);
> > >         if (err)
> > >                 goto error;
> > > @@ -3229,7 +3225,7 @@ int xfrm_init_state(struct xfrm_state *x)
> > >  {
> > >         int err;
> > >
> > > -       err =3D __xfrm_init_state(x, true, false, NULL);
> > > +       err =3D __xfrm_init_state(x, true, NULL);
> > >         if (!err)
> > >                 x->km.state =3D XFRM_STATE_VALID;
> > >
> > > diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
> > > index 08c6d6f0179f..82a768500999 100644
> > > --- a/net/xfrm/xfrm_user.c
> > > +++ b/net/xfrm/xfrm_user.c
> > > @@ -907,7 +907,7 @@ static struct xfrm_state *xfrm_state_construct(st=
ruct net *net,
> > >                         goto error;
> > >         }
> > >
> > > -       err =3D __xfrm_init_state(x, false, attrs[XFRMA_OFFLOAD_DEV],=
 extack);
> > > +       err =3D __xfrm_init_state(x, false, extack);
> > >         if (err)
> > >                 goto error;
> > >
> > > --
> > > 2.48.1
> > >
> > >
> >
