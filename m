Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2DB92EECD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 20:22:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F8FD41110;
	Thu, 11 Jul 2024 18:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xFShZiO7DhHo; Thu, 11 Jul 2024 18:22:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEA3A410C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720722161;
	bh=WYoh3mpqM9Rm62yfhy5QnqZECdknKj761IoeJRvEFlc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J68Ijuh8X4aE/eS/QzcUVwT75iJnrYHvlRgMciZLWaGepApYuafwIQBXQd/4RDCf6
	 bINn3eNUwGLY+Eebnt9MHQEZ2SV4txLpjYJrjNhHoartkIvulTyFis/tvsDIqzl00m
	 6JyWuOPrgJledqgVweh8mSFvaDBkl3I8soZeYAxNw4noKCYlxu9wIx4JlLXOIcQ18a
	 KYoJrOTgMG9eORM/f9vJlD+/0lgIMZImWuZ1+vkiCKMiG4NIZvnAiXEZYpTfQy8KbY
	 P34af6+M6Igdp34hfAo2j8H+GaCZ+BuWSCveh/Kt+jb7wywZxHbiK8x+MwR8StfliO
	 D4sD902D2VBNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEA3A410C5;
	Thu, 11 Jul 2024 18:22:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9ADD1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 940F280DAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:22:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b-WxLfSfc51A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 18:22:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2A2580DE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2A2580DE2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2A2580DE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:22:37 +0000 (UTC)
X-CSE-ConnectionGUID: VMhu7NjHQV2/GOgTAbzIFQ==
X-CSE-MsgGUID: y8cBhjn/R1u12+5mGh15hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="29541745"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="29541745"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 11:22:27 -0700
X-CSE-ConnectionGUID: nOfmpfp9Qe2U/rAbMkJAbQ==
X-CSE-MsgGUID: bhYsYfL6SzaAPuz4kI4/wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="53244456"
Received: from unknown (HELO vcostago-mobl3) ([10.241.225.92])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 11:22:27 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240706153807.3390950-1-faizal.abdul.rahim@linux.intel.com>
References: <20240706153807.3390950-1-faizal.abdul.rahim@linux.intel.com>
Date: Thu, 11 Jul 2024 11:22:26 -0700
Message-ID: <87h6cvss9p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720722158; x=1752258158;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rwRq5sHZuJi1yLF7Y67zhwSlLDwgpG63WbjsUOAnJro=;
 b=WZYIPrUSYhHbUQTe848HnU9UXqCIW9wQaR7Lyn65Gn1Tk6HyzFbUES+x
 JTTosFhSFkmnfimpD5dqaMkD5ikZmoLq4AmW1jkiT5RihX4ayxIvHPjxi
 SULPq7j8dElRdGsxRIZbHbDoHYOW8paxiL71CTjCC/fNWtnbCK33VV0su
 OyhGAmpxADhtnp9FU01cdYcJrkDXIn9beQtgzNX1i47TV7KKD9sw9pWTR
 1F+HC0hgam0Bhxy8tW4FWQrlaNQhyR4RXyYbPk1k1lY41GjLdwaE1wp8H
 SyDHI1XBgyS6wvd4U3yMKVzkaTId5xf02+293qw9xmqrHysAtAWlLg58t
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WZYIPrUS
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: Fix packet still
 tx after gate close by reducing i226 MAC retry buffer
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:

> Testing uncovered that even when the taprio gate is closed, some packets
> still transmit.
>
> According to i225/6 hardware errata [1], traffic might overflow the
> planned QBV window. This happens because MAC maintains an internal buffer,
> primarily for supporting half duplex retries. Therefore, even when the
> gate closes, residual MAC data in the buffer may still transmit.
>
> To mitigate this for i226, reduce the MAC's internal buffer from 192 bytes
> to the recommended 88 bytes by modifying the RETX_CTL register value.
>
> This follows guidelines from:
> [1] Ethernet Controller I225/I22 Spec Update Rev 2.1 Errata Item 9:
>     TSN: Packet Transmission Might Cross Qbv Window
> [2] I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
>
> Note that the RETX_CTL register can't be used in TSN mode because half
> duplex feature cannot coexist with TSN.
>
> Test Steps:
> 1.  Send taprio cmd to board A:
>     tc qdisc replace dev enp1s0 parent root handle 100 taprio \
>     num_tc 4 \
>     map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
>     queues 1@0 1@1 1@2 1@3 \
>     base-time 0 \
>     sched-entry S 0x07 500000 \
>     sched-entry S 0x0f 500000 \
>     flags 0x2 \
>     txtime-delay 0
>
>     Note that for TC3, gate should open for 500us and close for another
>     500us.
>
> 3.  Take tcpdump log on Board B.
>
> 4.  Send udp packets via UDP tai app from Board A to Board B.
>
> 5.  Analyze tcpdump log via wireshark log on Board B. Ensure that the
>     total time from the first to the last packet received during one cycle
>     for TC3 does not exceed 500us.
>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
> v1: https://patchwork.kernel.org/project/netdevbpf/patch/20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com/
>
> Changelog:
> v1 -> v2
> - Update commit description (Paul).
> - Rename qbvfullth -> qbvfullthreshold (Paul).
> ---

Looks fine.

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
