Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C9AF5F23
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 18:52:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C80BB80AF4;
	Wed,  2 Jul 2025 16:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wFY67xwDR1J8; Wed,  2 Jul 2025 16:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44A0B80B88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751475165;
	bh=bYfTj7kTEyerdYG3aopyPvmxEOvr11pAsQeyghGiQNQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BpquDl3pCfYyJnhk736UomUsFkZZfpG/tuA0DRvnEhQep3OcbyKMdP5+BfDyRekVt
	 kvWXKdtufeRto1LGnXaLmZDoWfUcR7V8DAvORTclB9OI8VUS0S9uiKW4LpK6YAXTFU
	 9bZiTgFO7VClpWly3JnxtmQG/OIBC7p5jdIzEdaWMzrPuv5TpoVBahUMbIlsed1l7S
	 Mdb0k4Z7D9nO+cx8IzJ/Uy4g1XhfrQIU4xjHXpbf07ec5PFDJBoGccBctN9fp7MY9+
	 ULWVYlatK9WMool+rRY3S/GPaBKaEacgdphrwxnw4Y4jL8aVl0V9XjNT2U6RfuQNqa
	 W73ey6v577MoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44A0B80B88;
	Wed,  2 Jul 2025 16:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FF3A128
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 16:52:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91EA341730
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 16:52:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5nwI211-VjCD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 16:52:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 756984176B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 756984176B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 756984176B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 16:52:42 +0000 (UTC)
X-CSE-ConnectionGUID: yT4ybsZ2SFyrnaRO4cB3Tw==
X-CSE-MsgGUID: fVc+J3YXRteexQCoVWftxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="56406314"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="56406314"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 09:52:42 -0700
X-CSE-ConnectionGUID: zah8jeB7SkugEiq1BKIE3A==
X-CSE-MsgGUID: UcPViGAnST66w4AOg2WDOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="154869338"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 02 Jul 2025 09:52:41 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uX0hL-0000tZ-04
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Jul 2025 16:52:39 +0000
Date: Thu, 03 Jul 2025 00:51:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507030032.ge7ca9ER-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751475162; x=1783011162;
 h=date:from:to:subject:message-id;
 bh=R/RdHI0vby5Zn46YDoVovOyC5amraebUGCY5tHCzhzI=;
 b=KnNW9g6V5Tkw0LsWwI+oOMswHXQ2cXtWcgWZhD7juwV8W4qCCOuxBx+e
 A4tu2osafMufx1Xeb09DJZDJSXhXeEeJp3GgovAG8o1CMQ67mrYZHNDLQ
 EdChqu7I5LY8wrPiMTnQImhNlhGMmILwrBGu4oXuijAY1bPEBkdoO5dke
 +QByHuiel46mnYljV6gGM2VmSh+w/i+YBvQd2JGNvt0zPaTgIAQCGUDRi
 Eb7+YBO1ggbXd+HBrV73lmHt6hCh98dTJ1I3YdcFLrSbzTXFJsaGSjIsW
 JaZNLTzGWMvF5VTKFCeYviIQZZWnytWqf+PLxDlZPCssEhjiYt3OQHH1P
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KnNW9g6V
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 21deb2d966920f0d4dd098ca6c3a55efbc0b2f23
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 21deb2d966920f0d4dd098ca6c3a55efbc0b2f23  net: ieee8021q: fix insufficient table-size assertion

elapsed time: 1775m

