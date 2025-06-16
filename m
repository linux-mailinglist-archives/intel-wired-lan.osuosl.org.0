Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D67E4ADB583
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 17:33:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9622C80BD9;
	Mon, 16 Jun 2025 15:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ODe5wvFEDuuk; Mon, 16 Jun 2025 15:33:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1585480BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750088038;
	bh=p8OkHQgLnKX71RiA9XfFls/QVC13WHAM4qgo7+lq6bg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w4b6Fqq+DbSxjANYxnr2h7LDnnKlLO1TAccHwQr/4CzgYdpJIGmB5C+DNdTl7Td3B
	 +oeZW8BSHLBzy7BNcvttZGY21YBmzVd8vjAgblpjOXMwKvl3T1k/xkwB6jnkE3tVpF
	 Qt7jBeQZzfgj8d439fZXhhhNjQuF8UNy6MLNws9lWKwTljdSAIYUO7EYkQNjNyJPgy
	 +NUvj/t4ixbFesBdXVAfYWEezdFg4vS8zzpxP+IiWE2cN06/tmOR3WvrMdaNrthrrJ
	 HSfAXoJLF3Qa+CDqLIj3aTXYJwO3xR45RGFosR9l04Ee5+IRGxu4Bhu1lDclOZhGJa
	 btAScKhXf7VAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1585480BEE;
	Mon, 16 Jun 2025 15:33:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D4FF71A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBAF880BBD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:33:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxjEcvaYAtXH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 15:33:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F8D380BBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F8D380BBA
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F8D380BBA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:33:54 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-3a4f379662cso4101747f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 08:33:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750088033; x=1750692833;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=p8OkHQgLnKX71RiA9XfFls/QVC13WHAM4qgo7+lq6bg=;
 b=vKBOEZ59YS+b6EBdtkfmPtl6m99ywOnaO8DasGCK71xKY1gyaqQVNmHloILVyIMuYj
 8HsfFIHKE4UaBf7VIuPppnAUwpq7ystrJ5GeG4XU1Nvq0OiQrY5q0ZGwYPnsmn9auSDy
 lUCDjGiO3n0XVWMEHXAQ5snGb7rLvhI11fGgPaphbNUY8VjtscaRPQSNPmHNvjTdgPc8
 WY0DIq1kL3fb9cDO0yRnVNiNj4sRiGg5vmlGx9tGTHoJUEDD7bxK5bVeA2ssWYHznuU3
 7c7ye45yUYBgjWaD1RTImYwL7nz9JlongdHxifBhFOGEOVGdqywXyBBiNsVv3LFNkqYg
 xxKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvXL3c8tlVMs6T0NotbvAsambwsxifKa+dBQ5nFdOEndgtjJPJf0Xcg2ccXpC1fJfP1qZe12Zix2l3calbjhc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yze+4k7soWX5IULRHze1UV59hXm1LzXHmcMHZSfqIOrbWoZWGgw
 L3oU5jcS2eiSuUR4+3mGKnoAOj/8+C0TXkBJEN2x2/K8aOwBydAVUhrNYxN0GG2tFmA=
X-Gm-Gg: ASbGncsVzHpQfAUjMU/9w/8FwumwQBj/v+AbQ92bT60uavRrG/fIVPd1GNeNzczELsS
 Ec+eLAEqitXvoZ3gOb5FQPQ4/J8MxwW+YOomoB/UrhBowJFah/93lMJzePc6jd2o9LmUNDM2KD8
 KlfXacePhG0p5ZEDEl5mOGpbplyAGB6B/byaLgjTljbr2BlWgquM3HeGunC0fs6wZ5vL69RngbW
 c6cdUaLy1zUuu2AOK0SPBAtF5TIRzrDjTLEF8MlEA47YyA3Su34qLuw5sWd/a/JJASQzmiBRQvq
 WkjNEtB9CYL5IpPfgYujM6i05Dufq6lVQzwenzNmncQN0EEJK5OjY3ZlM6jA4nlsD8U=
X-Google-Smtp-Source: AGHT+IH73sFPX2zDYfqi2GACrqKQGK85NM1X0g9SuDONa61gyLCjlz/mTGneeN6QucqRHBKm7Tn9XQ==
X-Received: by 2002:a05:6000:4702:b0:3a4:f7e3:c63c with SMTP id
 ffacd0b85a97d-3a571894b7bmr9067251f8f.0.1750088033001; 
 Mon, 16 Jun 2025 08:33:53 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a568a5407csm11533107f8f.12.2025.06.16.08.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 08:33:52 -0700 (PDT)
Date: Mon, 16 Jun 2025 18:33:49 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aFA5XYpZgBg8HbWD@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250614180907.4167714-1-kuba@kernel.org>
 <20250614180907.4167714-7-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250614180907.4167714-7-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1750088033; x=1750692833;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=p8OkHQgLnKX71RiA9XfFls/QVC13WHAM4qgo7+lq6bg=;
 b=CVPg1NXg4kC6PeQvC1I/FwxCXxgMgNJGRKTqp8uYg58D1Ur2a4HdcwC90yp8f/388G
 8oZhsU6on0yrOojw1F0LqR/vBrfxiJZe8R+3e43KzTfzAmDHe0sy2F8xnL3nFupr9TS/
 BJq7ohlIVVY9AX2VcmtNHuGZnGRFTqSsy18DljorIJxx/1wD2v6J3estRToq2f/qm3FR
 Sz2a1Sbiw8gT2slDja2kkTNYXcCbvUZuX17jDSl2n/eTCXOGaTVnTKtrhjDW0Y6Rgqq6
 D9zZBYjOy583ORH4zd9/cIhWYyZ231m2CcZBCaiEOxDg9+6K+povbdYcqbxRYN5cKZBt
 DQng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=CVPg1NXg
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/7] eth: ice: migrate to
 new RXFH callbacks
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

On Sat, Jun 14, 2025 at 11:09:06AM -0700, Jakub Kicinski wrote:
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
> 
> I'm deleting all the boilerplate kdoc from the affected functions.
> It is somewhere between pointless and incorrect, just a burden for
> people refactoring the code.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 59 ++++++--------------
>  1 file changed, 18 insertions(+), 41 deletions(-)

Reviewed-by: Joe Damato <joe@dama.to>
