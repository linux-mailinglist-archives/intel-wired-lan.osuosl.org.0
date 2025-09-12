Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80384B55559
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 19:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5D836121E;
	Fri, 12 Sep 2025 17:08:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vzr6HmQZEmnf; Fri, 12 Sep 2025 17:08:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7601361225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757696900;
	bh=bDEvCNJVe6ffd72Xv/NiecHgMGzTe5PODTKYF7xs2OA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MkAD6i6rdXjaBg7mGn0qaVmPma+jqEA8E23OO7mK8eStRTtAhVVjRaIJJRHD3JgTn
	 owFg6+vyyW5QVAB4cM94x0S1DCxuSNczC2tKHOyIafOP0eXDLu7fWyX/+AudaRpeXg
	 aOS40wuPh/slSZ7zVaxRuO7jwtd7gTWCdmss3TZg3tTj4VseQHV+LmfFTH8q/SN7rj
	 MQlcSijsHddxoi1YmPulMc2EDjSdeiDde7znoXnwtaf7dlK4zb0LsV0SVxEvrtm+rk
	 dLCZnxKFbkttdj7PfjoESCyzrN/KK6kR5kglbT1yFCLyNnbJDIPwh1Bw6/s7X3Nwrn
	 EoCJ+s1qHOjIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7601361225;
	Fri, 12 Sep 2025 17:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 33CBC25B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 17:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 253BD61214
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 17:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MM37cJj3E93X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 17:08:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84667606C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84667606C4
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84667606C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 17:08:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A6DF04186F;
 Fri, 12 Sep 2025 17:08:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35DE0C4CEF1;
 Fri, 12 Sep 2025 17:08:14 +0000 (UTC)
Date: Fri, 12 Sep 2025 18:08:12 +0100
From: Simon Horman <horms@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org
Message-ID: <20250912170812.GC224143@horms.kernel.org>
References: <20250910221111.1527502-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250910221111.1527502-1-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757696896;
 bh=uFd3tbEtG91YZlY2JzXFJ2gZgRzXgW19GD02hzF9VDw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kdpOcydJczKuNqE+f8hxU+XqCPJl25oJ9uxwWFs9b/CcYS8IT7LGh8h4fdROETxwz
 d5aRphnyNo1Jb3HvHIBQfNBOhAxA0ndUE55f4D+qb/zmIijgDtBPi7bDpmJWZJ98dT
 Op1lkTGKNIRexVputt3FC+1pE71BilwRZ5K3uzPoteH5omF4bdYx1ZVhZ7U3ZtQP6r
 EKL2XUBg2mmVqs/CbmP8wdWYqRiSL7VRzcw2cHMleR+u6V2NMsuHHTH2qkIg/c066/
 3oMe6tpzc9CbsjTDuoQi1wbQFXBKKEbtD/tL/MJY7ME9nIHqnE1krOP3gr1S7GjHxc
 GdwCv9KTRhhDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=kdpOcydJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/4] add FEC bins
 histogramm report via ethtool
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

On Wed, Sep 10, 2025 at 10:11:07PM +0000, Vadim Fedorenko wrote:

...

> Carolina Jubran (3):
>   net/mlx5e: Don't query FEC statistics when FEC is disabled
>   net/mlx5e: Add logic to read RS-FEC histogram bin ranges from PPHCR
>   net/mlx5e: Report RS-FEC histogram statistics via ethtool
> 
> Vadim Fedorenko (1):
>   ethtool: add FEC bins histogramm report

nit: histogram
     (Also in the subject of this email; the cover letter)

...
