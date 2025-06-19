Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042CAE073F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 15:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFF3C40699;
	Thu, 19 Jun 2025 13:30:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IyM2Q0Z70veI; Thu, 19 Jun 2025 13:30:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62B36406B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750339834;
	bh=1Sp0XTJ5+pkXcA+bbDX6qbGO4ShhFJkO8lqU4uCrMH4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bgjkl99xdiHN12WmTZyaFWKxSlrx7Wn3EC5gV7TvVy2+YCg0oStyBesTTDTPRhDGV
	 O4w413us09yw5Z1pozdc5bh6PdqWdH8YdXCya08XbTAErR8OMg7tlzzpt/RpvtOhD8
	 pvyolwyLWso93pRNnPcGcEOFv6Wh4BQcG9BNpMsbZ6M/pTsmqDn063NATp0xBm+wd3
	 Dpajr8U8pka5NRuj0lz7Hh0IQcotK/1pD0v/wmEhqAErzV1RLu0zZm/moc6L83RID+
	 dUWCVENxAulQ1DmW7CEAJH9311wKlqSB0Hti0irsTva6DRCK4ImSRzbIAlDf4pzCkF
	 kdgd6c3I9/SiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62B36406B1;
	Thu, 19 Jun 2025 13:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 376C016B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D6B640611
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r84tf4tSNroo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 13:30:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 88D4B4049E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88D4B4049E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88D4B4049E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:30:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EF73649C00;
 Thu, 19 Jun 2025 13:30:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBF92C4CEEA;
 Thu, 19 Jun 2025 13:30:28 +0000 (UTC)
Date: Thu, 19 Jun 2025 14:30:26 +0100
From: Simon Horman <horms@kernel.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250619133026.GP1699@horms.kernel.org>
References: <20250618-restricted-pointers-net-v3-0-3b7a531e58bb@linutronix.de>
 <20250618-restricted-pointers-net-v3-1-3b7a531e58bb@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250618-restricted-pointers-net-v3-1-3b7a531e58bb@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750339831;
 bh=hudOF111YgnX2+jpkJZHTU1k6oIbLOWGe2PdF1fYcS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h4jifniyPlHfhCbjOAvSofdWxdQcpSwKyDVXk4v5K7sNFBp/RqlfqCGOgC7XjO2q1
 VjHU9dlUJraLJPHmrGiMWcJHLY2Ophpl2nVZ1GByC2uypRKTuhwUFzdVOisfZzeiH6
 qu1sbk+6Im/bq/7nYzHhedqsGqEYdpUx25OvCZgpe4b8iRqq5/ZkyhpcOBDvZlIVRz
 vTPbzBfJ12vvBMO8gDq5TRzh0HrzOdrhg+CkhcP9jKQPiRhdlwUKnlQ1VNLDbeOTNz
 EcdDy05J6gtt+bi1DyIwIWxp5aA8gEaxf1uOTsNaEPsGaDBeYD2/1AVgzORZIjN/jD
 UUArqCpMCUUww==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=h4jifniy
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] ice: Don't use %pK
 through printk or tracepoints
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

On Wed, Jun 18, 2025 at 09:08:06AM +0200, Thomas Weißschuh wrote:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk(). They can still unintentionally leak raw pointers or
> acquire sleeping locks in atomic contexts.
> 
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_file,
> for which its usage is safe.
> 
> Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

