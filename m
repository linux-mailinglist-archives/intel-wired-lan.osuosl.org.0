Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BB6AD9106
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 17:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BD47405B9;
	Fri, 13 Jun 2025 15:20:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdVVcC8t3vec; Fri, 13 Jun 2025 15:20:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF3F34050C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749828020;
	bh=X123xpbb/jeKY4R9e6FB1cA1Gkq5lhAcYgbmcRglrII=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rPzQMeguGTiT6XeZl5l5MAHzNeKW5BgEq8k19EecsikZLBs0QfRNLabtOzGpu9QX+
	 0joYIob1Z8lm4uU3K8wwFm+QboRUCN5dAxm62Uph2PukbKIX5GIbgnrq+v2JW5gFNq
	 9G+X5Wl5K8pTXh637qx8qW7KOjaIyDfvZFiGfUnwZqmWDcA4G8m1///HXvemfoOmRd
	 F7TSQC1bhq8fr06RfrFUzEsUppkAHIpA6zygJr0sh9+wEkd32j0rStv3IdOZO7g45C
	 EdVaQyf40SAialTzIAr8+lA6ezLNFUVWo6WtDyXGCjCzUc00hdPgdUVZr9KuQS1jsu
	 B+W9Ut24ILDTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF3F34050C;
	Fri, 13 Jun 2025 15:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D93F71BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 12:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF64560BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 12:11:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dUJReG-Lsr-q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 12:11:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 74ADA60BD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74ADA60BD3
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74ADA60BD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 12:11:28 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-451dbe494d6so26499985e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 05:11:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749816687; x=1750421487;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X123xpbb/jeKY4R9e6FB1cA1Gkq5lhAcYgbmcRglrII=;
 b=vwhgoNM/d9wcdKakuscMv2JqenKLXBFhuZpPpXjrOQGqkj34EPiScewx0T9SQxZBMW
 jxfghA6sf/tgoG9VtdKkzyAG7vnhdL+Un5SLK7YELy0JVtVe7Tu41qrMHDgPAjpmhsfi
 xxzFn1ydsIXH11nMRqEuh9RypWFTikk5AHK3MVDhVAb0tvObAE2lSGgYCjfvN56QaYEc
 +RaVBycwEQJN3ctjkX+EVNg/M0W0RU3JC/T3MJOZ5azAmH7phb8ZNXywUcIhWI19aMwV
 9rSiFSy71Raasoy+Ul0jgDtHgOEAh/KajVSnUnz2URYBlQTz7bl/b06C/8IQZbO5ZJgV
 GLsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGVV1tEmsXHmVafIz0I2wsJlSWoE/saa3M9ffb6NpLF1JBqE2XO4IJAg8vhhJDux24bmbCy1wKYjbYgOY2ogk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy2jIaaSvAcxG8Cl+Pb/eALaOGfp8v/sx87NWPEbGKXyebl89Rv
 N/6zRwwVcSLoi3R28nbsiTpK28TSSSRt79qVFk98FGurlHsPP+X4rc7+dN9bvh+9Twc=
X-Gm-Gg: ASbGncsF1Yn7BG7xDKgihgNfo0VE6dBHn0EkAq2fYVNeeaNNTjXH5vKrvznrNLNEa7U
 C61oGVYreed0WZwOgLHvyVEPbX9Wmpc6liGHrYF4ard7Tu1GpnvCqhkqpA4f/LTMdcqtiLO5oYr
 S/hNRAW0EZsKpsKBVS+gGr5fEvoZSyA29Mr4K1YRlldPmR6a4uDbeWaKzrqZsvmIDAFavnwZspU
 ZAOGXHn6x6GPxD96xMtqiVSv6bcY25SbMFg9pNNK+HEvZsYKkmu1H8zMglQAKoLYi+PjZlxZX/9
 HRn5S/WfkWKIypgp/IYWLXjuiw/80PoNf2cfMQJFE5YGrvOP9CbdNG8pU8WvISF1nQrtrupQEuP
 DU4ShVr0=
X-Google-Smtp-Source: AGHT+IGT6muk7KulGb8uoUJI0MLmt/NFsIJLiIY9WjvVeHJ+eUp+xu9OTUUSggvF1QY1GYh8bwc2Pg==
X-Received: by 2002:a05:600c:3b98:b0:450:30e4:bdf6 with SMTP id
 5b1f17b1804b1-45334b19559mr25871965e9.19.1749816686825; 
 Fri, 13 Jun 2025 05:11:26 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4532e24420csm49767325e9.20.2025.06.13.05.11.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 05:11:26 -0700 (PDT)
Date: Fri, 13 Jun 2025 15:11:23 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com
Message-ID: <aEwVa9s_je4AKMEc@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-2-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250613010111.3548291-2-kuba@kernel.org>
X-Mailman-Approved-At: Fri, 13 Jun 2025 15:20:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1749816687; x=1750421487;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X123xpbb/jeKY4R9e6FB1cA1Gkq5lhAcYgbmcRglrII=;
 b=GDv3xM8UBVLMB35Y/HDcA5QzPagh0t5mIPMbWgNo7C07dlbamC/r2/kjswoolQV1n3
 NkKtYh32VNif/6GrHtfDTkKQGm4p+KHw0BNnLbdM4EOddwygE5W7ufSkblw0B2x1R2t+
 5SR6tWsxla/FEL8cen2Ke6i+T4KbiTXljSd/aWGjsUzLEEcYBsD68/+MXP4SKWxrNUJO
 0RkblLICOhefIgfd+29DgO8MkWYrRv+dyLTzxcR2oWRwzriC0ek8EkF6mOoYt4Pd50sb
 OQuZuMgeJy0L2iCHhS8+Aaw5UuF3vnzzVSS7EEIYbphsWYaOHxWCbMz4RYFEzGSedoAD
 jSPw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=GDv3xM8U
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/7] eth: igb: migrate to new
 RXFH callbacks
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

On Thu, Jun 12, 2025 at 06:01:05PM -0700, Jakub Kicinski wrote:
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Reviewed-by: Joe Damato <joe@dama.to>
