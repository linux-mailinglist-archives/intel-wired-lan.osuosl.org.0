Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 571774E61AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 11:23:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01149605BE;
	Thu, 24 Mar 2022 10:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNd7v9-hmtGm; Thu, 24 Mar 2022 10:23:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D19F60ACC;
	Thu, 24 Mar 2022 10:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E3001BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 382814102A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIzibrf6WuPh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 10:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24A74400A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648117392; x=1679653392;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rJhX9IRu2SF1p0u6dC6ejmt8OObHUJDP4rpvxYAQnpU=;
 b=QsJJWe5vUPd7CqnfZOKMR6JbZP9FBUfZRPKPrfsILgOGOR1zSRJD7Yrc
 M2OElmAwq0rQIqvIhMlm0XUYbNtXKZHXXPSVa2FTjg/CybWoKarl1lNwo
 f9fNSu/4oSKIfV5I7b4BpwWm99br5xF+fgK0o8EOR9dIm5KBKA5/ytnMm
 lpIMtzeDlhp1dgXnXdzr+DxPaL4U65HwjhrtsJ1qk2U6Xbgrub1Hu0aGn
 B84sAjSjt9l1kXq7YEooXpPZL1Q0wkaBIc3aR9z/MaHcaapvN+ZJwSV6+
 VNuQ1/Zvmt3gVqE1sDPe220lmUwnlHXpXW4+KbtCChxAzT8gRhiPrmn03 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238941975"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="238941975"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 03:23:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="519728152"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 03:23:08 -0700
Message-ID: <66d6caf7-3524-690f-e0af-d2642517bee1@linux.intel.com>
Date: Thu, 24 Mar 2022 12:23:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220308092422.2971655-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220308092422.2971655-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix BUG: scheduling while
 atomic: kworker/u64:0/9/0x00000002
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Corinna Vinschen <vinschen@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/8/2022 11:24, Sasha Neftin wrote:
> Replace usleep_range() method with udelay() method to allow atomic contects
> in low-level MDIO access functions.
> 
> Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=2014971
> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
> Reported-by: Corinna Vinschen <vinschen@redhat.com>
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
