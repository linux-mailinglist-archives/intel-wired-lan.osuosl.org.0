Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBF98BDD9D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 11:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1762C40684;
	Tue,  7 May 2024 09:00:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TTQOlSYq1MEI; Tue,  7 May 2024 09:00:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B76E4068C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715072449;
	bh=u7C/kfLhtW+CWwlYz6tTRGeo6m5KWdtaq6YjNhzzfrM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=seqsfRuA69YrFMakt0MOskKVypc5Mu8XGm8stFGaXNBvuKQF+R8IXFTwxR86g7FcG
	 KA6X+Scprt30HiknjojcSfM2XIobV8ptnVfEJZhSj8YhAeqb1IVqgzATHZHD1V6DXl
	 L6Zk9ThcqUy9OUlqWahlCpV+mj8ImWM2kJg1gjkHYa3M7XrR9GndJP4BqDCcb1p6kQ
	 /OLvENxT419Bgd68LJ3fnNL4dxtczJlbJsAwehCqwx+O7yCXkBdyOYR9VtoFQUaYSN
	 EzVMYuyQH9qWWEUgvK2NuaA+k0ulyT6NVE+inxD7KPZqkhThKkqoo2XsvD0glu8tP/
	 /VStN0TCFGL2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B76E4068C;
	Tue,  7 May 2024 09:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3ED9F1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3730A404C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:00:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V6xBcFjpIq_F for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 09:00:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0B0B40104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0B0B40104
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0B0B40104
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:00:43 +0000 (UTC)
X-CSE-ConnectionGUID: kKi9DoslSw2JqwmYwIKVCQ==
X-CSE-MsgGUID: bZWJeSFSR6y3qXSZIB3dqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10973174"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10973174"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 02:00:43 -0700
X-CSE-ConnectionGUID: BIXzcgyNQGqdZ4Tfhf9/QA==
X-CSE-MsgGUID: ZqoA2/rkQrq2U0+3M26r8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="33123988"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 02:00:41 -0700
Message-ID: <3d224a03-094d-4ae3-a471-cca7218bd732@linux.intel.com>
Date: Tue, 7 May 2024 12:00:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Corinna Vinschen <vinschen@redhat.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <20240423102455.901469-1-vinschen@redhat.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240423102455.901469-1-vinschen@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715072444; x=1746608444;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=78js/oaZPgoEdOv7Zevn7pvGNo4LG46YG696Wq2pEfM=;
 b=cynQuoKjYhxPh5REeBlOoaQWEWamSznKUgKpIqvxiFIvJ1bP+p2oGDGE
 KhrjRfRoFoMiGAWNlTQXz7zhSOtfbkssv3q+Q40yn3FZ3xl8KKpFJd/yJ
 yPHw4g8jpNOxs38MuBWK+nZNpLBYEcq0HbFv5Nlb2Nxw4DE1tDO526Evj
 eov0efrOkJ8lWHeVLT4wSu5BCtxxxDFk7byFzD5jkATlPqyM43+VnMJoJ
 JKzfp6tRPzbWKPvTSrXsx2H0qKldNbplDvqdP1Y19ax0L93bqoabbYNcb
 TjO2h+35LZP8HUGoyBYLBkvFVcOr0CxcxGgzY6vhZms0qkKAr2StswBOl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cynQuoKj
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix a log entry using
 uninitialized netdev
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/23/2024 13:24, Corinna Vinschen wrote:
> During successful probe, igc logs this:
> 
> [    5.133667] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
>                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> The reason is that igc_ptp_init() is called very early, even before
> register_netdev() has been called. So the netdev_info() call works
> on a partially uninitialized netdev.
> 
> Fix this by calling igc_ptp_init() after register_netdev(), right
> after the media autosense check, just as in igb.  Add a comment,
> just as in igb.
> 
> Now the log message is fine:
> 
> [    5.200987] igc 0000:01:00.0 eth0: PHC added
> 
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
