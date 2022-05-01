Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4945162B1
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 May 2022 10:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FBA441505;
	Sun,  1 May 2022 08:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRVrBuKh2KGU; Sun,  1 May 2022 08:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E33A41503;
	Sun,  1 May 2022 08:25:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FEF31BF396
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 May 2022 08:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01E2182A29
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 May 2022 08:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4voFwd_138tK for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 May 2022 08:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A94B82846
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 May 2022 08:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651393540; x=1682929540;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=MqqGjnLucA8A6pFsYQzMwl4kGLZcnnqTRCL8pDKiRFI=;
 b=ARNhJ9xksEkMZ6b6fB2Rr48SLawLG4NSxRT0Yyu4Lm8HjN3OAXrKD+00
 wRw14oqmyDODyPD0xR2aIJxEmReNo9DbGfK02G2Tr0Hej27otWvs+UCnL
 NnmQeIq7dP2fOUw/nuq5yb+aeZpvVcPtHz1HtRB98TM0FzdlpLLIXUGZW
 /ki24UsN1A3mflRIY1IQ9ygclxlBxvtdTh8Fkbc68RyvxfuJCT6KWlNkd
 Yu4YSjMC9kcKxvoxEFiGdc/drBrGEIssJDLdv6yzsZnx8VcQgPNg6VlZa
 9thmkCmOkup6dNXkU/XYndHuJ5R3IA7GBQarZ5PR85W7GsYKis6wvR81g A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10333"; a="353407947"
X-IronPort-AV: E=Sophos;i="5.91,189,1647327600"; d="scan'208";a="353407947"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2022 01:25:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,189,1647327600"; d="scan'208";a="583112888"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.4])
 ([10.13.12.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2022 01:25:34 -0700
Message-ID: <4e3935cd-085f-cfe5-4c59-19d251ac3b24@linux.intel.com>
Date: Sun, 1 May 2022 11:25:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220413053317.3297670-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220413053317.3297670-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused phy_type
 enum
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

On 4/13/2022 08:33, Sasha Neftin wrote:
> Complete to commit 8e153faf5827 ("igc: Remove unused phy type")
> i225 parts have only one phy. There is no point to use phy_type enum.
> Clean up the code accordingly, and get rid of the unused enum lines.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_base.c |  2 --
>   drivers/net/ethernet/intel/igc/igc_hw.h   |  7 -------
>   drivers/net/ethernet/intel/igc/igc_phy.c  | 10 +++-------
>   3 files changed, 3 insertions(+), 16 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
