Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D867684AE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Jul 2023 11:40:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF9C240138;
	Sun, 30 Jul 2023 09:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF9C240138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690710016;
	bh=TS1/DfVJI/Q6LhZyCRuClvodEmh4EfKC4MQAsLB5wuw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TLDlj78lRHNCg9C4IpsSXBmf+9SOFmjVKhkGuJCMoYBK3IycQ+jMXOzPkiq3lGmf0
	 YRAMDoQh+CwCAebjNByvAZbZPs4QRUJ3dE1he6VcQ60TcOxWln6gotq8QUJulrHul2
	 atJ0LO4FyRfsTI+UzEGYwrmjG9G+wAeVs8ey4KjVBm7dvnQzXh4tyRH0h6JI1UAkrs
	 ZoKq5Gmu0c6K/b+I4QLDX7xdN1PXj3NXgPvhU5QkorMxvzAdboLWD6L+pQF+5AAYpE
	 GwiLFgLrZxKE8oZTgw9jZCTM4fML10oGGx9mZVeyngRWg/igmtIXfJTv9vFAeBXVeR
	 zqhlFPkzzrmEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjOD1Bk77etT; Sun, 30 Jul 2023 09:40:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE43140116;
	Sun, 30 Jul 2023 09:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE43140116
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58F481BF3AD
 for <intel-wired-lan@osuosl.org>; Sun, 30 Jul 2023 09:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 385B4410E0
 for <intel-wired-lan@osuosl.org>; Sun, 30 Jul 2023 09:40:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 385B4410E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vX6HbDCd2I1o for <intel-wired-lan@osuosl.org>;
 Sun, 30 Jul 2023 09:40:10 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 30 Jul 2023 09:40:09 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB05B40926
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB05B40926
 for <intel-wired-lan@osuosl.org>; Sun, 30 Jul 2023 09:40:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10786"; a="435127888"
X-IronPort-AV: E=Sophos;i="6.01,242,1684825200"; d="scan'208";a="435127888"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 02:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10786"; a="974568217"
X-IronPort-AV: E=Sophos;i="6.01,242,1684825200"; d="scan'208";a="974568217"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.251.176.36])
 ([10.251.176.36])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 02:32:59 -0700
Message-ID: <cdeb5fb8-4716-2485-1e8b-05ea49894780@linux.intel.com>
Date: Sun, 30 Jul 2023 12:32:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230718140844.24379-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230718140844.24379-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690710009; x=1722246009;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pIykgTaOeaJGqRgH679M/dXAbDzWyvqHNUCp8iayemc=;
 b=IIbj67psTrkGGYkw4ARdRGpznWM36yGxjA5mP36E6Vk+jgdkiWVBnk7m
 FZ4zR0YB6pN0qKaBoRogtAXzXvxaePUgEHGHwWly2amLEnNJ32AIZbLjg
 py8bZk72U25v7gp02NrDMDH+saE7NxKkWHhYjAknd0VMG6L+GCJNk1Evh
 ImY4UyeCBjr0al+5WNLHPb6Nc80iPVUgo2fuYkb72StSknD16nWVe7thP
 sLA+mpdTBqYq1VmHoJlnRtxGw4SogBw70X1UNjcbWrnQIgQU18+GAYjGC
 9KysTJhCGevSau4Vi0lOtlj+otgDLMCNrepWlVoIak9rCECBkyrXuZBNh
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IIbj67ps
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Add lock to safeguard
 global Qbv variables
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
Cc: anthony.l.nguyen@intel.com, leon@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/18/2023 17:08, Muhammad Husaini Zulkifli wrote:
> Access to shared variables through hrtimer requires locking in order
> to protect the variables because actions to write into these variables
> (oper_gate_closed, admin_gate_closed, and qbv_transition) might potentially
> occur simultaneously. This patch provides a locking mechanisms to avoid
> such scenarios.
> 
> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
> Suggested-by: Leon Romanovsky <leon@kernel.org>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
> V1 -> V2: Add locks to location that used the variables as suggested by
> Leon. Improved the readibility of code in igc_tsn_clear_schedule() by
> separating the qbv portion into a different function.
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  4 +++
>   drivers/net/ethernet/intel/igc/igc_main.c | 34 +++++++++++++++++++++--
>   2 files changed, 36 insertions(+), 2 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
