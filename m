Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DABAA7F21D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 03:19:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06ACE82081;
	Tue,  8 Apr 2025 01:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ytGj2ktblO2c; Tue,  8 Apr 2025 01:19:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10445820A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744075147;
	bh=zM13ITH0wW9rJs5X1sXKP2aTrtsD3yvkcIwGf4k2ALY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3rR53aQk3ZwhbONjrDQFH4g+qo4d7PTPc845cHmeQXErdwSzjOZvBLHnBq0qXPL4J
	 Mgq1WkMKNNcVr9fsI5nwINwGij0iAUS0YdxAzfzs2dIMTCJLrhCSn9XhgB/SedsEFq
	 HBqc/a2+neMCJddy8yJZr7gw+HMdpXLFZjFksuPnuJuSqa+K9UeWDRBIwADurCwhoC
	 AIvP8nmsp/CuPrF4/TdIfttA402gjDq/JiwwZny+Ls5e2ce93dJsehkiN2H9STmDrE
	 +bshUiDrayYOq0BFemfRr8PFL9wX3xhSaUM5e+eZSSIunBogBefqAD4ncgoU4gCZ0o
	 ZwotIwXdILz8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10445820A4;
	Tue,  8 Apr 2025 01:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 553FBDA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 01:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46A3E4063F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 01:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o3tEsxJAKw2o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 01:19:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 36061409E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36061409E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36061409E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 01:19:03 +0000 (UTC)
X-CSE-ConnectionGUID: NSLjJ7K7Ttui+JHQbrhJig==
X-CSE-MsgGUID: eOpZf8DNQZyAtUzgkWy4tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44633266"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="44633266"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 18:19:02 -0700
X-CSE-ConnectionGUID: EaTb4HsKRsWnO+emHoT0pw==
X-CSE-MsgGUID: QnH/JVTfQqOKqzGwswK6tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="132837744"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 07 Apr 2025 18:19:00 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u1xc9-0003xj-2a;
 Tue, 08 Apr 2025 01:18:57 +0000
Date: Tue, 8 Apr 2025 09:18:33 +0800
From: kernel test robot <lkp@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <202504080803.VFV0rtz6-lkp@intel.com>
References: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744075144; x=1775611144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VSkeGd5PncgxVjARyO1AavA2/8kZvt6nM30o6o8hmGQ=;
 b=kE5+vOQh4M3xhFX+KWSCGLk68ru6AICe4526oOy60lhrgNVbzPPbsiaB
 fLKbONKqoNUjC/5IVDty7aGrz8Xg7B1BTOFFj2rOmtQesPaowVT0WOCDq
 jIw9RmVm7/snzJPfOEnbOfqJL5YQ68g3u68swbJDTWeyp+9fg9QlCKtUg
 X9b2D7m/1Z7Nx9DysHt094coWSPI5HWG9z71gPTOxzwGWHQrPA/msZVhc
 1Ms6XHG7R1Cc0Ke4GWDUm/HL/LzYZHeszJI+rupfBauxe9C3v2vtH4UHc
 VxXWG669fzvTqM3K977Ktuza4zJKMHr0e/Fnf/P+WWYtBNZ+Shnj9zIuZ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kE5+vOQh
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

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Przemek-Kitszel/ice-use-DSN-instead-of-PCI-BDF-for-ice_adapter-index/20250407-192849
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250407112005.85468-1-przemyslaw.kitszel%40intel.com
patch subject: [PATCH iwl-net v2] ice: use DSN instead of PCI BDF for ice_adapter index
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20250408/202504080803.VFV0rtz6-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250408/202504080803.VFV0rtz6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504080803.VFV0rtz6-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_adapter.c: In function 'ice_adapter_index':
>> drivers/net/ethernet/intel/ice/ice_adapter.c:21:27: error: expected expression before 'u32'
      21 |         return (u32)dsn ^ u32(dsn >> 32);
         |                           ^~~
   drivers/net/ethernet/intel/ice/ice_adapter.c:23:1: warning: control reaches end of non-void function [-Wreturn-type]
      23 | }
         | ^


vim +/u32 +21 drivers/net/ethernet/intel/ice/ice_adapter.c

    15	
    16	static unsigned long ice_adapter_index(u64 dsn)
    17	{
    18	#if BITS_PER_LONG == 64
    19		return dsn;
    20	#else
  > 21		return (u32)dsn ^ u32(dsn >> 32);
    22	#endif
    23	}
    24	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
