Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FBF3E00D8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 14:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27BA260747;
	Wed,  4 Aug 2021 12:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uFSyfalfWLTs; Wed,  4 Aug 2021 12:07:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DAA160671;
	Wed,  4 Aug 2021 12:07:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FABB1BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E42F83C54
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7MN5Go69U9p2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 12:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF6B283C28
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:07:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213935881"
X-IronPort-AV: E=Sophos;i="5.84,294,1620716400"; d="scan'208";a="213935881"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 05:06:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,294,1620716400"; d="scan'208";a="511886792"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.251.175.67])
 ([10.251.175.67])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 05:06:53 -0700
To: Aaron Ma <aaron.ma@canonical.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210713130036.741188-1-aaron.ma@canonical.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <567b12f8-359a-5268-e020-edcf2dd46937@linux.intel.com>
Date: Wed, 4 Aug 2021 15:06:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210713130036.741188-1-aaron.ma@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: fix page fault when
 thunderbolt is unplugged
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

On 7/13/2021 16:00, Aaron Ma wrote:
> After unplug thunerbolt dock with i225, pciehp interrupt is triggered,
> remove call will read/write mmio address which is already disconnected,
> then cause page fault and make system hang.
> 
> Check PCI state to remove device safely.
> 
> Trace:
> BUG: unable to handle page fault for address: 000000000000b604
> Oops: 0000 [#1] SMP NOPTI
> RIP: 0010:igc_rd32+0x1c/0x90 [igc]
> Call Trace:
> igc_ptp_suspend+0x6c/0xa0 [igc]
> igc_ptp_stop+0x12/0x50 [igc]
> igc_remove+0x7f/0x1c0 [igc]
> pci_device_remove+0x3e/0xb0
> __device_release_driver+0x181/0x240
> 
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 32 ++++++++++++++---------
>   drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 ++-
>   2 files changed, 21 insertions(+), 14 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
