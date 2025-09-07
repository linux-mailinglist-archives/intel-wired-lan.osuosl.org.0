Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF84B478C8
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 05:37:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB6AF844B5;
	Sun,  7 Sep 2025 03:37:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rLwHC-g_sNEo; Sun,  7 Sep 2025 03:37:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD7518449F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757216230;
	bh=Tevj+YjQirKQW5NCCJtTbwuIom23z5IoqHbRBKmIgTo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fqGRTsR99kpomOCTQCfeLHQ7tKw/PyHPD3tdDstPZ7pm2zyTiAD21RlUnus4C8wuE
	 sBW7qFB/Lh6HPKsgIx7Uk25g5zC0UlWwoAj6ks5VfXfRZRQsm6AREuWjC7VlijL7uz
	 1bLALbZzH23Sd7H0JwoKlo2Flt3trlvzvDpUQCDq/gVJlzIdEu2BLtjmk01Ucs/5QI
	 zpAXLv13fiStdiCtjDkWjDODVLIwI98enFtLH0pRJdvCYSp729fcCV0NV1oRVj2ARl
	 zJRR2bDZE2otaKoKJ+BoNugF3oYY0mKYSU5Ssu5L8EfVHxtEaCe4JrzO25CZdq6Zhu
	 XecDKVHQIZ73g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD7518449F;
	Sun,  7 Sep 2025 03:37:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B79369E4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 03:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EA9984425
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 03:37:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jcfo1g1WtSnU for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 03:37:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 89114844A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89114844A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89114844A9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 03:37:07 +0000 (UTC)
X-CSE-ConnectionGUID: qRPYMzohQi2JJYItTbwT8g==
X-CSE-MsgGUID: Zu3Eb4epTjuoTKjcnmn3tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="77127556"
X-IronPort-AV: E=Sophos;i="6.18,245,1751266800"; d="scan'208";a="77127556"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2025 20:37:07 -0700
X-CSE-ConnectionGUID: TBw9hSUiQ9+1iSS5wRvbkw==
X-CSE-MsgGUID: wGcMyYHkRdyLfgcBqWo+6g==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 06 Sep 2025 20:37:06 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uv6DA-0001zP-0S
 for intel-wired-lan@lists.osuosl.org; Sun, 07 Sep 2025 03:37:04 +0000
Date: Sun, 07 Sep 2025 11:36:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509071148.PjLLzJkN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757216229; x=1788752229;
 h=date:from:to:subject:message-id;
 bh=A3YdNpqoYsyZj8kMxYurx86FbycBZ+UYH+8vLRTJ6hA=;
 b=SgO5dCzVMCYYfLGx6D6rOpml+VujOnyhkDq9RqcX2qvu0SYnpKjugbGF
 ijNlac+RijshWnnUTB81qIqj3V6SmaZ4Ck9yoVEz5ys/KUgLD3Bw9yJmH
 savRDxEFSYs6kWhxcIVu8YWtB9A8SqMFtz/bCkYvKI15GYHBhGQq5O6H5
 W45mLup/mjCsGi5ZIm6DEdosaff3BXyvlHCmHCG/w970scWF0ZP8EymwQ
 KQXh5bzCMWDqs1boe58+dwLo5ByaTiW3lShoTzrKK9qA4YIqf2UMEGIdQ
 ih2G/qKr1nGq22x7WSpBr+P0q+Xa0uesGpC1ZQM3gujwfCWcaBHZewBmn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SgO5dCzV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c4940196ab024ba4d140259c26606d8e53ec0808
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
branch HEAD: c4940196ab024ba4d140259c26606d8e53ec0808  iavf: add RSS support for GTP protocol via ethtool

elapsed time: 2052m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                        nsim_700_defconfig    gcc-15.1.0
arc                   randconfig-001-20250906    gcc-14.3.0
arc                   randconfig-002-20250906    gcc-10.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250906    clang-22
arm                   randconfig-002-20250906    clang-22
arm                   randconfig-003-20250906    gcc-13.4.0
arm                   randconfig-004-20250906    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250906    gcc-8.5.0
arm64                 randconfig-002-20250906    gcc-12.5.0
arm64                 randconfig-003-20250906    clang-22
arm64                 randconfig-004-20250906    gcc-9.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250906    gcc-15.1.0
csky                  randconfig-002-20250906    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250906    clang-20
hexagon               randconfig-002-20250906    clang-22
i386                             allmodconfig    gcc-13
i386                              allnoconfig    gcc-13
i386                             allyesconfig    gcc-13
i386        buildonly-randconfig-001-20250906    clang-20
i386        buildonly-randconfig-002-20250906    gcc-11
i386        buildonly-randconfig-003-20250906    gcc-13
i386        buildonly-randconfig-004-20250906    gcc-13
i386        buildonly-randconfig-005-20250906    clang-20
i386        buildonly-randconfig-006-20250906    clang-20
i386                                defconfig    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250906    clang-22
loongarch             randconfig-002-20250906    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          ath25_defconfig    clang-22
mips                        omega2p_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250906    gcc-11.5.0
nios2                 randconfig-002-20250906    gcc-11.5.0
openrisc                         alldefconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250906    gcc-11.5.0
parisc                randconfig-002-20250906    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250906    gcc-14.3.0
powerpc               randconfig-002-20250906    clang-20
powerpc               randconfig-003-20250906    clang-22
powerpc                  storcenter_defconfig    gcc-15.1.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250906    gcc-13.4.0
powerpc64             randconfig-002-20250906    gcc-10.5.0
powerpc64             randconfig-003-20250906    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250906    gcc-13.4.0
riscv                 randconfig-002-20250906    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250906    gcc-10.5.0
s390                  randconfig-002-20250906    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                          polaris_defconfig    gcc-15.1.0
sh                    randconfig-001-20250906    gcc-15.1.0
sh                    randconfig-002-20250906    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250906    gcc-8.5.0
sparc                 randconfig-002-20250906    gcc-13.4.0
sparc                       sparc64_defconfig    gcc-15.1.0
sparc64               randconfig-001-20250906    clang-22
sparc64               randconfig-002-20250906    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-13
um                    randconfig-001-20250906    gcc-12
um                    randconfig-002-20250906    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250906    clang-20
x86_64      buildonly-randconfig-002-20250906    gcc-13
x86_64      buildonly-randconfig-003-20250906    gcc-13
x86_64      buildonly-randconfig-004-20250906    clang-20
x86_64      buildonly-randconfig-005-20250906    gcc-13
x86_64      buildonly-randconfig-006-20250906    gcc-13
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250906    gcc-12.5.0
xtensa                randconfig-002-20250906    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
