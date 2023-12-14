Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEEB813D0E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 23:09:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF1C14223D;
	Thu, 14 Dec 2023 22:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF1C14223D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702591796;
	bh=OF5IdtxmkhvlVmRqF4jlkcWR8EF62InwKTLpJzQfFkY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=y0N2QaNxKoh9KdzrLlSvE23Y3tZQMmKvIMGiFFrXqJzlqZXr5KVh8lyeQ5sKdAb5P
	 Ys4y9NEfLoSTxLq5da6Zb0YlodRV4ad4K0wrmbwGN6xppK5oJ2kkpPT81d/4w+oII3
	 sAEL3mcIhhgpjyncf3tLe1tpi50LaEDxIEnTrg2qyRKegRNnGM+QIViWrM39JINPEF
	 16Xh82t8rwD3bY4YmQ5zdFXn7qC/NNXYo8khdzDsMgaibyXc4/PqhCN+rAB6bufcnV
	 aZxXz0w4yrM37hwtsC2E6qhoglDuuVPeWIBdgSyF95HS9Ofxze0R2EbnvV9T1bLmlo
	 2PpRPUs8/246w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5A9ihJdVIrBn; Thu, 14 Dec 2023 22:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CD6742222;
	Thu, 14 Dec 2023 22:09:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CD6742222
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4CC41BF405
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 22:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFB306F755
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 22:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFB306F755
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZtA5qw8p0KY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 22:05:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6DB36F6D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 22:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6DB36F6D2
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="461656874"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="461656874"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 14:05:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="16021308"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 14 Dec 2023 14:05:26 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rDtpc-000Mdt-0L
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Dec 2023 22:05:24 +0000
Date: Fri, 15 Dec 2023 06:05:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312150607.nUf29CPs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702591528; x=1734127528;
 h=date:from:to:subject:message-id;
 bh=FeZJt/dzJfNNmGEc01ph5uQziAlnSTEFPnlbOqjDoXM=;
 b=c+0fFDZfbeFCT1HYDEz1k/LWh7+RKL32w8gAc8iDahZgBnha8sFJGkuM
 fGjRnxJeOmKRPmywlpRNUv3D2dA2AUnupZVRkeYkt9ndKxspaEVdgZ7TZ
 ePRPy8mxgtmaxAHHdfp4Ot35WyBLujXTS+pRu3Lj7s5ytQ6SL7uBLi3gK
 8bPWN9wikBoACaaqCYrKYmq4LbEmy/qcKsFGnkbU9CBqADtff4unWRs0Y
 9oOJJumaGv6XQC2e5zr1nxBuNQbp9hVsnPJ3wh8xqXTTFiuR4Vg9DonZU
 29Y6wEpYFIUo3UYCHe5m6kLUjLlGWVzdMnh+0VvD4HBtIkchvbIdZmYIa
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c+0fFDZf
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 9b3daf2b0443eeba23c3888059342aec920dfd53
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
branch HEAD: 9b3daf2b0443eeba23c3888059342aec920dfd53  i40e: Fix ST code value for Clause 45

elapsed time: 1452m

