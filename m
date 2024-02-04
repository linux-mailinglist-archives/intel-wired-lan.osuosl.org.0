Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D004848CF3
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Feb 2024 11:47:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08AA78518C;
	Sun,  4 Feb 2024 10:47:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08AA78518C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707043670;
	bh=plHrdrUcEkejeHVRAkWkXrF3zT3MaE/zkbwEZo6fxd8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yyyb0GeNPUCYRrcisgE4/BTYP2SThrWZbsWPBrq5pLQucxBHYpDL6TrPCZ1rRCFXL
	 kPzbGppmTTRWakmFUEDS+FlW0NtYX+BnrMhyoJ/mIUDlgnh3icjzUQHMOPDGyUA3+S
	 AlqjwIW8y7mQhEg6DjYZC1Hg7NTm2AjO+bHIrxODkB9JLZ8boiv1gJevDRFC7liD55
	 CqBYeaGrZk9S5r9CdXZZef6sQ+cdblLzh0jtLU2JgcYZ2t+9tDeZhi97pW8IPmD4x8
	 Ez0Hh8TlaupGiwuYNFfosCc++ZKcM/uRxk4d5uAdpa1Fij5G9zLaQ17BJBQOep3s02
	 t+roSqDSdXhug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cdMsvDD3u0Y; Sun,  4 Feb 2024 10:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43E9D8515E;
	Sun,  4 Feb 2024 10:47:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43E9D8515E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D31C1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 10:47:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD2E54049A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 10:47:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD2E54049A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hABRn-45_VW0 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Feb 2024 10:47:43 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 04 Feb 2024 10:47:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D89F640129
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D89F640129
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 10:47:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="625538"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="625538"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 02:40:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="932908028"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="932908028"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.124.132.248])
 ([10.124.132.248])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 02:40:31 -0800
Message-ID: <4efdd7c2-8824-41e7-a556-1f0e944faa87@linux.intel.com>
Date: Sun, 4 Feb 2024 12:40:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20240124085532.58841-1-kurt@linutronix.de>
 <20240124085532.58841-2-kurt@linutronix.de>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240124085532.58841-2-kurt@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707043663; x=1738579663;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4d9QESwx22QVYlhgB35XOXUK5cV0Z6Y9I0alC09oJRw=;
 b=IWCYnx8Sj+Qf9yCuNpiMD55qMKO6tO8t83swt9rnBbmiNC15ip38Ed7d
 6MJfEMK5LgPac0HasMOfO11xhulC+WeVJWjaMSt/caswNGGPxzGmE0264
 yp7nMFcd0PDH+QIoZzc3DaaVQP94xCEGIcqt4vNbc8ALvcFfnpV6Bnlk4
 CqroS02OJsiZno2Ro6vLkZOLd8B1IZJI308jSIaQlM/SzD2A6AqrpgzFb
 gHcGB/Vyvmj1hieHHswcIfLc6nYR2UTdvxLszGTS1zFZI4bF1/zJeK9Bn
 kC4dzrRt+yaDmRCnuAAdVlKezp8Rs6J4E+9TPL3jOCL9G6Y1oo2qooRDD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IWCYnx8S
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: Use reverse xmas
 tree
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/24/2024 10:55, Kurt Kanzenbach wrote:
> Use reverse xmas tree coding style convention in igc_add_flex_filter().
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
