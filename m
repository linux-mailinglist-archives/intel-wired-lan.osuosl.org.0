Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E3C9F6EA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 20:57:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BC9F81119;
	Wed, 18 Dec 2024 19:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SuAQqW8STGvP; Wed, 18 Dec 2024 19:57:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CAC381026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734551850;
	bh=Yy4Ii5jJxlGykTQHIBPqOSlSCzI4lRkwJxBidHEhIpw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cLnZ3uVdHHqgWWslo2G0tyKL5cFCHKeELl3pimI9KO5BATdlzdJnFpRhXsyalO0vR
	 +gY0+vjU2iSKeKoht76++rfodVOOe0UfS6cBz8J59hIBuc1Arr1ShagQ/QMpivXXNq
	 yYUW8qDQHGxqrfBAC3A7ilddY+fYTvlOIlfhpCaXMTJMJ7ePSlyk12kL5TYpvDhmPK
	 a+o9d8uDSfNughZBWo75lhz0Fa28tbrZ843v0TWvwO0miihE4N5oR5vF0SHbRaZNDj
	 Q/VaRMXoE34bHtKLadwOhy7jFvTqUfhCVukfsenGiPpOVJlgzDsv1yVM965B2lPRJ9
	 THhTeHPxCLbpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CAC381026;
	Wed, 18 Dec 2024 19:57:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C241C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69C1B80F6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:57:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f-UcnoV4zZyR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 19:57:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 66FBB80E3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66FBB80E3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 66FBB80E3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:57:26 +0000 (UTC)
X-CSE-ConnectionGUID: XoQOCithSZGaEpQz9HRrHw==
X-CSE-MsgGUID: 7HPAVOoMQhaLKU/3fpZMZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38981109"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="38981109"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 11:57:26 -0800
X-CSE-ConnectionGUID: R6HGhAR7S5G4Z5zm1RkpAw==
X-CSE-MsgGUID: fCRAHulBS8iVV7ABURROHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102967539"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 18 Dec 2024 11:57:22 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tO0AZ-000Gb8-2X;
 Wed, 18 Dec 2024 19:57:19 +0000
Date: Thu, 19 Dec 2024 03:56:31 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202412190318.OR90xHNu-lkp@intel.com>
References: <20241218165843.744647-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218165843.744647-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734551847; x=1766087847;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dYweTV5AJyl8AG9T7K7pRgEiBrEQJN0995ZLP5q7Srk=;
 b=nN9yU1jWfGQQ3bNvYa8VjMW7pSaNjKQCDI8jYRvle+CeM8upepzrUNYF
 oXgldQQ/CaR3QpJ+9VCFDHfS6FhJrO57Rw1w9cR+HiOhFIVLiesOHQ8jF
 X7pteBc4Hb+Yc5zz13LaiiqFunzc0Vr9D+M9IkU0MxyMhMHEUmSso4d/f
 M5ZyFy0Kjsq6GzSQvl9uJrsheXMeSYYnfY0GMKsJ+puWZRt5kx6lG4QZh
 rcFU7B4zRh7ReUBhXN6BMhBARMzZrucveIPIN9EGqz7bnsdlhzu981A+F
 Fn52UUW3vouTOHHKN7XvDGT4BuVQ2t1LcGQnvbWyt+8V97NEvgZ0RS2lr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nN9yU1jW
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/8] net: allow ARFS rmap
 management in core
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-napi-add-irq_flags-to-napi-struct/20241219-010125
base:   net-next/main
patch link:    https://lore.kernel.org/r/20241218165843.744647-3-ahmed.zaki%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v2 2/8] net: allow ARFS rmap management in core
config: arm-randconfig-002-20241219 (https://download.01.org/0day-ci/archive/20241219/202412190318.OR90xHNu-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241219/202412190318.OR90xHNu-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412190318.OR90xHNu-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from net/core/dev.c:92:
   include/linux/netdevice.h:361:1: error: empty enum is invalid
     361 | };
         | ^
   include/linux/netdevice.h:367:1: error: empty enum is invalid
     367 | };
         | ^
   net/core/dev.c: In function 'netif_napi_set_irq':
>> net/core/dev.c:6710:14: warning: unused variable 'rc' [-Wunused-variable]
    6710 |         int  rc;
         |              ^~


vim +/rc +6710 net/core/dev.c

  6707	
  6708	void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags)
  6709	{
> 6710		int  rc;
  6711	
  6712		napi->irq = irq;
  6713		napi->irq_flags = flags;
  6714	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
