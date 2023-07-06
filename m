Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2F4749792
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 10:37:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE50141488;
	Thu,  6 Jul 2023 08:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE50141488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688632652;
	bh=R5uALcUf6qGeu58PF/CgWQEHiyisGEMHtMuZAHbVjlI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=C9TlV7tr1PepDw701R8uJmMfkEXDUaVr4SNFqf6NHdphgl+V9VtO75nBPcJQ5Dx7l
	 rf4N6oSz3xxtWbV/n3cJCcwZu/zHg3aXZa8egcRbPdLr7SiERX1a4ONX5d0vrzV5I2
	 brW0SVpxMhRfIF01OPOXuLWPiLu+LhmjMniPeq6fbYL/13gAgMnQ4t64DsXf/aRCah
	 K5NgzC4S4grS+o0izkGvMSvVibEvgE1BkOXq0v9FdQ3d02h0XADqgFYw5CqHhQ3BCG
	 syokqjkibVte4Op1L/HVJha+CV7XlNqJWQ5VHS1/kw0JLs0zAeCj+Rwt8I4qyth2pC
	 zUX/FHcnhVlbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVT4-kDmvfh7; Thu,  6 Jul 2023 08:37:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C513408FF;
	Thu,  6 Jul 2023 08:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C513408FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E3BB1BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7361481F6F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7361481F6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2cQ7cUg0Xbk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 08:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59B2F81F55
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59B2F81F55
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:37:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="361016163"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="361016163"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:37:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="713482874"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="713482874"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 06 Jul 2023 01:37:21 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qHKUK-0001C8-1e
 for intel-wired-lan@lists.osuosl.org; Thu, 06 Jul 2023 08:37:20 +0000
Date: Thu, 06 Jul 2023 16:36:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307061629.lggA2MZs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632644; x=1720168644;
 h=date:from:to:subject:message-id;
 bh=w6E/9tu9vUWMUK+ah5LdjT45k4jegiHBWs4/q7yfwu4=;
 b=XH88qi2U4NCNZoKa8Rf3oI5LYYq06d7jmZcbLJFxWQStw0RT1Ug9w8cx
 pUiFW+txrFsmFR6B4NGPmRMPVYEOwpZEEHPbQE7LNdQazpZ+FCNRa4TrU
 aAQpdJ5CGFoVVIo+5UZMsQKzDueU0PDXcWrpKJ4EAKREe6mEHn20prQaG
 4rcT6N4WEmHx9bJ+oWSIVxJ8DSKq71yogLEROLnYmmui4R1XBlz487PCv
 z9Ioqvf6B58PKZbz6oYGmU/Cfr5lpeDuHX+juYnqH46sz37arMbdvaiV6
 /k6Jh1TDKSD7f4mqtIcShCCpNIdFr78PjM43/YCgzqJsJkBrW/W/hFUtk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XH88qi2U
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 479cdfe388a04a16fdd127f3e9e9e019e45e5573
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 479cdfe388a04a16fdd127f3e9e9e019e45e5573  ice: Fix tx queue rate limit when TCs are configured

elapsed time: 726m

configs tested: 140
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230706   gcc  
alpha                randconfig-r006-20230706   gcc  
alpha                randconfig-r032-20230706   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r034-20230706   gcc  
arc                  randconfig-r036-20230706   gcc  
arc                  randconfig-r043-20230706   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                                 defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                        multi_v7_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r046-20230706   clang
arm                         socfpga_defconfig   clang
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r023-20230706   gcc  
hexagon                          alldefconfig   clang
hexagon              randconfig-r021-20230706   clang
hexagon              randconfig-r041-20230706   clang
hexagon              randconfig-r045-20230706   clang
i386                             allyesconfig   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230706   clang
i386         buildonly-randconfig-r005-20230706   clang
i386         buildonly-randconfig-r006-20230706   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230706   clang
i386                 randconfig-i002-20230706   clang
i386                 randconfig-i003-20230706   clang
i386                 randconfig-i004-20230706   clang
i386                 randconfig-i005-20230706   clang
i386                 randconfig-i006-20230706   clang
i386                 randconfig-i011-20230706   gcc  
i386                 randconfig-i012-20230706   gcc  
i386                 randconfig-i013-20230706   gcc  
i386                 randconfig-i014-20230706   gcc  
i386                 randconfig-i015-20230706   gcc  
i386                 randconfig-i016-20230706   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze           randconfig-r012-20230706   gcc  
microblaze           randconfig-r014-20230706   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ci20_defconfig   gcc  
mips                     cu1000-neo_defconfig   clang
mips                 randconfig-r022-20230706   clang
mips                           rs90_defconfig   clang
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230706   gcc  
openrisc                  or1klitex_defconfig   gcc  
openrisc             randconfig-r033-20230706   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc              randconfig-r011-20230706   gcc  
powerpc              randconfig-r013-20230706   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230706   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230706   gcc  
sh                               allmodconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                   randconfig-r002-20230706   gcc  
sh                   randconfig-r004-20230706   gcc  
sh                          rsk7264_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230706   gcc  
sparc                       sparc32_defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64              randconfig-r001-20230706   gcc  
sparc64              randconfig-r015-20230706   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r024-20230706   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230706   clang
x86_64       buildonly-randconfig-r002-20230706   clang
x86_64       buildonly-randconfig-r003-20230706   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r016-20230706   gcc  
x86_64               randconfig-x001-20230706   gcc  
x86_64               randconfig-x002-20230706   gcc  
x86_64               randconfig-x003-20230706   gcc  
x86_64               randconfig-x004-20230706   gcc  
x86_64               randconfig-x005-20230706   gcc  
x86_64               randconfig-x006-20230706   gcc  
x86_64               randconfig-x011-20230706   clang
x86_64               randconfig-x012-20230706   clang
x86_64               randconfig-x013-20230706   clang
x86_64               randconfig-x014-20230706   clang
x86_64               randconfig-x015-20230706   clang
x86_64               randconfig-x016-20230706   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r035-20230706   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
