Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9856057F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 09:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D8156F8D1;
	Thu, 20 Oct 2022 07:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D8156F8D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666249888;
	bh=bfxfQDmFkgQfgvGNBZNUrKX12n511g8lWuGdr89bpGE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J/3odDZrGoMtnVnvdJifvCTkiZPddL+JOnwsash0X1oCeJ2aDuilccq+rXrAYvbKV
	 jeEzI3afQXQM2eF7p8HhXMTxz1k5VKwTVwyN55x8Ga9Ps8p7vb2rnD4h64asHGEVUz
	 ZiKYq73QtdgXuLEZ3mVxdY9bSJs6QPouYp1uk6XZfMN0lOdRoJTqZPNydz7rwEgvMa
	 w/6nAWfJI0f02bePV7d5Oq1JqTOXaQzS+VpCoema/Y1CAF4EmF4PeQnDsrKGUp99Rk
	 lz/Jz2sDeOm+AW7ZNMxzOcZFcTGCBPh5eMgJhKatUteOHWNkxmoAoxkY8X5J4AW8kF
	 /nloja5uU0YpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvi6c6SPAtIu; Thu, 20 Oct 2022 07:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46EA660D67;
	Thu, 20 Oct 2022 07:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46EA660D67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B39071BF957
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 07:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99E3184260
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 07:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99E3184260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Fjx3NDr4Kz8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 07:11:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBDEB8425D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBDEB8425D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 07:11:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="304242574"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="304242574"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 00:08:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="662872434"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="662872434"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.255])
 ([10.13.11.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 00:08:13 -0700
Message-ID: <6e37992a-a1dd-1942-7739-8f86fc475f65@linux.intel.com>
Date: Thu, 20 Oct 2022 10:07:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220929080859.2912497-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220929080859.2912497-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666249881; x=1697785881;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=YeDxupdgahiw9WrmT5D9t7iOh0HJ54dvR5KxygHMorg=;
 b=JnD+pVHuDNrtxEZVfUJ5MqZqDktDLnwR8YIQANFKQapmC5Hhxg1FDLaj
 x4D6c5Il3veUWCy41ueE0f8SoR9a9QDNyZloL+5op4AU/cibiAR8SEoKb
 r6vkU87vVnaq519TCEwNYNFbBoHOTBxHi9VYPYHdNE5zmCmDj98A1/ccI
 zfCbvPtHKSfp01Vi2kNGrWmXZYHAImuckjByRc2qRUTfI3JYOYoXKf/h0
 x6484cFBmnfihMrklf4EvKILhiNGofbE+IuZR8yeMI0WesvGht2k8l6em
 bLSgw8fmfBHyz6hK4tfzixKU+KBz4FoIO/ifkW/SXXGfb5kZyQSaWSljr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JnD+pVHu
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for the
 next LOM generation
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

On 9/29/2022 11:08, Sasha Neftin wrote:
> Add devices IDs for the next LOM generations that will be available on the
> next Intel Client platforms.
> This patch provides the initial support for these devices.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c |  2 ++
>   drivers/net/ethernet/intel/e1000e/hw.h      |  9 +++++++++
>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  7 +++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++++++
>   drivers/net/ethernet/intel/e1000e/ptp.c     |  1 +
>   5 files changed, 29 insertions(+)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
