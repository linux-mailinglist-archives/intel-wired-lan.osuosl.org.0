Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 429CF9C91D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 19:43:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62E3B84497;
	Thu, 14 Nov 2024 18:43:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwZO7_jpxA3c; Thu, 14 Nov 2024 18:43:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1839B8447D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731609802;
	bh=KSplZNKN2bHVjWDmmGf1YBHCsrhMhg6F2cgWOL/yT1w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4jv1r/L0u6D/lpXHuv8M4pGO43+9ENg5+lLtN/Al6yqrIkYVmwZhqJp2sGd9w9VN2
	 j65DPI7b9CjEtx6sByCr/GDqImQ8bn9pu/6Iuu2YZHeTVqoziJevM5KwEAyerQfo8c
	 ocJc1/tTWFFHDZ1nbFg4J48ppIzcyF4xavKUWaLfydt2uG3EWU+mc6ed8HTJ/y2szN
	 mNAH4tzs3aNSooCjla2Mv1IVp//gOrTwgjyerzqpVTLc+NMXt4PxElXFSTI5jpIEJl
	 wDgm1esS9vvnL9V9pIPGta/sB/GgIz3WhaSmI4zfV2rbggvn0/XsLWr2enEd+Slc7X
	 S3/C3xvT2ltUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1839B8447D;
	Thu, 14 Nov 2024 18:43:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E24C4BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 18:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD48F60603
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 18:43:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4UBYesWjfON for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 18:43:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ABB95605E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABB95605E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABB95605E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 18:43:18 +0000 (UTC)
X-CSE-ConnectionGUID: 19yB3fP6T8iiOQXeDjsQUg==
X-CSE-MsgGUID: +v0lVBr1QOy10kXoYDm+Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="30991577"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="30991577"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 10:43:17 -0800
X-CSE-ConnectionGUID: raXNLF9STCSZ3L+EGIcBkA==
X-CSE-MsgGUID: 8X26kcgqTkOkjj6ucb7/rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="93238423"
Received: from lkp-server02.sh.intel.com (HELO f9eb7a33fd1e) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 14 Nov 2024 10:43:16 -0800
Received: from kbuild by f9eb7a33fd1e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tBeoE-00002l-07
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Nov 2024 18:43:14 +0000
Date: Fri, 15 Nov 2024 02:42:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411150228.5ru6qcRo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731609798; x=1763145798;
 h=date:from:to:subject:message-id;
 bh=aYyZtX0amg3pIq1FBf4C7Kxqqa3/RdzjaJ7MSTOOdlM=;
 b=Xpx+GTSF0YQgWlF6HoU26z/Xka4qzQpFkJvHJjBMfQ6OqmM0BD2xhErM
 nPME/3WQX5rXv98Yz7A4cp4D/cVkpPaS5N30FFd+1nXeoPYKgg9qbCqWs
 oZE21vtPtpTxZTsYoJb/PO7ch5MxsacWWx6gvVK1eBob5ObWXjCnRchIV
 pXSPVZVeFuJ2GJp0PdJ+Lj/+ck2QHBnCP8mP5xDK9uoX8Pg9B2SoS5kIx
 8q5+AdJSeYm5wOlU7PLYwZOBTstJsmVyrBKZ3UT53ViTz8oUt0zv26jxe
 yhjqAF9Um65NXwtquJHV0hDUm9OscSqpY0BJyqVtqpcwE9kyf/4JyQ7c5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xpx+GTSF
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 182ff3dabe8f127049c09660346cad492bcc0ceb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 182ff3dabe8f127049c09660346cad492bcc0ceb  idpf: add lock class key

elapsed time: 1044m

configs tested: 144
configs skipped: 21

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-13.2.0
arc                        nsimosci_defconfig    gcc-13.2.0
arc                   randconfig-001-20241114    gcc-13.2.0
arc                   randconfig-002-20241114    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    clang-14
arm                         lpc32xx_defconfig    clang-20
arm                   randconfig-001-20241114    gcc-14.2.0
arm                   randconfig-002-20241114    gcc-14.2.0
arm                   randconfig-003-20241114    gcc-14.2.0
arm                   randconfig-004-20241114    clang-14
arm                         vf610m4_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241114    clang-20
arm64                 randconfig-002-20241114    gcc-14.2.0
arm64                 randconfig-003-20241114    gcc-14.2.0
arm64                 randconfig-004-20241114    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241114    gcc-14.2.0
csky                  randconfig-002-20241114    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    clang-20
hexagon               randconfig-001-20241114    clang-20
hexagon               randconfig-002-20241114    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241114    clang-19
i386        buildonly-randconfig-002-20241114    gcc-11
i386        buildonly-randconfig-003-20241114    gcc-12
i386        buildonly-randconfig-004-20241114    gcc-12
i386        buildonly-randconfig-005-20241114    gcc-12
i386        buildonly-randconfig-006-20241114    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241114    gcc-12
i386                  randconfig-002-20241114    gcc-12
i386                  randconfig-003-20241114    clang-19
i386                  randconfig-004-20241114    gcc-12
i386                  randconfig-005-20241114    clang-19
i386                  randconfig-006-20241114    clang-19
i386                  randconfig-011-20241114    clang-19
i386                  randconfig-012-20241114    gcc-12
i386                  randconfig-013-20241114    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241114    gcc-14.2.0
loongarch             randconfig-002-20241114    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                          hp300_defconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241114    gcc-14.2.0
nios2                 randconfig-002-20241114    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20241114    gcc-14.2.0
parisc                randconfig-002-20241114    gcc-14.2.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc               randconfig-001-20241114    gcc-14.2.0
powerpc               randconfig-002-20241114    clang-14
powerpc               randconfig-003-20241114    gcc-14.2.0
powerpc64             randconfig-001-20241114    gcc-14.2.0
powerpc64             randconfig-002-20241114    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    clang-20
riscv                 randconfig-001-20241114    gcc-14.2.0
riscv                 randconfig-002-20241114    clang-14
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-20
s390                  randconfig-001-20241114    gcc-14.2.0
s390                  randconfig-002-20241114    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                    randconfig-001-20241114    gcc-14.2.0
sh                    randconfig-002-20241114    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20241114    gcc-14.2.0
sparc64               randconfig-002-20241114    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241114    gcc-11
um                    randconfig-002-20241114    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241114    gcc-12
x86_64      buildonly-randconfig-002-20241114    gcc-12
x86_64      buildonly-randconfig-003-20241114    gcc-11
x86_64      buildonly-randconfig-004-20241114    gcc-12
x86_64      buildonly-randconfig-005-20241114    gcc-12
x86_64      buildonly-randconfig-006-20241114    gcc-12
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241114    gcc-12
x86_64                randconfig-002-20241114    gcc-12
x86_64                randconfig-003-20241114    gcc-12
x86_64                randconfig-004-20241114    clang-19
x86_64                randconfig-005-20241114    clang-19
x86_64                randconfig-006-20241114    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241114    gcc-14.2.0
xtensa                randconfig-002-20241114    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
