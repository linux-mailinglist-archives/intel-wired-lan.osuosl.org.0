Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD598543ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 09:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8CEF41756;
	Wed, 14 Feb 2024 08:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1ChStZkX2af; Wed, 14 Feb 2024 08:17:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2918E4157C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707898639;
	bh=PlE+S6wv1aA6Fi2yFhsZMr17NKSdyScKxI0wxcHtwCM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hIpDbTj/6o+jFr7qWh9aUeYBvEzSIjdowSBwtpwvx+fGJqosfS03YAcpv2tfU28BD
	 IB6BtKaTBMAWrxrBWvhBRVsMtNyUalO/NwODVl7gZnJAZYfkq4/+SF30IvbW4PXZNV
	 EKhvjR066gAvHGolbCpKufnJxunIABBOA8fmoMO4CT2o8TWxLIbKLAiqsJNMHFtncG
	 6FtGCE/Cvj1zXPdxYTDw6U9RjPk7VtZH9OrxtSW48UJfmY7v0tykS+dvoYEQtHLeYf
	 94Vmpa8+IWwbR8K8vcBTAI1+hpsubW+OQ+Omi09zCLFK2GFLopY+cVNyP7RCn9cwgw
	 AuEUde9vz+gvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2918E4157C;
	Wed, 14 Feb 2024 08:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D4101BF304
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 08:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53FE5415DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 08:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANwZZDsPTC6p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 08:17:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BCF244157C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCF244157C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCF244157C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 08:17:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1803075"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1803075"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:17:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="7728505"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:17:12 -0800
Message-ID: <8478c6ec-f544-4594-8320-91b42f3b4f66@linux.intel.com>
Date: Wed, 14 Feb 2024 10:16:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240104141652.3539930-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240104141652.3539930-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707898636; x=1739434636;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8u5rZYoJ4evxcWXIbklZKLutMssIUUO0u+ZydFyjlbI=;
 b=iK402OX9oEIBe1N2KOx/CW4uMqZleoqD7aOqCf/HnEk/BXoDdhWzcfZ3
 lJdMNixEYx4MkDC+lNYsiVR+PzpUXOwIM0USSkO3a2Za8oOGn9s6/CPZn
 3YDGLWU1yeaRxztJZ1NGVAeWoQLTI+yTKrBE8+l4uYf78HYQUHGFanCgs
 BUUq8WdqAQy7NBx1r6+dgnBWVbDC0/5HKmo2o0LlzeRhZuW/0HirUGOxJ
 ujmq1lEGCRrm4qrhKEukiYxQ8ZSpLTQ2yXAoqez9JO4CiSVmxPInEDJTG
 8dh4KDAlVbP0qsHLxfpQYp+W7jyVQs2c2EMcppPsfblxFFQhm1bBN+3ws
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iK402OX9
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
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
Cc: Nir Efrati <nir.efrati@intel.com>,
 Nikolay Mushayev <nikolay.mushayev@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/4/2024 16:16, Vitaly Lifshits wrote:
> On some Meteor Lake systems accessing the PHY via the MDIO interface may
> result in an MDI error. This issue happens sporadically and in most cases
> a second access to the PHY via the MDIO interface results in success.
> 
> As a workaround, introduce a retry counter which is set to 3 on Meteor
> Lake systems. The driver will only return an error if 3 consecutive PHY
> access attempts fail. The retry mechanism is disabled in specific flows,
> where MDI errors are expected.
> 
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Suggested-by: Nikolay Mushayev <nikolay.mushayev@intel.com>
> Co-developed-by: Nir Efrati <nir.efrati@intel.com>
> Signed-off-by: Nir Efrati <nir.efrati@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: rebase to latest changes in dev-queue
> v3: rebase to dev-queue branch
> v2: fix checkpatch errors
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h      |   2 +
>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  33 ++++
>   drivers/net/ethernet/intel/e1000e/phy.c     | 186 ++++++++++++--------
>   drivers/net/ethernet/intel/e1000e/phy.h     |   2 +
>   4 files changed, 151 insertions(+), 72 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
