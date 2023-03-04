Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A776AA9B9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 14:01:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A090605DB;
	Sat,  4 Mar 2023 13:01:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A090605DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677934867;
	bh=sHDL0GiQ09g5b4HetHHcqa/yjlZ2BI6398WbyYO/kXA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A4/+/BFziYoBFOuSG9O9UUVcbsRb4PowsUS4VHg5wSAKFhUJlalcWblEMsu4hNOJt
	 edOYOWVHiZ28LjVUVAmmB9Yu+4hpgJe9KIkvv0F3OalmQ4WB8ITkVrnc+auPVFkFjM
	 pTzBJAuveTxwqE8GP6mjKwUKzBaw+27EVHmIP1RjdOiccds7tJmaSayHvH1rcLVlel
	 cMO0A0wbEUzW59wyhxvwWyH7Viok+k+YM4lphif7CzCNJk+rsbcHsjVJCMehdFI8zq
	 T7XiRI4flFfkRd4z+P60W7m+YR3HEa5Qj7cQoEeuiw1cG6lqaiDm73ViVAac66sVpg
	 agxbyxx47J1PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAYI7jxpHLV8; Sat,  4 Mar 2023 13:01:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 467EB60692;
	Sat,  4 Mar 2023 13:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 467EB60692
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC3861BF239
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 13:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95FD781E30
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 13:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95FD781E30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niN7wLr5HQjH for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 13:00:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEE0081E3F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEE0081E3F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 13:00:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="332735560"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="332735560"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 05:00:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="1004882015"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="1004882015"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2023 05:00:54 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYRVN-0002Aq-1D;
 Sat, 04 Mar 2023 13:00:53 +0000
Date: Sat, 04 Mar 2023 21:00:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640340ee.84Xb9H6hHbONRBaJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677934855; x=1709470855;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=syOnRMx3w5YM40YcvVFCgnrOVePJZJZq8cFxojAoeOQ=;
 b=J0gJfq+6DuwTq4iBYWLi4JuxCv8eXMQK403b8cpF9CD25Z8t9mBz51YN
 J8Rd1Y9CpGzuBVfF2fWmXEQlxFU2CvB+6faPBiMc1P4kKaA0CXTMKc5KZ
 stxYwgUFFGmF2jodhEdyQ1XC3yFO8zkxDEXCX5SQF751N35Zg2EgCOIj0
 pmpLJt6b+kQw3fJtG+Ta9T1yp7wlKfY/W2wsX4uNp37O8lDibOLA15+2O
 MaIIqjW4zBDcauilkXq5Qau5fTptH5a+VluOsd/zjqQDJoLlR8Vo1wg84
 4sPfYJvik9fZbMmt3Lf4wCC/qj0RGgQr5EIkIzmw0tyjNnvRmerItggmk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J0gJfq+6
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 ad93bab6b8d3bfeae4a0158eaabd61bb0b2fbb79
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: ad93bab6b8d3bfeae4a0158eaabd61bb0b2fbb79  Merge tag 'ieee802154-for-net-2023-03-02' of git://git.kernel.org/pub/scm/linux/kernel/git/wpan/wpan

elapsed time: 1766m

