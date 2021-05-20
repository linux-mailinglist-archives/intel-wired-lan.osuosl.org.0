Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71112389E7B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0F9940491;
	Thu, 20 May 2021 06:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JD0X8UpGJ3ua; Thu, 20 May 2021 06:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16121400AB;
	Thu, 20 May 2021 06:58:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4C471BF23C
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D311983C1B
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a6dDBOi5yNLI for <intel-wired-lan@osuosl.org>;
 Thu, 20 May 2021 06:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52C0C83BFF
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:58:23 +0000 (UTC)
IronPort-SDR: wUbVHWiTq9Zvab9DsOR8w2WcN5xLmHywHBsMjMGCMfPzCU9icRybqV3LGjgGFzJzhVJ6U5YtWu
 FMsw0oFTctsQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="199208152"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="199208152"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:58:22 -0700
IronPort-SDR: 3GSI2UK9rKpV527ZAvzsmLmRqxAaNp59pIpidkRzcXoySPltGQTwuAMJ6XlqsZ4ZXUBBGIhiiT
 4BeXzL6IvojA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473865695"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:58:21 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210423062555.14972-1-jithu.joseph@intel.com>
 <20210423062555.14972-6-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <387c45da-27e8-e51c-ff7e-04c5d5dc001e@linux.intel.com>
Date: Thu, 20 May 2021 09:58:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210423062555.14972-6-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v6 5/9] igc: Introduce TX/RX stats
 helpers
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
Cc: kuba@kernel.org, Andre Guedes <andre.guedes@intel.com>,
 Vedang Patel <vedang.patel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 23/04/2021 09:25, Jithu Joseph wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> In preparation for AF_XDP zero-copy support, encapsulate the code that
> updates the driver RX stats in its own local helper so it can be reused
> in the zero-copy path. Likewise, encapsulate TX stats code as well.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 43 ++++++++++++++++-------
>   1 file changed, 31 insertions(+), 12 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
