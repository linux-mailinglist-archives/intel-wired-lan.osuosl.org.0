Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D65142B4633
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 15:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92FB185F43;
	Mon, 16 Nov 2020 14:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wk4T8bgyDPzj; Mon, 16 Nov 2020 14:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03D5E85F5B;
	Mon, 16 Nov 2020 14:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D31B61BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:42:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA0AE86802
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:42:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oZ9-MFkkGmry for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 12:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2435286411
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605530571;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qEbpHcgw1tmnryDmccfjTomLDpsxLPelpNX7s8ClWec=;
 b=e6iVMbe5neo5Qvd3KZdGnhIGAXU8cCe1WquXaPX6nOPobQ3iy14PwH2EgZOJBZoh/p6KUa
 QhQeVnbkJSNHdL7bpfqGtG/Xu2D8cIm+uIDSfdjFsOknI4OPYF5E5sWB0m0a6r12C+nr3h
 qz448frs18qVpKZnPsdDenKiaMbFLsE=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-PK-E7FDXMfe6_mHYXoj_fw-1; Mon, 16 Nov 2020 07:42:48 -0500
X-MC-Unique: PK-E7FDXMfe6_mHYXoj_fw-1
Received: by mail-wr1-f70.google.com with SMTP id f4so11072957wru.21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 04:42:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ebTze6DX+bt9ao6H/89yHeOnEFANqz0oC2+q+FvQf/4=;
 b=gaorDWlTlIe8JEVCZRCDFvDGyxYdNqRpm43WOHwTff71s2Nvw/XOGd7nEuVjmLRIBv
 QP5WsZ1yhTL7ERAqJX13e2iiYbn6GOUyFvtTEjES0RsrvevrcjWxdDJZwmIk4apXjRRE
 9+fAn0Uupt92ln03lSfewPnUE+0RqvOmcBu7lWm94nvtyGqSvMn4iog4Cr2Hcb2qP2ml
 8BKfTSfYGrbqqZdEZZtQAyHXvDxot9YwUMUaIAa8ANiQjmxc/elGChvz/0fAmXPqruuF
 vOcuD2hWnV2QG4OdgqBcA2VMJcf7LiUAjcy3jAnnSDSjExI6Av34jq3T5u1DkiJZm8j9
 rmZA==
X-Gm-Message-State: AOAM530Zi9VaD/m8gEvDayiqaZ2yqDZOHZ3RKmbHmYHom52fDg1PPJUs
 sAXJKsQbUQc5hDahzXb/Kt7GKCYXqCMX3u30MG3gO2rqVLz7pz4qujJoLf/bf+NjYVdrfczzoll
 4TN6JwcWJni9UKBR51GEvhjmyrMGjWg==
X-Received: by 2002:adf:cd8d:: with SMTP id q13mr19546307wrj.61.1605530566835; 
 Mon, 16 Nov 2020 04:42:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzvLNvqw2PCiGnQ/AnYIf9wyKk6yla1iwqBK5/HgTes54MIdQk05hIzkeOYR0tQ+cjEhCV+5Q==
X-Received: by 2002:adf:cd8d:: with SMTP id q13mr19546248wrj.61.1605530566524; 
 Mon, 16 Nov 2020 04:42:46 -0800 (PST)
Received: from redhat.com ([147.161.8.56])
 by smtp.gmail.com with ESMTPSA id w21sm19377559wmi.29.2020.11.16.04.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 04:42:45 -0800 (PST)
Date: Mon, 16 Nov 2020 07:42:34 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>
Message-ID: <20201116073848-mutt-send-email-mst@kernel.org>
References: <20201116110416.10719-1-bjorn.topel@gmail.com>
 <20201116110416.10719-7-bjorn.topel@gmail.com>
 <20201116064953-mutt-send-email-mst@kernel.org>
 <614a7ce4-2b6b-129b-de7d-71428f7a71f6@intel.com>
MIME-Version: 1.0
In-Reply-To: <614a7ce4-2b6b-129b-de7d-71428f7a71f6@intel.com>
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

On Mon, Nov 16, 2020 at 01:01:40PM +0100, Bj=C3=B6rn T=C3=B6pel wrote:
> =

> On 2020-11-16 12:55, Michael S. Tsirkin wrote:
> > On Mon, Nov 16, 2020 at 12:04:12PM +0100, Bj=C3=83=C2=B6rn T=C3=83=C2=
=B6pel wrote:
> > > From: Bj=C3=83=C2=B6rn T=C3=83=C2=B6pel <bjorn.topel@intel.com>
> > > =

> > > Add napi_id to the xdp_rxq_info structure, and make sure the XDP
> > > socket pick up the napi_id in the Rx path. The napi_id is used to find
> > > the corresponding NAPI structure for socket busy polling.
> > > =

> > > Acked-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> > > Signed-off-by: Bj=C3=83=C2=B6rn T=C3=83=C2=B6pel <bjorn.topel@intel.c=
om>
> > =

> > A bunch of drivers just pass in 0. could you explain when
> > is that ok? how bad is it if the wrong id is used?
> > =

> =

> If zero is passed, which is a non-valid NAPI_ID, busy-polling will never
> be performed.
> =

> Depending on the structure of the driver, napi might or might not be
> initialized (napi_id !=3D 0) or even available. When it wasn't obvious, I
> simply set it to zero.
> =

> So, short; No harm if zero, but busy-polling cannot be used in an XDP
> context.
> =

> =

> [...]
> > > diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
> > > index 21b71148c532..d71fe41595b7 100644
> > > --- a/drivers/net/virtio_net.c
> > > +++ b/drivers/net/virtio_net.c
> > > @@ -1485,7 +1485,7 @@ static int virtnet_open(struct net_device *dev)
> > >   			if (!try_fill_recv(vi, &vi->rq[i], GFP_KERNEL))
> > >   				schedule_delayed_work(&vi->refill, 0);
> > > -		err =3D xdp_rxq_info_reg(&vi->rq[i].xdp_rxq, dev, i);
> > > +		err =3D xdp_rxq_info_reg(&vi->rq[i].xdp_rxq, dev, i, 0);
> > >   		if (err < 0)
> > >   			return err;
> > =

> > Should this be rq.napi.napi_id ?
> > =

> =

> Yes, if rq.napi.napi_id is valid here! Is it?

What initializes it? netif_napi_add? Then I think yes, it's
initialized for all queues ...
Needs to be tested naturally.

> =

> Cheers,
> Bj=C3=B6rn

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
