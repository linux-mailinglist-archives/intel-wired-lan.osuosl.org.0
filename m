Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 464CA9AD410
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 20:35:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2EE9402E8;
	Wed, 23 Oct 2024 18:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VOD5v9UHotLP; Wed, 23 Oct 2024 18:35:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C77FD403B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729708502;
	bh=8k5CSD3NrqYT2Y0oX1yyb5fC/aJ01Zq+o/3ECgoPyPY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=91fYi3UGrvnD5Dfk81sREsrIwrb4wewZ04xXcujoeiQJ64bVXI+DmUUopooqmP2M+
	 NdYZ8eqso5l8eX777DegTrAX5w5GhYGbxcYGhupAwiVYL0pabJMHw9Tj6ICTXP0SBo
	 eARC+ARebMRJF+D7EBjc0XKd5ux4slCarS4yrx8foOHyb7+Z58eL0owwscviPPXKyY
	 RdxQhg6DgnU1/h+T09THfaZTHVZZ70nUowKN5xzanuxNLpeMKjqaKq/c2XkgHnEFbC
	 Wh3tde1FauJrdtpVB+892+nuq1Dth9dY06N9GDRMivdvVp3Zk6qNCtXGxbzo2LTREx
	 lgXwSd4XyWejg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C77FD403B8;
	Wed, 23 Oct 2024 18:35:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D671027ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 18:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6A9A40137
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 18:34:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mPl4-NnLoPWZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 18:34:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2CD95402E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CD95402E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CD95402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 18:34:57 +0000 (UTC)
X-CSE-ConnectionGUID: KwRRiaScQYKYoMPXcERaSA==
X-CSE-MsgGUID: y3gRPBoITF+S8y3m+seM0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="16935526"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="16935526"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 11:34:57 -0700
X-CSE-ConnectionGUID: Ufs2rIvKQl21UztvyrlNKw==
X-CSE-MsgGUID: pTCmvVlvRs+vHZbxE3NuFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="85125103"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 23 Oct 2024 11:34:56 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t3gC5-000VH6-2F
 for intel-wired-lan@lists.osuosl.org; Wed, 23 Oct 2024 18:34:53 +0000
Date: Thu, 24 Oct 2024 02:33:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410240246.miGBsyvg-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729708498; x=1761244498;
 h=date:from:to:subject:message-id;
 bh=OkqgnDbrxF0JlSV+XAMVo6wPv0uspanlXUvXMqJaMAE=;
 b=Dba4XSf7GAYM59JnUvM8fQwFKlFVXbQFBoexrQbx+N8jk5HZittp4789
 myj0p9pjCL7DR4WVDRXUJ+nukrJqxbrsfmMHAdQY+dbGhnibbTfrSBRyZ
 kT93s9dVbMfAxonXweKeo/LV3uRQoEky4sOjyBIny3lHrAhtFR6zLm0kw
 bPMoAcafE+0I99IpjIq7WWmJH6W6MmaaE3N0dNWPJyZutor3lEYHgG5kt
 4GcqJamMfPewfAt+HqGELGfxtkhHwLK4QGWKZSmlTzQs9AFfnadAiD/W+
 Q7fTSKaGwqZxM2+5+aYqeJrZL1ZdHjwoWlr1aD9xZaiHF2o1upwRTKhIv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dba4XSf7
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 d811ac148f0afd2f3f7e1cd7f54de8da973ec5e3
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: d811ac148f0afd2f3f7e1cd7f54de8da973ec5e3  virtchnl: fix m68k build.

elapsed time: 1688m

