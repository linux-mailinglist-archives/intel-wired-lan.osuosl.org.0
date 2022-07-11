Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93EF56D437
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jul 2022 07:15:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40D8940329;
	Mon, 11 Jul 2022 05:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40D8940329
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657516501;
	bh=QbgfrNm97ntjUxYVR2vwID7+aJH9fxfXMnUtoXZw0TI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fRXewHV1OutGJBqC45r6V+ZtEEwAonwAoqvB/Y08mOFD3xtqC1BKQ1ocfKoLQDPSc
	 qpJB4nXt23y708ll2IKLyDp6Je9eQQbx1PdzUvxnSbHy0Fpqy28fpeXGIuZF96765e
	 hRBbrxHjSszZZsEEXs9HtkvcTVekzDuqM3hCkYSKsetB/aWaQdR1CYy6wxoJPbcHEA
	 8sXEXtBKZ9VJRTFcYEFghxwi09jcjiMnFG0cakvTkbw146KpiFwll4jKbHCyVhwDkq
	 UeSy51aKVCUZs+/dRQ38ZYJ34/1cNhnN12rmYX/97apUBl+66U5v6GIxlBqnlFOeOk
	 RQ/5rQ6kh6J7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F_22bsVBhrfh; Mon, 11 Jul 2022 05:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 391E440239;
	Mon, 11 Jul 2022 05:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 391E440239
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E62101BF37F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 05:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD8378322A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 05:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD8378322A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37HPFp8rOhX9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jul 2022 05:14:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51AF383227
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51AF383227
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 05:14:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="264353525"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="264353525"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 22:14:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="544874759"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 22:14:49 -0700
Message-ID: <fb5b6665-0a49-7f05-ec4b-02eb090335e8@linux.intel.com>
Date: Mon, 11 Jul 2022 08:14:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20220606092747.16730-1-kurt@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220606092747.16730-1-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657516493; x=1689052493;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=z3dFTVzHzSzd7vwxP7q1pE/Q3wL6XRKlmhvEKQM6j1I=;
 b=O6eQQNWoQaltyHKU7rcNn7Fjf7UpkEncPBizyXz9rmvU92G8LwWG08I9
 3Dae85STOKrduxpE28/11ua4Jlzg/cmVYQ6AZxpO6dHl67g/IPeQNxo8H
 3sM+Dn17fckpQauQHbYTErqkw+76FcU+xevjYZViqGVCgGvHUf6wKnN/6
 OxSzH8MeCtgTO5G5AcJTXYl0K6kCM2Si2sHvnqESBTZJv6PGGj3zej4E/
 8fTtuvJz/efrfmKyZp6V00TXwq7TmzJdRR01lClYMQmEth+rdS81c6ieU
 /JHtwg//ezaWrMsGvyFr2bMg164U18S35aveMFKTZFBUxdweNDdMBBWaL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O6eQQNWo
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Lift TAPRIO schedule
 restriction
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/6/2022 12:27, Kurt Kanzenbach wrote:
> Add support for Qbv schedules where one queue stays open
> in consecutive entries. Currently that's not supported.
> 
> Example schedule:
> 
> |tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3 \
> |   map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> |   queues 1@0 1@1 2@2 \
> |   base-time ${BASETIME} \
> |   sched-entry S 0x01 300000 \ # Stream High/Low
> |   sched-entry S 0x06 500000 \ # Management and Best Effort
> |   sched-entry S 0x04 200000 \ # Best Effort
> |   flags 0x02
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 23 +++++++++++++++++------
>   1 file changed, 17 insertions(+), 6 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
