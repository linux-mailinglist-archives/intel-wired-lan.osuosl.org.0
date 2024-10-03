Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3559C98FA6C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 01:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9EA660F7B;
	Thu,  3 Oct 2024 23:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIkYZIwAYgxe; Thu,  3 Oct 2024 23:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1916C60F77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727998182;
	bh=zJJfYTsJBD1YUpbtaYyu99p9PsYf+XDP7HfTuVlkPL0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sMmio8LLOR0MvVQuUwsSM6nKejnC2PbtlJIMrS5yk/VcBa/dpwy1sBO6hhQJhaI6u
	 Tpg1Z8XipkI6/CCm8j8pa+B5ZQxaVKvuWp24opEY+CQmQm9fgkSFeuBptjlxKnxKIJ
	 7U0c2McAOWcOKuPa7KIlj7tVdLDH+w/QarWDr1IXJse33zFvX6aZEv6FVH05+84GdG
	 2xgPg0Aak8aL13VR+sb59EvayeG2b5PSOPjv+ZzCdacu2M7/wI5WdjomYLiW0b4NB2
	 BZcEpTJbfj0sLN+yi5f8k9c0JMK9FhshbR/5V9xTNpk0xgBDU3K/+1rlz3rCQpv1VC
	 mUPTPI4iZz8Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1916C60F77;
	Thu,  3 Oct 2024 23:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00A1F1BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E100540B38
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjzFbiQcZ3gs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 23:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF5A340B37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF5A340B37
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF5A340B37
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:29:39 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-7198de684a7so1207608b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2024 16:29:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727998179; x=1728602979;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zJJfYTsJBD1YUpbtaYyu99p9PsYf+XDP7HfTuVlkPL0=;
 b=wFyfqlCGYerZNfXhyxGsYcmMCzIkaJfYmpQ8IoxWPEumQ0OPKPY8yf41vdjhUPO71x
 KKliU7MJY3DqlAc9hetXDV4gFi6BVAnVUSZjOOVyFL3hb3VLNAyZYU5s/xt2sA7dtLto
 6c8iv8ds07KSGex5hiMAHzbVE/m37ltXGjBv3dv3pXJ6Bub3nu1aY6gV6QOhKJOOGP9Y
 jyVrxbKZXVLm0qCAuttWICNdjEot9yS4sdsBfcnJu2ATixJpmQjNKJQNGgxU6YZJsfZb
 Y0s7+UnWpZJXQ5M9xPUbtHsVfvcSoQFNFQqxMScQirpYJmmM4oyaOWRBFcbasqyVHZ/e
 zXOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzBxbyLLPdlpl+ETsMmiVGZn+syf6nX6V6bzd9A2F31EwBUnedBaeTdprjtOZ3jBY0pPu0oOMV9lKKmNT2wak=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy7jT5IOLq5ubyxzJPXPaQ7kBWUt1zbjnZzYjEpwfNSIFiT263i
 HH8zkI04NKaPOA+L3O4HVfNloLLCNNYkJFs1D2sPt/QStHBxEu4=
X-Google-Smtp-Source: AGHT+IGvaV40ffnh+bcHsRNWNaFU/gWd5N//USCwZyNU/5JM6pBgrlCZqQRe3DPLD2Ps7suX/tnyoA==
X-Received: by 2002:a05:6a21:3489:b0:1cf:2aaa:9199 with SMTP id
 adf61e73a8af0-1d6dfa35eb5mr1378179637.15.1727998179000; 
 Thu, 03 Oct 2024 16:29:39 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71dd9e0809bsm1932509b3a.201.2024.10.03.16.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2024 16:29:38 -0700 (PDT)
Date: Thu, 3 Oct 2024 16:29:37 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <Zv8o4eliTO60odQe@mini-arch>
References: <20241001235302.57609-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241001235302.57609-1-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727998179; x=1728602979; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zJJfYTsJBD1YUpbtaYyu99p9PsYf+XDP7HfTuVlkPL0=;
 b=Gp92z8STeLn2/MlxfCGVYiDmCk0IrgtQCBR5p3+O9/jLdoAitYwkaOfKngnvSpRq/6
 Ugp8cQbABBGphzi670gVq10+jT/+Fm+epDVKNbPhBgG3F9kgdQufyD7PrmnhUseZ4osh
 LHnbv8cadBy3ze/Pda7ozGFke9mRfGBMeCW9FuUa2jbB4weA5iqH0/r8q4H7ICPvfj9H
 Ys6vJHjFE75rzB1/kzeWhjrCA2rztQErepHjT3RHrbPKdYHC8/ZVGlYpRmCx+uIEeEDS
 vowjkmI2pp9EVztXUpWFi5vFSaJRNRi6WiyU0HrEYyHluWx91tqN5RZ1MxLckMRjYGDa
 8n7w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Gp92z8ST
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 mkarsten@uwaterloo.ca, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 bjorn@rivosinc.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Daniel Jurgens <danielj@nvidia.com>,
 Breno Leitao <leitao@debian.org>, Mina Almasry <almasrymina@google.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, willemdebruijn.kernel@gmail.com,
 Donald Hunter <donald.hunter@gmail.com>, amritha.nambiar@intel.com,
 Jonathan Corbet <corbet@lwn.net>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, sdf@fomichev.me,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Michael Chan <michael.chan@broadcom.com>, skhawaja@google.com,
 Kory Maincent <kory.maincent@bootlin.com>, Leon Romanovsky <leon@kernel.org>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, sridhar.samudrala@intel.com,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/01, Joe Damato wrote:
> Greetings:
> 
> Welcome to RFC v4.
> 
> Very important and significant changes have been made since RFC v3 [1],
> please see the changelog below for details.
> 
> A couple important call outs for this revision for reviewers:
> 
>   1. idpf embeds a napi_struct in an internal data structure and
>      includes an assertion on the size of napi_struct. The maintainers
>      have stated that they think anyone touching napi_struct should update
>      the assertion [2], so I've done this in patch 3. 
> 
>      Even though the assertion has been updated, I've given the
>      cacheline placement of napi_struct within idpf's internals no
>      thought or consideration.
> 
>      Would appreciate other opinions on this; I think idpf should be
>      fixed. It seems unreasonable to me that anyone changing the size of
>      a struct in the core should need to think about cachelines in idpf.

[..]

>   2. This revision seems to work (see below for a full walk through). Is
>      this the behavior we want? Am I missing some use case or some
>      behavioral thing other folks need?

The walk through looks good!


>   3. Re a previous point made by Stanislav regarding "taking over a NAPI
>      ID" when the channel count changes: mlx5 seems to call napi_disable
>      followed by netif_napi_del for the old queues and then calls
>      napi_enable for the new ones. In this RFC, the NAPI ID generation
>      is deferred to napi_enable. This means we won't end up with two of
>      the same NAPI IDs added to the hash at the same time (I am pretty
>      sure).


[..]

>      Can we assume all drivers will napi_disable the old queues before
>      napi_enable the new ones? If yes, we might not need to worry about
>      a NAPI ID takeover function.

With the explicit driver opt-in via netif_napi_add_config, this
shouldn't matter? When somebody gets to converting the drivers that
don't follow this common pattern they'll have to solve the takeover
part :-)
