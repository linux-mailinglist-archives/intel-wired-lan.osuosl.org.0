Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F4086B4B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:24:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E404F60E8F;
	Wed, 28 Feb 2024 16:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9K546aZOne3g; Wed, 28 Feb 2024 16:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42CA960E7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137488;
	bh=6yiyiSurF95Yilk417AKvUkFM0dsA83koDFik74Ewi4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FKpddLOBNrr+Ia7mGCpETzRHfKGnnFFxyf4J422ZYnn5f9mkQ3wk9bQfgNhP6oj0y
	 +lyvxe0Z+I9OnY7gbflQxgF0oSHqAfLe5rc2zVj2NEvw9HR5J0aX+RZ9guL2IXv2Pe
	 yUT3a0Csq5Qu5yU0LtMZXvY/lKGqix201gayeTyDJ7qCBtpJ78jREHaNeT1JXzcagN
	 zkQHOX+PyiokMz7FdCBCINZ348qetBsIbhKFg6v3aJst5mnnHLjM13sgLqwYBZu7Ux
	 GfYR+/xTM+0Ju+tABSodXt7ZxZZJ+LHs3V2HMEwD0oIjwGpgtvxBUDtXChGgZAPKj9
	 13JPddzfPrtpA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42CA960E7D;
	Wed, 28 Feb 2024 16:24:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7A881BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D45A360E7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYssmu21OrAq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:24:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2d; helo=mail-yb1-xb2d.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 263A960E7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 263A960E7D
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 263A960E7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:24:44 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id
 3f1490d57ef6-dc6d24737d7so5182129276.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:24:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137484; x=1709742284;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6yiyiSurF95Yilk417AKvUkFM0dsA83koDFik74Ewi4=;
 b=vs3UZJF2pQbGxPezq4m2QFbCYKZiAxRA0rpl6GOhSdb+JUtOJvHKZCIaNjooXkQYef
 8edD58JVkumBMqhP2DjwLTRBnWP0I5yQmW5ejLiaANqMsCZMRMzIP5cAgDqRhwJ3CAlA
 3PcCATYWJaN3Upnw51PJGaP69YcAB5rsClog55stwUgyPEvMPEMPqFezMVoGTdulAkpg
 Vcv/i0nfyy3ApxRhwbp4ljs7CuCJuq7//0rX9BPGrJVXDTg0cm1tlv+jPYglY0Uxwmv+
 QKboFOBiQc5HRE7el1ZKbAgdDCW0S/DT70yaIjynN+PKMctMP0zceRNS4FW5HQgcbtsQ
 frgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUefoW0Cmrzwc4vW6i8cv5Qd33GQZNUqOwcXHsKr1O0XkWViN6EGVLiPOpbJA8seuD7KT9otdGepKI220M/xiNbQ1L4k2EaVbrWG2GdaV+A3A==
X-Gm-Message-State: AOJu0YxD8d1l86evywszLPrT0uDnki5WtAHxA4UbwT1mK0676gG8xnt7
 NDbNcZQIKCcKpa+Odt87GGJ1911gUkmpX/8p8YZDGmtEOZMNuy8E
X-Google-Smtp-Source: AGHT+IE97AzDCtBDNO2Sn49xrnDEk1v4Xi/j9mx5F7dqZo00YL4uAX4pijipgcc3CcWP0xNp3S6Muw==
X-Received: by 2002:a5b:c0b:0:b0:dcf:2cfe:c82e with SMTP id
 f11-20020a5b0c0b000000b00dcf2cfec82emr2516397ybq.55.1709137483760; 
 Wed, 28 Feb 2024 08:24:43 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 z1-20020a25a101000000b00dcc234241c4sm2063668ybh.55.2024.02.28.08.24.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:24:43 -0800 (PST)
Date: Wed, 28 Feb 2024 08:24:42 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9eStoaYFlz/ck6@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-8-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-8-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137484; x=1709742284; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6yiyiSurF95Yilk417AKvUkFM0dsA83koDFik74Ewi4=;
 b=Fu45ehQr9x1cYFKyhYY2GSQaXOxYXM2qwscRtyO3gZvZoVRPo60LZT6HMOUyEbntNF
 yCo9P7QZ9IHbbb2lE0O5hHd5yNAqtozsuEu4KklArE0b7cLWS8WS1/JMIf2sQz4VKNIj
 J2TJj9XS77P5w6O0yw6FYjfbICrh5sXyWOstlH0cQPwxKJQqO0Cof89GSCHf2MOB38Z2
 YUOUbNjrrjZAxdtKiWObn+db4zSkKLgwb/oFEoT8nxEDFqZZ4ShFtbB87JHubwJpN7HP
 FLhyYaNMP8yNo2rkp2DDCRLoOAcQ1cqIFCjsS/ioqYoxVXfhS+AJS5TBOIwQuiXH0sUZ
 3GGw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Fu45ehQr
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 07/21] linkmode: convert
 linkmode_{test, set, clear, mod}_bit() to macros
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

On Thu, Feb 01, 2024 at 01:22:02PM +0100, Alexander Lobakin wrote:
> Since commit b03fc1173c0c ("bitops: let optimize out non-atomic bitops
> on compile-time constants"), the non-atomic bitops are macros which can
> be expanded by the compilers into compile-time expressions, which will
> result in better optimized object code. Unfortunately, turned out that
> passing `volatile` to those macros discards any possibility of
> optimization, as the compilers then don't even try to look whether
> the passed bitmap is known at compilation time. In addition to that,
> the mentioned linkmode helpers are marked with `inline`, not
> `__always_inline`, meaning that it's not guaranteed some compiler won't
> uninline them for no reason, which will also effectively prevent them
> from being optimized (it's a well-known thing the compilers sometimes
> uninline `2 + 2`).
> Convert linkmode_*_bit() from inlines to macros. Their calling
> convention are 1:1 with the corresponding bitops, so that it's not even
> needed to enumerate and map the arguments, only the names. No changes in
> vmlinux' object code (compiled by LLVM for x86_64) whatsoever, but that
> doesn't necessarily means the change is meaningless.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Acked-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Acked-by: Yury Norov <yury.norov@gmail.com>
