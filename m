Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D3B3E0180
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 14:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9E5C4069C;
	Wed,  4 Aug 2021 12:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNyw0zKLbH73; Wed,  4 Aug 2021 12:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D97E540693;
	Wed,  4 Aug 2021 12:58:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13C681BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F264860632
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pyJ5ALQ7Zi5v for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 12:58:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7647B60624
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:58:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="274965260"
X-IronPort-AV: E=Sophos;i="5.84,294,1620716400"; d="scan'208";a="274965260"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 05:58:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,294,1620716400"; d="scan'208";a="511900646"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.251.175.67])
 ([10.251.175.67])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 05:57:57 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210727033657.39885-1-vinicius.gomes@intel.com>
 <20210727033657.39885-4-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <33b1a8ab-f1ca-dce6-57bc-d1d22569376a@linux.intel.com>
Date: Wed, 4 Aug 2021 15:57:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210727033657.39885-4-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v6 3/4] igc: Enable PCIe PTM
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, richardcochran@gmail.com,
 hch@infradead.org, helgaas@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/27/2021 06:36, Vinicius Costa Gomes wrote:
> Enables PCIe PTM (Precision Time Measurement) support in the igc
> driver. Notifies the PCI devices that PCIe PTM should be enabled.
> 
> PCIe PTM is similar protocol to PTP (Precision Time Protocol) running
> in the PCIe fabric, it allows devices to report time measurements from
> their internal clocks and the correlation with the PCIe root clock.
> 
> The i225 NIC exposes some registers that expose those time
> measurements, those registers will be used, in later patches, to
> implement the PTP_SYS_OFFSET_PRECISE ioctl().
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
