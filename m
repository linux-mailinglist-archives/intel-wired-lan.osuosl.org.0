Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6843FA6939F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 16:36:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ABA881FB2;
	Wed, 19 Mar 2025 15:36:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4PpOXHeT4esV; Wed, 19 Mar 2025 15:36:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D67E82087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742398560;
	bh=VQ4El0IDIl55DEcGT1TojkpAPTGa13An5HvreBfUETs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ynyqwyf4qtl5HSz1gR3agVGlzWr+D7K5kXn9a7SZEDqusuRirJzwxXUGwMmp7aMmX
	 HKnSsd27XFLVvpgla37TRQx/0Yd1bvBiYdZj54KrrYFtrLgAT83eREw+QHQgI/uPV5
	 j4p2FLK2Uw3a4iGPUz+pX27E3MnNlOVzHXEbC5WjLAh3CsvckEAhUMz+UfDG8eXgx9
	 rxd3Cu/j+PBw+/l9qDFNhhtx8+pIplaZ3Q9YKSuCWBw/kK7J4AdVBq/E+x90yuJO3T
	 iEu2IL+CFg3MhuDyQ8/G+or2hp5aCLMGVrwlyRG5Vq8A2VdlA6QfUlbx5pe8TzFoFc
	 0HKyKC1YEd3mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D67E82087;
	Wed, 19 Mar 2025 15:36:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4675316E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E3B8411A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:35:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9SL2d0LESIJM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 15:35:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F2DCE410D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2DCE410D7
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2DCE410D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:35:56 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-225fbdfc17dso72884925ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 08:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742398556; x=1743003356;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VQ4El0IDIl55DEcGT1TojkpAPTGa13An5HvreBfUETs=;
 b=vGwe/B8nfL7dUr145O92/Xq0x5aUE5HsC6hxj423OvxJeB2vuKJt12CwzdLu3uy2qB
 eEeyplmHeOGyolfcIpPYlba2QXwdvz7yLVrWRQnytEDVTrMaGv7CJd3pCZKscv+fqDHN
 KZqgubx6NNVNgxsL/k1ESyCr7Q/2sYeAWsModg6yRu+fCA6IbQp/BdiRztQQ2F0LucRR
 TejKfRjDi3cj2/Ry1w7UOnOAqw19ORBTkYeu9JBcWJ0f6Rbwz7LTusstSPBN8Q5kdNFw
 Z2D8e5PXRrdU2f8pBMgOKL3to3uaicveObkBGROO5NTBOo9nFfPrYp/eCNcHKHL6aK5F
 k5JQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXglr9dBekCe6parjgGzGRyxHBWYM9FsFgpsptEUKJkM9qWjR3ANuWirZi8ktDNjZLUKa/BLUI0Sfwku3Y5GC4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwjW0uy8aEWR+STUJNYMc/R8YdEBM9mCaHSF4SH7dMr4rFNXpXB
 BVSOIYKdx4He5b/SGyDmUkrmq3ZnKxx2Pr0IKCHim0LGAVMTurFeWmjt25nrzM0=
X-Gm-Gg: ASbGncs5nv7Q/0Xc/c/QCtbfwVioIXZPNy/iNn9nqCzmXHlM3W89QH9WSt8GROy7YnB
 6pPK102GXhdUtl7VcDXrw3FvT+hKfWj30s3LFLdd0ZYQIIYOZmmJKAv9k7i7v9D7T28M0UhSyMC
 hGhnW08VuCjC0o7BocvkRX0UzXcoaf8MjNSGf5PUAKILkiknexnzNxiFbWg78MTc7SqfE4fmTRr
 6RazUW4VOnkBdgXxCdsPUrNKIXxwo6rfGPnbPmVo3EUOuC5VWCkvvfedOHdZmt5xt6Egu7FHd5d
 E39LrhvcvnMmrwYtrspmFutUf4QhXBmskMfAbtHwRMbUNt706anySc2SehWv7dAeX/xw/Pk4l/L
 BZjCYxC4reiGjUMpB
X-Google-Smtp-Source: AGHT+IFkHW9Ch+UrfyFX4GKPbdlIDvz2wh145OyBe1favuUANibDg81i86DIOD630S1dqYyxBWGiOw==
X-Received: by 2002:a17:903:228e:b0:224:2717:798d with SMTP id
 d9443c01a7336-22649c95c62mr45177375ad.50.1742398556084; 
 Wed, 19 Mar 2025 08:35:56 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-225c6ba6d69sm115552035ad.158.2025.03.19.08.35.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Mar 2025 08:35:55 -0700 (PDT)
Date: Wed, 19 Mar 2025 08:35:52 -0700
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z9rkWLEkwRJXYo2x@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
 <20250319-igb_irq-v3-2-b9ee902143dd@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250319-igb_irq-v3-2-b9ee902143dd@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1742398556; x=1743003356; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VQ4El0IDIl55DEcGT1TojkpAPTGa13An5HvreBfUETs=;
 b=KwvyyYwtmIEyhTlFfJz3nIJ3bbV9hy4447rYh59+AUjK5VbbzBHEAZEqza8XCm+twE
 UUSK782aNP6y++Q1P+/ClUHYd5Shg/jeQL2CmlqhpGdBq3yaNI6IR5KQCSWlhG8KiIen
 wnWE0Um9ywREVzhze+E80vWTbbvTAHgh8k3Ho=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=KwvyyYwt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/4] igb: Link queues to
 NAPI instances
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

On Wed, Mar 19, 2025 at 11:26:40AM +0100, Kurt Kanzenbach wrote:
> Link queues to NAPI instances via netdev-genl API. This is required to use
> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy polling
> support") for details.
> 
> This also allows users to query the info with netlink:
> 
> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> |                               --dump queue-get --json='{"ifindex": 2}'
> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
> 
> Add rtnl locking to PCI error handlers, because netif_queue_set_napi()
> requires the lock held.
> 
> While at __igb_open() use RCT coding style.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>  drivers/net/ethernet/intel/igb/igb_main.c | 43 +++++++++++++++++++++++++++----
>  2 files changed, 40 insertions(+), 5 deletions(-)

Reviewed-by: Joe Damato <jdamato@fastly.com>
