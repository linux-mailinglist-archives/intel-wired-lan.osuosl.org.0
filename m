Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C66A02416
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:18:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C21B6606DE;
	Mon,  6 Jan 2025 11:18:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id leVCLswqWs8L; Mon,  6 Jan 2025 11:18:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96EA660706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736162282;
	bh=/34oumIQD8q+x4BN58XzFKHbQHRSrS13ejCl4PCvYQQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fs2QkbrjY9KkxxrnDhKClYqWI2XbRIqQri7w1s2tXl3G1RSfTs/RcOXm2CAqk1Zjw
	 55JjZFQPEydyjq5c+lR/6XHVYymtHy+1PItLBQkCwrnST1wW403IcmeTb2H+66RSAs
	 btMN4YKS2BxC0dUjaAg72TWoFShXL/98qwe7CCTWR0xJh14sihacWusuuFHYW7IJo3
	 Kh7gsAm9BjhbjreUaDcsHP3mbimyZH771knQQtPZRN0hscwz4lC2UqVlF8RDxC9lg1
	 5TNuqkOWQzi51E35HjAywlaehIxEgDCMNQ6wazah42zkE6q+2ybjWZSW7PTyGnC62H
	 lEEkGLJQ0VWeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96EA660706;
	Mon,  6 Jan 2025 11:18:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84D0A6B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6527060093
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:18:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xmgtD13mmnon for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:17:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7AE00606D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AE00606D0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AE00606D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:17:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 195BC5C581B;
 Mon,  6 Jan 2025 11:17:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD17EC4CED2;
 Mon,  6 Jan 2025 11:17:54 +0000 (UTC)
Date: Mon, 6 Jan 2025 11:17:52 +0000
From: Simon Horman <horms@kernel.org>
To: Gerhard Engleder <gerhard@engleder-embedded.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, kuba@kernel.org, edumazet@google.com,
 pabeni@redhat.com, bhelgaas@google.com, pmenzel@molgen.mpg.de,
 aleksander.lobakin@intel.com, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
Message-ID: <20250106111752.GC4068@kernel.org>
References: <20241219192743.4499-1-gerhard@engleder-embedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219192743.4499-1-gerhard@engleder-embedded.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736162278;
 bh=Bq/pnYFsE3I0zcZZpfR6gK1mHvcQk7XJiDVsVg9HHp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dkoWukeZLZpW6My59uxEtxmpR/C2wLXqnd1z45Hh1LA2mF4lvSpFmt5B5ksd5T9k2
 w58W5Rjb/0f7p8WhfxOspSAFj51pbAzF2DJY3LGovSAfOzbsMsuyk9IiGiA8U8E72R
 cslPFw98C1KUF4tnGeg7G5XztgDx5k9rjZC70dZJ797YWKOANrKCxp9qhqhZfNMEdr
 PXEQ6NYfBxkhjxP2xuWL45f93uF8FA01OJBelznH0Irbq8mEk/vHGR5gKJMJR3Ijcu
 ZSqc9LM4fcxzh+mHHUQPwMMIJNYpsCcZlvpfafLQD46Hi3jA+RjqJCYUHuiWDwjHNY
 bY4iEJcBXckNg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dkoWukeZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] e1000e: Fix real-time
 violations on link up
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

On Thu, Dec 19, 2024 at 08:27:43PM +0100, Gerhard Engleder wrote:
> From: Gerhard Engleder <eg@keba.com>
> 
> Link down and up triggers update of MTA table. This update executes many
> PCIe writes and a final flush. Thus, PCIe will be blocked until all
> writes are flushed. As a result, DMA transfers of other targets suffer
> from delay in the range of 50us. This results in timing violations on
> real-time systems during link down and up of e1000e in combination with
> an Intel i3-2310E Sandy Bridge CPU.
> 
> The i3-2310E is quite old. Launched 2011 by Intel but still in use as
> robot controller. The exact root cause of the problem is unclear and
> this situation won't change as Intel support for this CPU has ended
> years ago. Our experience is that the number of posted PCIe writes needs
> to be limited at least for real-time systems. With posted PCIe writes a
> much higher throughput can be generated than with PCIe reads which
> cannot be posted. Thus, the load on the interconnect is much higher.
> Additionally, a PCIe read waits until all posted PCIe writes are done.
> Therefore, the PCIe read can block the CPU for much more than 10us if a
> lot of PCIe writes were posted before. Both issues are the reason why we
> are limiting the number of posted PCIe writes in row in general for our
> real-time systems, not only for this driver.
> 
> A flush after a low enough number of posted PCIe writes eliminates the
> delay but also increases the time needed for MTA table update. The
> following measurements were done on i3-2310E with e1000e for 128 MTA
> table entries:
> 
> Single flush after all writes: 106us
> Flush after every write:       429us
> Flush after every 2nd write:   266us
> Flush after every 4th write:   180us
> Flush after every 8th write:   141us
> Flush after every 16th write:  121us
> 
> A flush after every 8th write delays the link up by 35us and the
> negative impact to DMA transfers of other targets is still tolerable.
> 
> Execute a flush after every 8th write. This prevents overloading the
> interconnect with posted writes.
> 
> Signed-off-by: Gerhard Engleder <eg@keba.com>
> Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> ---
> v4:
> - add PREEMPT_RT dependency again (Vitaly Lifshits)
> - fix comment styple (Alexander Lobakin)
> - add to comment each 8th and explain why (Alexander Lobakin)
> - simplify check for every 8th write (Alexander Lobakin)
> 
> v3:
> - mention problematic platform explicitly (Bjorn Helgaas)
> - improve comment (Paul Menzel)
> 
> v2:
> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)

Reviewed-by: Simon Horman <horms@kernel.org>

