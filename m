Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFA629EE00
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Oct 2020 15:18:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8087686A46;
	Thu, 29 Oct 2020 14:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D7ExuXEx8iXT; Thu, 29 Oct 2020 14:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6916F868F0;
	Thu, 29 Oct 2020 14:18:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF0001BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B22F622865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qcLXRUa6BdTw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Oct 2020 14:18:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AD11227AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:18:24 +0000 (UTC)
IronPort-SDR: 9wt2YRHziQoWwH+m/u4DAZrd0SSvWdi+Gv+V7fEwhB6ZN5YjjQv+5UTmGeOHS4TFMzByRJ8Q7q
 hDW/k7+H9iCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="155408551"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="155408551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 07:18:10 -0700
IronPort-SDR: JApCbnXWFo2xeva0P1l98W+H4+nRWp8CFyNU0ZkKGu0Ue+nkdlnjuDw0fMFmLQy5IGr2woHz/x
 Jd3JIP/WHpjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="526746220"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga005.fm.intel.com with ESMTP; 29 Oct 2020 07:18:09 -0700
Date: Thu, 29 Oct 2020 15:07:44 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201029140744.GB890@ranger.igk.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-6-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028201943.93147-6-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 05/10] igc: Refactor rx timestamp
 handling
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

On Wed, Oct 28, 2020 at 01:19:38PM -0700, Andre Guedes wrote:
> This patch refactors the rx timestamp handling in preparation to land
> XDP support.
> 
> RX timestamps are put in the rx buffer by hardware, before the packet
> data. When creating the xdp buffer, we will need to check the rx
> descriptor to determine if the buffer contains timestamp information
> and consider the offset when setting xdp.data.

Out of curiosity, is the timestamping somehow configurable on this device
or does it always take place? Could it be toggled?

> 
> The rx descriptor check is already done in igc_construct_skb(). To
> avoid code duplication, this patch moves the timestamp handling to
> igc_clean_rx_irq() so both skb and xdp paths can reuse it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
