Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCA0A08556
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 03:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 859F48349A;
	Fri, 10 Jan 2025 02:29:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3moxApkGm5hh; Fri, 10 Jan 2025 02:29:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48318834BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736476168;
	bh=HDE04rGjITFizaVq80qkao5eraJXU32tvISVLg983fs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5+Rv3jlwfeqL+PD7ogPfjKPfVm3O+FROginZ6v69sz5Buk6+ah8kwcHi5l8dzX+PM
	 W17OYglUIDrmK7/OUfDirg8qDTM7X1Ul2AquRdVfbdt5x7DsymUY3kaU3toDCIHKOP
	 1eYz7BPtBR8WnNB/DTn5IBVzIaMLwNTuhVXET2E3/fmQh7wZRNt7G+USjqVbO0YFtY
	 mIOieDkd/PM1DJaeu7cm3yDBqshZl9GYBPbJMZst2BwRpBmsaQTLvmNpblFnHm4gse
	 qHIT1IYLPA4YslGgRcHgHjxH3N+C1lp1tkAqfEU2k5w0x/ixbQ9Jafq+3U/x7NkKR5
	 5i4ZYnRWPfVRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48318834BB;
	Fri, 10 Jan 2025 02:29:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A85CF942
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 02:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 808D64010C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 02:29:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1-gK1HZUCerP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 02:29:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 39A2F40133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39A2F40133
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39A2F40133
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 02:29:24 +0000 (UTC)
X-CSE-ConnectionGUID: Ykfu0mQFQd2oUtdU0J79ww==
X-CSE-MsgGUID: 2wPbyp2iQ6KJygICGa7vVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36048692"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="36048692"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 18:29:24 -0800
X-CSE-ConnectionGUID: 75nkWsI4S6GSS86GMaQbDg==
X-CSE-MsgGUID: sV965HSQSt6WBRS13i6CXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="103405340"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 09 Jan 2025 18:29:20 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tW4lx-000IQJ-2G;
 Fri, 10 Jan 2025 02:29:17 +0000
Date: Fri, 10 Jan 2025 10:28:21 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202501101042.2q2geY9c-lkp@intel.com>
References: <20250109233107.17519-4-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109233107.17519-4-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736476165; x=1768012165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=53O0v/6qejdpBVF+3FIeafCJY4tJv/lAdq4JfToWPw4=;
 b=VwvC+kMuFFoBxrZrbfqcQu0fa1E6usrLZ8A6bZXb8gQoy3kx4VJUvc4F
 IXFhowAWIzKzt5+LHPl0aXWp2XvOGUMmIEdLGpV4IxMwUG2JK2ORQ7HnG
 pLrH4fMMUG9Xr/bF0HMDzjkSyGiXRaIHyyEPgfmnBRt6vL2VgQVzWM72b
 gW/muDBx4b714yo/FElNzyDiVh0gCvKeHrcukhAnWmDRT/SKzW6lXt5i3
 q7cZpS938HDX/gJXS0CRwNnCOVngSRGLr9Y2rTgk95Xqbc7xnLRO7s0AN
 gtFGc6zfm/cGsE6ljIr3tpJIrM9vj8iK2QkdI1trM+DfyrShTszsBMBzz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VwvC+kMu
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
config: s390-randconfig-001-20250110 (https://download.01.org/0day-ci/archive/20250110/202501101042.2q2geY9c-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250110/202501101042.2q2geY9c-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501101042.2q2geY9c-lkp@intel.com/

All errors (new ones prefixed by >>):

   net/core/dev.c: In function 'netif_napi_affinity_release':
>> net/core/dev.c:6795:42: error: 'struct net_device' has no member named 'rx_cpu_rmap'
    6795 |         struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
         |                                          ^~
>> net/core/dev.c:6797:23: error: 'struct napi_struct' has no member named 'napi_rmap_idx'
    6797 |         rmap->obj[napi->napi_rmap_idx] = NULL;
         |                       ^~


vim +6795 net/core/dev.c

064d6072cac4f49 Ahmed Zaki 2025-01-09  6789  
064d6072cac4f49 Ahmed Zaki 2025-01-09  6790  static void
064d6072cac4f49 Ahmed Zaki 2025-01-09  6791  netif_napi_affinity_release(struct kref *ref)
064d6072cac4f49 Ahmed Zaki 2025-01-09  6792  {
064d6072cac4f49 Ahmed Zaki 2025-01-09  6793  	struct napi_struct *napi =
064d6072cac4f49 Ahmed Zaki 2025-01-09  6794  		container_of(ref, struct napi_struct, notify.kref);
064d6072cac4f49 Ahmed Zaki 2025-01-09 @6795  	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
064d6072cac4f49 Ahmed Zaki 2025-01-09  6796  
064d6072cac4f49 Ahmed Zaki 2025-01-09 @6797  	rmap->obj[napi->napi_rmap_idx] = NULL;
064d6072cac4f49 Ahmed Zaki 2025-01-09  6798  	cpu_rmap_put(rmap);
064d6072cac4f49 Ahmed Zaki 2025-01-09  6799  }
064d6072cac4f49 Ahmed Zaki 2025-01-09  6800  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
