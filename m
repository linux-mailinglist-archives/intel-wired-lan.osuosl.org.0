Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1466782488
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 09:38:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8E2D4051B;
	Mon, 21 Aug 2023 07:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8E2D4051B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692603517;
	bh=4vM8D2IvjcWUiWPKXHzwS5Silu5mDi5+OkXIA0Y8/es=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A138AejNyIHE11wFSdVyWQ0bzoM3/b8telpkPUVwRDwmCloKuCx30zNHO311jpkbI
	 66MiuHohnJHBAo55HtYH4Nq1LQLymcaTck/dIXRHATMiJkrptO5iQtzxP8HuXuCy/P
	 EswkUS9amnyzUnUe9fGi3kpWVvKxw56QQQ2gLS+9McBB/DGh6/JYazU+hkstdIVEgU
	 e+e9IH0iMxg0oitatyiViHesIMZrIZy5saX2HbKp9e8zcLoS6P3YeVZWOzpfAyLAl/
	 DcP62w0FWzEkGS1hAY7MYJZe/jUPWD9RdE7L/bEyaPrk6QOKfbLX5IUnUPkXdOnKPD
	 5DD/H6hguadcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XIWAgtkxWULT; Mon, 21 Aug 2023 07:38:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D504540141;
	Mon, 21 Aug 2023 07:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D504540141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 334281BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CC5E40249
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CC5E40249
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oo2xpqN1tMIe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 07:38:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B54F740583
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:38:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B54F740583
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="358497426"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="358497426"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 00:38:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="738806419"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="738806419"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.32])
 ([10.13.12.32])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 00:38:25 -0700
Message-ID: <9449bc48-409d-5fd8-6c44-953e8067d892@linux.intel.com>
Date: Mon, 21 Aug 2023 10:38:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230808042352.2930822-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230808042352.2930822-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692603507; x=1724139507;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=t2wHXdsFJk4lECE1pMUj5mVGtUT09rIdGmAqbPBQe+k=;
 b=RRrIYWQ6+iWhLwLR8LMsC5jz69ZpU3scyj55qXh2/pJ50k6fWdb33v79
 5sRtAfC7BJPrRemOBVXXalNrCH/zFrkrtDFc2f0bzxPOiYu7TPdOKKpxh
 1BsSYufZIGLx/LpwUCp9OqCEy1uKvCFWEUqCzsZzk21tb0m83VVXqgHzm
 kAcim869WpYYiEczn1SONhwioVKNNFD5qJ+HFejSNtrVDAXcbalXV+c56
 DOQwz/ML0GcFSU1YXXXRPac06hSf1jHX7MtZXPLZuWEnDvrAjF2nYkQd7
 v750n8N3ZyWh/IViEB4Ptbu0GqorEtymvir234y23BblNO4WGJWk8qFR2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RRrIYWQ6
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: Fix the typo in
 the PTM Control macro
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

On 8/8/2023 07:23, Sasha Neftin wrote:
> The IGC_PTM_CTRL_SHRT_CYC defines the time between two consecutive PTM
> requests. The bit resolution of this field is six bits. That bit five was
> missing in the mask. This patch comes to correct the typo in the
> IGC_PTM_CTRL_SHRT_CYC macro.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v1->v2: Fixed commit message
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
