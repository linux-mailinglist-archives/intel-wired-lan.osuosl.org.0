Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69961389E3F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F26A140491;
	Thu, 20 May 2021 06:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eh-NMcM-ggH4; Thu, 20 May 2021 06:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F32E4017E;
	Thu, 20 May 2021 06:50:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7630C1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64C0A83BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oI_ycXV4TtRL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 06:50:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50E3A83BBC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:50:45 +0000 (UTC)
IronPort-SDR: eszBNKEHFNqjXIlTYTiizNKBQtydPPF28itibXdieOXzV2D0Ey19NVeYfSZJq6RXxctVWyISnL
 iC4Ly6WxPaVA==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="199207231"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="199207231"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:50:44 -0700
IronPort-SDR: X40LqvVnZVcD+PXB1ezXWXbjvscOk3neY10eEOna3gQYz6FTs1K16pUpoNXLb0Tz1NxnFg7Ir5
 lYhJJzyH0cGQ==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473863245"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:50:43 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20210502105708.3016965-1-sasha.neftin@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <aab8a72e-93a5-04a9-2c77-53944f681f21@linux.intel.com>
Date: Thu, 20 May 2021 09:50:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210502105708.3016965-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused MDICNFG
 register
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

On 02/05/2021 13:57, Sasha Neftin wrote:
> The MDICNFG register from igc registers is not used so remove it.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
>   1 file changed, 1 deletion(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
