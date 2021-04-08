Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 907D035805C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 12:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35D6A406A4;
	Thu,  8 Apr 2021 10:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id di3fP-tNNy2G; Thu,  8 Apr 2021 10:13:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 069414067D;
	Thu,  8 Apr 2021 10:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E53681BF3DB
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0215406A4
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F407tj3KrW3a for <intel-wired-lan@osuosl.org>;
 Thu,  8 Apr 2021 10:13:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13FC24065B
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:13:11 +0000 (UTC)
IronPort-SDR: C99qmQK5gtpXddtK6acouYt1uYi4c0EtC7ks5WqAmXXl5idC+D2Z5daPrEr1R2dR6OdcXOEcwG
 lAQy8VIpkL7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="190303112"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="190303112"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:13:11 -0700
IronPort-SDR: BkE90HKGBERQhGbjMF8bsdo5cj222nCrAaKaysoEKtFmrP+Q2S7+s0vs0XexNO1zHJaH8klvf2
 jEuzSmw32oag==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="422173591"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:13:10 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210226002308.2348-1-jithu.joseph@intel.com>
 <20210226002308.2348-9-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <f794464d-11f1-a659-34c9-82c203dbbe0e@linux.intel.com>
Date: Thu, 8 Apr 2021 13:13:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210226002308.2348-9-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 8/9] igc: Enable RX via AF_XDP
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
Cc: Andre Guedes <andre.guedes@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 26/02/2021 02:23, Jithu Joseph wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> Add support for receiving packets via AF_XDP zero-copy mechanism.
> 
> Add a new flag to 'enum igc_ring_flags_t' to indicate the ring has
> AF_XDP zero-copy enabled so proper ring setup is carried out during ring
> configuration in igc_configure_rx_ring().
> 
> RX buffers can now be allocated via the shared pages mechanism (default
> behavior of the driver) or via xsk pool (when AF_XDP zero-copy is
> enabled) so a union is added to the 'struct igc_rx_buffer' to cover both
> cases.
> 
> When AF_XDP zero-copy is enabled, rx buffers are allocated from the xsk
> pool using the new helper igc_alloc_rx_buffers_zc() which is the
> counterpart of igc_alloc_rx_buffers().
> 
> Likewise other Intel drivers that support AF_XDP zero-copy, in igc we
> have a dedicated path for cleaning up rx irqs when zero-copy is enabled.
> This avoids adding too many checks within igc_clean_rx_irq(), resulting
> in a more readable and efficient code since this function is called from
> the hot-path of the driver.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  22 +-
>   drivers/net/ethernet/intel/igc/igc_base.h |   1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 338 +++++++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_xdp.c  |  98 +++++++
>   drivers/net/ethernet/intel/igc/igc_xdp.h  |   2 +
>   5 files changed, 442 insertions(+), 19 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
