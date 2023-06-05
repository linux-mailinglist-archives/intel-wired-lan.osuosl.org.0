Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82121721D6A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:18:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 158E640465;
	Mon,  5 Jun 2023 05:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 158E640465
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685942334;
	bh=g9K5nVg97xf18eB9jStOlKkYEkAo368OF/KVvIWJKvQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QQw6pCz2gH6Cq+j5eOkJ85hggz44Jaf++PNokPMjqcDQxB/Ti//K5saC8xc32ZCsi
	 uLwfddabIZaCk1w9bDVKB7jyZpPlIsvSH7CaH2k/y7cZ4xTdfiCUeWxAFNxuqavV7g
	 ublU4gMbuSG/eGeTdOrqrphtvHH0LfMAHsIRz8LWJ6AY8e0FhqM3lBKaRc/u9QbI93
	 N6rXJlhIjWWt6edAzV9bkPfToZsp02nmmOtleuk1M11g3GM+UqJOgBzKC5qaciPXcu
	 ViguglLFUhlpwj12k5qZ+88o6bES1I6+SbngNsdEAVwyfI9El05e10JlPw9T/oWMel
	 0XbdjoxXaSOeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IA88NweSk2Wx; Mon,  5 Jun 2023 05:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBEA9403A2;
	Mon,  5 Jun 2023 05:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBEA9403A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CF061BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B5BA81AF6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B5BA81AF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8sVE6seNvP4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:18:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 724B181A9C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 724B181A9C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:18:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358732968"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358732968"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:18:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="738245474"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="738245474"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 04 Jun 2023 22:18:44 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q62c7-0003sh-1J;
 Mon, 05 Jun 2023 05:18:43 +0000
Date: Mon, 5 Jun 2023 13:18:37 +0800
From: kernel test robot <lkp@intel.com>
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202306051356.sDDfru9n-lkp@intel.com>
References: <20230605024453.2378898-4-junfeng.guo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230605024453.2378898-4-junfeng.guo@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685942326; x=1717478326;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I+RmxiXWnHZZ62TcQ9MA25NIpYkGiF/onQuLEoGnnuo=;
 b=V5Y067NerCLS/0eb1pIB1ZQtHkuIYaS8IL0kFoDiftHWj5mDafG0duBR
 62/+RTyUEfD1jLUMPZ4FE56YEoqXdUCnZktravkrxvWJtiT+iC5Yyz6zh
 pgnugQQqZSYVh61lT9nDIuX93fliR+tD7IJ28P5p69dy49IwE+2MqHv2i
 0sSPTmZTqx77ONdU6W3LMDAQHIAnYQaF0eqn0QXlSs8M9ANsBZ3ycssd2
 eLiRx2bOxcVUY+Y6+mmdhQnh5bdZjCED14htLgn0SZUR0JawA7wqkhKdQ
 v7GLBlfLp+MIOmVRx6w2d5pTcwhsa0IFDRYXvM7/hT45wdHTMwrHgqMuY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V5Y067Ne
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
config: i386-debian-10.3 (https://download.01.org/0day-ci/archive/20230605/202306051356.sDDfru9n-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/3b97772bd19a621706eaa1fab244f88515017fe3
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Junfeng-Guo/virtchnl-support-raw-packet-in-protocol-header/20230605-104620
        git checkout 3b97772bd19a621706eaa1fab244f88515017fe3
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306051356.sDDfru9n-lkp@intel.com/

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
