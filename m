Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C961B35B218
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Apr 2021 09:04:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D78683AD2;
	Sun, 11 Apr 2021 07:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id amslmQR-Hsxf; Sun, 11 Apr 2021 07:04:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5222083A9D;
	Sun, 11 Apr 2021 07:04:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24E761BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1371A4028D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZLP90snJT9R for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Apr 2021 07:04:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 715634028A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:04:51 +0000 (UTC)
IronPort-SDR: HkfGgB4cINWarC8YBEadf1LsEnhgQ1kmWosljoOzoo6cXJZuPrGJ9UgYstgtZ+4hScLa6Y0iRt
 aGGGMIijIepA==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="194032642"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="194032642"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:04:50 -0700
IronPort-SDR: C2dW9du3AJ1jJoVsArrPO9MLpXiIuRR2opweMi5ke3Ocx7ASP5PQNYtya5LJrTonsDmzHoIwnK
 2baET/dY0z0Q==
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="423336461"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:04:48 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 anna.kostyukovsky@intel.com
References: <20210324131525.2196955-1-sasha.neftin@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <b42f9d98-d18c-eebd-291a-eb83e90219fb@linux.intel.com>
Date: Sun, 11 Apr 2021 10:04:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210324131525.2196955-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose LPI counters
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

On 24/03/2021 15:15, Sasha Neftin wrote:
> Expose EEE tx and rx low power idle counters via ethtool
> A EEE TX or RX LPI event occurs when the transmitter or the receiver
> enters EEE (IEEE802.3az) LPI state.
> ethtool --statistics <iface>
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
