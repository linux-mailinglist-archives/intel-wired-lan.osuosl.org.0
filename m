Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 775E952CFBC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 11:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 914A341C41;
	Thu, 19 May 2022 09:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qHQjA737JxMy; Thu, 19 May 2022 09:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55EAD41C21;
	Thu, 19 May 2022 09:51:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EE531BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 09:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A55141C21
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 09:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0J2GLmD_uYpb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 09:51:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FE4841C1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 09:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652953875; x=1684489875;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8xszIUgrAQV3TyToYUPSqdgK/yoVms8cvYqnOgszZmo=;
 b=RCMblYGR0TBr3oxA+n/Mck03Sw2RV8zl7uFmVbgZoWCQRvpX2n9AGZlk
 /bRwxTO7rXJZbGF1clcrn+/mzysB5GmcBsWav/PPTEDxtN1KFei9FULK7
 MwEPeiw29MJOKGSHfH1qORSA7RA1hN0x+ynTOJ27z/2mGreQi7T0F9PDb
 uEtL7K+jGRpUigX7hgcHF5GBwODoBTAb+hkM0AWIoj+1XTjAXy6bH68E0
 fJke1ZI/50OL0ptFzJdHRmpxU/zCihJhQ7I2BRQ9qtv5LSyKskn5M+yLT
 YbcKreuXUhOcsHBz3BMC+c2KNZlXNEBpxgA2z4ziP9joENfa+ykRenrHm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="271821957"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="271821957"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 02:51:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="598469532"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.212.104])
 ([10.214.212.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 02:51:13 -0700
Message-ID: <f9909e7c-abfb-2638-b941-ca2a5e7e120c@linux.intel.com>
Date: Thu, 19 May 2022 12:51:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220508070905.1878172-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220508070905.1878172-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Enable GPT clock
 before sending message to CSME
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/8/2022 10:09, Sasha Neftin wrote:
> On corporate (CSME) ADL systems, the Ethernet Controller may stop working
> ("HW unit hang") after exiting from the s0ix state. The reason is that
> CSME misses the message sent by the host. Enabling the dynamic GPT clock
> solves this problem. This clock is cleared upon HW initialization.
> 
> Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v2:
> Correct commit message and minor fix in comment.
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
>   1 file changed, 4 insertions(+)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
