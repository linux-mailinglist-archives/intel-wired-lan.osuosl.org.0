Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E786435B21B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Apr 2021 09:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 832A183AD6;
	Sun, 11 Apr 2021 07:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3vos4unsJec; Sun, 11 Apr 2021 07:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81E6F83A8E;
	Sun, 11 Apr 2021 07:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D32871BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDFBC403A5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6OyjSypJkuei for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Apr 2021 07:09:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F1A3403A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:09:41 +0000 (UTC)
IronPort-SDR: vq8PmBM1hMk47I6pIfK4rxDZR+8LuneC112BSr7Juv2FlJxoZB2hf9S0oJ0bUgb7YMKnr5W6ow
 8LZApMgfPWyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="174091259"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="174091259"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:09:41 -0700
IronPort-SDR: mVAvk9n5N+7iOl28bP1d8xBn4htvP2Kk4GS3c11b9h9iUiv27VwETWOXbi0bQoQEIk/LXkef8z
 7EjGfMsqlQkA==
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="423337513"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:09:39 -0700
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-5-jesse.brandeburg@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <e290e053-5118-1357-f4e5-6744be7fcc8e@linux.intel.com>
Date: Sun, 11 Apr 2021 10:09:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210326003834.3886241-5-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use
 strongly typed pointer
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

On 26/03/2021 03:38, Jesse Brandeburg wrote:
> The igb and igc driver both use a trick of creating a local type
> pointer on the stack to ease dealing with a receive descriptor in
> 64 bit chunks for printing.  Sparse however was not taken into
> account and receive descriptors are always in little endian
> order, so just make the unions use __le64 instead of u64.
> 
> No functional change.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> Warning Detail:
>    CHECK   .../igb/igb_main.c
> .../igb/igb_main.c:442:25: warning: cast to restricted __le64
> .../igb/igb_main.c:442:25: warning: cast to restricted __le64
> .../igb/igb_main.c:522:33: warning: cast to restricted __le64
> .../igb/igb_main.c:522:33: warning: cast to restricted __le64
> .../igb/igb_main.c:528:33: warning: cast to restricted __le64
> .../igb/igb_main.c:528:33: warning: cast to restricted __le64
>    CHECK   .../igc/igc_dump.c
> .../igc/igc_dump.c:192:40: warning: cast to restricted __le64
> .../igc/igc_dump.c:193:37: warning: cast to restricted __le64
> .../igc/igc_dump.c:275:45: warning: cast to restricted __le64
> .../igc/igc_dump.c:276:45: warning: cast to restricted __le64
> .../igc/igc_dump.c:281:45: warning: cast to restricted __le64
> .../igc/igc_dump.c:282:45: warning: cast to restricted __le64
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>   drivers/net/ethernet/intel/igc/igc_dump.c | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
Tested for igc
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
