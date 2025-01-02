Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C77909FFBF2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 17:39:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A06460767;
	Thu,  2 Jan 2025 16:39:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dsnz2CICZOoG; Thu,  2 Jan 2025 16:39:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE8536074F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735835960;
	bh=9g8PyF99klNIKBD2d1euNvk1LC5LNQ1Lnn6m+dnR3R4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ipLEwu4gppHAxSX6orkzsli7NjdXeixaK/S3tD4T+RpAuJqUl3MUXNrDv2mO/cZ+x
	 I1jSXn5tNBz3xClgZDH5fxzMM2sH2wVG3/862izQSyn2ncgHjJWoa4HGrkl4YIkkT9
	 Ronr07Ulg9EggqT6GPhdXtDPtQAhRviphnJg+AxWz7QOkRf24r9IqEjuMCOWqDJZHo
	 aQB3vdZ+A7Gjl3eQh3z3UoTDz4/6YuJwo9sj5EiipoEXGa57IV7XuzqF7nExTnqfpI
	 syVbGaK8H1BhaIgXaCumoqZaQ+jybYu8XreJsjaqOu2I8EmD8GCAVrhS6MxRIeFskf
	 uLd/tI0GbkgEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE8536074F;
	Thu,  2 Jan 2025 16:39:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F69DE0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 16:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41F7B6074F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 16:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NyOF-d95y2J6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 16:39:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8EF9660758
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EF9660758
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EF9660758
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 16:39:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1C60C5C6105;
 Thu,  2 Jan 2025 16:38:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB695C4CED0;
 Thu,  2 Jan 2025 16:39:15 +0000 (UTC)
Date: Thu, 2 Jan 2025 08:39:15 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Edward Cree <ecree.xilinx@gmail.com>
Cc: Haifeng Xu <haifeng.xu@shopee.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Message-ID: <20250102083915.6e5375a1@kernel.org>
In-Reply-To: <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1735835956;
 bh=jPFAeCo60VSV9qQBwJyjLnkLChMzPpcMojnaVDgF5bo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mPgqiowk1OW4WsKuS6FSbfUca+/aMwcVgL4mGSx4J4diTEKRVM/na8PIzOCZARtpa
 EwrXOHSvDO0HHO/cWJkUv8XyL44Mu+FE4TmI0CJ8XjMSJJRtz3b50B/rwFSwC+xRnq
 3CQxyBcqgied41PFEWIZhHOlXpV553LDdsYMxWt2PhsqzERXpSQAx50jj7Dn/vs3rW
 wXivo60R0RqELBvIXsIfMvXYkk17jlpTpBKtvY4/PP3tdDvlKLJ2vcRL8gBEGD1KJc
 mhMtbOyg2m489tyNSpF7cjIXFWjsqicSmc4R9se6JApJRxDDlnIeDmlODxy4VQduZH
 Nz7Pf5vQF3eOw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mPgqiowk
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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

On Thu, 2 Jan 2025 16:01:18 +0000 Edward Cree wrote:
> On 02/01/2025 11:23, Haifeng Xu wrote:
> > We want to make full use of cpu resources to receive packets. So
> > we enable 63 rx queues. But we found the rate of interrupt growth
> > on cpu 0~15 is faster than other cpus(almost twice).  
> ...
> > I am confused that why ixgbe NIC can dispatch the packets
> > to the rx queues that not specified in RSS configuration.  
> 
> Hypothesis: it isn't doing so, RX is only happening on cpus (and
>  queues) 0-15, but the other CPUs are still sending traffic and
>  thus getting TX completion interrupts from their TX queues.
> `ethtool -S` output has per-queue traffic stats which should
>  confirm this.
> 
> (But Eric is right that if you _want_ RX to use every CPU you
>  should just change the indirection table.)

IIRC Niantic had 4 bit entries in the RSS table or some such.
It wasn't possible to RSS across more than 16 queues at a time.
It's a great NIC but a bit dated at this point.
