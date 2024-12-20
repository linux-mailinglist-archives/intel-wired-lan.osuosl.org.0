Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8319F8AA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 04:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 712F360A79;
	Fri, 20 Dec 2024 03:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CSNL0yAj0m9t; Fri, 20 Dec 2024 03:34:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4D586090B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734665649;
	bh=xtjFVOGgHAEmi1+b+9PzJxSYQGTA09jde1pYIPDv7SQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2BHBWpqwfrRI53soa2+ufOuyS2D2dhjlSrTOCBbuJhXQyNPpuMTnmLrVDNL475VWX
	 T55L0UOrKxF6h1BEgRjrbmLzTkri6aHK+viJJtSbdkowqKY8/7FcyLn+wT59URxJIx
	 halqAWJbrdhbwyAwmvCdZdOTsedGTEa0XVGN8PIPbVqOeOcIgZ977J4xRmKxU81Bm6
	 3gHJ5wJnGDycnorlyhu9FzanA1hg1hl6L4njuafJUaBCfR48GIEDNjMDtpcirQEzRd
	 7ik98vcgJyPIL99A8btbjqizcVq2/Dpva4sFefEswnODPUMgxpMeMVAWY8rHzS4KDu
	 tmulTnTSvstDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4D586090B;
	Fri, 20 Dec 2024 03:34:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 97264920
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 03:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63B2183A86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 03:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3CRjK1eElJSP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 03:34:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D66783A88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D66783A88
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D66783A88
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 03:34:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9356BA42A34;
 Fri, 20 Dec 2024 03:32:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52CC4C4CECE;
 Fri, 20 Dec 2024 03:34:04 +0000 (UTC)
Date: Thu, 19 Dec 2024 19:34:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org
Message-ID: <20241219193403.10a52305@kernel.org>
In-Reply-To: <20241218165843.744647-2-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734665644;
 bh=+yhg/J/H/JiyymzZN5RtIGJ4fNLEM2C3IiQXtZlZygs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eIDyX5vefJ7R9llhkmTQR8tb5gdBkhk3eHdcPjgBmo0jL9eQCTMoXLXzwKc9xj3bI
 T2RbozKXv2dwB4aPYwnccgAWnB598+nFM+74w+la35okW6F4n1GISD7DDDrwo4phXs
 blEs/Ruyh5e2XednQ8XfwNBBGjQb+0ueXb4kb4QpaaBabmsqzcxYQPSDSCRDYbOdct
 mrBluDPil4eOFLVICDPApmRxN2Y0WAs5hV+m6QwKj52ZIKj1lyNHDTlsqf637K3kxm
 Ju/NTxD50AOC6512QYulfPGD5YUPQsY1R1lu5hdYTWIpOqNLXnaLM+ZvIoL755z1Oj
 Z8SQoHBq6J/lg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eIDyX5ve
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/8] net: napi: add
 irq_flags to napi struct
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

On Wed, 18 Dec 2024 09:58:36 -0700 Ahmed Zaki wrote:
> Add irq_flags to the napi struct. This will allow the drivers to choose
> how the core handles the IRQ assigned to the napi via
> netif_napi_set_irq().

I haven't read all the code, but I think the flag should be for the
netdev as a while, not NAPI by NAPI. In fact you can combine it with
allocating the map, too.

int netif_enable_cpu_rmap(dev, num_queues)
{
#ifdef CONFIG_RFS_ACCEL
	WARN_ON(dev->rx_cpu_rmap);

	dev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter->num_queues);
	if ...
	
	dev->rx_cpu_rmap_auto = 1;
	return 0;
#endif
}

void netif_disable_cpu_rmap(dev)
{
	dev->rx_cpu_rmap_auto = 0;
	free_irq_cpu_rmap(dev->rx_cpu_rmap);
}

Then in the NAPI code you just:

void netif_napi_set_irq(...)
{
	...

	if (napi->dev->rx_cpu_rmap_auto) {
		err = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
		...
	}
}
