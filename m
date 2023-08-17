Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EAA77FAA3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 17:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7AB9418EB;
	Thu, 17 Aug 2023 15:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7AB9418EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692285692;
	bh=nc+IQrF5HhqI0oD1AhpyaPgwdekInF1P2ik6x9tBlrQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OK0MXbQDMncZFR1kIlfDUNVHVb8m7n7ydh602vpH2FXeKWqf6rZ6ZwQ1EPCyRLly/
	 8r6mJ1SKCg22FTsnw6iB9zcbW5DNLPutyiyX7AlwSru9bAyn1rngBFfOlvCAlVjR8j
	 vw8n3rliMN24EyYTp1CI0Rjhr1plq50Kn5iX9/DUzmu8gOPcFGo35dcNaaYP7uC9vT
	 SqRYisze279b64qYd/BV5dhzDolcUMWdLKAiNYLyaqIPO40Apr1PfFcWBUmaLX+DBB
	 AMaj8S2hDZ7QCnO7TSvS4RXdtEVyT6+bihkBTNablv4pnc2soaeXSmDtkpTT7e4gsQ
	 6BrG1s8rujitA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SS4bvSxTnOE; Thu, 17 Aug 2023 15:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97E53418DF;
	Thu, 17 Aug 2023 15:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97E53418DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EE411BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 15:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77936418DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 15:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77936418DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VmEjcBMdOr9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 15:21:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98534418CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 15:21:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98534418CE
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="436757813"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="436757813"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711591791"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711591791"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 17 Aug 2023 08:21:21 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWeoK-0001GT-1S
 for intel-wired-lan@lists.osuosl.org; Thu, 17 Aug 2023 15:21:20 +0000
Date: Thu, 17 Aug 2023 23:20:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308172331.YaSuEMjH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692285682; x=1723821682;
 h=date:from:to:subject:message-id;
 bh=oZVKwr6VDVcLMC9+rWhXVj5H7bhFRJJiFA46+pcqv9U=;
 b=lhjoAlbRZ0UDzLmKkEYaZv4LuclUKYy05BgK7eREIEP/uMnuydscbyNu
 SeuDinQ0GAldCmcYXmrtjcvgDv7aoJ91QP1/UjLL1fYs6uzyaOi0Ep/ai
 f2zIIrRDFsGc23LZ1XYq/+wxXFLKun+em313S1avuQtS4hCe0c34qkx91
 8s3ppF7GgieT+BYAkNTnZI8Tts6seOutlcW4L8jjjjC+QSvheGMwQhLhP
 GJCQJAjOPTwc+qmE8fZ1tVXKbQoclwe/Uuk19K+SEq17O2pj7Yx4ZQcTq
 O58QiKjo3mqHaBSYHjXOXvcHOR35Ln3mCG80mkZETuGihfnKAEX/KAuYs
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lhjoAlbR
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 2f2beb8874cb0844e84ad26e990f05f4f13ff63f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 2f2beb8874cb0844e84ad26e990f05f4f13ff63f  i40e: fix misleading debug logs

elapsed time: 979m

configs tested: 159
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230817   gcc  
alpha                randconfig-r006-20230817   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r022-20230817   gcc  
arc                  randconfig-r025-20230817   gcc  
arc                  randconfig-r043-20230817   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                  randconfig-r033-20230817   gcc  
arm                  randconfig-r046-20230817   clang
arm                           stm32_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230817   gcc  
arm64                randconfig-r023-20230817   gcc  
arm64                randconfig-r024-20230817   gcc  
csky                             alldefconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r005-20230817   gcc  
csky                 randconfig-r031-20230817   gcc  
hexagon              randconfig-r006-20230817   clang
hexagon              randconfig-r034-20230817   clang
hexagon              randconfig-r041-20230817   clang
hexagon              randconfig-r045-20230817   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230817   clang
i386         buildonly-randconfig-r005-20230817   clang
i386         buildonly-randconfig-r006-20230817   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230817   clang
i386                 randconfig-i002-20230817   clang
i386                 randconfig-i003-20230817   clang
i386                 randconfig-i004-20230817   clang
i386                 randconfig-i005-20230817   clang
i386                 randconfig-i006-20230817   clang
i386                 randconfig-i011-20230817   gcc  
i386                 randconfig-i012-20230817   gcc  
i386                 randconfig-i013-20230817   gcc  
i386                 randconfig-i014-20230817   gcc  
i386                 randconfig-i015-20230817   gcc  
i386                 randconfig-i016-20230817   gcc  
i386                 randconfig-r024-20230817   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230817   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze           randconfig-r001-20230817   gcc  
microblaze           randconfig-r026-20230817   gcc  
microblaze           randconfig-r032-20230817   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ci20_defconfig   gcc  
mips                       lemote2f_defconfig   clang
mips                     loongson1c_defconfig   clang
mips                        maltaup_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                 randconfig-r002-20230817   gcc  
mips                 randconfig-r013-20230817   clang
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230817   gcc  
nios2                randconfig-r013-20230817   gcc  
nios2                randconfig-r015-20230817   gcc  
nios2                randconfig-r036-20230817   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r004-20230817   gcc  
openrisc             randconfig-r014-20230817   gcc  
openrisc             randconfig-r021-20230817   gcc  
openrisc             randconfig-r022-20230817   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230817   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc              randconfig-r015-20230817   gcc  
powerpc                     redwood_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230817   gcc  
riscv                randconfig-r013-20230817   gcc  
riscv                randconfig-r036-20230817   clang
riscv                randconfig-r042-20230817   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230817   clang
s390                 randconfig-r044-20230817   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                   randconfig-r011-20230817   gcc  
sh                   randconfig-r023-20230817   gcc  
sh                   randconfig-r034-20230817   gcc  
sh                          rsk7269_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230817   gcc  
sparc                randconfig-r023-20230817   gcc  
sparc                randconfig-r026-20230817   gcc  
sparc                       sparc64_defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230817   gcc  
um                   randconfig-r016-20230817   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230817   clang
x86_64       buildonly-randconfig-r002-20230817   clang
x86_64       buildonly-randconfig-r003-20230817   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r003-20230817   clang
x86_64               randconfig-r014-20230817   gcc  
x86_64               randconfig-r022-20230817   gcc  
x86_64               randconfig-r035-20230817   clang
x86_64               randconfig-x001-20230817   gcc  
x86_64               randconfig-x002-20230817   gcc  
x86_64               randconfig-x003-20230817   gcc  
x86_64               randconfig-x004-20230817   gcc  
x86_64               randconfig-x005-20230817   gcc  
x86_64               randconfig-x006-20230817   gcc  
x86_64               randconfig-x011-20230817   clang
x86_64               randconfig-x012-20230817   clang
x86_64               randconfig-x013-20230817   clang
x86_64               randconfig-x014-20230817   clang
x86_64               randconfig-x015-20230817   clang
x86_64               randconfig-x016-20230817   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                          iss_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