configs tested: 240
configs skipped: 23

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230302   gcc  
alpha        buildonly-randconfig-r006-20230302   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230302   gcc  
alpha                randconfig-r015-20230302   gcc  
alpha                randconfig-r015-20230303   gcc  
alpha                randconfig-r033-20230302   gcc  
alpha                randconfig-r034-20230302   gcc  
alpha                randconfig-r036-20230302   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230302   gcc  
arc          buildonly-randconfig-r006-20230302   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230302   gcc  
arc                  randconfig-r014-20230302   gcc  
arc                  randconfig-r043-20230302   gcc  
arc                  randconfig-r043-20230303   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                  randconfig-c002-20230302   gcc  
arm                  randconfig-r001-20230302   clang
arm                  randconfig-r012-20230303   clang
arm                  randconfig-r013-20230303   clang
arm                  randconfig-r015-20230302   gcc  
arm                  randconfig-r024-20230302   gcc  
arm                  randconfig-r032-20230302   clang
arm                  randconfig-r033-20230302   clang
arm                  randconfig-r036-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm                  randconfig-r046-20230303   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230302   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230302   gcc  
arm64                randconfig-r013-20230302   clang
arm64                randconfig-r013-20230303   gcc  
arm64                randconfig-r025-20230302   clang
arm64                randconfig-r032-20230302   gcc  
arm64                randconfig-r034-20230302   gcc  
csky         buildonly-randconfig-r002-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r014-20230302   gcc  
csky                 randconfig-r015-20230302   gcc  
csky                 randconfig-r016-20230302   gcc  
csky                 randconfig-r016-20230303   gcc  
csky                 randconfig-r021-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
csky                 randconfig-r034-20230302   gcc  
csky                 randconfig-r035-20230302   gcc  
hexagon      buildonly-randconfig-r005-20230302   clang
hexagon              randconfig-r021-20230302   clang
hexagon              randconfig-r031-20230302   clang
hexagon              randconfig-r035-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r041-20230303   clang
hexagon              randconfig-r045-20230302   clang
hexagon              randconfig-r045-20230303   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230302   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230302   gcc  
ia64                 randconfig-r011-20230303   gcc  
ia64                 randconfig-r012-20230302   gcc  
ia64                 randconfig-r013-20230302   gcc  
ia64                 randconfig-r013-20230303   gcc  
ia64                 randconfig-r016-20230303   gcc  
ia64                 randconfig-r033-20230302   gcc  
ia64                 randconfig-r036-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r012-20230302   gcc  
loongarch            randconfig-r014-20230303   gcc  
loongarch            randconfig-r016-20230303   gcc  
loongarch            randconfig-r032-20230302   gcc  
loongarch            randconfig-r035-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230302   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r002-20230302   gcc  
m68k                 randconfig-r006-20230302   gcc  
m68k                 randconfig-r011-20230303   gcc  
m68k                 randconfig-r013-20230302   gcc  
m68k                 randconfig-r014-20230302   gcc  
m68k                 randconfig-r016-20230302   gcc  
m68k                 randconfig-r026-20230302   gcc  
m68k                 randconfig-r035-20230302   gcc  
microblaze   buildonly-randconfig-r001-20230302   gcc  
microblaze   buildonly-randconfig-r003-20230302   gcc  
microblaze           randconfig-r011-20230302   gcc  
microblaze           randconfig-r015-20230302   gcc  
microblaze           randconfig-r023-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
mips                      maltasmvp_defconfig   gcc  
mips                 randconfig-r003-20230302   clang
mips                 randconfig-r015-20230302   gcc  
mips                 randconfig-r015-20230303   clang
mips                 randconfig-r016-20230302   gcc  
mips                 randconfig-r034-20230302   clang
mips                          rb532_defconfig   gcc  
nios2        buildonly-randconfig-r004-20230302   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230302   gcc  
nios2                randconfig-r014-20230302   gcc  
nios2                randconfig-r031-20230302   gcc  
nios2                randconfig-r033-20230302   gcc  
openrisc     buildonly-randconfig-r001-20230302   gcc  
openrisc     buildonly-randconfig-r002-20230302   gcc  
openrisc             randconfig-r011-20230302   gcc  
openrisc             randconfig-r012-20230302   gcc  
openrisc             randconfig-r012-20230303   gcc  
openrisc             randconfig-r013-20230302   gcc  
openrisc             randconfig-r014-20230303   gcc  
openrisc             randconfig-r025-20230302   gcc  
openrisc             randconfig-r032-20230302   gcc  
openrisc             randconfig-r033-20230302   gcc  
openrisc             randconfig-r035-20230302   gcc  
parisc       buildonly-randconfig-r003-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230302   gcc  
parisc               randconfig-r004-20230302   gcc  
parisc               randconfig-r005-20230302   gcc  
parisc               randconfig-r006-20230302   gcc  
parisc               randconfig-r016-20230302   gcc  
parisc               randconfig-r024-20230302   gcc  
parisc               randconfig-r031-20230302   gcc  
parisc               randconfig-r033-20230302   gcc  
parisc               randconfig-r034-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc      buildonly-randconfig-r002-20230302   clang
powerpc                      chrp32_defconfig   gcc  
powerpc                     pq2fads_defconfig   gcc  
powerpc              randconfig-r013-20230303   gcc  
powerpc              randconfig-r024-20230302   clang
powerpc              randconfig-r031-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230302   clang
riscv        buildonly-randconfig-r006-20230302   clang
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                randconfig-r002-20230302   gcc  
riscv                randconfig-r012-20230303   gcc  
riscv                randconfig-r016-20230303   gcc  
riscv                randconfig-r042-20230302   clang
riscv                randconfig-r042-20230303   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230302   clang
s390                                defconfig   gcc  
s390                 randconfig-r005-20230302   gcc  
s390                 randconfig-r013-20230302   clang
s390                 randconfig-r015-20230303   gcc  
s390                 randconfig-r016-20230302   clang
s390                 randconfig-r021-20230302   clang
s390                 randconfig-r036-20230302   gcc  
s390                 randconfig-r044-20230302   clang
s390                 randconfig-r044-20230303   gcc  
sh                               allmodconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh           buildonly-randconfig-r006-20230302   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r002-20230302   gcc  
sh                   randconfig-r003-20230302   gcc  
sh                   randconfig-r011-20230302   gcc  
sh                   randconfig-r014-20230302   gcc  
sh                   randconfig-r036-20230302   gcc  
sh                          rsk7203_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230302   gcc  
sparc        buildonly-randconfig-r003-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230302   gcc  
sparc                randconfig-r003-20230302   gcc  
sparc                randconfig-r011-20230302   gcc  
sparc                randconfig-r026-20230302   gcc  
sparc                randconfig-r031-20230302   gcc  
sparc64              randconfig-r005-20230302   gcc  
sparc64              randconfig-r013-20230302   gcc  
sparc64              randconfig-r015-20230302   gcc  
sparc64              randconfig-r032-20230302   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-c001   gcc  
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230302   gcc  
xtensa               randconfig-r025-20230302   gcc  
xtensa               randconfig-r026-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
