Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D8CADB56D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 17:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1531580DB6;
	Mon, 16 Jun 2025 15:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lSiadrD0byee; Mon, 16 Jun 2025 15:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A01E80DA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750087829;
	bh=2cvWGfqvAHegxKwTqRT6pqv8NWEdRZnW6ynL47ZacAE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n4dj2s3bOJxaQjI7m+2tWmSsAUE+xdA1r4N1IUInfXBC8hGrGrks71gDMx9lDlZmH
	 JcfNt/LseHGeRpWaUF+bxMFeQCLRWYgdwoe7aRU0jdfCdHHBB8h3alpWu2Zj9lO9q8
	 cY2jn9c/schzTINvjTHD91zsvSeN8c35XKhs8tVfxwmzipgdQwxdV6pwiPmncHnIpl
	 mrCYHiyKfcE6BsS81SIZmMb9c8wn2bHZtqHtmsQOFlMjMcbbNEuZTcYJKmOIXAuQcK
	 mZjCqZURFWfMCVKXSbv2NgO0ajlzl6DY4yHOVrhrS602WckGsXPAHrvOT5M74eFZlE
	 2tEN1qYxpV02w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A01E80DA7;
	Mon, 16 Jun 2025 15:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D31D4151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4D234073C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9W0E_VB5FMkC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 15:30:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E0C6140738
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C6140738
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0C6140738
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:30:26 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-3a54700a463so3387504f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 08:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750087825; x=1750692625;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2cvWGfqvAHegxKwTqRT6pqv8NWEdRZnW6ynL47ZacAE=;
 b=CF56Fwhd77Bu3DLhELXF30JvqgUp2p7y0nv684h93zNO9eLBRRCqO31NeSZJLvEjqC
 GQPrjWjlYA+LEi9gUViEQUNGXb5WxfkdOkQWJlKOyz2EcBZBg7foPeJ/J9/cJZ+G44Xo
 Il02wD6es76eyp7vtkawbRJ6nM1M4ERfH8CE5ZwwS+CFBS9eqKPFpTl8Hk5EjJB10fAZ
 pIb54Mmt3pnQpLI2YuIkL0BmFAd2dyKbHFuIgLp3hNUYkNFxApZBbDqNUUWvsT2EftyF
 dk5Mubx8PTq7v3dOfTn1QBL9jWeXFWhu+Ngk12+3kX6CJQeKyd4s/37pVD/HNn8n5ZfI
 U2GA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeq7sX5gZw/U99LV/u6D36ItfVdD3BCDfhBL0YfChWaMbTxDvs139/i9/kPWo1bP296qwb362yViHPP8M2J8U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxeOSq5OR3gmPCEq9KLu1icp/q31zOfeWGTG0DNbB7lGvbl2rYp
 +/n5h31vtW3El2985F31yd6gbKNgZDzErjO7tilDDGkSWGzl6z0PST8Rd0XKZFtRfxo=
X-Gm-Gg: ASbGnctMyjpSTS2eU2iHPLdOjUPqev+5l35Ho/X7tunqZfF7FliPQRc//IEk+MeIJ1y
 cD4/QYXuyb2j7L2RWZYmxiZxaeKh1UPpfBsXJj7pq65j0AcLoq5+2i16FdOCtwfVTU7vHPzEkx8
 bTbZTisXK+bacQ5XP7GYlKoVmuSTVT4FFIf+sK7VqY+NDytQr9KxJXvdol3R4aVcbMuI1QKbeBY
 UwM7JmwIITIf/YECZqJTmRpeXLOhz27wnwD2hFPUI5ASXrg8r0tdiP5Wu/6r+TKzg6RwIua0waE
 FzCPzpGoOh6KTTZU4WFMGEgIcI9yia193DRXzQrRdvc8uaaWwrVmv+RFS4FVUOPF6o8=
X-Google-Smtp-Source: AGHT+IG596tYxW0ljWuNt4gT0TSmu4NhzRCCR7j9XtoZvCcR0RQqrU2i7H9ddacVmwF3JsA/oLlLSw==
X-Received: by 2002:a05:6000:40c9:b0:3a4:f7dd:6fad with SMTP id
 ffacd0b85a97d-3a572e67394mr9107688f8f.14.1750087824809; 
 Mon, 16 Jun 2025 08:30:24 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a568b5bfefsm11133140f8f.88.2025.06.16.08.30.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 08:30:24 -0700 (PDT)
Date: Mon, 16 Jun 2025 18:30:21 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aFA4jSmkt-U5SfJj@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250614180907.4167714-1-kuba@kernel.org>
 <20250614180907.4167714-6-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250614180907.4167714-6-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1750087825; x=1750692625;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2cvWGfqvAHegxKwTqRT6pqv8NWEdRZnW6ynL47ZacAE=;
 b=PqbFhyvCu73YgBzyUqpO58svSfRRUwE/lwFW4s/8Mp2CUlwvKDIbuzBzYYIbhLz3g0
 ksZpsWi5AYCkrfyQsT5isF9Jaou/ZBRgH08yQIg8wumuTmWt1JrR9QMlMIM0J6deJxIU
 AVGCCFl6Lffz7tHwR7CaDB2h1vp0MlWAL/b9i4I6Xm8xa9zCJ7VgkIC+AcTKDlXOP+X6
 yVGmBGuF58vA/MicHS7UPRg7pBV1WOaXyBFBrCyTdfUzbD02FJrbWGiD+8A64p3NzKzL
 XUXms06buaxca4OyPSGGWBh44IzjyUc199DKYDHTYak4iimkGyhmkZkQsTKulEXN3i9o
 Ex7w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=PqbFhyvC
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 5/7] eth: i40e: migrate to
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

On Sat, Jun 14, 2025 at 11:09:05AM -0700, Jakub Kicinski wrote:
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
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 38 +++++++------------
>  1 file changed, 14 insertions(+), 24 deletions(-)
>

Reviewed-by: Joe Damato <joe@dama.to>
