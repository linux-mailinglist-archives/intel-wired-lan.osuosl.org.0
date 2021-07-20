Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6673CFA4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 15:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C68AF40245;
	Tue, 20 Jul 2021 13:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UrvtmPNZKlRs; Tue, 20 Jul 2021 13:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03800400FC;
	Tue, 20 Jul 2021 13:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9DC31BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 13:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C514E402B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 13:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cpX_NuIll-IN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 13:14:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8AF0A40245
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 13:14:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="275055321"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="275055321"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 06:14:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="432160678"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.13.12.185])
 ([10.13.12.185])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 06:14:47 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com
References: <20210710175750.2088213-1-sasha.neftin@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <04a90818-8797-8a7d-6842-725ac6ba691f@linux.intel.com>
Date: Tue, 20 Jul 2021 16:14:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210710175750.2088213-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove phy->type checking
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/10/2021 20:57, Sasha Neftin wrote:
> i225 devices have only one phy->type: copper. There is no point checking
> phy->type during the igc_has_link method from the watchdog that
> invoked every 2 seconds.
> This patch comes to clean up these pointless checkings.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 15 ++++-----------
>   1 file changed, 4 insertions(+), 11 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
