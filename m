Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 109A13296D8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C1946F688;
	Tue,  2 Mar 2021 08:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mk1nSp-52ALb; Tue,  2 Mar 2021 08:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F62C6F695;
	Tue,  2 Mar 2021 08:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BBDC1BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 251EA4EDD5
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRE3DRx2FYiz for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:20:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6C8A4EDD1
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:20:00 +0000 (UTC)
IronPort-SDR: 22iNBCZCHLppJBePYsUOck9tHCl/jdbVQKRnq1ULZV4Ci3n4aZUUCMQ+8L0xbxogRi6dNisfKc
 bvHAfddUKL9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="166610959"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="166610959"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:19:59 -0800
IronPort-SDR: MofYHIJFM0cftc7yVBoCdWimWGbcGdblWsy/S8fLA1Q/tfEuQ3v488CHLbop2fdLipYUPiFfNc
 mhClh57ZUS6Q==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444650602"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:19:58 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <7264a870-38dd-e785-3d0f-65d21ed9942f@linux.intel.com>
Date: Tue, 2 Mar 2021 10:19:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-1-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/9] igc: Add XDP support
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

On 10/02/2021 23:58, Vedang Patel wrote:
> Hi all,
> 
> This is the sixth version of this series which adds XDP support
> to igc driver.
> 
> Changes from v5 are:
> 
>      - Avoid premature Rx buffer re-use in XDP_REDIRECT action by storing
>        page count prior to invoking xdp_do_redirect. This is similar to
>        what has been done for other Intel drivers.
> 
> v5 is here:
> 
>      https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20210209024243.23406-1-vedang.patel@intel.com/
> 
> v4 is here:
> 
>      https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201104031210.27772-1-andre.guedes@intel.com/
> 
> v3 is here:
> 
>      https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201030210351.46482-1-andre.guedes@intel.com/
> 
> v2 is here:
> 
>      https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201028201943.93147-1-andre.guedes@intel.com/
> 
> v1 is here:
> 
>      https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201009025349.4037-1-andre.guedes@intel.com/
> 
> Thanks,
> Vedang
> 
> 
> Andre Guedes (9):
>    igc: Fix igc_ptp_rx_pktstamp()
>    igc: Remove unused argument from igc_tx_cmd_type()
>    igc: Introduce igc_rx_buffer_flip() helper
>    igc: Introduce igc_get_rx_frame_truesize() helper
>    igc: Refactor Rx timestamp handling
>    igc: Add set/clear large buffer helpers
>    igc: Add initial XDP support
>    igc: Add support for XDP_TX action
>    igc: Add support for XDP_REDIRECT action
> 
>   drivers/net/ethernet/intel/igc/Makefile   |   2 +-
>   drivers/net/ethernet/intel/igc/igc.h      |  18 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 458 +++++++++++++++++++---
>   drivers/net/ethernet/intel/igc/igc_ptp.c  |  87 ++--
>   drivers/net/ethernet/intel/igc/igc_xdp.c  |  60 +++
>   drivers/net/ethernet/intel/igc/igc_xdp.h  |  13 +
>   6 files changed, 531 insertions(+), 107 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
>   create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
