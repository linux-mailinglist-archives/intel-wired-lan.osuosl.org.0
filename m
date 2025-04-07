Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C09CA7EF66
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 22:40:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8E478129D;
	Mon,  7 Apr 2025 20:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b-MMiGU0c5SN; Mon,  7 Apr 2025 20:40:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EBAC80F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744058441;
	bh=ywoXtqkmYRR4Wlu+JYOweWbJ9CfPQ6ny9CRerjNyv4g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kBmlBKP1mHzHl9V2yCxi+pREYSU73fwH5h7FfzhXosJNzRLjEujg1tg6GycIsxbfc
	 JdHB6EVPnck/epZMgaB8q7+A+CnkP+qXrA9UWMmq9q5A33nLu1zuRwI4m6upR9D0/c
	 4f6MrXX4nIZBrtsMD2k1uv1oYDVG/sOZ4PqyGLcgrBEBi1wuAVnLgIvTc/q7zQy6to
	 d5BeWlBGT+pFsr8ftDFfWmz79uEkzwtWf9qoQ6T7qI2ezkZ/mIS87Nf9vRiGyJ6Lmk
	 Hsd2Gb9etOjX2ChrDGAd/0cN2qK+z+nrmMGENKjhuKPK5RbxtDZ6VRQD82zL2Of9c+
	 G1PpiyYB++l2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EBAC80F60;
	Mon,  7 Apr 2025 20:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 814CFDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 20:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67001810E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 20:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HFHm7jqIhKxr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 20:40:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6864780E49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6864780E49
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6864780E49
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 20:40:38 +0000 (UTC)
X-CSE-ConnectionGUID: uFnygOQzT3amJmUysuSYYQ==
X-CSE-MsgGUID: dWICzvGWRK2ia21Fjog3CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44716107"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="44716107"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 13:40:38 -0700
X-CSE-ConnectionGUID: DDo2yfvjSoWlcdjsJe6z2g==
X-CSE-MsgGUID: QPEacZQTQxKDxVCWFfocEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="127929972"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 13:40:34 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u1tGh-0003ot-25;
 Mon, 07 Apr 2025 20:40:31 +0000
Date: Tue, 8 Apr 2025 04:39:48 +0800
From: kernel test robot <lkp@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <202504080314.X7qJw69Y-lkp@intel.com>
References: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744058438; x=1775594438;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K3PdnfX+s+h1I1zJiyQ/vXMnprLp0KaE229U+f1lhAY=;
 b=Bb4SpJ+qJ9K4yC3PCCxr4PxTSHtVGiuCyivlxE59HkwBBT59HNWwvnsU
 82Al9K4BKziqST/R7wscCXnygV3g+VeYTYlKjSnffbRDrOhOpwI4sIZrY
 00Pb41Br1lAn5JwV83wQKTQc+teA+mhf3ggQs0BNll4rknmwNwAS+UaTG
 zEEa+ph5uvxOTfcTlccEui2/XnqsJWbeGsDyrgEtCTKOnS2iylyTY6YOC
 RCDVbKHM6CqORa9McNXEXkF8IwR4FIkpsZNj3Fdphc6cIxyA9RHC8F6EB
 qWG3Y2pWlnc08Ut1+fEdSxb5Lr2HhSzgXHHhPLDZ0Dr81sCmNl79dgBgv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bb4SpJ+q
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Przemek,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Przemek-Kitszel/ice-use-DSN-instead-of-PCI-BDF-for-ice_adapter-index/20250407-192849
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250407112005.85468-1-przemyslaw.kitszel%40intel.com
patch subject: [PATCH iwl-net v2] ice: use DSN instead of PCI BDF for ice_adapter index
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20250408/202504080314.X7qJw69Y-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250408/202504080314.X7qJw69Y-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504080314.X7qJw69Y-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_adapter.c: In function 'ice_adapter_index':
   drivers/net/ethernet/intel/ice/ice_adapter.c:21:27: error: expected expression before 'u32'
      21 |         return (u32)dsn ^ u32(dsn >> 32);
         |                           ^~~
>> drivers/net/ethernet/intel/ice/ice_adapter.c:23:1: warning: control reaches end of non-void function [-Wreturn-type]
      23 | }
         | ^


vim +23 drivers/net/ethernet/intel/ice/ice_adapter.c

0e2bddf9e5f926 Michal Schmidt     2024-03-26  15  
2d939bcd51ee97 Przemek Kitszel    2025-04-07  16  static unsigned long ice_adapter_index(u64 dsn)
0e2bddf9e5f926 Michal Schmidt     2024-03-26  17  {
2d939bcd51ee97 Przemek Kitszel    2025-04-07  18  #if BITS_PER_LONG == 64
2d939bcd51ee97 Przemek Kitszel    2025-04-07  19  	return dsn;
2d939bcd51ee97 Przemek Kitszel    2025-04-07  20  #else
2d939bcd51ee97 Przemek Kitszel    2025-04-07  21  	return (u32)dsn ^ u32(dsn >> 32);
2d939bcd51ee97 Przemek Kitszel    2025-04-07  22  #endif
fdb7f54700b1c8 Sergey Temerkhanov 2024-08-21 @23  }
0e2bddf9e5f926 Michal Schmidt     2024-03-26  24  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
