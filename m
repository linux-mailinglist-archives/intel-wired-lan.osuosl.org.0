Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8A1320935
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Feb 2021 09:38:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 987DF87058;
	Sun, 21 Feb 2021 08:38:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8trcrv4XPxo; Sun, 21 Feb 2021 08:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5EC9B8706A;
	Sun, 21 Feb 2021 08:38:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66C5D1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 08:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 542F383443
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 08:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NwBOO5xqC-l0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Feb 2021 08:38:26 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 9A6F3835B9; Sun, 21 Feb 2021 08:38:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 574D783443
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 08:38:25 +0000 (UTC)
IronPort-SDR: fdcFOTrPn6+E5NGENG7Wdm4AdBv7vK6rgEPzTzdlRs2Bd2IlkxS4dheD6eSCFK5O1eBUFswA2X
 JHsUMYqdtanw==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="184264001"
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; d="scan'208";a="184264001"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 00:38:24 -0800
IronPort-SDR: wYUklQqUEMfW+slH3RopgFkWsfgY8Njx39eALSpfvGAtZewqsApRKU/hkNo6ahix7Oionby1YD
 CfmfiSiNHL1g==
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; d="scan'208";a="401896980"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 00:38:22 -0800
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 anna.kostyukovsky@intel.com
References: <20210214071749.4068885-1-sasha.neftin@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <4b510df9-4f6b-0c16-beaf-30bc718421f7@linux.intel.com>
Date: Sun, 21 Feb 2021 10:38:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210214071749.4068885-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused
 MII_CR_LOOPBACK
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

On 14/02/2021 09:17, Sasha Neftin wrote:
> MII_CR_LOOPBACK masks not in use in i225 device and can be removed.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index c5b36ec7bcff..153561291166 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -441,7 +441,6 @@
>   #define MII_CR_RESTART_AUTO_NEG	0x0200  /* Restart auto negotiation */
>   #define MII_CR_POWER_DOWN	0x0800  /* Power down */
>   #define MII_CR_AUTO_NEG_EN	0x1000  /* Auto Neg Enable */
> -#define MII_CR_LOOPBACK		0x4000  /* 0 = normal, 1 = loopback */
>   
>   /* PHY Status Register */
>   #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
