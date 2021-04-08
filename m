Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C2C35805F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 12:13:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BAFF84DBD;
	Thu,  8 Apr 2021 10:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dulOU6Vl4fS; Thu,  8 Apr 2021 10:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C47A84DAA;
	Thu,  8 Apr 2021 10:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB20D1BF3DB
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA17660D5F
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lSLZYkM0L4UE for <intel-wired-lan@osuosl.org>;
 Thu,  8 Apr 2021 10:13:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 518F160C10
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:13:39 +0000 (UTC)
IronPort-SDR: 6+bsyxI/sICZsxh/Kjf89SaazqtUFqE8/h97Af1L5XGx+odVyheNAOj/Eorrm/A0fn4X4YVqKv
 TfT6v5ZY14Sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="278778782"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="278778782"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:13:38 -0700
IronPort-SDR: i2rLqrzd7HnMs+hT/GR0X09oBL2GFZqWAv6ghpx2aaEzAwLHRuUqrlhxXmmcJHd7mr+sgL/FL5
 FpoT1DXgwTgw==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="422173733"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:13:37 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210226002308.2348-1-jithu.joseph@intel.com>
 <20210226002308.2348-10-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <d8f54700-d8a9-b1c8-fa37-0a4dba55f5f8@linux.intel.com>
Date: Thu, 8 Apr 2021 13:13:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210226002308.2348-10-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 9/9] igc: Enable TX via AF_XDP
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
> Add support for transmitting packets via AF_XDP zero-copy mechanism.
> 
> The packet transmission itself is implemented by igc_xdp_xmit_zc() which
> is called from igc_clean_tx_irq() when the ring has AF_XDP zero-copy
> enabled. Likewise i40e and ice drivers, the transmission budget used is
> the number of descriptors available on the ring.
> 
> A new tx buffer type is introduced to 'enum igc_tx_buffer_type' to
> indicate the tx buffer uses memory from xsk pool so it can be properly
> cleaned after transmission or when the ring is cleaned.
> 
> The I225 controller has only 4 Tx hardware queues so the main difference
> between igc and other Intel drivers that support AF_XDP zero-copy is
> that there is no tx ring dedicated exclusively to XDP. Instead, tx
> rings are shared between the network stack and XDP, and netdev queue
> lock is used to ensure mutual exclusion. This is the same approach
> implemented to support XDP_TX and XDP_REDIRECT actions.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |   3 +
>   drivers/net/ethernet/intel/igc/igc_base.h |   1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 113 +++++++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_xdp.c  |  20 +++-
>   4 files changed, 129 insertions(+), 8 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
