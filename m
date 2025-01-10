Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63113A085BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 04:01:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98CC6834DE;
	Fri, 10 Jan 2025 03:01:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GYOgri_cHMXY; Fri, 10 Jan 2025 03:01:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6C428117E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736478086;
	bh=6wJ10/ImLmZABOk3NWWpSZfVJjKrSgw+5oiHz791fy4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AcduH/JYtIh4sSEbF2E1zsDNzMYNKrbXmoIVhvHLe3RWD7ZDZUk0MHy/HAt9bpRoE
	 djkuBJ4h7qm+PNK3anZwZC5o+xXO+qI5s/3I6xuZLwHp1dXkU8ZD+dSpJH7c+AvJrY
	 QxnHD38JspurFQSoAploZ2Nnu3YVImysgY8I84jiKDdBBUh7IsTMTHCYWqxZ4YrRt6
	 V6kaC8j/tWPHmJUBdtUswINgiryIH38tA9KGlEDXv7iKKSvQbZMuHONwIDATTzjAeo
	 Xxx2AIOhNlttmSajFtYZ8LlnQDt9k8keWqzIF6mDym5vtapZwlv3j0HeeNkpTAPMA3
	 FzperaRjeZ9uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6C428117E;
	Fri, 10 Jan 2025 03:01:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48A2A76C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 03:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 335D04010C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 03:01:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lNhfOmzAC_nH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 03:01:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01EF840133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01EF840133
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01EF840133
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 03:01:23 +0000 (UTC)
X-CSE-ConnectionGUID: c4CAxUX3Tda0scfuNLBZ2g==
X-CSE-MsgGUID: 1QzHspIfTASlYhEm9kNJ9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="54306671"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="54306671"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 19:01:22 -0800
X-CSE-ConnectionGUID: 6w9N8g2pRayk35v4Gfiu1A==
X-CSE-MsgGUID: qGCggdHAT+CYpiYMF0jpow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="104128428"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 09 Jan 2025 19:01:18 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tW5Gu-000IRn-00;
 Fri, 10 Jan 2025 03:01:16 +0000
Date: Fri, 10 Jan 2025 11:00:17 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202501101047.KVl1kI5I-lkp@intel.com>
References: <20250109233107.17519-4-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109233107.17519-4-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736478084; x=1768014084;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OxkOxjTS3fWMLwihl4/17Mf9luvPmMspJ48TJAbinbQ=;
 b=UhA0Qp426wNR8vLXoO2bM17MLSwAJ0N3cpKlzkHXaVDdrfESHojGLUl3
 mIgY3q9NcLYhuc/y3SNp+6IiCc3iCqinlbja4XB1161jSbuC9mHYrJCDH
 KValGxu3af2aFO47r+QLokW4ssB5VpgoE06VLG6krpWXsoSlr9jWAIyo6
 lL5UWCWIcQmEXBa9z4497FDylVMIHZ+JhTUPy8bkTJxgDTjd4h7bSLPeZ
 UPKHbOkq4oyxknns2VlQCwSGZ9Id2QO8iUuw8KLyGFJBKptDLuyUcDDCr
 NaF+LvJRcwgtZLRy+bC6F+uUvai14eXQi4mayoQaBAuk+wreXrTb/RcLQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UhA0Qp42
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/6] net: napi: add CPU
 affinity to napi_config
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

Hi Ahmed,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-move-ARFS-rmap-management-to-core/20250110-073339
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250109233107.17519-4-ahmed.zaki%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v4 3/6] net: napi: add CPU affinity to napi_config
config: arm-randconfig-003-20250110 (https://download.01.org/0day-ci/archive/20250110/202501101047.KVl1kI5I-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250110/202501101047.KVl1kI5I-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501101047.KVl1kI5I-lkp@intel.com/

All errors (new ones prefixed by >>):

>> net/core/dev.c:6795:37: error: no member named 'rx_cpu_rmap' in 'struct net_device'
    6795 |         struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
         |                                 ~~~~~~~~~  ^
>> net/core/dev.c:6797:18: error: no member named 'napi_rmap_idx' in 'struct napi_struct'
    6797 |         rmap->obj[napi->napi_rmap_idx] = NULL;
         |                   ~~~~  ^
   2 errors generated.


vim +6795 net/core/dev.c

064d6072cac4f4 Ahmed Zaki 2025-01-09  6789  
064d6072cac4f4 Ahmed Zaki 2025-01-09  6790  static void
064d6072cac4f4 Ahmed Zaki 2025-01-09  6791  netif_napi_affinity_release(struct kref *ref)
064d6072cac4f4 Ahmed Zaki 2025-01-09  6792  {
064d6072cac4f4 Ahmed Zaki 2025-01-09  6793  	struct napi_struct *napi =
064d6072cac4f4 Ahmed Zaki 2025-01-09  6794  		container_of(ref, struct napi_struct, notify.kref);
064d6072cac4f4 Ahmed Zaki 2025-01-09 @6795  	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
064d6072cac4f4 Ahmed Zaki 2025-01-09  6796  
064d6072cac4f4 Ahmed Zaki 2025-01-09 @6797  	rmap->obj[napi->napi_rmap_idx] = NULL;
064d6072cac4f4 Ahmed Zaki 2025-01-09  6798  	cpu_rmap_put(rmap);
064d6072cac4f4 Ahmed Zaki 2025-01-09  6799  }
064d6072cac4f4 Ahmed Zaki 2025-01-09  6800  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
