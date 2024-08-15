Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCBE952BEA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 12:23:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D615C400F8;
	Thu, 15 Aug 2024 10:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VLPzcpP7jX0F; Thu, 15 Aug 2024 10:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5D4D403C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723717388;
	bh=JbsnFZH9IAeMkQGJJtoUFHpAfF+HiIlJJCpWSwAym4I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YP4yjJ4cxUm54W6erjkdxoCHUw/G14aUq4+ioFOehMtbBBBbPG8RajH5cUmRefSpW
	 Yge5SdnGEycQI0f1rXCWZjaAZW2hJxVDAbsNn+kk17soL7QD4DBIAJrXlTAdqVxCTa
	 mWlYb8bVazm2pSXBZGp+T3xWvT12Gk+XVI3YKrAMrvHwQ1grv3kOvV/EF1CqQI0WBc
	 NFKYdNubIif3OoOcqOn8UpJegNbDhwWHDxr2Jus6uF5NpPVji4QEDSAl0tf+1FY6yw
	 7tT1tqRGt5q8FKwT6FNmtWAkyKeiITffMdXX548+1dRt17nLJg9TePyNAv5RFAg0YB
	 rOQ9wdVOvy4jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5D4D403C0;
	Thu, 15 Aug 2024 10:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E2421BF30C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 10:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57F4B60A6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 10:23:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRWrMCofuYHG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 10:23:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 968B260A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 968B260A65
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 968B260A65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 10:23:04 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-429e29933aaso4761105e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 03:23:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723717382; x=1724322182;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JbsnFZH9IAeMkQGJJtoUFHpAfF+HiIlJJCpWSwAym4I=;
 b=AS/3xjheE3N4UJC04zz3gsCxhgqlyJqV0mNeSLUS9WtEsYL2rVU1foJjnzIPtMOX4t
 7EANfbahi7/2ssz1p7hs4Y0zUFVfggNPcvN+cR4GgjuI68sk/SrAODFmIdZA1p51dIQi
 h22yzmC8qbYJZAtQJEufAQDA2tOXVXDi+DUjgZVtrbiI+gzCuKCUcGQZMyfeXLHBsbjO
 EuEOubG5x/IBe2SaDjyPR/FmbGEM9sVP4q8rT6HHpoS6Dbf8Zl+D8AyVPcZ8E0UoBWyX
 eSpwhTnCDXTIB8lXSP+a5/pIBBjVSzWhVLyn+LLtbyvhUP4LQRbwxXE8lCbu99sO4rqJ
 UHRw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWewCq1u3ktJKW5tJjVMs+fx2ff8Iw8c4IiVW2JES2VGvdmPbglLnu5DGRgST382/YtK9G9/YRUTvt5fn51Jc27X/yveq/79Av4Aa3FwVRj4g==
X-Gm-Message-State: AOJu0YwrRiSp239Bi1vTcawjQiKIGvof2kJkpd3sXJbzvwt/JNKo4SRw
 dsTP8OQipWuH1sYzj4vjrnbQoU1FEB1qQif3Q94rNoHelpTfGAf7VMTIiizaHrw=
X-Google-Smtp-Source: AGHT+IFRMnpq89Ndgm1XWkrIwkNFCLIoPM8Uv6CXkf8fMwmcHs21IKRm+btZ4KEJCdOrXMWmGT28lg==
X-Received: by 2002:a05:600c:4445:b0:426:689b:65b7 with SMTP id
 5b1f17b1804b1-429dd264da5mr36184295e9.25.1723717382050; 
 Thu, 15 Aug 2024 03:23:02 -0700 (PDT)
Received: from LQ3V64L9R2 ([80.208.222.2]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37189856b07sm1135018f8f.50.2024.08.15.03.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2024 03:23:01 -0700 (PDT)
Date: Thu, 15 Aug 2024 11:22:59 +0100
From: Joe Damato <jdamato@fastly.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Zr3XA-VIE_pAu_k0@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jakub Kicinski <kuba@kernel.org>, Shay Drori <shayd@nvidia.com>,
 netdev@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
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
 <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
 <20240814080915.005cb9ac@kernel.org> <ZrzLEZs01KVkvBjw@LQ3V64L9R2>
 <701eb84c-8d26-4945-8af3-55a70e05b09c@nvidia.com>
 <ZrzxBAWwA7EuRB24@LQ3V64L9R2> <20240814172046.7753a62c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240814172046.7753a62c@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723717382; x=1724322182; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JbsnFZH9IAeMkQGJJtoUFHpAfF+HiIlJJCpWSwAym4I=;
 b=J9fWyc+6H3/7egRpTwu1DdJAjm64FrImMtahIRkw9amyhpz7tspnqL4nn8UNZoMOs+
 kIqzrCIiTwTYxp7AOBQDkpWPaah/whSaHJGtLS1vjdMapOOnPaMFEhaI5ZsRfHNIpzxZ
 EmA90Qb1GW0pBgykaSBiXBsHQL+6t33t12uX0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=J9fWyc+6
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ziwei Xiao <ziweixiao@google.com>, Jeroen de Borst <jeroendb@google.com>,
 Leon Romanovsky <leon@kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Shailend Chand <shailend@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Shay Drori <shayd@nvidia.com>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 14, 2024 at 05:20:46PM -0700, Jakub Kicinski wrote:
> On Wed, 14 Aug 2024 19:01:40 +0100 Joe Damato wrote:
> > If it is, then the only option is to have the drivers pass in their
> > IRQ affinity masks, as Stanislav suggested, to avoid adding that
> > call to the hot path.
> > 
> > If not, then the IRQ from napi_struct can be used and the affinity
> > mask can be generated on every napi poll. i40e/gve/iavf would need
> > calls to netif_napi_set_irq to set the IRQ mapping, which seems to
> > be straightforward.
> 
> It's a bit sad to have the generic solution blocked.
> cpu_rmap_update() is exported. Maybe we can call it from our notifier?
> rmap lives in struct net_device

I agree on the sadness. I will take a look today.

I guess if we were being really ambitious, we'd try to move ARFS
stuff into the core (as RSS was moved into the core).
