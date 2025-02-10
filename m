Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E40AA2F96C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 20:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5C3F4133A;
	Mon, 10 Feb 2025 19:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VroEX2jysxPe; Mon, 10 Feb 2025 19:49:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C626141340
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739216971;
	bh=fTt2O+89+OX1qceRzkPwIzbuTN/WSFucT4iz8Aiof2Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5rSREgSz/0NPzCGrihRGDhUrlbACwnQssPwV35LItq64l4CltgzzhWsXou9wedSPL
	 Uv5kh2eh4Y3uSc6RAYBr180stg6pn3kckDftmTaeXePhql0eYVHHUl2e3hkapR9knI
	 V1HTYJDb2uYcBEBqtAvwT5+Zmm0B39I3rL9EF8Q1/zHMzX7FYilnKAVzIwXwxzsqSZ
	 OCsHv8phzZOgLk07k6b3ZRmnch7lr1lYrBeAh1A5ley/KLTF8HOODOf4KgfdDbHbKU
	 lZeRSxnDQ4RSadjeCp9U1uNvX7AQnvbMvb1d7wLxj5j3kNGW60j+OsBvuwlFDjdDz6
	 4oGyI7dm1RUXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C626141340;
	Mon, 10 Feb 2025 19:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22FC26C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E1FC60B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gKPoiFWE3uX0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 19:49:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39FC660B6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39FC660B6A
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39FC660B6A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:49:28 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-21f50895565so50709335ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:49:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739216968; x=1739821768;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fTt2O+89+OX1qceRzkPwIzbuTN/WSFucT4iz8Aiof2Q=;
 b=Is+7ykbwRZXdZdSWvImVnbRHkFj0uB4teNL+7kMQ+HxWqxaQWpPwshCcwY2OwusrkO
 K29XKzEZAv7LljRsSFuGMvI8N8+GN7y67dBwzAzBPkhiUrRFgYjZKLXq9apvUUovL/Zh
 THW6BlrGxrj1obVfqQUpQ6rhl49P+B2vfB2sfoCsgeI3ZG9AWt5WW9zXz6CRPy/pHZyq
 NYRehZ6OeSCgh6bRkhIXRJ0RGl3//EphzFmcitUDEMtXw9rVXRPF+GPgi8ZKl+rBGkFm
 qiVTQEWa3DyT1iuwArXLPy4TZVBpXwCpT0w6onXdCoIXLlJf83KRtVkcAuULQhYASFqz
 5IwQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW2y1OQiaPCVRj7xXPa4JF1IzwN2A8X3cZ3RhUi6KizEbZWm33TeN2+d0AZEzS+UZzqg2N32cCqGUTaLSoFrHw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4tWoqlgdLtwsZhvk81IbtA7+5jl4FQXPT5/f28yptbWrNrUSH
 HUkUJ1NNcMm1MQsymOMfNtrEljUOQPNWwW/RXX3ai3CAK0mEwWpYN/ufcvCKWS0=
X-Gm-Gg: ASbGncuzjMIv/UQLDxyLZsBG+iQT/U0dEt7FDjp+35bU04xPKzwqi8hOuK++WA5zHWC
 6kjVwnv1FPr7KLaNdAIvWP3lUJdlah55C5eOmg2Rj3D+fuCUzXyF3uF/cyIiO3qG430t8sR0bkF
 VEj4r7aOBL94LihYkbV4FFXn3b+TXemI4qEEnLnTWECpxpYu1NliOBOSUwABS4ZMOj3UQcIBiYA
 vHXXKqsYqKGL/1eGDWICFTOLnVH+Jp5dQNO1cxTCA9/CHny5BLbLlE3zzBO3DeRnvB2mvwvn7Dt
 5ezahYxd76JZ1CAdCi/WmEJhcuDiZ6XHcTaknC1SHhQ2xMsd5Ua6a+dr3A==
X-Google-Smtp-Source: AGHT+IHMJTHT8nKASCoftPW5WagcofTFuEZVGDHpfUu+3/RTdlhPh3dGTiFUWppYL39rlkLByj5LEQ==
X-Received: by 2002:a05:6a20:258d:b0:1e1:a6a6:848 with SMTP id
 adf61e73a8af0-1ee49e8ccecmr1955504637.25.1739216968391; 
 Mon, 10 Feb 2025 11:49:28 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-ad53e71fb23sm4569990a12.45.2025.02.10.11.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 11:49:28 -0800 (PST)
Date: Mon, 10 Feb 2025 11:49:25 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z6pYRXGiVmLDMe4S@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739216968; x=1739821768; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fTt2O+89+OX1qceRzkPwIzbuTN/WSFucT4iz8Aiof2Q=;
 b=pdU1Hd5elnSfi7c/OA1PkM/tbJI9WHrGhQE8mh+18X3U2hLfN4lfsZAm/NPTcOA8kT
 ca9sAnlb4tPGXsk/54OO0pWlbRt2KTe9xf8fYs8r9AJjF2FZrAEGZA2bAZBN9mSDkQMK
 wOtB+AG5ZtyediJ+N31ShlCPLM7Flff3n2CD8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=pdU1Hd5e
Subject: Re: [Intel-wired-lan] [PATCH 0/3] igb: XDP/ZC follow up
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

On Mon, Feb 10, 2025 at 10:19:34AM +0100, Kurt Kanzenbach wrote:
> This is a follow up for the igb XDP/ZC implementation. The first two 
> patches link the IRQs and queues to NAPI instances. This is required to 
> bring back the XDP/ZC busy polling support. The last patch removes 
> undesired IRQs (injected via igb watchdog) while busy polling with 
> napi_defer_hard_irqs and gro_flush_timeout set.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Kurt Kanzenbach (3):
>       igb: Link IRQs to NAPI instances
>       igb: Link queues to NAPI instances
>       igb: Get rid of spurious interrupts
> 
>  drivers/net/ethernet/intel/igb/igb.h      |  5 ++-
>  drivers/net/ethernet/intel/igb/igb_main.c | 67 ++++++++++++++++++++++++++-----
>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  3 ++
>  3 files changed, 65 insertions(+), 10 deletions(-)
> ---
> base-commit: acdefab0dcbc3833b5a734ab80d792bb778517a0
> change-id: 20250206-igb_irq-f5a4d4deb207

Overall wanted to note that Stanislav is working on some locking
changes to remove the RTNL dependency [1].

My previous attempt at adding this API to virtio_net is on hold
until the locking stuff Stanislav is doing is done. I am not sure if
the maintainers will also ask to hold your series back, as well.

[1]: https://lore.kernel.org/netdev/20250204230057.1270362-1-sdf@fomichev.me/
