Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC68E951A99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 14:12:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13C3D40BBB;
	Wed, 14 Aug 2024 12:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jN2foZtJ1py0; Wed, 14 Aug 2024 12:12:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C58A840BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723637537;
	bh=PG9e6JitvYXoqzSTP8p6u30qXecQWEzNyRf8++iwfzg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5DerB9EVuW8ZR1kUsq8+hSwCT8QJjGDs/QyvJm0c+RylLE1sTD7eJTyiqv/wbWQWf
	 ZRVZL8ZZmrx7diWEZj764JildyYbZzsTfUnX7HaayJaOpP3YWcMAcQt023/2e/Rb9B
	 /JsCUWS+TfKeMBTm805qPMdp39c8mKYoeweoIWY4PccESuXy6UVim3AVDwT7i1JNBI
	 AUW0o5DVBhLE2F8zAzLde4FG4biB5im5WS/cVxlbI8CFlTLAh/pJBewO2rvCv1pnX/
	 zIoIDyQBmfi9hz8BU7N6Sjq8EK/YJ+wKcs6mmBgK8+qnrFijbURRsiPuEHbVpbdruA
	 3rPptYNLIBFmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C58A840BC2;
	Wed, 14 Aug 2024 12:12:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 456781BF316
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 12:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3092F40183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 12:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DMWjUaQlbnrA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 12:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AC0724017A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC0724017A
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC0724017A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 12:12:13 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-4280bbdad3dso48404805e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 05:12:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723637531; x=1724242331;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PG9e6JitvYXoqzSTP8p6u30qXecQWEzNyRf8++iwfzg=;
 b=lqnUADzy87PAlCPEq624108PrsR5E+9h4gDN4AosQ57S32WuoEz/d7HyBs+glTWKrl
 9ir0ov2GzPwcjeCImDG8SJ68f1WJJyD6lItTmj23SjXNiLr8xh9Fh/C0gCE3SEtKbM4a
 YT1RIZ8mV1lZ807OJ1nEQHZEKNn6jCNUKuubeoFrTyxyljF29wlwsAbtKQCzV/mEhR6A
 l5n0LhEVgDJzWzTy4GfVfRK5E4UxXIvPUzO9xfAxsicyKW6IKIFtPrkbnylWigeWv6/B
 ITIxEd4b0psqXltQtyb0E/pL0/GBude5j0CdtVQIgSoWXRei1ic28LdpOUYFwglNJgjY
 TvbA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWltH/SqXzAc44PLotAFnZriuix/D0agUChNmJf1uXzpQQAyN9Ggo+1eNbOqoLmRnQnFcTYoJShVXso0swdmLHeMiEffT8B3WPB3KWsr5rXvA==
X-Gm-Message-State: AOJu0YyScv/olI/pXZHXsiqA5suZcfK6kHP3kXn/kI3bQVHUQpzxc9pf
 aWWbTrOL4gkRruu2NG1WEbnmqkkL4AwgtB1ldidrTl/mLhwA0pwdYZU6x87M3HU=
X-Google-Smtp-Source: AGHT+IEXQhc1DRLmbpucvwdmK1QHHySaNdm9iIXPW0P1dXOgYRVT3R+EtoisglPADmrSMdzG+PAwVw==
X-Received: by 2002:a05:600c:4710:b0:426:62c5:4741 with SMTP id
 5b1f17b1804b1-429dd22fe4dmr18421295e9.2.1723637531117; 
 Wed, 14 Aug 2024 05:12:11 -0700 (PDT)
Received: from LQ3V64L9R2.home ([80.208.222.2])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-429ded1e3f7sm18267235e9.4.2024.08.14.05.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 05:12:10 -0700 (PDT)
Date: Wed, 14 Aug 2024 13:12:08 +0100
From: Joe Damato <jdamato@fastly.com>
To: Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeroen de Borst <jeroendb@google.com>,
 Jiri Pirko <jiri@resnulli.us>, Leon Romanovsky <leon@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Shailend Chand <shailend@google.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Ziwei Xiao <ziweixiao@google.com>
