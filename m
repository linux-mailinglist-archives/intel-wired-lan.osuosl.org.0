Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B37F785A68
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 16:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8D5F81B83;
	Wed, 23 Aug 2023 14:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8D5F81B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692800745;
	bh=8tjxVR2EZgk1UBQFfEoc01xRkK23yg+sxYwM5oCA41U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LQwGn4RDIuhNV8iuJ6BkKNccpLFBzEcHAVdRiKS8Vh1nLrRaixjBGXuWaQrIm5+jv
	 6rDLdSCniekQBq+tI8kUZYLxe/2nPnnbgg2c5MsM86Mh9dRxexHF/VQjBm2P1oFXD7
	 IG2m1BN4gsXowmcvuoM3uTeBnT8NsaD6wd8XvJLMPhqhPi9jJjU/bBXOXFYhntnyb7
	 wJilaY0SoBWQ1cOeIT8xQRyDXi1HVLqoyvVkctzN1aEdvJ17zupJ3Vs3fBqEFCSWsd
	 wpI23x/Ca87IxSGEM0LeCk3ONTu5IMshwuqfi084QnMbcNa9qQj9Uhja0zJxPCLj5c
	 HxCAnHYVI+NGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djjibHs1PAcy; Wed, 23 Aug 2023 14:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8744081AD7;
	Wed, 23 Aug 2023 14:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8744081AD7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10AB11BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 14:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9ABB81AD7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 14:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9ABB81AD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmfGZa-CD9Gj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 14:25:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A6A381400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 14:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A6A381400
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="377931635"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="377931635"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 07:25:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730227761"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730227761"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 07:25:34 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qYond-0001H3-1u;
 Wed, 23 Aug 2023 14:25:33 +0000
Date: Wed, 23 Aug 2023 22:25:23 +0800
From: kernel test robot <lkp@intel.com>
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202308232207.mbURs2VO-lkp@intel.com>
References: <20230818064703.154183-4-junfeng.guo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230818064703.154183-4-junfeng.guo@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692800737; x=1724336737;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jk3UpxG5wEf2sQiZ96WzymeJkmL2QiGrp0HXx9xNHo0=;
 b=c4QaykaHzn1HBtMNuX4Yc1j9XTvlwjhkWRQ7+HFlkLHNb4h3RhJfE4S0
 3gBK/XtaFCCXSkCj6/JJZ8Jg/Z87XWm9GgekrcGT3nRZN7B0aFDlIOv1h
 ZtrA4jdgnDars/R9VFfHC7Ih4NIMe7Z/78H89SZfeRVeZwGTh1nlNbWf1
 hIPX+Zto047sX6S4p1rDyusoijnHQbrtS3v7V+LZJ1qv3keZQhd2rpayd
 TZ7zcHJEKpsLf6cZaiZsWvBDo4yLgWlKhUEFi35zVxhbua9HpOP7Ii7cu
 K98l39AjF+74KTkA6wKih+nGSpPKDrp1evZDhhLFpYGjeQCqO65KTeWN5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c4QaykaH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: enable Protocol
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Junfeng,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Junfeng-Guo/virtchnl-support-raw-packet-in-protocol-header/20230818-144901
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230818064703.154183-4-junfeng.guo%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: enable Protocol Agnostic Flow Offloading FDIR
config: i386-debian-10.3 (https://download.01.org/0day-ci/archive/20230823/202308232207.mbURs2VO-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230823/202308232207.mbURs2VO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308232207.mbURs2VO-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/ice/ice.h:64,
                    from drivers/net/ethernet/intel/ice/ice_main.c:9:
>> drivers/net/ethernet/intel/ice/ice_flow.h:8:10: fatal error: ice_parser.h: No such file or directory
       8 | #include "ice_parser.h"
         |          ^~~~~~~~~~~~~~
   compilation terminated.


vim +8 drivers/net/ethernet/intel/ice/ice_flow.h

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