configs tested: 206
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20231214   gcc  
arc                   randconfig-001-20231215   gcc  
arc                   randconfig-002-20231214   gcc  
arc                   randconfig-002-20231215   gcc  
arm                               allnoconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                                 defconfig   clang
arm                      footbridge_defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                   randconfig-001-20231214   gcc  
arm                   randconfig-002-20231214   gcc  
arm                   randconfig-003-20231214   gcc  
arm                   randconfig-004-20231214   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231214   gcc  
arm64                 randconfig-002-20231214   gcc  
arm64                 randconfig-003-20231214   gcc  
arm64                 randconfig-004-20231214   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231214   gcc  
csky                  randconfig-001-20231215   gcc  
csky                  randconfig-002-20231214   gcc  
csky                  randconfig-002-20231215   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231214   clang
hexagon               randconfig-002-20231214   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231214   gcc  
i386         buildonly-randconfig-002-20231214   gcc  
i386         buildonly-randconfig-003-20231214   gcc  
i386         buildonly-randconfig-004-20231214   gcc  
i386         buildonly-randconfig-005-20231214   gcc  
i386         buildonly-randconfig-006-20231214   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231214   gcc  
i386                  randconfig-002-20231214   gcc  
i386                  randconfig-003-20231214   gcc  
i386                  randconfig-004-20231214   gcc  
i386                  randconfig-005-20231214   gcc  
i386                  randconfig-006-20231214   gcc  
i386                  randconfig-011-20231214   clang
i386                  randconfig-011-20231215   gcc  
i386                  randconfig-012-20231214   clang
i386                  randconfig-012-20231215   gcc  
i386                  randconfig-013-20231214   clang
i386                  randconfig-013-20231215   gcc  
i386                  randconfig-014-20231214   clang
i386                  randconfig-014-20231215   gcc  
i386                  randconfig-015-20231214   clang
i386                  randconfig-015-20231215   gcc  
i386                  randconfig-016-20231214   clang
i386                  randconfig-016-20231215   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231214   gcc  
loongarch             randconfig-001-20231215   gcc  
loongarch             randconfig-002-20231214   gcc  
loongarch             randconfig-002-20231215   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                       rbtx49xx_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231214   gcc  
nios2                 randconfig-001-20231215   gcc  
nios2                 randconfig-002-20231214   gcc  
nios2                 randconfig-002-20231215   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231214   gcc  
parisc                randconfig-001-20231215   gcc  
parisc                randconfig-002-20231214   gcc  
parisc                randconfig-002-20231215   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 linkstation_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc               randconfig-001-20231214   gcc  
powerpc               randconfig-002-20231214   gcc  
powerpc               randconfig-003-20231214   gcc  
powerpc                     stx_gp3_defconfig   gcc  
powerpc64             randconfig-001-20231214   gcc  
powerpc64             randconfig-002-20231214   gcc  
powerpc64             randconfig-003-20231214   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231214   gcc  
riscv                 randconfig-002-20231214   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231214   clang
s390                  randconfig-001-20231215   gcc  
s390                  randconfig-002-20231214   clang
s390                  randconfig-002-20231215   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20231214   gcc  
sh                    randconfig-001-20231215   gcc  
sh                    randconfig-002-20231214   gcc  
sh                    randconfig-002-20231215   gcc  
sh                           se7750_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231214   gcc  
sparc64               randconfig-001-20231215   gcc  
sparc64               randconfig-002-20231214   gcc  
sparc64               randconfig-002-20231215   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231214   gcc  
um                    randconfig-002-20231214   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231214   gcc  
x86_64       buildonly-randconfig-002-20231214   gcc  
x86_64       buildonly-randconfig-003-20231214   gcc  
x86_64       buildonly-randconfig-004-20231214   gcc  
x86_64       buildonly-randconfig-005-20231214   gcc  
x86_64       buildonly-randconfig-006-20231214   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231214   clang
x86_64                randconfig-002-20231214   clang
x86_64                randconfig-003-20231214   clang
x86_64                randconfig-004-20231214   clang
x86_64                randconfig-005-20231214   clang
x86_64                randconfig-006-20231214   clang
x86_64                randconfig-011-20231214   gcc  
x86_64                randconfig-012-20231214   gcc  
x86_64                randconfig-013-20231214   gcc  
x86_64                randconfig-014-20231214   gcc  
x86_64                randconfig-015-20231214   gcc  
x86_64                randconfig-016-20231214   gcc  
x86_64                randconfig-071-20231214   gcc  
x86_64                randconfig-072-20231214   gcc  
x86_64                randconfig-073-20231214   gcc  
x86_64                randconfig-074-20231214   gcc  
x86_64                randconfig-075-20231214   gcc  
x86_64                randconfig-076-20231214   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20231214   gcc  
xtensa                randconfig-001-20231215   gcc  
xtensa                randconfig-002-20231214   gcc  
xtensa                randconfig-002-20231215   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
