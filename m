Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0F35BF4F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 05:50:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4ED0160FE4;
	Wed, 21 Sep 2022 03:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4ED0160FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663732206;
	bh=/3nLmVaadkhl7KEAHPY2RJntqXbdjfUV0vl/QoeGx4U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ln4sa+q6upvBudlE4fXU404pZ4odYV727Kjr8p5wfyRGJXN0NdCwSDJwUCqUhWwCu
	 NeUc2KZjgbRA0VFGdwbwp6PBa8IdB1HoyZw3zI2IcfbywMJQPtAdnELWCkkQNSW8xQ
	 3TbvXhFOdEwslOnpJCjMRJKuTf5IpcgMMFrvOvMakb3lm7DNXHFwKpoXBBvwXlKJkI
	 d58m4aMRLzP0JNDi395MhMz5dyZPR7YRfwQluWyxJCB+W23zT21pBFDZWxhRb7E6Gw
	 sWAcO2ZjCrGWh1FZtDz8rm+VCnaAJWQOrhjtyI+G1y1hFdmEqG8qeqdSjWFM43WwnP
	 Y1S5qDYYiK6eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JWPvyrfYk-1n; Wed, 21 Sep 2022 03:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CAAA60FBB;
	Wed, 21 Sep 2022 03:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CAAA60FBB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7438D1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 03:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C17340447
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 03:50:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C17340447
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S8BSfTWOS4Q4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 03:49:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A4E0402F5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A4E0402F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 03:49:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="363865078"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="363865078"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 20:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="570364324"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 20 Sep 2022 20:49:56 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oaqkG-0003CX-0Z;
 Wed, 21 Sep 2022 03:49:56 +0000
Date: Wed, 21 Sep 2022 11:49:35 +0800
From: kernel test robot <lkp@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <202209211139.VPM7En0j-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663732199; x=1695268199;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Z8Ij2dSVCuoeRo80Q37dLQ7slL2CfxnoatINDSHMPAg=;
 b=gKnUwA6NtnnrQmGfnu1A1JX3KMIJBGGEV0VH+B5stphFxr/Mv/uqslRz
 d3qAMV/2Hxfxqr1gk4EJ/ihA8Qi+CdrpMUAW039N+0czuyYmX3osO3bGb
 Eu0N41NGD1MWf23linpndzHsRF4IRG9zrXEvr5UAQUrHHlVnxccorVMn8
 nuGqhHFj83+q0lCosDmNyhQYfk/5RAXs6b5VqEY8aNpEiU2sKHK4TK7NI
 pLTw+cE8CALxOTQD1znnDtsxWBiWf5QFGjGLtkjtRnnZuO7dic0tmwmvP
 lf2WYBdI1wpWKPwVKodNWVVjcRLhhkVs2O+AYR81ry5iZ5nBQhHjDuJth
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gKnUwA6N
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 29/32]
 ice_main.c:undefined reference to `ice_gnss_exit'
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   da202a07465edd94595fc22d9e003b1372b35750
commit: ebfc6a046e7e538beede957403693d49dcbf569d [29/32] ice: use GNSS subsystem instead of TTY
config: csky-buildonly-randconfig-r002-20220921 (https://download.01.org/0day-ci/archive/20220921/202209211139.VPM7En0j-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=ebfc6a046e7e538beede957403693d49dcbf569d
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout ebfc6a046e7e538beede957403693d49dcbf569d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=csky SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   csky-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_prepare_for_reset':
>> ice_main.c:(.text+0x519c): undefined reference to `ice_gnss_exit'
>> csky-linux-ld: ice_main.c:(.text+0x5210): undefined reference to `ice_gnss_exit'
   csky-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_rebuild':
>> ice_main.c:(.text+0x581a): undefined reference to `ice_gnss_init'
>> csky-linux-ld: ice_main.c:(.text+0x5928): undefined reference to `ice_gnss_init'
   csky-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_remove':
   ice_main.c:(.text+0x9bf8): undefined reference to `ice_gnss_exit'
   csky-linux-ld: ice_main.c:(.text+0x9ca0): undefined reference to `ice_gnss_exit'
   csky-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_probe':
   ice_main.c:(.text+0xb596): undefined reference to `ice_gnss_init'
   csky-linux-ld: ice_main.c:(.text+0xb780): undefined reference to `ice_gnss_init'
   csky-linux-ld: drivers/net/ethernet/intel/ice/ice_lib.o: in function `ice_init_feature_support':
>> (.text+0x4d20): undefined reference to `ice_gnss_is_gps_present'
>> csky-linux-ld: (.text+0x4d64): undefined reference to `ice_gnss_is_gps_present'

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
