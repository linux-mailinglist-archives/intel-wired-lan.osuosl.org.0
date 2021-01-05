Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492DF2EB1DF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 18:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0488F87208;
	Tue,  5 Jan 2021 17:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUadsjl5F2Vt; Tue,  5 Jan 2021 17:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D2FB87202;
	Tue,  5 Jan 2021 17:57:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 170E01BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0FA7885EC1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id An04ChCr4nvI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 17:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 82C8F85D95
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:57:16 +0000 (UTC)
IronPort-SDR: JExMBS2iD/EAUhMmi3fsKthxi4nrgpAA0rHr5DrKXjIyUvRSZ9FgWDwmw7D8HluPB0n2ruNKi4
 rTnA4E7q6zGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="174576125"
X-IronPort-AV: E=Sophos;i="5.78,477,1599548400"; d="scan'208";a="174576125"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 09:57:16 -0800
IronPort-SDR: 4pW8BFAWz0aE2b9b/AOV0ag3JJzwjTBWbjgo5E2ITn4QP/G60a6SmrlnHpn2tkzNs/NxLMXj8u
 kaHIDAiImFMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,477,1599548400"; d="scan'208";a="350469437"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jan 2021 09:57:15 -0800
Date: Tue, 5 Jan 2021 18:48:30 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20210105174830.GD13327@ranger.igk.intel.com>
References: <20201223203705.78705-1-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201223203705.78705-1-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 0/9] igc: Add support for AF_XDP
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

On Wed, Dec 23, 2020 at 12:36:56PM -0800, Andre Guedes wrote:
> Hi all,
> 
> This is the second version of this series which adds AF_XDP zero-copy support
> to igc driver.
> 
> The main changes from v1 are:
> 
>     - Fixed commit messages to describe changes in imperative mood, e.g. "make
>       xyzzy do frotz" instead of "[This patch] makes xyzzy do frotz".
>     - Added queue index to error message in igc_setup_rx_resources().
>     - Improved comment about xsk frame size check in igc_xdp_enable_pool(). 
>     - Fixed typos.
> 
> v1 is here:
> 
>     https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201217202415.77891-1-andre.guedes@intel.com/

For the series:
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> 
> Best,
> Andre
> 
> Andre Guedes (9):
>   igc: Move igc_xdp_is_enabled()
>   igc: Refactor igc_xdp_run_prog()
>   igc: Refactor igc_clean_rx_ring()
>   igc: Refactor XDP rxq info registration
>   igc: Introduce tx/rx stats helpers
>   igc: Introduce igc_unmap_tx_buffer() helper
>   igc: Replace IGC_TX_FLAGS_XDP flag by an enum
>   igc: Enable RX via AF_XDP zero-copy
>   igc: Enable TX via AF_XDP zero-copy
> 
>  drivers/net/ethernet/intel/igc/igc.h      |  33 +-
>  drivers/net/ethernet/intel/igc/igc_base.h |   2 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 651 ++++++++++++++++++----
>  drivers/net/ethernet/intel/igc/igc_xdp.c  | 107 +++-
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |   8 +-
>  5 files changed, 673 insertions(+), 128 deletions(-)
> 
> -- 
> 2.29.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
