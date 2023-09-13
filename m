Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AE179E571
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 12:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8088441AE0;
	Wed, 13 Sep 2023 10:56:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8088441AE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694602594;
	bh=HQlbbPusJoaDGPTwb08KovimuycAiuNQOBkY1rJnYO0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5WEXHDuLIVJHQY2e7Vy0YFQw6RYsYh0cr9bvZt8g56Ml02cfSWNB3C96dYhDa85HI
	 5lokaPWxzvzNM3Do5fwhaOBngjy3ySGBUARQlJ0R9LHEr+EsCHvJKMhLyWEdRB8O8w
	 n0Wje0S2yvFo4sizsI3Zli2QDvCqx9Y97wUToaOEqJ/t2L49USzQbxx5XW3YhVbXJU
	 wCyDiKRNKSsA9jwO5kjOuiu883dpq/KmY0PyZ4LC6RUJMEWJxDplNGS3yJ2bBv7Rk4
	 lqVXtJ0+1HdC+Yl/EgOx+5cNWXSQddwgygkYDUx+KcvbU02/AQP3ZWWQ0KvdtAN1UH
	 tvSty0XHVV+bw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pz52XSFsDmjH; Wed, 13 Sep 2023 10:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CCD7418CD;
	Wed, 13 Sep 2023 10:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CCD7418CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE23E1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 10:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0E69405E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 10:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0E69405E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QWp_V5TT4WjQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 10:56:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3731401AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 10:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3731401AD
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="464996470"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="464996470"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:56:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="737453054"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="737453054"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.172])
 ([10.12.48.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:56:19 -0700
Message-ID: <4f9e7d31-7c73-e5c1-b34c-3924c5d6b100@linux.intel.com>
Date: Wed, 13 Sep 2023 13:56:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230907003005.99481-1-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230907003005.99481-1-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694602586; x=1726138586;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LYSnaNLcsO7YvbC0ChoMxE2UJxhRLP+HoojmUoNAyII=;
 b=VOsaHlTEkH1eCoRU0Ag1WqTIKCMbt6iG6TxIe4lbZmHYaZnsktlHqaNU
 B0wo4odOfR+KpGUlMKAQZq+O8AdDKfz1US7Aj5cxm8921IG+cWCXqcq9h
 vag7aED/HD2FeoFcYqsbYU1kfQZL+GysdnOF1Fabk+hS/DGNOamZoRJLE
 JOqneoyOuHQ8FpPhKThmXQFFpY38xDZI1dY8+R3BtlcjCUNKxsLjqzGee
 4wb/y4bf+r166HMVsnXDC/tsRtTuMtwXTwiIzA88K47GJF4R0uZMz/6vm
 mZ2QhAeN3ACEf7x9GfuD0IXqfIskqjhp33HJB1iJEIUZ+mkN/a7Uo0YQM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VOsaHlTE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix infinite
 initialization loop with early XDP redirect
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/7/2023 03:30, Vinicius Costa Gomes wrote:
> When a XDP redirect happens before the link is ready, that
> transmission will not finish and will timeout, causing an adapter
> reset. If the redirects do not stop, the adapter will not stop
> resetting.
> 
> Wait for the driver to signal that there's a carrier before allowing
> transmissions to proceed.
> 
> Previous code was relying that when __IGC_DOWN is cleared, the NIC is
> ready to transmit as all the queues are ready, what happens is that
> the carrier presence will only be signaled later, after the watchdog
> workqueue has a chance to run. And during this interval (between
> clearing __IGC_DOWN and the watchdog running) if any transmission
> happens the timeout is emitted (detected by igc_tx_timeout()) which
> causes the reset, with the potential for the inifite loop.
> 
> Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
> Reported-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
> Closes: https://lore.kernel.org/netdev/0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com/
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Tested-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v1 -> v2:
>   - Added more information to the commit message (Maciej Fijalkowski)
> 
> 
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
