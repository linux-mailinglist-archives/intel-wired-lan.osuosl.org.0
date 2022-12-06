Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D8B644432
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 14:11:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCDD360FA3;
	Tue,  6 Dec 2022 13:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCDD360FA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670332273;
	bh=/pPVt03qTXcUirDoL2JMyvFcyUV5HNRDO+JYuc4SlUc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=L9mOJKEi43XzKW6vMI/yzI9gczOZE8fN7CKP6msjSBVF+gmjN/xYB/uN720JPZexV
	 VpCX7WW5VlWu/bWn5GmLM00+9hMS2N2F7GgnYeoXdxoOYkm9vrDi2Im8ToH9BwzGsB
	 GijmeV4kqdiDI8KBMyxIs4yoXTzMk39WX/9P365QoUmoDLfMooiOYktGCKEcC9XBJY
	 /iAgwNTu4lYBfliVI2gpAQ5ZsrocvdIpJ243oKlXjwlJtGfBYHaXbLA2K3xrmfzpiH
	 SISfHAVkX771wfCV+AE6/QAICbiOTKEKT3IBaUpfhh+e+og+KNCweMzhuWiIPNpm6r
	 Slp+8IHjMrcRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcemIVQZCdSA; Tue,  6 Dec 2022 13:11:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCDFF60E2A;
	Tue,  6 Dec 2022 13:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCDFF60E2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 327181BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 13:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A49081E71
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 13:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A49081E71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eANmrBgtV-9p for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 13:11:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9CA681E47
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9CA681E47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 13:11:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296309570"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="296309570"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 05:11:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="752631189"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="752631189"
Received: from lkp-server01.sh.intel.com (HELO b3c45e08cbc1) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2022 05:11:03 -0800
Received: from kbuild by b3c45e08cbc1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p2Xix-0000wN-0Z;
 Tue, 06 Dec 2022 13:11:03 +0000
Date: Tue, 06 Dec 2022 21:10:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638f3f49.i54CsZJKCynRqMnm%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670332265; x=1701868265;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5Cir+tQfMxozHEgn5gbElME4Reuhdu1CMz16I+GKEIs=;
 b=AQE6ltarSrmzLqPVyi0fNB4OkrBn7DM0CU5xtCtTxdvvLNeaBJQpT9vX
 k8kZOEpN9Rr/k66okkgkQXj7ROmELnXh1LAgIYxYEl/d7p4TIrVSrtzND
 qq+Ejv+YYPQr/tbewBoemRZDtHh23aKYrToHVHvskBJnekJxq06v/B6ui
 h6QrABm4WeomwTRwGNo0qDb+qM8HRHi8Qzav41iaVAAD7gIPCg4HfdXf2
 37yhizNwhqJMPJunvrUdIMguS+woBjLtvhCuSSa1v+h1uKC3DRVZdf3JD
 15YbR4D9sNUIuIKXkyaHlfTmUv3dfZ5fwgH3w2jBbto58QWKm+Y/qWATV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AQE6ltar
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5424b18028f76dcc3445fb4f28cc8ea92fada7d7
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5424b18028f76dcc3445fb4f28cc8ea92fada7d7  ice: reschedule ice_ptp_wait_for_offset_valid during reset

elapsed time: 720m

configs tested: 65
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
arc                              allyesconfig
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64               randconfig-a011-20221205
x86_64               randconfig-a012-20221205
x86_64               randconfig-a013-20221205
x86_64               randconfig-a014-20221205
x86_64               randconfig-a015-20221205
x86_64               randconfig-a016-20221205
i386                 randconfig-a014-20221205
i386                 randconfig-a013-20221205
i386                 randconfig-a012-20221205
i386                 randconfig-a015-20221205
i386                 randconfig-a011-20221205
i386                 randconfig-a016-20221205
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arc                  randconfig-r043-20221205
arm                  randconfig-r046-20221204
s390                 randconfig-r044-20221205
arc                  randconfig-r043-20221204
riscv                randconfig-r042-20221205

clang tested configs:
x86_64               randconfig-a003-20221205
x86_64               randconfig-a004-20221205
x86_64               randconfig-a001-20221205
x86_64               randconfig-a002-20221205
i386                 randconfig-a001-20221205
i386                 randconfig-a002-20221205
i386                 randconfig-a005-20221205
i386                 randconfig-a004-20221205
i386                 randconfig-a003-20221205
i386                 randconfig-a006-20221205
x86_64               randconfig-a005-20221205
x86_64               randconfig-a006-20221205
hexagon              randconfig-r041-20221204
hexagon              randconfig-r045-20221204
hexagon              randconfig-r045-20221205
arm                  randconfig-r046-20221205
hexagon              randconfig-r041-20221205
riscv                randconfig-r042-20221204
s390                 randconfig-r044-20221204

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