configs tested: 258
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250702    clang-19
arc                   randconfig-001-20250702    gcc-10.5.0
arc                   randconfig-002-20250702    clang-19
arc                   randconfig-002-20250702    gcc-14.3.0
arc                        vdk_hs38_defconfig    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                         assabet_defconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                          gemini_defconfig    gcc-15.1.0
arm                      integrator_defconfig    gcc-15.1.0
arm                        multi_v7_defconfig    gcc-15.1.0
arm                        mvebu_v7_defconfig    gcc-15.1.0
arm                       netwinder_defconfig    gcc-15.1.0
arm                          pxa3xx_defconfig    clang-18
arm                   randconfig-001-20250702    clang-17
arm                   randconfig-001-20250702    clang-19
arm                   randconfig-002-20250702    clang-19
arm                   randconfig-003-20250702    clang-19
arm                   randconfig-003-20250702    clang-21
arm                   randconfig-004-20250702    clang-17
arm                   randconfig-004-20250702    clang-19
arm                          sp7021_defconfig    gcc-15.1.0
arm                           tegra_defconfig    clang-18
arm                           u8500_defconfig    gcc-15.1.0
arm                         vf610m4_defconfig    clang-18
arm                         vf610m4_defconfig    gcc-15.1.0
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250702    clang-19
arm64                 randconfig-001-20250702    clang-21
arm64                 randconfig-002-20250702    clang-19
arm64                 randconfig-002-20250702    clang-21
arm64                 randconfig-003-20250702    clang-19
arm64                 randconfig-003-20250702    clang-21
arm64                 randconfig-004-20250702    clang-19
arm64                 randconfig-004-20250702    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250702    gcc-14.2.0
csky                  randconfig-001-20250702    gcc-15.1.0
csky                  randconfig-002-20250702    gcc-14.2.0
csky                  randconfig-002-20250702    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250702    clang-21
hexagon               randconfig-001-20250702    gcc-14.2.0
hexagon               randconfig-002-20250702    clang-21
hexagon               randconfig-002-20250702    gcc-14.2.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250702    clang-20
i386        buildonly-randconfig-002-20250702    clang-20
i386        buildonly-randconfig-002-20250702    gcc-12
i386        buildonly-randconfig-003-20250702    clang-20
i386        buildonly-randconfig-004-20250702    clang-20
i386        buildonly-randconfig-005-20250702    clang-20
i386        buildonly-randconfig-005-20250702    gcc-12
i386        buildonly-randconfig-006-20250702    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250702    clang-20
i386                  randconfig-002-20250702    clang-20
i386                  randconfig-003-20250702    clang-20
i386                  randconfig-004-20250702    clang-20
i386                  randconfig-005-20250702    clang-20
i386                  randconfig-006-20250702    clang-20
i386                  randconfig-007-20250702    clang-20
i386                  randconfig-011-20250702    gcc-12
i386                  randconfig-012-20250702    gcc-12
i386                  randconfig-013-20250702    gcc-12
i386                  randconfig-014-20250702    gcc-12
i386                  randconfig-015-20250702    gcc-12
i386                  randconfig-016-20250702    gcc-12
i386                  randconfig-017-20250702    gcc-12
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250702    gcc-14.2.0
loongarch             randconfig-001-20250702    gcc-15.1.0
loongarch             randconfig-002-20250702    gcc-14.2.0
loongarch             randconfig-002-20250702    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
m68k                           virt_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           gcw0_defconfig    clang-18
mips                            gpr_defconfig    clang-18
mips                           ip32_defconfig    gcc-15.1.0
mips                         rt305x_defconfig    gcc-15.1.0
nios2                            allmodconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                            allyesconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250702    gcc-14.2.0
nios2                 randconfig-002-20250702    gcc-14.2.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
openrisc                 simple_smp_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250702    gcc-12.4.0
parisc                randconfig-001-20250702    gcc-14.2.0
parisc                randconfig-002-20250702    gcc-14.2.0
parisc                randconfig-002-20250702    gcc-9.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-15.1.0
powerpc                    amigaone_defconfig    gcc-15.1.0
powerpc                      chrp32_defconfig    gcc-15.1.0
powerpc                       ebony_defconfig    gcc-15.1.0
powerpc                     mpc512x_defconfig    gcc-15.1.0
powerpc               mpc834x_itxgp_defconfig    gcc-15.1.0
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250702    gcc-11.5.0
powerpc               randconfig-001-20250702    gcc-14.2.0
powerpc               randconfig-002-20250702    gcc-11.5.0
powerpc               randconfig-002-20250702    gcc-14.2.0
powerpc               randconfig-003-20250702    clang-21
powerpc               randconfig-003-20250702    gcc-14.2.0
powerpc                     sequoia_defconfig    clang-18
powerpc                     sequoia_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250702    clang-21
powerpc64             randconfig-001-20250702    gcc-14.2.0
powerpc64             randconfig-002-20250702    clang-19
powerpc64             randconfig-002-20250702    gcc-14.2.0
powerpc64             randconfig-003-20250702    clang-21
powerpc64             randconfig-003-20250702    gcc-14.2.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250702    clang-21
riscv                 randconfig-002-20250702    clang-21
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250702    clang-21
s390                  randconfig-001-20250702    gcc-10.5.0
s390                  randconfig-002-20250702    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                        edosk7705_defconfig    gcc-15.1.0
sh                             espt_defconfig    clang-18
sh                             espt_defconfig    gcc-15.1.0
sh                    randconfig-001-20250702    clang-21
sh                    randconfig-001-20250702    gcc-15.1.0
sh                    randconfig-002-20250702    clang-21
sh                    randconfig-002-20250702    gcc-15.1.0
sh                           se7722_defconfig    gcc-15.1.0
sh                     sh7710voipgw_defconfig    gcc-15.1.0
sh                        sh7763rdp_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                            allyesconfig    gcc-15.1.0
sparc                 randconfig-001-20250702    clang-21
sparc                 randconfig-001-20250702    gcc-12.4.0
sparc                 randconfig-002-20250702    clang-21
sparc                 randconfig-002-20250702    gcc-15.1.0
sparc64                          allmodconfig    gcc-15.1.0
sparc64                          allyesconfig    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250702    clang-21
sparc64               randconfig-001-20250702    gcc-9.3.0
sparc64               randconfig-002-20250702    clang-21
sparc64               randconfig-002-20250702    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250702    clang-21
um                    randconfig-002-20250702    clang-21
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250702    gcc-11
x86_64      buildonly-randconfig-001-20250702    gcc-12
x86_64      buildonly-randconfig-002-20250702    gcc-11
x86_64      buildonly-randconfig-003-20250702    clang-20
x86_64      buildonly-randconfig-003-20250702    gcc-11
x86_64      buildonly-randconfig-004-20250702    clang-20
x86_64      buildonly-randconfig-004-20250702    gcc-11
x86_64      buildonly-randconfig-005-20250702    clang-20
x86_64      buildonly-randconfig-005-20250702    gcc-11
x86_64      buildonly-randconfig-006-20250702    gcc-11
x86_64      buildonly-randconfig-006-20250702    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-004-20250702    gcc-12
x86_64                randconfig-005-20250702    gcc-12
x86_64                randconfig-006-20250702    gcc-12
x86_64                randconfig-007-20250702    gcc-12
x86_64                randconfig-008-20250702    gcc-12
x86_64                randconfig-071-20250702    clang-20
x86_64                randconfig-072-20250702    clang-20
x86_64                randconfig-073-20250702    clang-20
x86_64                randconfig-074-20250702    clang-20
x86_64                randconfig-075-20250702    clang-20
x86_64                randconfig-076-20250702    clang-20
x86_64                randconfig-077-20250702    clang-20
x86_64                randconfig-078-20250702    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    gcc-15.1.0
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    gcc-15.1.0
xtensa                  cadence_csp_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250702    clang-21
xtensa                randconfig-001-20250702    gcc-14.3.0
xtensa                randconfig-002-20250702    clang-21
xtensa                randconfig-002-20250702    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
