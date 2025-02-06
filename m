Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A95A2AD5C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 17:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA0A684025;
	Thu,  6 Feb 2025 16:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zNcedQ98Si8K; Thu,  6 Feb 2025 16:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8154884797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738858358;
	bh=z3XBaUKrT/1hQhJVYaeQ/iTYgSEZTAUQE8cvCrT/xK8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PtZCKY4vs5m91TALQvRvcjjkFpVg9r4NGyzWzVETubahIJFpovDBl2B6L+GDmdVBF
	 IZ9+4148pjhAi8UVNbAncQpSwWxFkh7cjo+bLcRHqiLlA1dQY3f200mHdXCTNwqGEy
	 QFyzd/x8n9mq1SX5DKpom8W8Xwpzcaf8OeCdDFkKv2EDibX4QmW34cdnNTxRH7Dcz+
	 xRHxvCbJlwk5oD+O9fjmAAg7PLkRS9sEtGNqJ4TjNHDYzE2pU++KSgxveLMUlYT2Z6
	 H2rnk24jH3bNZOQGxTfnFu6QRTcb0VK/VgluJF30JC7o0Bp9clqn/9kXzhiG9STFHI
	 3B4SIHGKbNx9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8154884797;
	Thu,  6 Feb 2025 16:12:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C8BADCF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC27D60733
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:46:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id izLhDNdTcLKZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 08:46:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1132; helo=mail-yw1-x1132.google.com;
 envelope-from=bharatb.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9EA0C61124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EA0C61124
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EA0C61124
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:46:20 +0000 (UTC)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-6f972c031efso15797667b3.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Feb 2025 00:46:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738831579; x=1739436379;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=z3XBaUKrT/1hQhJVYaeQ/iTYgSEZTAUQE8cvCrT/xK8=;
 b=EgPy9oo3iyhsvlXqKDGlclTqjZeTQIBKzBjvg1s7g+mkSt8tZR2nCLgNh4dShubFZV
 CTKGJUXlf9vnisrfYvtw/zYy8j+1xEIoeLSDftzqzMz7mxSM19fKPjeDWGs6vpZ7pP+Z
 +XH+7i+/2kBUFH9hn0n4vVo9Y52j2dXL0qnsRJAgF2KR8LjHdj52Y9tE7qqUhJetKidI
 rLbkR6sbt/wigR3i+tF3Q8tUkR39D4sB9UETD/TfszIO0ShIGD1AdVk0Jq2oXS3HzAG/
 cDCR7qY3/dQ1uqwBeo7kqPdWLPxGEqCt0f8k9pfKVD1ZY9nQ2Qzi/YFK8TsKZ1uomFdK
 OY4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxqcTQwVL0XO0gK0vqN/u3pWDjyikVAKbl+6BXzfV4UZIqAISHWeHjQovYmkX0ucC32S7tuBi/fzy2w8NwhZY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxTbiPsul1mEKx6IR84uHYkSZSEdiUAaTXvWCaD6SjapkgR9+ov
 qbkPWnp8QoSk/G85ytLoPoqrpUHlzCknWkvormg7+RdLBHur7uuNdJtarXlAEyCIyH/F2g5ESsK
 +71VcSUFBZ4zoftVB66nY+JKIBYw=
X-Gm-Gg: ASbGncsAI+8H4pHnARYKxtScHZC7QBE6DFyT5i8BH5VhOZuC0Y3zCPiHTpy6sjdjJ8Z
 v6DEF+K+zE+u+M7iJ/bjRRaGV99qhWsr9joOwIhws9Tyfq5TVtEhGtc3XBJvDtIZBSDIFOm/J
X-Google-Smtp-Source: AGHT+IHlYR0Zc+BAJP/A0hhKu9kjrN2V2QsyHX5Z8jg+7GABYOGH/px7fkCyHAuejCjFPZU4qbzWOL2mVuYSGnHzdSI=
X-Received: by 2002:a05:690c:62c1:b0:6f7:9f95:d916 with SMTP id
 00721157ae682-6f99a618f37mr23145587b3.16.1738831579416; Thu, 06 Feb 2025
 00:46:19 -0800 (PST)
MIME-Version: 1.0
References: <cover.1738778580.git.leon@kernel.org>
 <e536ca28cd1686dfbb613de7ccfc01fbe5a734e4.1738778580.git.leon@kernel.org>
