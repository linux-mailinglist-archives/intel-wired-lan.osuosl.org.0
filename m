Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AC8BFE2D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 22:32:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D8BC840AD;
	Wed, 22 Oct 2025 20:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7iGTfLoMR-Dp; Wed, 22 Oct 2025 20:32:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F8D283F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761165142;
	bh=xNt95maTqvrAoz19lBMNsPcLTrWrN6vfXcofJIFsZ2E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u2X5fobcwWStGKVzlkaqwFHg+bfU41GcEyqYdrW9Litfp01M4PtNDZa4vPGmAEEiX
	 KI78zZwY6wgTWEf06ndw4Xk4VOr0p/EToxzPg6m72e+b7c98xTKSiSoAIrEBRvjRd+
	 B79uAA6tSGr+HgOj0nK6YuYN137oxPlhEC8mrsO7Nk6lkl5fSYFQH0ct15WJztsoL4
	 6rOrXP/qM44KIYVlE4pvADb43oTC/Z27Tgjs3wwSweSGHsUkXW2CSTuSYiRWC9V4tS
	 XY7wcCwmwcRE/bGxw2y3T851y1ngcRwz0tZ4VThE5Mv0WzZzMDn9e5jBntH/ap/jai
	 dQ2ItE9zvG/XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F8D283F07;
	Wed, 22 Oct 2025 20:32:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 666E5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 20:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50D2840D41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 20:32:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Up84o-ficLhe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 20:32:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3C4E8400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C4E8400AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C4E8400AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 20:32:18 +0000 (UTC)
X-CSE-ConnectionGUID: WRh82iDcQNin9mEsHVN+OQ==
X-CSE-MsgGUID: pFs9Pmb7ShOO11qHtrrhSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66968928"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="66968928"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 13:32:18 -0700
X-CSE-ConnectionGUID: KvBwWxS5Qiq0fXRNjRKLdQ==
X-CSE-MsgGUID: ElOhgrTQQmO26XNbHP3Lgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="189093396"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 22 Oct 2025 13:32:17 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vBfVH-000Ci5-17
 for intel-wired-lan@lists.osuosl.org; Wed, 22 Oct 2025 20:32:15 +0000
Date: Thu, 23 Oct 2025 04:31:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510230443.Fv3SFoPn-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761165140; x=1792701140;
 h=date:from:to:subject:message-id;
 bh=PVrFxJnQcKV7bg0NxFVo5wCS22yT4waXDi2+REYC96g=;
 b=Lylg/D7sjI5NbR2wxyXvewkA0EaZFxPA5L4S4LbZa5nQSemK3ZA73/Qy
 KA0+d+zphPdMqeqOUo477DfvZp+gWEKJGgLVSuX13NwYV7xUdtGsyiEEi
 HRdp8Cbnmi3PY5MDTo77B46XlN86+NTyHtELp+fAVz3H02ZPqzruupZpb
 ooUQP5IKwB/+tclwaNvU4ZIDLdYWvnXzpUCaW7/6LXHrbbSxZjsC3GSko
 xThOM9RAecx8VMDfyKiImbgvKZn4rvRVIcVy+J2mgUTTkvIfSn7TXATN3
 XvW+D9bPEjzSh1JBHMaouV2ZPDcbbtKXMXlPI09xrpK9orD5hTHWBFEQY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lylg/D7s
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9a65bf88a3032fb37b654f8ef4581e3b0f4125d7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9a65bf88a3032fb37b654f8ef4581e3b0f4125d7  idpf: add support for IDPF PCI programming interface

elapsed time: 1240m

configs tested: 126
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20251022    gcc-13.4.0
arc                   randconfig-002-20251022    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20251022    gcc-11.5.0
arm                   randconfig-002-20251022    gcc-10.5.0
arm                   randconfig-003-20251022    gcc-10.5.0
arm                   randconfig-004-20251022    clang-22
arm                        spear6xx_defconfig    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251022    gcc-9.5.0
arm64                 randconfig-002-20251022    clang-18
arm64                 randconfig-003-20251022    gcc-10.5.0
arm64                 randconfig-004-20251022    gcc-12.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251022    gcc-15.1.0
csky                  randconfig-002-20251022    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251022    clang-22
hexagon               randconfig-002-20251022    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251022    clang-20
i386        buildonly-randconfig-002-20251022    clang-20
i386        buildonly-randconfig-003-20251022    gcc-14
i386        buildonly-randconfig-004-20251022    clang-20
i386        buildonly-randconfig-005-20251022    gcc-12
i386        buildonly-randconfig-006-20251022    gcc-14
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251022    gcc-12.5.0
loongarch             randconfig-002-20251022    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          amiga_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    clang-18
mips                       bmips_be_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251022    gcc-8.5.0
nios2                 randconfig-002-20251022    gcc-10.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251022    gcc-13.4.0
parisc                randconfig-002-20251022    gcc-10.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20251022    gcc-8.5.0
powerpc               randconfig-002-20251022    gcc-8.5.0
powerpc               randconfig-003-20251022    gcc-8.5.0
powerpc64             randconfig-001-20251022    gcc-8.5.0
powerpc64             randconfig-002-20251022    gcc-8.5.0
powerpc64             randconfig-003-20251022    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20251023    gcc-8.5.0
riscv                 randconfig-002-20251023    gcc-14.3.0
s390                             alldefconfig    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251023    clang-19
s390                  randconfig-002-20251023    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                          lboxre2_defconfig    gcc-15.1.0
sh                    randconfig-001-20251023    gcc-15.1.0
sh                    randconfig-002-20251023    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251023    gcc-12.5.0
sparc                 randconfig-002-20251023    gcc-8.5.0
sparc64               randconfig-001-20251023    clang-22
sparc64               randconfig-002-20251023    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251023    gcc-13
um                    randconfig-002-20251023    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251022    clang-20
x86_64      buildonly-randconfig-002-20251022    gcc-14
x86_64      buildonly-randconfig-003-20251022    gcc-14
x86_64      buildonly-randconfig-004-20251022    clang-20
x86_64      buildonly-randconfig-005-20251022    gcc-14
x86_64      buildonly-randconfig-006-20251022    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251023    gcc-8.5.0
xtensa                randconfig-002-20251023    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
