Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CCC2B4637
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 15:49:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA20C20526;
	Mon, 16 Nov 2020 14:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pgTHE0Y4IlaS; Mon, 16 Nov 2020 14:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B94322051F;
	Mon, 16 Nov 2020 14:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA6B11BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB69A866E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hrgUfkKwI7bj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 13:57:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D7C585456
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605535024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mnt9QmtgbTVSg4YUJB2DK71IcybUSWPf1jFkgpJYRJQ=;
 b=ZXLLFAkNtd7pUJH+E7CxqfQsEMnIeng8jnEkiQ4LZXG0PF8Qdh4CNMGgVg4VC5QemWj1L8
 Pc94dT3YOnW9O2VsEkVHUujFW3sIYtlvK/VHPjAhMnknRszfx2WD/Mg5lmh3bNNTVvmKzI
 bMFagi5pAb+dAKnecve6N46W6+JMins=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-sob-PUW_Mj2vjherfsxBlw-1; Mon, 16 Nov 2020 08:57:03 -0500
X-MC-Unique: sob-PUW_Mj2vjherfsxBlw-1
Received: by mail-wr1-f72.google.com with SMTP id w5so8977564wrm.22
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 05:57:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=58JLtczfJC3BdQ8P9jCy+MkeQ5C3tOk88fmGaEiTy+E=;
 b=H8+NQ58LKFnGgP1gpzqLoI+PfX5zeVlLX2abtOjua+H2XthFvh7SAqyfSEL99ERMIq
 kHjNMO0hwmmgp2tibSKQMGUacNMoEZkEDhfGpj6F7qOXVXXLIJOkHM5TvuwbWszC+Sul
 TjQPrC6jpB+c9AwoFWwgEjG4mVVKVkLFZcawkCe0WsS3mpQDYoQaLkhauM/UBb2qDeNt
 vnYkWChaMmoefK8IS5dJ2VfzQTnsa91J9057XeyIGX7wAGiOuZqR/LKqsGQLa31cnHX8
 9480+SLYqLKtBDBjtWeai0Asj6SYYbTPLkdfPvQC/kLjwH3FdNGhypqblMraM/d9dL5u
 zrKQ==
X-Gm-Message-State: AOAM533YjS+IVmyEArR7ubmgAEukEQXrOQs7PuD1btXUJQBzt7kv9TDL
 65wQW9S2uVbMo/vg2qCBVQU74o0089nYV6O/f32mFxy2UyVL4qjF4QfN1OypyIs+/uwlYG/pW37
 dgQRQchQHHwjIZgsB7lSfRZ0uTKEuFg==
X-Received: by 2002:a5d:62c3:: with SMTP id o3mr19653219wrv.300.1605535022070; 
 Mon, 16 Nov 2020 05:57:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzAQd012oEHMVrl1W8LN6Xp/toEeL5/ngwJJSD3YTGsZHyeOFGyYa7S0sxojh5tC5FKwlvXAA==
X-Received: by 2002:a5d:62c3:: with SMTP id o3mr19653170wrv.300.1605535021798; 
 Mon, 16 Nov 2020 05:57:01 -0800 (PST)
Received: from redhat.com ([147.161.8.56])
 by smtp.gmail.com with ESMTPSA id u16sm22680107wrn.55.2020.11.16.05.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 05:57:00 -0800 (PST)
Date: Mon, 16 Nov 2020 08:55:56 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>
Message-ID: <20201116085548-mutt-send-email-mst@kernel.org>
References: <20201116110416.10719-1-bjorn.topel@gmail.com>
 <20201116110416.10719-7-bjorn.topel@gmail.com>
 <20201116064953-mutt-send-email-mst@kernel.org>
 <614a7ce4-2b6b-129b-de7d-71428f7a71f6@intel.com>
 <20201116073848-mutt-send-email-mst@kernel.org>
 <585b011f-0817-a684-d1db-125bb55741fe@intel.com>
