Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D006A76B6D6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 16:09:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B7D94049D;
	Tue,  1 Aug 2023 14:09:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B7D94049D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690898964;
	bh=p/snjg0CM8pTEzER2bDAtLJGcIUYSPd/j7rgy9RfffQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dJvt0fNcNRLXsI/F8GqpKUbrrHaMiqlUad59VMEOKEKaUGrCczRZJe68KVi/++rGD
	 hJtEaMvrY74LZ9sDi+33YeilGGboS4gcMRUGLWB80JMBNCQ2qsUEvRzOZvFtXWGmNO
	 Agx9tc5ffkvA4SWl42OuJFDkcwt6uVDgPFirSfXEJXKbW25lht+j4bc1tNlKW/NV6a
	 KXS8R9PbLCvNYUQjU6rXSWeQPR37kasMsOqBu7w6QUiBHtRRJAYgmNWYN7mE3zNCFZ
	 6EG5bXiQwX+Q0qwXiG/p4yinWJ/Wa6ANfRlZQb1yfCWDan9azKaccTw1piN4Xiczf0
	 tGHvMfF0INEsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2ZgdZ3Th_Px; Tue,  1 Aug 2023 14:09:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8F5D40374;
	Tue,  1 Aug 2023 14:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8F5D40374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8601BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 195CD812D8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 195CD812D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2lUkToTqIdSJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 14:09:14 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A3C080F0F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A3C080F0F
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="354232785"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="354232785"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 07:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="902562851"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902562851"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 07:05:59 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qQq0c-0000Ku-2f;
 Tue, 01 Aug 2023 14:05:58 +0000
Date: Tue, 1 Aug 2023 22:05:36 +0800
From: kernel test robot <lkp@intel.com>
To: Jan Sokolowski <jan.sokolowski@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202308012117.GWpl2IGh-lkp@intel.com>
References: <20230801115309.697331-3-jan.sokolowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230801115309.697331-3-jan.sokolowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898954; x=1722434954;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oRynheA8juoUI+0GBEhCccN5NpjSNx1eanJEFgIeSIs=;
 b=lsK1p4Kg0ZxzXkbMM+cXEhJd9NxEm4LBY5AduPU1GHY8gJrVErYneVgL
 UXtJjmJNkzmETvnkeUSEX6ksXDIvWAvxUYEt2Y30N2DuarnV3aOIwTwFE
 CaWxvRNZo0v5K5V2k5EMlov4miJUt7Za2/g1cNLUQiUfmpik8EIA3Uz94
 JQaViqcddkckiKZEzGoSlU0Eormlj7l4e0xvvJAWSj2Y677fFPBbUCtk4
 FYh01nrjY2TGW3NDh1f9xTst9uV6IzKq6+EXGAM75KeLeyukU52Z3f8Dw
 hb2cQguumkdEIW9SOdfo2dEkjw/6uhxBys8YOMDVmm/w0AotxsMPqAuP/
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lsK1p4Kg
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ice: refactor ice_ddp
 to make functions static
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
Cc: oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jan-Sokolowski/ice-remove-unused-methods/20230801-195105
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230801115309.697331-3-jan.sokolowski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ice: refactor ice_ddp to make functions static
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20230801/202308012117.GWpl2IGh-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230801/202308012117.GWpl2IGh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308012117.GWpl2IGh-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_ddp.c:1474:29: warning: no previous prototype for 'ice_find_seg_in_pkg' [-Wmissing-prototypes]
    1474 | struct ice_generic_seg_hdr *ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
         |                             ^~~~~~~~~~~~~~~~~~~


vim +/ice_find_seg_in_pkg +1474 drivers/net/ethernet/intel/ice/ice_ddp.c

2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1463  
b1e9d9a5d80ff6 Jan Sokolowski     2023-08-01  1464  /*
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1465   * ice_find_seg_in_pkg
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1466   * @hw: pointer to the hardware structure
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1467   * @seg_type: the segment type to search for (i.e., SEGMENT_TYPE_CPK)
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1468   * @pkg_hdr: pointer to the package header to be searched
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1469   *
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1470   * This function searches a package file for a particular segment type. On
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1471   * success it returns a pointer to the segment header, otherwise it will
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1472   * return NULL.
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1473   */
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20 @1474  struct ice_generic_seg_hdr *ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1475  						struct ice_pkg_hdr *pkg_hdr)
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1476  {
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1477  	u32 i;
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1478  
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1479  	ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1480  		  pkg_hdr->pkg_format_ver.major, pkg_hdr->pkg_format_ver.minor,
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1481  		  pkg_hdr->pkg_format_ver.update,
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1482  		  pkg_hdr->pkg_format_ver.draft);
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1483  
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1484  	/* Search all package segments for the requested segment type */
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1485  	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1486  		struct ice_generic_seg_hdr *seg;
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1487  
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1488  		seg = (struct ice_generic_seg_hdr
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1489  			       *)((u8 *)pkg_hdr +
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1490  				  le32_to_cpu(pkg_hdr->seg_offset[i]));
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1491  
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1492  		if (le32_to_cpu(seg->seg_type) == seg_type)
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1493  			return seg;
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1494  	}
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1495  
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1496  	return NULL;
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1497  }
2ffd87d38d6b9d Sergey Temerkhanov 2022-12-20  1498  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
