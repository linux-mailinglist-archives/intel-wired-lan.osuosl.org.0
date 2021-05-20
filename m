Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1563D389E6A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A2F360625;
	Thu, 20 May 2021 06:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5BJNu4pEkWI; Thu, 20 May 2021 06:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 716D360623;
	Thu, 20 May 2021 06:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71B641BF23C
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D1FC60625
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYWLzGmnlduP for <intel-wired-lan@osuosl.org>;
 Thu, 20 May 2021 06:56:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C905A60615
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:56:22 +0000 (UTC)
IronPort-SDR: +P+/Mrs/QG/V3WKARSD3zBbgTq3WBq7EPsEWjDfwKrrI8nVL0OMmAvxn74mFxv9fDL3MhvufVj
 Ao9ep5sZYiKA==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="222238149"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="222238149"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:56:22 -0700
IronPort-SDR: yVylDEexqix0v3vPkY6MZKcGuOaL2LelQj74+SMaAdKdaK522O9MUA/N7eirCnVdKmOg42OEiC
 gjOK64pOqfSg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473865049"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:56:20 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210423062555.14972-1-jithu.joseph@intel.com>
 <20210423062555.14972-3-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <c43854c7-6c7d-e6d7-7902-ba0d6a901f4b@linux.intel.com>
Date: Thu, 20 May 2021 09:56:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210423062555.14972-3-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v6 2/9] igc: Refactor
 __igc_xdp_run_prog()
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
> Refactor __igc_xdp_run_prog() helper from igc_xdp_run_prog(),
> preparing the code for AF_XDP zero-copy support which is added
> by upcoming patches.
> 
> The existing igc_xdp_run_prog() caters to regular XDP rx path
> which has to verify if bpf_prog is not NULL. Zero-copy
> path assumes that bpf_prog is not NULL and hence this check is
> not required. Therefore it makes sense to refactor the common
> code into a helper function, to avoid code duplication.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++------------
>   1 file changed, 28 insertions(+), 28 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
