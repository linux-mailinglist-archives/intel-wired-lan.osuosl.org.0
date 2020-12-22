Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 457FA2E0BB8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 15:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E608386991;
	Tue, 22 Dec 2020 14:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2IqKp3T0XMTM; Tue, 22 Dec 2020 14:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F23198698E;
	Tue, 22 Dec 2020 14:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 511C01BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C17C860C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZrDgga8cg1EV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 14:31:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E40E86054
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:31:15 +0000 (UTC)
IronPort-SDR: zCPYfCCrekWkzdzOCrSykWkvcsgy7a+xLwCUCCZpRVTrCuEVxmytDQ4dHalGm0H3q5C/8+BOS6
 JomjrYrRBd1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="239958399"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="239958399"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:31:14 -0800
IronPort-SDR: A4CRub8IrrlK/YAGR5GGYXEOpUCBtQFK2D4AU+URI1qybZSyJGr0pQw5P5Dbot6wsvf1UpfrSk
 ZFff4LdjAEGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="397193098"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Dec 2020 06:31:13 -0800
Date: Tue, 22 Dec 2020 15:20:45 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222142045.GI2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 00/10] igc: Add support for AF_XDP
 zero-copy
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 17, 2020 at 12:24:05PM -0800, Andre Guedes wrote:
> Hi,
> 
> This series adds AF_XDP zero-copy feature to igc driver.
> 
> The initial patches do some code refactoring, preparing the code base to
> land the AF_XDP zero-copy feature, avoiding code duplications. The last
> patches of the series are the ones implementing the feature.
> 
> The last patch which indeed implements AF_XDP zero-copy support was
> originally way too lengthy so, for the sake of code review, I broke it
> up into two patches: one adding support for the RX functionality and the
> other one adding TX support. Feel free to squash those two patches when
> pushing the series to net-next if you find appropriate.

Generally this looks good! I had only minor comments.

I'm interested how are you going to utilize the AF_XDP ZC, probably
something related to TSN ;)

> 
> Best,
> Andre
> 
> Andre Guedes (10):
>   igc: Move igc_xdp_is_enabled()
>   igc: Refactor igc_xdp_run_prog()
>   igc: Refactor igc_clean_rx_ring()
>   igc: Refactor XDP rxq info registration
>   igc: Introduce igc_update_rx_stats()
>   igc: Introduce igc_update_tx_stats()
>   igc: Introduce igc_unmap_tx_buffer() helper
>   igc: Replace IGC_TX_FLAGS_XDP flag by an enum
>   igc: Enable RX via AF_XDP zero-copy
>   igc: Enable TX via AF_XDP zero-copy
> 
>  drivers/net/ethernet/intel/igc/igc.h      |  33 +-
>  drivers/net/ethernet/intel/igc/igc_base.h |   2 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 650 ++++++++++++++++++----
>  drivers/net/ethernet/intel/igc/igc_xdp.c  | 107 +++-
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |   8 +-
>  5 files changed, 672 insertions(+), 128 deletions(-)
> 
> -- 
> 2.29.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
