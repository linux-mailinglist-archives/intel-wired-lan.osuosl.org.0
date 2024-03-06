Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D35D58730E3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 09:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E13F416AE;
	Wed,  6 Mar 2024 08:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DyVzEs94sDTg; Wed,  6 Mar 2024 08:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45720416B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709714324;
	bh=oCJcnj1d5l3Fr99rY7o2sNDKgxkF2huB2swZWP5Cs3s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KIWX1Nk415rDZczPWfjDZcOd81Pox2PpRVq5MzqLg57LMLqRE5EyNbReDrIGLjcAn
	 xzDqScTfgKUR2W1byRqxJMUGscNujs3PIAF1l5SaUpVX4NaQmRoMpMf4bHXvnr4P4U
	 8XfbqIIGorCNEb7/22wwv1Vuyef/QWdQqIM7ijY8q0uu2qTNuzL6f5untIb88JOap4
	 rQMWAd2H6XHMWqFL2LnrVZ38eaPxzQxTmP2HX9VNXq5tq626F9dEq80G3FS3Xzlo58
	 s+GMcwrP+ryAoSpzesTxrfpIy2+hj7JILKaF4I6MVydzRxIdv7JPy2ZW5u5zo1UaTL
	 IAu9Gy+EmHaEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45720416B0;
	Wed,  6 Mar 2024 08:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0375C1BF97A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E418160867
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLVv1tWmpa9m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 08:38:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F3AF860780
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3AF860780
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3AF860780
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:38:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="21837366"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="21837366"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:38:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="47210936"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:38:36 -0800
Message-ID: <3d984c02-0154-4c72-92ee-16fa34d4b537@linux.intel.com>
Date: Wed, 6 Mar 2024 10:38:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240220235712.241552-1-vinicius.gomes@intel.com>
 <20240220235712.241552-2-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240220235712.241552-2-vinicius.gomes@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709714321; x=1741250321;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=L6Cn4uTVTBHKqlz1yW8rNDu318FD8WsCh6wVNeDEbwk=;
 b=MYIh9gPa+lsUr9CMkOtLvXf2zJRusP9o/CxLdSbrkexdFrPSxntY4rM6
 6PP94mIcTQFklmtQ6foJY1K1y1NJHCmCEOv+Rpkj17ZHHpcyaRWq5lfry
 G9I1nfs5JYsQxV8Zq+xIsmfKOQ/9WhZr3CMYR8Zd/BxHgRAgnBSnouRNu
 MeAog+Q4B5qnyd6d257cR9cBoSQeiyTUq4E0EgsBVP11AhKRlYEbDulA6
 Y7iEEVxS/QnnaSUMMmvxisbIdd39ncRj0U5EabLWLl6yycjq+dwrC4+vh
 njn9QXdTguyvom7O9bkR3HUeJ5bpowj/l7oKiyF3wK9XaryTwT+4vOvO+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MYIh9gPa
Subject: Re: [Intel-wired-lan] [iwl-net v2 1/2] igc: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/21/2024 01:57, Vinicius Costa Gomes wrote:
> Fix "double" clearing of interrupts, which can cause external events
> or timestamps to be missed.
> 
> The IGC_TSIRC Time Sync Interrupt Cause register can be cleared in two
> ways, by either reading it or by writing '1' into the specific cause
> bit. This is documented in section 8.16.1.
> 
> The following flow was used:
>   1. read IGC_TSIRC into 'tsicr';
>   2. handle the interrupts present in 'tsirc' and mark them in 'ack';
>   3. write 'ack' into IGC_TSICR;
> 
> As both (1) and (3) will clear the interrupt cause, if the same
> interrupt happens again between (1) and (3) it will be ignored,
> causing events to be missed.
> 
> Remove the extra clear in (3).
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Tested-by: Kurt Kanzenbach <kurt@linutronix.de> # Intel i225
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 12 +-----------
>   1 file changed, 1 insertion(+), 11 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