In-Reply-To: <e536ca28cd1686dfbb613de7ccfc01fbe5a734e4.1738778580.git.leon@kernel.org>
From: Bharat Bhushan <bharatb.linux@gmail.com>
Date: Thu, 6 Feb 2025 14:16:08 +0530
X-Gm-Features: AWEUYZmguP9vZm_NGHalzZfLh9uJ-aw1wjN_NXnWeY6O7H3_MnQ8VHc2Z6HpMSk
Message-ID: <CAAeCc_kfRt8LhKgRmLsaaSmJs94hjH85DxCjEnJA6OQc5S5XXw@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Leon Romanovsky <leonro@nvidia.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal <ayush.sawal@chelsio.com>, 
 Bharat Bhushan <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>, 
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org, 
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, 
 linux-doc@vger.kernel.org, linux-rdma@vger.kernel.org, 
 Louis Peens <louis.peens@corigine.com>, netdev@vger.kernel.org,
 oss-drivers@corigine.com, 
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
 d=gmail.com; s=20230601; t=1738831579; x=1739436379; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z3XBaUKrT/1hQhJVYaeQ/iTYgSEZTAUQE8cvCrT/xK8=;
 b=aglzgrmjskw4R3O4QITh4x1STKyD+c870BWFzJTB6bYKAvVXO7QLWGhwG6DGSiAy/h
 LydU2FtjzWDye3wxONNYzqAkb6Uy1o5UknXdMwY/q0XO6VihkG9xzQKSTn+fIwv7oOoa
 fsE0xqCSyPBMU2nDJZ+aUGpePeaox96QFCPgALwFtweygT2je5hl2BKrRR9fVNi9Nog7
 7Zms++dDmCEPVBUB1Ih2C0xYNpbyBl5cPpjAgrxJEd5W6xT/zKuZ/bPUdhi3WMW7LXIy
 Dn+26o5ku6FCaOgGu0IOXfaQG2ZT5E/WNcaT4TMFjbmQ3+ZdZcsXUnkkrV7B1mmr+EX7
 /xvg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=aglzgrmj
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

Hi Leon,

