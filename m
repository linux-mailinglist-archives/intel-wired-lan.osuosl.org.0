Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 881035199B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 May 2022 10:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 130C261097;
	Wed,  4 May 2022 08:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdCqcV9L0dil; Wed,  4 May 2022 08:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD3B3610C6;
	Wed,  4 May 2022 08:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14FAD1BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10473606F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycddIGXD22BF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 May 2022 08:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A1E7606BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651652823; x=1683188823;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=MqqGjnLucA8A6pFsYQzMwl4kGLZcnnqTRCL8pDKiRFI=;
 b=U1F0tHxHTnV6T6ElPcBMibT49wHotD84v/YYKOCASNr5PeuJ/ALNSe5p
 6O2/qOlHP0kfOA54Et/7HiVLcyPeARcCVsjpkgHWaODEe68HIlMGTKIQt
 ROM8DtddbQcvVKL6vI240KiJwHQeMHBendgKnUw3AUhx+nTIjdG1pAN+A
 xjVxI7Eb3jKTO0WXLvyVfP7f02/ulfEYS1vumjkAIgDXEKd0LKaNgr3Ud
 tT6Gb4HQLxfVNMsljdJutEzzpNCVBckbAtEsxpyLj4sl5BJkPWhulYkFZ
 8RvaE/zm/yEwI3TiUcmz479OykmcEWftzLJMMxdbI78A5enFR2q4cwjmF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="249680868"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="249680868"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 01:27:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="536730062"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.232.114])
 ([10.214.232.114])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 01:27:01 -0700
Message-ID: <564b6bb4-f9cd-c9ce-8d32-f51b49823262@linux.intel.com>
Date: Wed, 4 May 2022 11:26:59 +0300
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
