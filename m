Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E93663AE919
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 14:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCE03403BE;
	Mon, 21 Jun 2021 12:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mn3gtGTV9Ze8; Mon, 21 Jun 2021 12:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B176E403A2;
	Mon, 21 Jun 2021 12:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66B671BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 54B8B60621
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcQNoyA8ww3y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 12:31:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B823E60609
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:31:21 +0000 (UTC)
IronPort-SDR: l3y6RV4OVY7BJYkYmkaESkFKSORXUnUdZbCzLKTRGAzBpv3uA47iSIT1RQHcNSMMmixneags9W
 O0e0mFsidYEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="203811523"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="203811523"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:31:18 -0700
IronPort-SDR: 9FYZrZnFSNSxcm30bC4DbYJGOr3zcsGHv2nW+zRUhVtjjuoeYeGW/k+ShcfbJq+kecHFoefapC
 BkuM6x39HuDA==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486471943"
Received: from unknown (HELO [10.185.172.254]) ([10.185.172.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:31:17 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-2-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <2cb42259-aedc-af35-b8f3-58c4c7e1d093@linux.intel.com>
Date: Mon, 21 Jun 2021 15:31:15 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210611003924.492853-2-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/5] igc: Add
 possibility to add flex filter
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
> The Intel i225 NIC has the possibility to add flex filters which can
> match up to the first 128 byte of a packet. These filters are useful
> for all kind of packet matching. One particular use case is Profinet,
> as the different traffic classes are distinguished by the frame id
> range which cannot be matched by any other means.
> 
> Add code to configure and enable flex filters.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  13 ++
>   drivers/net/ethernet/intel/igc/igc_defines.h |  48 ++++++-
>   drivers/net/ethernet/intel/igc/igc_main.c    | 134 +++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  17 +++
>   4 files changed, 207 insertions(+), 5 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
