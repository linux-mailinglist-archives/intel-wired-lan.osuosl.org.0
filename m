Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F679908FD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 18:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB0594031F;
	Fri,  4 Oct 2024 16:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZMN3wv5FngL7; Fri,  4 Oct 2024 16:22:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C22C040319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728058949;
	bh=IiKLndcyYH7rIY6+ban5HB3XSyx5eEP2bPfLFhg1KI4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4UHmTRCQRRHu0o8NDEaU2M0xu0eh3SBKyNhWuVbRubC1jQzb55Sv8DfeNBGtduyv5
	 9eoXAfwJnT/LnB0W+Kao9jYng1MWczrD2Ag8Rwk0zquzMD3/NLH5a9f2pIgXj7WZSs
	 PiV+ry+TKzWlXnuIXM2FxE3jdQHL1ZL5Z4J6KyY8YRV2TEyDpqmTUQ8Jl027SL1hPY
	 flVJrOHzFATClUROhAoTPpcmaBmw+NPF9VPpbphyj5AOnSQZkcudZSI7TzOYe7HXYu
	 2t34Rrjjd6xuY9I+9KZ7WpoJbxT8oFBXd7BbMtPr/quooj/ybwrJIPSUq5ZV4cs/Mq
	 O9z0zRLFR5sXg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C22C040319;
	Fri,  4 Oct 2024 16:22:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0229A1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 16:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E47D5610B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 16:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b5HnULN9PLfu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 16:22:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1DB7760744
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DB7760744
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1DB7760744
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 16:22:26 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-2e1bfa9ddb3so1693276a91.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2024 09:22:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728058946; x=1728663746;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IiKLndcyYH7rIY6+ban5HB3XSyx5eEP2bPfLFhg1KI4=;
 b=VGAyC6tHwVmjCKviSN/N4XV12E60zAorB5jY0EFLqHNhiFlSdTjH0ONaNNHwvlMeL2
 dyawzj8J+tC34vE2RULS+V6dUkKPIES1kamdJ8PjMkIaSPw+72gyXulLsrA46Sb12iV/
 53O3ZMpr06vxry124Aoo8uP1f8blb0JZMpTVNh721CRhKh5QEgPUYnzAfMmiMSFQZV95
 eJ8sJOEVV7/KZuBeaXmm2dq9D0iQGr389Zig3VNla1pXGom7p55YTWUFLN5J4gzB8oQ6
 3ESVszqWNo6ql/5itjgE4SGOnilsFDXNnyjTJZpbQtSXQ7RVP3jghPcPl7HU4COq80AF
 qRuw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXS3H0X8YPz9xUXD90yiXued5TZ2s/WRmwg8i+mk/XMSQbSEUXYHychOJClXme+UdYTXYQTp6IMepV0nn3JgdE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywh+neoW7gExgW2LmvwrUSa6/BwVkahlxWHF2oPGTXY4qseU+aK
 CbYzVGbuoxxmPD2hYp2zyiRSqOSa4cptviQZrEY+EkBSGKtY1ow=
X-Google-Smtp-Source: AGHT+IEI6UcOl2z3NwD/Obevru63AVasNN95GSKu0sNmL+CypXsezoR8vxwOcZjTy/7iJ1GELnSOLA==
X-Received: by 2002:a17:90b:d81:b0:2d8:f3e7:a177 with SMTP id
 98e67ed59e1d1-2e1e620db58mr3188386a91.6.1728058945894; 
 Fri, 04 Oct 2024 09:22:25 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e1e86aa36dsm1806025a91.53.2024.10.04.09.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2024 09:22:25 -0700 (PDT)
Date: Fri, 4 Oct 2024 09:22:24 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org,
 mkarsten@uwaterloo.ca, skhawaja@google.com, sdf@fomichev.me,
 bjorn@rivosinc.com, amritha.nambiar@intel.com,
 sridhar.samudrala@intel.com, willemdebruijn.kernel@gmail.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Breno Leitao <leitao@debian.org>, Daniel Jurgens <danielj@nvidia.com>,
 David Ahern <dsahern@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Donald Hunter <donald.hunter@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Leon Romanovsky <leon@kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 Mina Almasry <almasrymina@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>
