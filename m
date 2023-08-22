Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C1D78454E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A2C5611BD;
	Tue, 22 Aug 2023 15:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A2C5611BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692717659;
	bh=U+8Ca+/AcflzgDWxttWP0sWfP2tbVRomfCqjejxnldk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P2d6vw/S7VxYfuEw9Qez4fZqS8Eo9fnEYZJnpLgpWvz2AnHf/1EqJjvhqYNKNhH/C
	 hpzEpsAu+YcYVMVICs/72Cwpq3kS7WB5jgLTth12pLTUK4S9V8xT+GG/GjzUs2H8nS
	 A2RorVdo9ZG6zTesLBP8cpwrXE9AO/qBnpGVT3d2Sft0iI1pfNNO2p8tXWXP055uGx
	 QsEjaDCGx+6ghA9gg0NILU+WN4D2l8EuGU1zB3aeNu1nV4DBpY7R/q/tFY2hSieWJl
	 XLL91tnXetvEmCI4O7z4/MADIzbxw2BKGZaXXPtLvm1RjXPkUW3LObJOgq++JUOQZ0
	 kvsPMVO3imCVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3xtFoycT58A; Tue, 22 Aug 2023 15:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 123B360AB9;
	Tue, 22 Aug 2023 15:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 123B360AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B0631BF31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F1FF4077D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F1FF4077D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDO0zKAjQoa1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 15:20:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2B7240874
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2B7240874
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377670276"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="377670276"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 08:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="806328290"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="806328290"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2023 08:20:26 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qYTBB-0000HW-1s;
 Tue, 22 Aug 2023 15:20:25 +0000
Date: Tue, 22 Aug 2023 23:20:05 +0800
From: kernel test robot <lkp@intel.com>
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202308222319.2aetHclw-lkp@intel.com>
References: <20230818064703.154183-4-junfeng.guo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230818064703.154183-4-junfeng.guo@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692717651; x=1724253651;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jjC0pqnSyp98rZ45uL4GmW7eUGFVm1S8wbiOUNtUfpQ=;
 b=IgSqEYWdEr2SD+kyN2MdgajqAb96Ce9zDCgOOwrvx3GwBL3+IUlaPPsR
 q4L+ovTlhoDhL5nIfdzZ+XMtzjEee2TjFJLtArT8nc360q76RA1S9Rmuj
 E5VaRG+dwaOtnAxtU/Jvp0iTMRHb5vo5f6xXC8uhtQGFR8rhIUPp8ro2h
 EjJqWOg5tQjk2EbMNTMi0yJ7iabHrD/vXl91C1+HxMd1T8KTUMB0D33qq
 GgDL13+DxORi59b4+xuywNooP/Gk4gISzmq1NbK2lZ4jzheDI7vpCkoAb
 vckf0uM2D4yNttsZCXqLjV1x4IV7AxfL/M48fx3t0mkcbh8DhmSw2U9BK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IgSqEYWd
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
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20230822/202308222319.2aetHclw-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230822/202308222319.2aetHclw-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308222319.2aetHclw-lkp@intel.com/

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
