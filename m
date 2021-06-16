Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 043523AA774
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 01:28:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BC6783C58;
	Wed, 16 Jun 2021 23:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UfSgpfH7q9Q6; Wed, 16 Jun 2021 23:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F73C8354D;
	Wed, 16 Jun 2021 23:28:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF3361BF42E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 23:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCE7160A97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 23:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtQvwoUq9Pve for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jun 2021 23:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77213607A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 23:27:54 +0000 (UTC)
IronPort-SDR: U1yvMNcLvIQaDEYStTn0kAjHR2IWGQS0iA/yIp+lXWUYr15upCUwDdFqFscEEnzHkEcEHKBL64
 Hio9W8kAUi/g==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="227779999"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="227779999"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 16:27:53 -0700
IronPort-SDR: c/uhERQyM+sCgOUqZHbGxAylMWWwjSLqhn+8dqVDprMkHlPe6u7GA6VFA4cVP64YtyRNR/QyBq
 +DtCdxpl9d1A==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="479269628"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.42.204])
 ([10.209.42.204])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 16:27:52 -0700
To: Colin King <colin.king@canonical.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20210615142847.60161-1-colin.king@canonical.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <2a347503-9879-0a13-555b-a007acfdec3c@intel.com>
Date: Wed, 16 Jun 2021 16:27:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210615142847.60161-1-colin.king@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH][next] ice: remove redundant continue
 statement in a for-loop
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/15/2021 7:28 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The continue statement in the for-loop is redundant. Re-work the hw_lock
> check to remove it.
> 
> Addresses-Coverity: ("Continue has no effect")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Yep, that logic makes more sense.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 267312fad59a..3eca0e4eab0b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -410,13 +410,11 @@ bool ice_ptp_lock(struct ice_hw *hw)
>  	for (i = 0; i < MAX_TRIES; i++) {
>  		hw_lock = rd32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
>  		hw_lock = hw_lock & PFTSYN_SEM_BUSY_M;
> -		if (hw_lock) {
> -			/* Somebody is holding the lock */
> -			usleep_range(10000, 20000);
> -			continue;
> -		} else {
> +		if (!hw_lock)
>  			break;
> -		}
> +
> +		/* Somebody is holding the lock */
> +		usleep_range(10000, 20000);
>  	}
>  
>  	return !hw_lock;
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
