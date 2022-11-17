Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E6362D946
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 12:20:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6ADF404B3;
	Thu, 17 Nov 2022 11:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6ADF404B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668684009;
	bh=HsJGhn6sm3DFizxGGfq0RpW+O8IO3g3JWilfU9xI51E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3o0aMBxBgNeFJLTeentZMegU5mhgIIT6T0xT8PqdvuKNtnE/GiB5t1FEaB1Kv0R6U
	 8a2vNr0yYxMvdoBIJrq+AFIGOLOmkAPx27Lvr1JHmft7FTPcw1rb9hwcKirfrO239l
	 mkQsDqxCWpkoIvfpP2IgUE2k6oR/xkDFV70PmoXSHz3//Y56Nu4cAbq14itIGsJj/z
	 +8rB+4kA+vwDAQ1MwQRjMVLjfHtvWDdZdzCo3gvmdglG+uaiUXJsWBnWnzTHqmri5a
	 UglsqmoEdTAolhD5m+1xNXMEkCAgTAY2DwTI5FjAuCuholofH3e/Ww1YI3xlW3oc9H
	 L/Vr7iwJET4bA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9WuS50PQGaP; Thu, 17 Nov 2022 11:20:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5533402FE;
	Thu, 17 Nov 2022 11:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5533402FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6FC1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 897986102F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 897986102F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dp1FI6YFGZlB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 11:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA4346103F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA4346103F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="377090250"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="377090250"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="708579076"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="708579076"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 17 Nov 2022 03:19:53 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovcvw-0000Fb-2i;
 Thu, 17 Nov 2022 11:19:52 +0000
Date: Thu, 17 Nov 2022 19:19:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <637618a6.r/NmH7mja2X8D/Z5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668683996; x=1700219996;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZM2tL0o7NklACXq2PxktdfA7Hh/DSeWtxKxHv/xD1hE=;
 b=QKy832orVoiR+zaCXpXQBPNoF7/jpxLr+jmhWE9YDeE7UEbv17Bmkfa/
 ZlAr9KRCzUeZEx4I0+JwasvI2j5vSPQR82Rrq8Qb2xuSsegmCTlHRrHHm
 fiaPid7Y1kWLITBxsKQMgdY/ZVHhtIYDrCUsrxzvuN7srbf/OwyK7u/D3
 oNkZYfRhU/RLH8cbCSX+cX/arZQaC3BR3o6jWH+N9+ikCHY4rCkdCAurI
 pEpDY0ZtVnxtx2jMzBfXt2DeVpUJXYjJlUSAH/fc1juJDZh6gEM+dCGXg
 ZHp5iZNbFoBHXKkbAR697IJW4yYlmTIwNqjxbC7c+Z3qlT5HANi4jwdR1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QKy832or
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4f6b088aba561ca3ba6df11d11e2b12dee83db32
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4f6b088aba561ca3ba6df11d11e2b12dee83db32  iavf: Fix a crash during reset task

elapsed time: 728m

configs tested: 86
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
ia64                             allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a005
x86_64                        randconfig-a002
arc                  randconfig-r043-20221117
riscv                randconfig-r042-20221117
x86_64                        randconfig-a004
s390                 randconfig-r044-20221117
x86_64                        randconfig-a006
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                           rhel-8.3-syz
i386                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                            allnoconfig
x86_64                        randconfig-a015
sh                          sdk7786_defconfig
arm                            zeus_defconfig
openrisc                            defconfig
i386                          randconfig-a014
i386                          randconfig-a012
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a016
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
um                               alldefconfig
sh                           se7722_defconfig
sh                         ap325rxa_defconfig
i386                          randconfig-c001
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
powerpc                      bamboo_defconfig
powerpc                     mpc83xx_defconfig
openrisc                 simple_smp_defconfig
sh                        sh7757lcr_defconfig
sh                        sh7785lcr_defconfig
arm                            hisi_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                               allnoconfig
powerpc                    klondike_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                       omap2plus_defconfig
arm                           stm32_defconfig
sh                           se7705_defconfig
powerpc                       maple_defconfig
sh                        edosk7705_defconfig

clang tested configs:
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221117
hexagon              randconfig-r045-20221117
x86_64                        randconfig-a005
x86_64                        randconfig-a012
i386                          randconfig-a013
powerpc                          g5_defconfig
x86_64                        randconfig-a014
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
