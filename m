Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5A835B220
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Apr 2021 09:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 995EB839BB;
	Sun, 11 Apr 2021 07:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90y0zt6nmeg0; Sun, 11 Apr 2021 07:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A8FD83981;
	Sun, 11 Apr 2021 07:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA4B11BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:16:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B959683981
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:16:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EC0aAhOQVXnx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Apr 2021 07:16:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA9F18397A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:16:22 +0000 (UTC)
IronPort-SDR: plpPTtnjMXfZW/wQ0BrNwDM62rsllyZIorjGRAzVHPqqWLJc/AZ6tbL/Ws+01ED5JFDlnMbTpF
 Lssb6Ce+UyDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="214450605"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="214450605"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:16:22 -0700
IronPort-SDR: wHcKOt0CrVOPP7NZ+p5KoxSMwN/npqLlkC8wXcWD2IS8JWmu7sq90a6fO3a7LOE3waub+emPHS
 VWuSbVKnE4kQ==
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="423339022"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:16:21 -0700
To: Ederson de Souza <ederson.desouza@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210219013104.54436-1-ederson.desouza@intel.com>
 <20210219013104.54436-3-ederson.desouza@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <1e3a6124-879c-7b4f-3804-30d323ca1fc7@linux.intel.com>
Date: Sun, 11 Apr 2021 10:16:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210219013104.54436-3-ederson.desouza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 2/2] igc: enable
 auxiliary PHC functions for the i225
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

On 19/02/2021 03:31, Ederson de Souza wrote:
> The i225 device offers a number of special PTP Hardware Clock features on
> the Software Defined Pins (SDPs) - much like i210, which is used as
> inspiration for this patch. It enables two possible functions, namely
> time stamping external events and periodic output signals.
> 
> The assignment of PHC functions to the four SDP can be freely chosen by
> the user.
> 
> For the external events time stamping, when the SDP (configured as input
> by user) level changes, an interrupt is generated and the kernel
> Precision Time Protocol (PTP) is informed.
> 
> For the periodic output signals, the i225 is configured to generate them
> (so the SDP level will change periodically) and the driver also has to
> keep updating the time of the next level change. However, this work is
> not necessary for some frequencies as the i225 takes care of them
> (namely, anything with a half-cycle of 500ms, 250ms, 125ms or < 70ms).
> 
> While i225 allows up to four timers to be used to source the time used
> on the external events or output signals, this patch uses only one of
> those timers. Main reason is to keep it simple, as it's not clear how
> these extra timers would be exposed to users. Note that currently a NIC
> can expose a single PTP device.
> 
> Signed-off-by: Ederson de Souza <ederson.desouza@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  11 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |  63 +++++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  55 +++-
>   drivers/net/ethernet/intel/igc/igc_ptp.c     | 269 ++++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  10 +
>   5 files changed, 405 insertions(+), 3 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
