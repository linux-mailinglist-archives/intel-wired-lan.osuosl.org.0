Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4672249C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 13:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AAAE60F9A;
	Mon,  5 Jun 2023 11:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AAAE60F9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685964677;
	bh=s3w2Bz1CGUxp6p3NGSRHzk8mThp42XCaF6bx+vtWDUM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZmMcNk99OxBhxiPAa+jY9TvF7F4J3GE3EIzSovcvST4K+2hEckfBU1vEAWgPn5E2E
	 CEA6kVGM381SKi3i7IdLTzS2pSz/qFU934S0u/yygCOhG/GA4V6wLNtvpTjDe//PTl
	 rLAemBV0AMdhErh3QWOFBO0682qyNNc6/Z0qNoTLaGNC+3hnD9K/moh0sR+OmXdU1S
	 UhDfFA/QIqvy7ffSuQHlfQERi0mhAgUcrxMJ62qUk68zjmRtmYfwOqWh3NuV0ECZZN
	 22G0m/DFwcLUue83EYErwwkSMmZjBaKH9pUZ0weHkaiR19PAscpUorJlUjtKrUCPew
	 Fh/n3dZNxTptg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VpSf-Qa9WPBb; Mon,  5 Jun 2023 11:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C22CE60ABE;
	Mon,  5 Jun 2023 11:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C22CE60ABE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3971D1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 11:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F0868230D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 11:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F0868230D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXxoO-xCA9TW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 11:31:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 454188230B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 454188230B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 11:31:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="359657832"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="359657832"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 04:31:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="778523615"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778523615"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2023 04:31:02 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q68QP-00049H-1y;
 Mon, 05 Jun 2023 11:31:01 +0000
Date: Mon, 5 Jun 2023 19:30:34 +0800
From: kernel test robot <lkp@intel.com>
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202306051949.ANBgZ0ao-lkp@intel.com>
References: <20230605024453.2378898-4-junfeng.guo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230605024453.2378898-4-junfeng.guo@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685964665; x=1717500665;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xqUNm0x+xA2918JX0ZGgUCLK6hfYkeHjmdyi4b17xiw=;
 b=N29+vkV5z+z+psQxthMRHL3+824kjONl2/ZgewuJd6FcrM2ceUrIWivS
 bVUAxiAd+U1wu5lZZPu2m0kZsnI2VptCUm7Vs/E4C7096zgOYEPBKubxH
 v2/dOPVSZfbg9T/llxgtoZENohjqG9xZOBVkcgWX2f7BYzHlzsEtut73y
 Qy5YxNAiJAdKtkkaU/IhpAaoopyb0sRMERWzDc4EqzK+v9Cq4wt9j8T6v
 JhjFksk6KzPHgd7ZipmCgEwasP5kWolrL6NBJ9pSZY9O7NZYFHxLZqm4o
 JmmyfjBs3WioY35Bvkd9TR919f9Kn24fnPi0lxeazIPRNqoBGMSNSdeSC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N29+vkV5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: enable Protocol
 Agnostic Flow Offloading FDIR
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
Cc: qi.z.zhang@intel.com, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Junfeng,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Junfeng-Guo/virtchnl-support-raw-packet-in-protocol-header/20230605-104620
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230605024453.2378898-4-junfeng.guo%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: enable Protocol Agnostic Flow Offloading FDIR
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20230605/202306051949.ANBgZ0ao-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/3b97772bd19a621706eaa1fab244f88515017fe3
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Junfeng-Guo/virtchnl-support-raw-packet-in-protocol-header/20230605-104620
        git checkout 3b97772bd19a621706eaa1fab244f88515017fe3
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306051949.ANBgZ0ao-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice.h:64,
                    from drivers/infiniband/hw/irdma/main.c:4:
>> drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice_flow.h:8:10: fatal error: ice_parser.h: No such file or directory
       8 | #include "ice_parser.h"
         |          ^~~~~~~~~~~~~~
   compilation terminated.


vim +8 drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice_flow.h

     6	
     7	#include "ice_flex_type.h"
   > 8	#include "ice_parser.h"
     9	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
