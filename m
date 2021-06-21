Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334E73AE922
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 14:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8773241D18;
	Mon, 21 Jun 2021 12:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1FVzHc1hFXEb; Mon, 21 Jun 2021 12:34:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C41941D17;
	Mon, 21 Jun 2021 12:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FB061BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E90182CC7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x7PcSpLZWcQV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 12:33:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE42082AF8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:33:56 +0000 (UTC)
IronPort-SDR: oIY5IbnmxqxkYkbN0Tcr+FjlNmYT4w90tXY8MCZFbuIOvhohl11GFg+bCtHwvWiTpKwzoJD98Z
 0DNXxGAM8kWw==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="193968114"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="193968114"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:33:55 -0700
IronPort-SDR: zdmHTJlo8wo3aethtghmYTYc5nm7oyLFYAlTROA/j7do96TkvIVvJxG2bbCLU/Rg+WTEV6G7Iz
 UThn01CAVEjQ==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486472420"
Received: from unknown (HELO [10.185.172.254]) ([10.185.172.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:33:54 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-6-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <d99a5b9d-8df2-2eb2-36f2-c2710b43191a@linux.intel.com>
Date: Mon, 21 Jun 2021 15:33:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210611003924.492853-6-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 5/5] igc: Export LEDs
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/11/2021 03:39, Vinicius Costa Gomes wrote:
> From: Kurt Kanzenbach <kurt@linutronix.de>
> 
> Each i225 has three LEDs. Export them via the LED class framework.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/net/ethernet/intel/Kconfig           |   1 +
>   drivers/net/ethernet/intel/igc/igc.h         |  10 ++
>   drivers/net/ethernet/intel/igc/igc_defines.h |  10 ++
>   drivers/net/ethernet/intel/igc/igc_main.c    | 132 +++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
>   5 files changed, 155 insertions(+)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