On Wed, Feb 5, 2025 at 11:50=E2=80=AFPM Leon Romanovsky <leon@kernel.org> w=
rote:
>
> From: Leon Romanovsky <leonro@nvidia.com>
>
> XFRM offload path is probed even if offload isn't needed at all. Let's
> make sure that x->type_offload pointer stays NULL for such path to
> reduce ambiguity.
>
> Fixes: 9d389d7f84bb ("xfrm: Add a xfrm type offload.")
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  include/net/xfrm.h     | 12 +++++++++++-
>  net/xfrm/xfrm_device.c | 14 +++++++++-----
>  net/xfrm/xfrm_state.c  | 22 +++++++++-------------
>  net/xfrm/xfrm_user.c   |  2 +-
>  4 files changed, 30 insertions(+), 20 deletions(-)
>
> diff --git a/include/net/xfrm.h b/include/net/xfrm.h
> index ed4b83696c77..28355a5be5b9 100644
> --- a/include/net/xfrm.h
> +++ b/include/net/xfrm.h
> @@ -464,6 +464,16 @@ struct xfrm_type_offload {
>
>  int xfrm_register_type_offload(const struct xfrm_type_offload *type, uns=
igned short family);
>  void xfrm_unregister_type_offload(const struct xfrm_type_offload *type, =
unsigned short family);
> +const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
> +                                                     unsigned short fami=
ly);
> +static inline void xfrm_put_type_offload(const struct xfrm_type_offload =
*type)
> +{
> +       if (!type)
> +               return;
> +
> +       module_put(type->owner);
> +}
> +
>
>  /**
>   * struct xfrm_mode_cbs - XFRM mode callbacks
> @@ -1760,7 +1770,7 @@ void xfrm_spd_getinfo(struct net *net, struct xfrmk=
_spdinfo *si);
>  u32 xfrm_replay_seqhi(struct xfrm_state *x, __be32 net_seq);
>  int xfrm_init_replay(struct xfrm_state *x, struct netlink_ext_ack *extac=
k);
>  u32 xfrm_state_mtu(struct xfrm_state *x, int mtu);
> -int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offlo=
ad,
> +int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
>                       struct netlink_ext_ack *extack);
>  int xfrm_init_state(struct xfrm_state *x);
>  int xfrm_input(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_t=
ype);
> diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
> index d1fa94e52cea..e01a7f5a4c75 100644
> --- a/net/xfrm/xfrm_device.c
> +++ b/net/xfrm/xfrm_device.c
> @@ -244,11 +244,6 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_=
state *x,
>         xfrm_address_t *daddr;
>         bool is_packet_offload;
>
> -       if (!x->type_offload) {
> -               NL_SET_ERR_MSG(extack, "Type doesn't support offload");
> -               return -EINVAL;
> -       }
> -
>         if (xuo->flags &
>             ~(XFRM_OFFLOAD_IPV6 | XFRM_OFFLOAD_INBOUND | XFRM_OFFLOAD_PAC=
KET)) {
>                 NL_SET_ERR_MSG(extack, "Unrecognized flags in offload req=
uest");
> @@ -310,6 +305,13 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_=
state *x,
>                 return -EINVAL;
>         }
>
> +       x->type_offload =3D xfrm_get_type_offload(x->id.proto, x->props.f=
amily);
> +       if (!x->type_offload) {
> +               NL_SET_ERR_MSG(extack, "Type doesn't support offload");
> +               dev_put(dev);
> +               return -EINVAL;
> +       }
> +
>         xso->dev =3D dev;
>         netdev_tracker_alloc(dev, &xso->dev_tracker, GFP_ATOMIC);
>         xso->real_dev =3D dev;
> @@ -332,6 +334,8 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_s=
tate *x,
>                 netdev_put(dev, &xso->dev_tracker);
>                 xso->type =3D XFRM_DEV_OFFLOAD_UNSPECIFIED;
>
> +               xfrm_put_type_offload(x->type_offload);
> +               x->type_offload =3D NULL;

We always set type_offload to NULL. Can we move type_offload =3D NULL in
xfrm_put_type_offload() ?

Thanks
-Bharat

>                 /* User explicitly requested packet offload mode and conf=
igured
>                  * policy in addition to the XFRM state. So be civil to u=
sers,
>                  * and return an error instead of taking fallback path.
> diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
> index ad2202fa82f3..568fe8df7741 100644
> --- a/net/xfrm/xfrm_state.c
> +++ b/net/xfrm/xfrm_state.c
> @@ -424,11 +424,12 @@ void xfrm_unregister_type_offload(const struct xfrm=
_type_offload *type,
>  }
>  EXPORT_SYMBOL(xfrm_unregister_type_offload);
>
> -static const struct xfrm_type_offload *
> -xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
> +const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
> +                                                     unsigned short fami=
ly)
>  {
>         const struct xfrm_type_offload *type =3D NULL;
>         struct xfrm_state_afinfo *afinfo;
> +       bool try_load =3D true;
>
>  retry:
>         afinfo =3D xfrm_state_get_afinfo(family);
> @@ -456,11 +457,7 @@ xfrm_get_type_offload(u8 proto, unsigned short famil=
y, bool try_load)
>
>         return type;
>  }
> -
> -static void xfrm_put_type_offload(const struct xfrm_type_offload *type)
> -{
> -       module_put(type->owner);
> -}
> +EXPORT_SYMBOL(xfrm_get_type_offload);
>
>  static const struct xfrm_mode xfrm4_mode_map[XFRM_MODE_MAX] =3D {
>         [XFRM_MODE_BEET] =3D {
> @@ -609,8 +606,6 @@ static void ___xfrm_state_destroy(struct xfrm_state *=
x)
>         kfree(x->coaddr);
>         kfree(x->replay_esn);
>         kfree(x->preplay_esn);
> -       if (x->type_offload)
> -               xfrm_put_type_offload(x->type_offload);
>         if (x->type) {
>                 x->type->destructor(x);
>                 xfrm_put_type(x->type);
> @@ -784,6 +779,9 @@ void xfrm_dev_state_free(struct xfrm_state *x)
>         struct xfrm_dev_offload *xso =3D &x->xso;
>         struct net_device *dev =3D READ_ONCE(xso->dev);
>
> +       xfrm_put_type_offload(x->type_offload);
> +       x->type_offload =3D NULL;
> +
>         if (dev && dev->xfrmdev_ops) {
>                 spin_lock_bh(&xfrm_state_dev_gc_lock);
>                 if (!hlist_unhashed(&x->dev_gclist))
> @@ -3122,7 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
>  }
>  EXPORT_SYMBOL_GPL(xfrm_state_mtu);
>
> -int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offlo=
ad,
> +int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
>                       struct netlink_ext_ack *extack)
>  {
>         const struct xfrm_mode *inner_mode;
> @@ -3178,8 +3176,6 @@ int __xfrm_init_state(struct xfrm_state *x, bool in=
it_replay, bool offload,
>                 goto error;
>         }
>
> -       x->type_offload =3D xfrm_get_type_offload(x->id.proto, family, of=
fload);
> -
>         err =3D x->type->init_state(x, extack);
>         if (err)
>                 goto error;
> @@ -3229,7 +3225,7 @@ int xfrm_init_state(struct xfrm_state *x)
>  {
>         int err;
>
> -       err =3D __xfrm_init_state(x, true, false, NULL);
> +       err =3D __xfrm_init_state(x, true, NULL);
>         if (!err)
>                 x->km.state =3D XFRM_STATE_VALID;
>
> diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
> index 08c6d6f0179f..82a768500999 100644
> --- a/net/xfrm/xfrm_user.c
> +++ b/net/xfrm/xfrm_user.c
> @@ -907,7 +907,7 @@ static struct xfrm_state *xfrm_state_construct(struct=
 net *net,
>                         goto error;
>         }
>
> -       err =3D __xfrm_init_state(x, false, attrs[XFRMA_OFFLOAD_DEV], ext=
ack);
> +       err =3D __xfrm_init_state(x, false, extack);
>         if (err)
>                 goto error;
>
> --
> 2.48.1
>
>