configs tested: 172
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              alldefconfig    clang-20
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                   randconfig-001-20241023    gcc-14.1.0
arc                   randconfig-002-20241023    gcc-14.1.0
arc                    vdk_hs38_smp_defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    clang-20
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                      footbridge_defconfig    clang-20
arm                      jornada720_defconfig    clang-20
arm                       multi_v4t_defconfig    clang-20
arm                         mv78xx0_defconfig    clang-20
arm                   randconfig-001-20241023    gcc-14.1.0
arm                   randconfig-002-20241023    gcc-14.1.0
arm                   randconfig-003-20241023    gcc-14.1.0
arm                   randconfig-004-20241023    gcc-14.1.0
arm                        spear3xx_defconfig    gcc-14.1.0
arm                           stm32_defconfig    gcc-14.1.0
arm                           sunxi_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20241023    gcc-14.1.0
arm64                 randconfig-002-20241023    gcc-14.1.0
arm64                 randconfig-003-20241023    gcc-14.1.0
arm64                 randconfig-004-20241023    gcc-14.1.0
csky                             alldefconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20241023    gcc-14.1.0
csky                  randconfig-002-20241023    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20241023    gcc-14.1.0
hexagon               randconfig-002-20241023    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241023    clang-18
i386        buildonly-randconfig-002-20241023    clang-18
i386        buildonly-randconfig-003-20241023    clang-18
i386        buildonly-randconfig-003-20241023    gcc-12
i386        buildonly-randconfig-004-20241023    clang-18
i386        buildonly-randconfig-004-20241023    gcc-12
i386        buildonly-randconfig-005-20241023    clang-18
i386        buildonly-randconfig-006-20241023    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241023    clang-18
i386                  randconfig-001-20241023    gcc-12
i386                  randconfig-002-20241023    clang-18
i386                  randconfig-003-20241023    clang-18
i386                  randconfig-004-20241023    clang-18
i386                  randconfig-005-20241023    clang-18
i386                  randconfig-006-20241023    clang-18
i386                  randconfig-006-20241023    gcc-12
i386                  randconfig-011-20241023    clang-18
i386                  randconfig-012-20241023    clang-18
i386                  randconfig-012-20241023    gcc-12
i386                  randconfig-013-20241023    clang-18
i386                  randconfig-013-20241023    gcc-12
i386                  randconfig-014-20241023    clang-18
i386                  randconfig-015-20241023    clang-18
i386                  randconfig-016-20241023    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20241023    gcc-14.1.0
loongarch             randconfig-002-20241023    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                        m5272c3_defconfig    gcc-14.1.0
m68k                       m5275evb_defconfig    gcc-14.1.0
m68k                           virt_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                           ip30_defconfig    clang-20
mips                           jazz_defconfig    clang-20
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20241023    gcc-14.1.0
nios2                 randconfig-002-20241023    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241023    gcc-14.1.0
parisc                randconfig-002-20241023    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    gcc-14.1.0
powerpc                    gamecube_defconfig    clang-20
powerpc                      mgcoge_defconfig    gcc-14.1.0
powerpc               mpc834x_itxgp_defconfig    gcc-14.1.0
powerpc                      ppc44x_defconfig    clang-20
powerpc               randconfig-001-20241023    gcc-14.1.0
powerpc               randconfig-002-20241023    gcc-14.1.0
powerpc               randconfig-003-20241023    gcc-14.1.0
powerpc                     redwood_defconfig    clang-20
powerpc64             randconfig-001-20241023    gcc-14.1.0
powerpc64             randconfig-002-20241023    gcc-14.1.0
powerpc64             randconfig-003-20241023    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241023    gcc-14.1.0
riscv                 randconfig-002-20241023    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241023    gcc-14.1.0
s390                  randconfig-002-20241023    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    gcc-14.1.0
sh                        edosk7760_defconfig    gcc-14.1.0
sh                    randconfig-001-20241023    gcc-14.1.0
sh                    randconfig-002-20241023    gcc-14.1.0
sh                           se7712_defconfig    gcc-14.1.0
sh                           se7722_defconfig    clang-20
sh                           se7724_defconfig    clang-20
sh                           se7751_defconfig    gcc-14.1.0
sh                   sh7724_generic_defconfig    gcc-14.1.0
sh                        sh7785lcr_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241023    gcc-14.1.0
sparc64               randconfig-002-20241023    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241023    gcc-14.1.0
um                    randconfig-002-20241023    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  cadence_csp_defconfig    gcc-14.1.0
xtensa                randconfig-001-20241023    gcc-14.1.0
xtensa                randconfig-002-20241023    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
