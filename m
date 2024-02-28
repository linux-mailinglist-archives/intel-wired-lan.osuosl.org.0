Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8BB86B509
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:32:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D6A260A52;
	Wed, 28 Feb 2024 16:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sX3ERvRk4dTd; Wed, 28 Feb 2024 16:32:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D22FA60E85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137960;
	bh=QhE1MQsKvhB9REC+482u9v2wKLir8r1v7/0zkgMeFU8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qKW9sdObWKDQln3KQ3mdpCg7UOb9OOZJvD0HzKiXwC38TmO37CAO7DM+ADl2pgMac
	 ElXJVVGAsdRgaM4pdePCiG8HbXcChb9qYV4NJ54s2FfmnPmi0lzLRlr+ftma1U/Xvs
	 GO/COUPBGskHfpRjtOUyS6lBUConQ5CSCgyMS8N5k5jeo8Ca5aTGK5Y8w38hdwHiW7
	 cwu/u6a8PqMRH5N+mHDXHrwBqfxLXAhZtQF/EYvlZCSQbLHx7tuXidMoFzsA1dzjYv
	 2EEgnNaboxzDeht48/Hu6i2mAvUbBsTUx2mAzMElVTMQNdyuRojW883z29zcD8M1RM
	 NBCzHCqfx/+0g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D22FA60E85;
	Wed, 28 Feb 2024 16:32:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDF51BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36A56416D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PE423u158WAH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:32:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1136; helo=mail-yw1-x1136.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 80404415AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80404415AB
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com
 [IPv6:2607:f8b0:4864:20::1136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80404415AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:32:37 +0000 (UTC)
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-608cf2e08f9so52919467b3.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:32:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137956; x=1709742756;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QhE1MQsKvhB9REC+482u9v2wKLir8r1v7/0zkgMeFU8=;
 b=Kuhc8FOytfIfKWgjh1ORyjn+/o6dnHlJi8JmIdupKNrkfgPJ0gZnolSi9hgDuYFs8n
 CZeJreh8U2lR8grfHzAmPTqKIgOTeCgByPf9mPgeH1W2Psor0TAF/SFI7ll3GFWa/pLp
 UAMZym4Kt2uVQyr5Fx7oNiwGjTjbF6bB1VNydFWz57tbUJSgeT79hkusMqVbAyLpeE+q
 0P0+HfbaVeEXLmOI4OxLEP0LadFViuOJGzaxP8wc4nhtX6p6WGQJNImvsjjzDXWr79v/
 8YY0WG4uL23dTB63YGduBL6T5tt2/tvUTqjnXsaKGfDWmg81sRbwwE26KAoDYBcMzuBH
 z2ZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtdpyaKwNBvlvXDu46puzv29hjPb6qhA31TQl3q4599LuCAgL+tPjIYYAP4JlpkrXEj5XgVdM1n3RyQqopvRld6BeBKwuHHPxeazHrzR8gAQ==
X-Gm-Message-State: AOJu0YwuPokO/Y1+S8K0FQynsunDuGGP3hJInqpXZbjs/tKXbgG2NGc9
 GQdRTX05f0e0zBgd01teoO0My0W0DqkvF66Udu2wjN/P/JXN88e3
X-Google-Smtp-Source: AGHT+IF7y727lGvQC58bwkZEZGqk/V3taxdRWZKAkhTKPUp2zVZ/V5NrHMWuRoL1mydS8eaxnJgy/g==
X-Received: by 2002:a81:9a43:0:b0:607:7dcf:7a94 with SMTP id
 r64-20020a819a43000000b006077dcf7a94mr5535918ywg.6.1709137955942; 
 Wed, 28 Feb 2024 08:32:35 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 l141-20020a0de293000000b00607f8df2097sm2421611ywe.104.2024.02.28.08.32.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:32:35 -0800 (PST)
Date: Wed, 28 Feb 2024 08:32:34 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9gIj9qcrAJVw5u@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-15-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-15-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137956; x=1709742756; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QhE1MQsKvhB9REC+482u9v2wKLir8r1v7/0zkgMeFU8=;
 b=LiSPBtO7Qf8iGGAK43Kv94AVw950ulbW6ehlphvEN+1ln/uIbkhVgIBc8xMVh64Osu
 PGP8rrDSlTga3oO51rQStM4SsJwqv+w8k7p4De5kD/TYmL4NQpNPPBGHx0xDyPltmzsR
 PbyGFDzmDa9lIwSZ3vzwFR3KHqffJVUSF/smeUasiaLx0r7T4LJINOcBXFZ0jSKXbJSU
 tYY8819Y7lVaer3onmS/n4iGTcIZdq3Ngw/nDXvRyiXbzgNlClw3WcCtIgCmmpja6i8R
 VQLayDoQo+zAqQTHAspkEHEMR07FNA55Af5LdN1wJUoqBybndZfUvlxkByK2pPTEHX/3
 /mSQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LiSPBtO7
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 14/21] lib/bitmap: add
 compile-time test for __assign_bit() optimization
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:22:09PM +0100, Alexander Lobakin wrote:
> Commit dc34d5036692 ("lib: test_bitmap: add compile-time
> optimization/evaluations assertions") initially missed __assign_bit(),
> which led to that quite a time passed before I realized it doesn't get
> optimized at compilation time. Now that it does, add test for that just
> to make sure nothing will break one day.
> To make things more interesting, use bitmap_complement() and
> bitmap_full(), thus checking their compile-time evaluation as well. And
> remove the misleading comment mentioning the workaround removed recently
> in favor of adding the whole file to GCov exceptions.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Signed-off-by: Yury Norov <yury.norov@gmail.com>
