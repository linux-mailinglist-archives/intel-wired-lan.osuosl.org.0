Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BD23B3776
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 21:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1E7F83C9C;
	Thu, 24 Jun 2021 19:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3Q8H496Lni5; Thu, 24 Jun 2021 19:58:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20B5583C88;
	Thu, 24 Jun 2021 19:58:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D72541BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 19:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4C4A405C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 19:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkGXO-LU-_Z0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 19:58:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E64A540510
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 19:58:41 +0000 (UTC)
IronPort-SDR: mek0JGHP1NjsWK7CnJpVUGpIXeHc6uijlSEmg68uFfICN7OYwfYxdCmRP7jc/pI9rhWEbKqh6w
 kltZtU2/Zyow==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="205722417"
X-IronPort-AV: E=Sophos;i="5.83,297,1616482800"; d="scan'208";a="205722417"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 12:58:39 -0700
IronPort-SDR: 9kxQzp6jeZmOIo5W0vvGj+HLZ5lymwQKayMgXxAO3XSx+C1pp2yhYHcsk0VR3FPe9/HKBPUZg+
 a416MsUFmuHw==
X-IronPort-AV: E=Sophos;i="5.83,297,1616482800"; d="scan'208";a="487896188"
Received: from rsharon-mobl1.ger.corp.intel.com (HELO [10.214.203.125])
 ([10.214.203.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 12:58:32 -0700
To: trix@redhat.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, jeffrey.t.kirsher@intel.com,
 sasha.neftin@intel.com
References: <20210521195019.2078661-1-trix@redhat.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <1c0592d7-7d54-7834-61d4-f6b3183b5cf2@linux.intel.com>
Date: Thu, 24 Jun 2021 22:58:28 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210521195019.2078661-1-trix@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: change default return of
 igc_read_phy_reg()
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
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/21/2021 22:50, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Static analysis reports this problem
> 
> igc_main.c:4944:20: warning: The left operand of '&'
>    is a garbage value
>      if (!(phy_data & SR_1000T_REMOTE_RX_STATUS) &&
>            ~~~~~~~~ ^
> 
> pyy_data is set by the call to igc_read_phy_reg() only if
> there is a read_reg() op, else it is unset and a 0 is
> returned.  Change the return to -EOPNOTSUPP.
> 
> Fixes: 208983f099d9 ("igc: Add watchdog")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