Message-ID: <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeroen de Borst <jeroendb@google.com>,
 Jiri Pirko <jiri@resnulli.us>, Leon Romanovsky <leon@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Shailend Chand <shailend@google.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Willem de Bruijn <willemb@google.com>,
 Yishai Hadas <yishaih@nvidia.com>,
 Ziwei Xiao <ziweixiao@google.com>
References: <20240812145633.52911-1-jdamato@fastly.com>
 <20240813171710.599d3f01@kernel.org>
 <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723637531; x=1724242331; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=PG9e6JitvYXoqzSTP8p6u30qXecQWEzNyRf8++iwfzg=;
 b=Ac1fsv3Ft1Jjpe/M3/bLc60B213EhVNbf5uk8U7R1qbmFwdeE9OB7Ozxdbr616HMPg
 OereBYn6uEU855JVrZPrbWUqhBV7neVnXci2b3mcqfWyZXhBDxUEidMP6fUH14rOjFB1
 p3tvKCcGsawRfDUP8zgzI0ZuauolutLGWGDfw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Ac1fsv3F
Subject: Re: [Intel-wired-lan] [RFC net-next 0/6] Cleanup IRQ affinity
 checks in several drivers
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 14, 2024 at 08:14:48AM +0100, Joe Damato wrote:
> On Tue, Aug 13, 2024 at 05:17:10PM -0700, Jakub Kicinski wrote:
> > On Mon, 12 Aug 2024 14:56:21 +0000 Joe Damato wrote:
> > > Several drivers make a check in their napi poll functions to determine
> > > if the CPU affinity of the IRQ has changed. If it has, the napi poll
> > > function returns a value less than the budget to force polling mode to
> > > be disabled, so that it can be rescheduled on the correct CPU next time
> > > the softirq is raised.
> > 
> > Any reason not to use the irq number already stored in napi_struct ?
> 
> Thanks for taking a look.
> 
> IIUC, that's possible if i40e, iavf, and gve are updated to call
> netif_napi_set_irq first, which I could certainly do.
> 
> But as Stanislav points out, I would be adding a call to
> irq_get_effective_affinity_mask in the hot path where one did not
> exist before for 4 of 5 drivers.
> 
> In that case, it might make more sense to introduce:
> 
>   bool napi_affinity_no_change(const struct cpumask *aff_mask)
> 
> instead and the drivers which have a cached mask can pass it in and
> gve can be updated later to cache it.
> 
> Not sure how crucial avoiding the irq_get_effective_affinity_mask
> call is; I would guess maybe some driver owners would object to
> adding a new call in the hot path where one didn't exist before.
> 
> What do you think?

Actually... how about a slightly different approach, which caches
the affinity mask in the core?

  0. Extend napi struct to have a struct cpumask * field

  1. extend netif_napi_set_irq to:
    a. store the IRQ number in the napi struct (as you suggested)
    b. call irq_get_effective_affinity_mask to store the mask in the
       napi struct
    c. set up generic affinity_notify.notify and
       affinity_notify.release callbacks to update the in core mask
       when it changes

  2. add napi_affinity_no_change which now takes a napi_struct

  3. cleanup all 5 drivers:
    a. add calls to netif_napi_set_irq for all 5 (I think no RTNL
       is needed, so I think this would be straight forward?)
    b. remove all affinity_mask caching code in 4 of 5 drivers
    c. update all 5 drivers to call napi_affinity_no_change in poll

Then ... anyone who adds support for netif_napi_set_irq to their
driver in the future gets automatic support in-core for
caching/updating of the mask? And in the future netdev-genl could
dump the mask since its in-core?

I'll mess around with that locally to see how it looks, but let me
know if that sounds like a better overall approach.

- Joe
