Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 065853AE91A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 14:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62772606DA;
	Mon, 21 Jun 2021 12:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LEU7gPx0KyvX; Mon, 21 Jun 2021 12:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58EC060609;
	Mon, 21 Jun 2021 12:32:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 895391BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7760C60648
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fN0nvWhyS2S3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 12:32:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB27560621
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:32:02 +0000 (UTC)
IronPort-SDR: TfaU1B8KmCD9x7noydSybzDENZknzIyZCFUzgBdAFhEjaWd5ik7ykBn7AkPxrcZBXudtInl8hy
 LXlkxVgo1j+w==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="203811705"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="203811705"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:32:02 -0700
IronPort-SDR: 5mpDVJ9pRsY3T9oqEkM0pwv87iFvPddT34x9Bdlm50EM8RvsuwD5H89R1MGJGtbI9jSd8i7xyp
 YpI7eCalmFzg==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486472068"
Received: from unknown (HELO [10.185.172.254]) ([10.185.172.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:32:00 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-3-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <a5a64089-7c75-a1ae-f639-6838a7bb2a54@linux.intel.com>
Date: Mon, 21 Jun 2021 15:31:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210611003924.492853-3-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/5] igc: Integrate flex
 filter into ethtool ops
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
> Use the flex filter mechanism to extend the current ethtool filter
> operations by intercoperating the user data. This allows to match
> eight more bytes within a Ethernet frame in addition to macs, ether
> types and vlan.
> 
> The matching pattern looks like this:
> 
>   * dest_mac [6]
>   * src_mac [6]
>   * tpid [2]
>   * vlan tci [2]
>   * ether type [2]
>   * user data [8]
> 
> This can be used to match Profinet traffic classes by FrameID range.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  24 ++-
>   drivers/net/ethernet/intel/igc/igc_defines.h |   4 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  20 ++
>   drivers/net/ethernet/intel/igc/igc_main.c    | 192 ++++++++++++++++++-
>   4 files changed, 230 insertions(+), 10 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