Message-ID: <ZwAWQCpSbb4sn0LX@mini-arch>
References: <20241001235302.57609-1-jdamato@fastly.com>
 <Zv8o4eliTO60odQe@mini-arch> <Zv8uaQ4WIprQCBzv@LQ3V64L9R2>
 <Zv9UA1DkmJQkW_sG@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zv9UA1DkmJQkW_sG@LQ3V64L9R2>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728058946; x=1728663746; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IiKLndcyYH7rIY6+ban5HB3XSyx5eEP2bPfLFhg1KI4=;
 b=ZEN0GvCjDMYGPGZd1ZFLmp/2fp0fNeCflHm070GhXtI4d7bHLX0DdzLTEtKiXNfml3
 kqCkNMvVc2Cm/6bf+q1w7B3iKmdgbuQEz67rBrzCzYXL5O+SY0QAVR1tvBJqbf/c7YQi
 3paRRj/EtdrMvMqYE3Cwev7SKR1T4vQLzMB6n0pQnamtEbTmMpEaJ8OiCwkOKEh9VAlr
 H2LYS4E4jy+AyO6uNqKBSlCziPagsr6yRbKxVMJ2tUrNBefWrcW2hFawoa7mNZ6dDu3q
 Xgtd/paW2Iyd7HSVijPy85kDWuLNZeDbL9XWTnO41Rz7JnFMYIZXD79r7XwgAImnkalZ
 Z8Dw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ZEN0GvCj
Subject: Re: [Intel-wired-lan] [RFC net-next v4 0/9] Add support for
 per-NAPI config via netlink
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

On 10/03, Joe Damato wrote:
> On Thu, Oct 03, 2024 at 04:53:13PM -0700, Joe Damato wrote:
> > On Thu, Oct 03, 2024 at 04:29:37PM -0700, Stanislav Fomichev wrote:
> > > On 10/01, Joe Damato wrote:
> > 
> > [...]
> >  
> > > >   2. This revision seems to work (see below for a full walk through). Is
> > > >      this the behavior we want? Am I missing some use case or some
> > > >      behavioral thing other folks need?
> > > 
> > > The walk through looks good!
> > 
> > Thanks for taking a look.
> > 
> > > >   3. Re a previous point made by Stanislav regarding "taking over a NAPI
> > > >      ID" when the channel count changes: mlx5 seems to call napi_disable
> > > >      followed by netif_napi_del for the old queues and then calls
> > > >      napi_enable for the new ones. In this RFC, the NAPI ID generation
> > > >      is deferred to napi_enable. This means we won't end up with two of
> > > >      the same NAPI IDs added to the hash at the same time (I am pretty
> > > >      sure).
> > > 
> > > 
> > > [..]
> > > 
> > > >      Can we assume all drivers will napi_disable the old queues before
> > > >      napi_enable the new ones? If yes, we might not need to worry about
> > > >      a NAPI ID takeover function.
> > > 
> > > With the explicit driver opt-in via netif_napi_add_config, this
> > > shouldn't matter? When somebody gets to converting the drivers that
> > > don't follow this common pattern they'll have to solve the takeover
> > > part :-)
> > 
> > That is true; that's a good point.
> 
> Actually, sorry, that isn't strictly true. NAPI ID generation is
> moved for everything to napi_enable; they just are (or are not)
> persisted depending on whether the driver opted in to add_config or
> not.
> 
> So, the change does affect all drivers. NAPI IDs won't be generated
> and added to the hash until napi_enable and they will be removed
> from the hash in napi_disable... even if you didn't opt-in to having
> storage.
> 
> Opt-ing in to storage via netif_napi_add_config just means that your
> NAPI IDs (and other settings) will be persistent.
> 
> Sorry about my confusion when replying earlier.

AFAIA, all control operations (ethtool or similar ones via netlink),
should grab rtnl lock. So as long as both enable/disable happen
under rtnl (and in my mind they should), I don't think there is gonna
be any user-visible side-effects of your change. But I might be wrong,
let's see if others can come up with some corner cases..