MIME-Version: 1.0
In-Reply-To: <585b011f-0817-a684-d1db-125bb55741fe@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 16 Nov 2020 14:49:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 06/10] xsk: propagate
 napi_id to XDP socket Rx path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: kda@linux-powerpc.org, ast@kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com,
 ecree@solarflare.com, aelior@marvell.com, akiyano@amazon.com,
 sthemmin@microsoft.com, ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, sgoutham@marvell.com,
 grygorii.strashko@ti.com, jonathan.lemon@gmail.com, qi.z.zhang@intel.com,
 mcroce@microsoft.com, michael.chan@broadcom.com, magnus.karlsson@intel.com,
 daniel@iogearbox.net, ilias.apalodimas@linaro.org, tariqt@nvidia.com,
 netanel@amazon.com, bpf@vger.kernel.org, saeedm@nvidia.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 16, 2020 at 02:24:56PM +0100, Bj=C3=B6rn T=C3=B6pel wrote:
> On 2020-11-16 13:42, Michael S. Tsirkin wrote:
> > On Mon, Nov 16, 2020 at 01:01:40PM +0100, Bj=C3=83=C2=B6rn T=C3=83=C2=
=B6pel wrote:
> > > =

> > > On 2020-11-16 12:55, Michael S. Tsirkin wrote:
> > > > On Mon, Nov 16, 2020 at 12:04:12PM +0100, Bj=C3=83f=C3=82=C2=B6rn T=
=C3=83f=C3=82=C2=B6pel wrote:
> > > > > From: Bj=C3=83f=C3=82=C2=B6rn T=C3=83f=C3=82=C2=B6pel <bjorn.tope=
l@intel.com>
> > > > > =

> > > > > Add napi_id to the xdp_rxq_info structure, and make sure the XDP
> > > > > socket pick up the napi_id in the Rx path. The napi_id is used to=
 find
> > > > > the corresponding NAPI structure for socket busy polling.
> > > > > =

> > > > > Acked-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> > > > > Signed-off-by: Bj=C3=83f=C3=82=C2=B6rn T=C3=83f=C3=82=C2=B6pel <b=
jorn.topel@intel.com>
> > > > =

> > > > A bunch of drivers just pass in 0. could you explain when
> > > > is that ok? how bad is it if the wrong id is used?
> > > > =

> > > =

> > > If zero is passed, which is a non-valid NAPI_ID, busy-polling will ne=
ver
> > > be performed.
> > > =

> > > Depending on the structure of the driver, napi might or might not be
> > > initialized (napi_id !=3D 0) or even available. When it wasn't obviou=
s, I
> > > simply set it to zero.
> > > =

> > > So, short; No harm if zero, but busy-polling cannot be used in an XDP
> > > context.
> > > =

> > > =

> > > [...]
> > > > > diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
> > > > > index 21b71148c532..d71fe41595b7 100644
> > > > > --- a/drivers/net/virtio_net.c
> > > > > +++ b/drivers/net/virtio_net.c
> > > > > @@ -1485,7 +1485,7 @@ static int virtnet_open(struct net_device *=
dev)
> > > > >    			if (!try_fill_recv(vi, &vi->rq[i], GFP_KERNEL))
> > > > >    				schedule_delayed_work(&vi->refill, 0);
> > > > > -		err =3D xdp_rxq_info_reg(&vi->rq[i].xdp_rxq, dev, i);
> > > > > +		err =3D xdp_rxq_info_reg(&vi->rq[i].xdp_rxq, dev, i, 0);
> > > > >    		if (err < 0)
> > > > >    			return err;
> > > > =

> > > > Should this be rq.napi.napi_id ?
> > > > =

> > > =

> > > Yes, if rq.napi.napi_id is valid here! Is it?
> > =

> > What initializes it? netif_napi_add? Then I think yes, it's
> > initialized for all queues ...
> > Needs to be tested naturally.
> > =

> =

> Yeah, netid_napi_add does the id generation.
> =

> My idea was that driver would gradually move to a correct NAPI id (given
> that it's hard to test w/o HW. Virtio however is simpler to test. :-)
> =

> =

> Bj=C3=B6rn

tun too ;)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
