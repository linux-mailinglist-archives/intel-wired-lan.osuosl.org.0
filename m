Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 372DF76C40F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 06:21:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8F7C60AE1;
	Wed,  2 Aug 2023 04:21:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8F7C60AE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690950085;
	bh=8CX26IE0wtPaBGdS3h7LX8gHfXR+fhbaHyNzMKMAEUA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fJMOvGy7AFBGtIS7y4XbuxAkgb68IA1JB/8Iy+RtDhrv9scMOW3PGou3h8wACBHmK
	 5jQXyiB5ZBs/Zs7UVwmOVtR3Yd00E2xC8GZtICaEPs4OIRY5Nh0mSAyPLgEXbD8VOH
	 QV+uM3ZVdQ0UYfGw29xshvL7rpwbbGTSkZh/uqGoyt4F5K+ZeTrqrIIGWafvZ07Ezb
	 P++F3la0yDuJZ8vwaAgmcIX+BTuVqCq5SRGTPJpdXnBAtZ8wb5g/+/OBZsEVvBREDy
	 y6go1dQnlDTVwzmquP9hWvFzEUewcgQVYDl9uHeK6MNQdulNTNCPaj0GSXP65oOIi7
	 Wz2qcAsRq/pkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xNQPzha8Hki6; Wed,  2 Aug 2023 04:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8BF060783;
	Wed,  2 Aug 2023 04:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8BF060783
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 155171BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 04:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 117F240BDD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 04:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 117F240BDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gV5mQcYVlF2l for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 04:21:09 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B34A41030
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 04:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B34A41030
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="369473549"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="369473549"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 21:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="975532817"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="975532817"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 01 Aug 2023 21:21:06 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qR3MA-0000r5-0t
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Aug 2023 04:21:06 +0000
Date: Wed, 02 Aug 2023 12:20:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308021204.R9FxVq9O-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690950069; x=1722486069;
 h=date:from:to:subject:message-id;
 bh=oI6blEw7YG7M2dd1I20+mmUMArTIWORrNUFpx8B7YCY=;
 b=SdwqTa5+WatZZP0xBNKH6b3QQVRrEY/f/ruZKfKRLwHdSIaiy2gP5rFp
 /Jgd1ervJQV0umj9NsHLSyZrtOiFyfQP5ztgJ6YekTHmSV1Dop08/F8k4
 f8uqJvFXlCucY9Oys4TgRYcxRq1XJj5pmfJukjkr36NyM0uq6GDFcsG8R
 SjdlyU0x5qoziL9kpAxVKB1NIYYFZ1USilvzGmoGk8pquI5TdogPSA41D
 sNqkRi4pYGKfqbO3+Vjxt8TQ4bsaSyDlm1K5uyP+zSOx5x96vSmYMnH1P
 OjzltlAtgi5JfdrXGe77j91HLNPnS10Qw92ncn4cHkNSXqxmDA0kg6TOo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SdwqTa5+
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 13d2618b48f15966d1adfe1ff6a1985f5eef40ba
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 13d2618b48f15966d1adfe1ff6a1985f5eef40ba  bpf: sockmap: Remove preempt_disable in sock_map_sk_acquire

elapsed time: 1216m

configs tested: 142
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r026-20230731   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230731   gcc  
arc                  randconfig-r033-20230731   gcc  
arc                  randconfig-r043-20230731   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230731   gcc  
arm                         socfpga_defconfig   clang
arm                          sp7021_defconfig   clang
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230731   gcc  
arm64                randconfig-r033-20230731   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r022-20230801   gcc  
hexagon              randconfig-r001-20230731   clang
hexagon              randconfig-r012-20230731   clang
hexagon              randconfig-r015-20230731   clang
hexagon              randconfig-r041-20230731   clang
hexagon              randconfig-r045-20230731   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230731   gcc  
i386         buildonly-randconfig-r005-20230731   gcc  
i386         buildonly-randconfig-r006-20230731   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230731   gcc  
i386                 randconfig-i002-20230731   gcc  
i386                 randconfig-i003-20230731   gcc  
i386                 randconfig-i004-20230731   gcc  
i386                 randconfig-i005-20230731   gcc  
i386                 randconfig-i006-20230731   gcc  
i386                 randconfig-i011-20230731   clang
i386                 randconfig-i012-20230731   clang
i386                 randconfig-i013-20230731   clang
i386                 randconfig-i014-20230731   clang
i386                 randconfig-i015-20230731   clang
i386                 randconfig-i016-20230731   clang
i386                 randconfig-r014-20230731   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r014-20230731   gcc  
m68k                 randconfig-r025-20230731   gcc  
microblaze           randconfig-r002-20230731   gcc  
microblaze           randconfig-r005-20230801   gcc  
microblaze           randconfig-r023-20230731   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r032-20230731   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230801   gcc  
nios2                randconfig-r011-20230731   gcc  
nios2                randconfig-r024-20230731   gcc  
nios2                randconfig-r026-20230801   gcc  
nios2                randconfig-r035-20230731   gcc  
nios2                randconfig-r036-20230731   gcc  
openrisc                         alldefconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230731   gcc  
parisc               randconfig-r031-20230731   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   clang
powerpc                     redwood_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r025-20230801   clang
riscv                randconfig-r042-20230731   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r024-20230801   clang
s390                 randconfig-r034-20230731   gcc  
s390                 randconfig-r044-20230731   clang
sh                               allmodconfig   gcc  
sh                          polaris_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230801   gcc  
sparc                randconfig-r011-20230731   gcc  
sparc                randconfig-r012-20230731   gcc  
sparc                randconfig-r021-20230801   gcc  
sparc                randconfig-r034-20230731   gcc  
sparc64              randconfig-r013-20230731   gcc  
sparc64              randconfig-r015-20230731   gcc  
sparc64              randconfig-r016-20230731   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230731   gcc  
x86_64       buildonly-randconfig-r002-20230731   gcc  
x86_64       buildonly-randconfig-r003-20230731   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r036-20230731   gcc  
x86_64               randconfig-x001-20230731   clang
x86_64               randconfig-x002-20230731   clang
x86_64               randconfig-x003-20230731   clang
x86_64               randconfig-x004-20230731   clang
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x011-20230731   gcc  
x86_64               randconfig-x013-20230731   gcc  
x86_64               randconfig-x014-20230731   gcc  
x86_64               randconfig-x015-20230731   gcc  
x86_64               randconfig-x016-20230731   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r023-20230801   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
