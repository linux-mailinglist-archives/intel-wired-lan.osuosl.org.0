Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10063B428C9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 20:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04F59419D1;
	Wed,  3 Sep 2025 18:36:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xtVShVTguySe; Wed,  3 Sep 2025 18:36:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CFE141959
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756924608;
	bh=fh4ZkmhTlYVrYqdz0I4NHzOziBrvjflPnttLvPnmjvc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wpB1xEI3HZFpDNg14UvHFOs4rW4w1KtT1gyWVRYyychJrDywN+qC6Xe+qiP2sDwtJ
	 40eDSkBEt6TGS2nUtdHzwKYY/3XLmcURbj+BTbUVJ8z7AFjdS73sYixTbitw4pTm5K
	 Hxs6Ss8P251pPYOHAvnYidmH2m9V+V3LPGiGkROV2SdLO/6jKGOPl3yZ3AWOrM0Fdq
	 55aIKB9xkUA3koh/WfnmHI2eIT7dL0WEp5RvI0uv2c9mU1Y50O8iJiEjTGbKMVa91i
	 BDMRtUxavoC9qUPSnOzdvVIv0ynV61B+gBCGVDlV8VFaEgsSrKFRb0jO6MTL9UnNxr
	 Od+ZTtCIIZBYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CFE141959;
	Wed,  3 Sep 2025 18:36:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 18EF2930
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 18:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0202C6151A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 18:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Puz5MHXPtfbx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 18:36:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E2F0D614FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2F0D614FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2F0D614FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 18:36:45 +0000 (UTC)
X-CSE-ConnectionGUID: aZnsZxZUQk+6kLGrtEP/7w==
X-CSE-MsgGUID: J/EPXW+DTm2ax0sw/HGjlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="69861893"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="69861893"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 11:36:44 -0700
X-CSE-ConnectionGUID: +LulLW8eR0qsiTSm16Xnew==
X-CSE-MsgGUID: IArcyBWpSFq/2rFOvjX1wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="170920329"
Received: from lkp-server02.sh.intel.com (HELO 06ba48ef64e9) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 03 Sep 2025 11:36:43 -0700
Received: from kbuild by 06ba48ef64e9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1utsL2-0004JH-1s
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Sep 2025 18:36:17 +0000
Date: Thu, 04 Sep 2025 02:35:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509040236.HI9X8xZW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756924606; x=1788460606;
 h=date:from:to:subject:message-id;
 bh=RzMs7iU0/g8s+Q1p8AsLsgF1IyoAAgyLMFjfiKAu8LU=;
 b=GsiD4LDlKBOmrrsNE1XwYrFmtQNlM3pla0F+1EvN0m/nVHN7xCFotYO6
 eWe9UXoOIJ2+yuSQ1xheoCx8bdbOCx3XTF4Sl/2BfYf3PYPKni8hrc80J
 Usr/AgiVdU9R1jjQliecOILLFlujotP2vC9Y/NnbqrE5HBesL0zfa9W81
 iXxXtdzduz40Wk5LTFUz8ei28HXN8FF8lMMshzi6oOl1Dl8NtDvCMGVdp
 BUEsOOfg+ttiOyDZk9O6kQms+mhRFhc3u+Tiq19JF4Vx2tDIEYMasKuHc
 ryiMojVDZDxza+iPlSoQvhhrBX+uTJISaHaIRWQ4lir6DFNDk6iLCH5YS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GsiD4LDl
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 cd8a4cfa6bb43a441901e82f5c222dddc75a18a3
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
branch HEAD: cd8a4cfa6bb43a441901e82f5c222dddc75a18a3  Merge branch 'e-switch-vport-sharing-delegation'

elapsed time: 1687m

