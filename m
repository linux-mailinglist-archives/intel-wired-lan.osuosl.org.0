Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD1C98FCF7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 07:20:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 568C460F77;
	Fri,  4 Oct 2024 05:20:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VBxy1sQ0tpwB; Fri,  4 Oct 2024 05:20:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E9DC60F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728019211;
	bh=6aOAJOZ7xEm0YoB36+C3uLuIUANA4mMn7FA+sY78Q6k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7cOYu3CTbjhv13/MupTlRdKi59d1X229jE5fuRBzBx5pIuR+WmDv02B4Z+wbSUNL5
	 80lePYza1UGZZFmtF4XGLazSSWXyLrLU37p2EGu9vYhaUA+t4YaAjoNOgFYQgyFiR3
	 cSwfVo7pWl4WaF7A1j3bWx2qtEeAenMUAAeiA8rBijJQEciksZ0g8s9rRUK8KlLu06
	 OpgrTauJMEYSb+wcoKFFdGxMEhibv2p2BjRf3snIbEGDXMjaQ2toslt+Xs+oZHDlW9
	 L1fWwicGVjZl2k3mVdz00DgKd/d6QVSp5pSdKv9+D2WPXnmpKOJ5aFiu5SPuFUpfYH
	 FNDeN4GgNWLzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E9DC60F6F;
	Fri,  4 Oct 2024 05:20:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFAA31BF98E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 05:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D4C440B77
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 05:20:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2JRCJqMRQwf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 05:20:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0382040B4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0382040B4F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0382040B4F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 05:20:07 +0000 (UTC)
X-CSE-ConnectionGUID: fpQbY/FMQQOh6iBykig59A==
X-CSE-MsgGUID: 9N1z5xwVTQSli8V7H4qbMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27382498"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="27382498"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 22:20:06 -0700
X-CSE-ConnectionGUID: LpmMxrv0QimbbjL6aNFaMw==
X-CSE-MsgGUID: X1gXp6hxRr2XGe/FK6GS8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="74702553"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 03 Oct 2024 22:20:05 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1swajT-0001G5-1n
 for intel-wired-lan@lists.osuosl.org; Fri, 04 Oct 2024 05:20:03 +0000
Date: Fri, 04 Oct 2024 13:19:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410041301.0KLXnQd0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728019208; x=1759555208;
 h=date:from:to:subject:message-id;
 bh=BIgyPBqNvX3ekaXeT+xGQMbczi7LeHRrx7jJqjY1Spk=;
 b=SdOa2hsuulJDSiTh9lnjQeg836gLvRxbcSgeEDJ348T7RJPWChIzFvQj
 g22SG9h3DQ2AH/rFtPvgt06vIiFjLeMEkH0ds9t1NogVtpAuAYcoLsvgB
 sgpD/D4xH3Bnp5ulav5+ij+CR0veW1QftbceApIkWUDUuQr5s3tz3cunG
 Atr9gzVyenVXg1vk58j7zszfeaoLzJBq2Vg83+T7WgmC8wcXdjwGxu0Ny
 WsVNgQUkRZn2oQ1725n6hsvT8wMAsOZVwng+nX47ziCi9th6Drx9sjSN1
 FJXoT0ok8c1xUlmuGcvTlyHy2gKlUemBfQrRwnAnu5IQzxpFgh69PznOX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SdOa2hsu
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f2589ad16e14b7102f1411e3385a2abf07076406
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: f2589ad16e14b7102f1411e3385a2abf07076406  e1000: Link NAPI instances to queues and IRQs

elapsed time: 1814m

configs tested: 129
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                                 defconfig    gcc-14.1.0
arm                      footbridge_defconfig    gcc-14.1.0
arm                          gemini_defconfig    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241004    clang-18
i386        buildonly-randconfig-002-20241004    gcc-12
i386        buildonly-randconfig-003-20241004    gcc-12
i386        buildonly-randconfig-004-20241004    gcc-12
i386        buildonly-randconfig-005-20241004    clang-18
i386        buildonly-randconfig-006-20241004    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241004    gcc-12
i386                  randconfig-002-20241004    clang-18
i386                  randconfig-003-20241004    gcc-12
i386                  randconfig-004-20241004    gcc-12
i386                  randconfig-005-20241004    gcc-12
i386                  randconfig-006-20241004    gcc-12
i386                  randconfig-011-20241004    clang-18
i386                  randconfig-012-20241004    clang-18
i386                  randconfig-013-20241004    clang-18
i386                  randconfig-014-20241004    gcc-12
i386                  randconfig-015-20241004    clang-18
i386                  randconfig-016-20241004    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath25_defconfig    gcc-14.1.0
mips                           ip27_defconfig    gcc-14.1.0
mips                    maltaup_xpa_defconfig    gcc-14.1.0
mips                           xway_defconfig    gcc-14.1.0
nios2                            alldefconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                      mgcoge_defconfig    gcc-14.1.0
powerpc                      ppc6xx_defconfig    gcc-14.1.0
powerpc                     tqm8541_defconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                               defconfig    gcc-14.1.0
riscv                    nommu_virt_defconfig    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                          rsk7203_defconfig    gcc-14.1.0
sh                           se7780_defconfig    gcc-14.1.0
sh                   sh7770_generic_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241004    gcc-12
x86_64      buildonly-randconfig-002-20241004    gcc-12
x86_64      buildonly-randconfig-003-20241004    gcc-12
x86_64      buildonly-randconfig-004-20241004    clang-18
x86_64      buildonly-randconfig-005-20241004    clang-18
x86_64      buildonly-randconfig-006-20241004    gcc-12
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20241004    gcc-12
x86_64                randconfig-003-20241004    clang-18
x86_64                randconfig-004-20241004    gcc-12
x86_64                randconfig-005-20241004    clang-18
x86_64                randconfig-006-20241004    clang-18
x86_64                randconfig-011-20241004    gcc-12
x86_64                randconfig-012-20241004    clang-18
x86_64                randconfig-013-20241004    gcc-12
x86_64                randconfig-014-20241004    gcc-12
x86_64                randconfig-015-20241004    clang-18
x86_64                randconfig-016-20241004    gcc-12
x86_64                randconfig-071-20241004    gcc-12
x86_64                randconfig-073-20241004    gcc-11
x86_64                randconfig-074-20241004    clang-18
x86_64                randconfig-075-20241004    gcc-12
x86_64                randconfig-076-20241004    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                generic_kc705_defconfig    gcc-14.1.0
xtensa                          iss_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
