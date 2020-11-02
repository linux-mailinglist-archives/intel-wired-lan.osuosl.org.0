Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A422A3326
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Nov 2020 19:42:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 253468727E;
	Mon,  2 Nov 2020 18:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3LIEEbsAjLM9; Mon,  2 Nov 2020 18:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C893087284;
	Mon,  2 Nov 2020 18:42:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 346D81BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F5EE8727E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PgIiFQGqByB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Nov 2020 18:42:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 33C0D8727B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:42:30 +0000 (UTC)
IronPort-SDR: c28IVlAmKPIM7YqKmoytavFfmVomXBno/hbi6Rt0uxiOlMpy1UsTky+by2qz6ZuiaNay3KoP2B
 JY5pv9GwVrGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="169034772"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="169034772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 10:42:29 -0800
IronPort-SDR: lBHZd2nizd8fzrw0wGdk7ymBeuzP8DVqtgncb4aFl1+ZdXZcx/mWyEW6G36yNKIJhUpD0YjegV
 MxThSgqOfY9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="352905087"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 02 Nov 2020 10:42:27 -0800
Date: Mon, 2 Nov 2020 19:31:29 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201102183129.GM6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030210351.46482-1-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v3 0/9] igc: Add XDP support
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

On Fri, Oct 30, 2020 at 02:03:42PM -0700, Andre Guedes wrote:
> Hi all,
> 
> This is the third version of this series which adds XDP support to igc driver.
> 
> The main changes from v2 are:
> 
>     - Moved functions that belong to the driver's hot path to igc_main.c to
>       allow the compiler to inline them if convenient.
>     - Squashed ndo_xdp_xmit patch into XDP_REDIRECT patch.
> 
> v2 is here:
> 
>     https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201028201943.93147-1-andre.guedes@intel.com/
> 
> v1 is here:
> 
>     https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201009025349.4037-1-andre.guedes@intel.com/
> 
> Cheers,
> Andre

I had only minor comments/questions for this version, so you can take my:

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

for series.

> 
> 
> Andre Guedes (9):
>   igc: Fix igc_ptp_rx_pktstamp()
>   igc: Remove unused argument from igc_tx_cmd_type()
>   igc: Introduce igc_rx_buffer_flip() helper
>   igc: Introduce igc_get_rx_frame_truesize() helper
>   igc: Refactor rx timestamp handling
>   igc: Add set/clear large buffer helpers
>   igc: Add initial XDP support
>   igc: Add support for XDP_TX action
>   igc: Add support for XDP_REDIRECT action
> 
>  drivers/net/ethernet/intel/igc/Makefile   |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h      |  18 +-
>  drivers/net/ethernet/intel/igc/igc_main.c | 431 +++++++++++++++++++---
>  drivers/net/ethernet/intel/igc/igc_ptp.c  |  89 +++--
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  60 +++
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |  13 +
>  6 files changed, 512 insertions(+), 101 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h
> 
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