configs tested: 222
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250903    gcc-15.1.0
arc                   randconfig-001-20250903    gcc-8.5.0
arc                   randconfig-002-20250903    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                       imx_v4_v5_defconfig    gcc-15.1.0
arm                             mxs_defconfig    gcc-15.1.0
arm                   randconfig-001-20250903    clang-22
arm                   randconfig-001-20250903    gcc-8.5.0
arm                   randconfig-002-20250903    clang-16
arm                   randconfig-002-20250903    gcc-8.5.0
arm                   randconfig-003-20250903    clang-22
arm                   randconfig-003-20250903    gcc-8.5.0
arm                   randconfig-004-20250903    clang-22
arm                   randconfig-004-20250903    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250903    gcc-8.5.0
arm64                 randconfig-002-20250903    gcc-11.5.0
arm64                 randconfig-002-20250903    gcc-8.5.0
arm64                 randconfig-003-20250903    clang-22
arm64                 randconfig-003-20250903    gcc-8.5.0
arm64                 randconfig-004-20250903    clang-22
arm64                 randconfig-004-20250903    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250903    gcc-10.5.0
csky                  randconfig-001-20250903    gcc-9.5.0
csky                  randconfig-002-20250903    gcc-10.5.0
csky                  randconfig-002-20250903    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250903    clang-22
hexagon               randconfig-001-20250903    gcc-10.5.0
hexagon               randconfig-002-20250903    clang-18
hexagon               randconfig-002-20250903    gcc-10.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-13
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-13
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-13
i386        buildonly-randconfig-001-20250903    clang-20
i386        buildonly-randconfig-001-20250903    gcc-12
i386        buildonly-randconfig-002-20250903    clang-20
i386        buildonly-randconfig-002-20250903    gcc-12
i386        buildonly-randconfig-003-20250903    clang-20
i386        buildonly-randconfig-004-20250903    clang-20
i386        buildonly-randconfig-005-20250903    clang-20
i386        buildonly-randconfig-006-20250903    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250903    gcc-13
i386                  randconfig-002-20250903    gcc-13
i386                  randconfig-003-20250903    gcc-13
i386                  randconfig-004-20250903    gcc-13
i386                  randconfig-005-20250903    gcc-13
i386                  randconfig-006-20250903    gcc-13
i386                  randconfig-007-20250903    gcc-13
i386                  randconfig-011-20250903    gcc-13
i386                  randconfig-012-20250903    gcc-13
i386                  randconfig-013-20250903    gcc-13
i386                  randconfig-014-20250903    gcc-13
i386                  randconfig-015-20250903    gcc-13
i386                  randconfig-016-20250903    gcc-13
i386                  randconfig-017-20250903    gcc-13
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250903    gcc-10.5.0
loongarch             randconfig-001-20250903    gcc-15.1.0
loongarch             randconfig-002-20250903    clang-22
loongarch             randconfig-002-20250903    gcc-10.5.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                          multi_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250903    gcc-10.5.0
nios2                 randconfig-002-20250903    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-13
openrisc                    or1ksim_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250903    gcc-10.5.0
parisc                randconfig-001-20250903    gcc-13.4.0
parisc                randconfig-002-20250903    gcc-10.5.0
parisc                randconfig-002-20250903    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      cm5200_defconfig    gcc-15.1.0
powerpc                      pasemi_defconfig    gcc-15.1.0
powerpc                      pmac32_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250903    gcc-10.5.0
powerpc               randconfig-001-20250903    gcc-8.5.0
powerpc               randconfig-002-20250903    gcc-10.5.0
powerpc               randconfig-002-20250903    gcc-8.5.0
powerpc               randconfig-003-20250903    gcc-10.5.0
powerpc               randconfig-003-20250903    gcc-14.3.0
powerpc64             randconfig-001-20250903    clang-22
powerpc64             randconfig-001-20250903    gcc-10.5.0
powerpc64             randconfig-002-20250903    clang-22
powerpc64             randconfig-002-20250903    gcc-10.5.0
powerpc64             randconfig-003-20250903    clang-22
powerpc64             randconfig-003-20250903    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-13
riscv                 randconfig-001-20250903    gcc-12.5.0
riscv                 randconfig-001-20250903    gcc-8.5.0
riscv                 randconfig-002-20250903    gcc-12.5.0
riscv                 randconfig-002-20250903    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-13
s390                  randconfig-001-20250903    gcc-12.5.0
s390                  randconfig-001-20250903    gcc-8.5.0
s390                  randconfig-002-20250903    clang-22
s390                  randconfig-002-20250903    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-13
sh                    randconfig-001-20250903    gcc-12.5.0
sh                    randconfig-002-20250903    gcc-10.5.0
sh                    randconfig-002-20250903    gcc-12.5.0
sh                           se7712_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250903    gcc-11.5.0
sparc                 randconfig-001-20250903    gcc-12.5.0
sparc                 randconfig-002-20250903    gcc-12.5.0
sparc                 randconfig-002-20250903    gcc-15.1.0
sparc64                             defconfig    gcc-13
sparc64               randconfig-001-20250903    gcc-12.5.0
sparc64               randconfig-001-20250903    gcc-8.5.0
sparc64               randconfig-002-20250903    gcc-11.5.0
sparc64               randconfig-002-20250903    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                               allyesconfig    gcc-13
um                                  defconfig    gcc-13
um                             i386_defconfig    gcc-13
um                    randconfig-001-20250903    gcc-12
um                    randconfig-001-20250903    gcc-12.5.0
um                    randconfig-002-20250903    clang-18
um                    randconfig-002-20250903    gcc-12.5.0
um                           x86_64_defconfig    gcc-13
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250903    clang-20
x86_64      buildonly-randconfig-002-20250903    clang-20
x86_64      buildonly-randconfig-003-20250903    clang-20
x86_64      buildonly-randconfig-004-20250903    clang-20
x86_64      buildonly-randconfig-004-20250903    gcc-12
x86_64      buildonly-randconfig-005-20250903    clang-20
x86_64      buildonly-randconfig-006-20250903    clang-20
x86_64      buildonly-randconfig-006-20250903    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250903    clang-20
x86_64                randconfig-002-20250903    clang-20
x86_64                randconfig-003-20250903    clang-20
x86_64                randconfig-004-20250903    clang-20
x86_64                randconfig-005-20250903    clang-20
x86_64                randconfig-006-20250903    clang-20
x86_64                randconfig-007-20250903    clang-20
x86_64                randconfig-008-20250903    clang-20
x86_64                randconfig-071-20250903    clang-20
x86_64                randconfig-072-20250903    clang-20
x86_64                randconfig-073-20250903    clang-20
x86_64                randconfig-074-20250903    clang-20
x86_64                randconfig-075-20250903    clang-20
x86_64                randconfig-076-20250903    clang-20
x86_64                randconfig-077-20250903    clang-20
x86_64                randconfig-078-20250903    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250903    gcc-11.5.0
xtensa                randconfig-001-20250903    gcc-12.5.0
xtensa                randconfig-002-20250903    gcc-12.5.0
xtensa                randconfig-002-20250903    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
