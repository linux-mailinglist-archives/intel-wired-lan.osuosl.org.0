Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29A46B39C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 10:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DE7041163;
	Fri, 10 Mar 2023 09:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DE7041163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678439540;
	bh=Z5vQNcKC1+aB1eC8HsDCEX1Z8lxVCsO9CU8vlvbrNJQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6roDBX+hrpfStBQh7gg7skbnCel+i696596G8Lu8EFgHZBl08AIn8XnVpf+kiXXb3
	 LQ4ZGoQMEBCOZoy+WBdMpBOw7rSoAr8d1lM3VuD5DCPb4dwOJ5zDWz9TdBQkqrrqeg
	 VTVgmctM95ej4JlfTHY5Dt25ALBDE7+XkScoMEGECTm3sdVHNaAnHmn5bcbC3NaXQl
	 upZgBXAooIzrGNQMDhO2dY2czMDaa7uPH3ZUXi0boxmeFxAJ5Kgp8BkIXGJ4GElw+s
	 YvBrTdYiFM8rTBcnJ1vqeBWl9yDcJKKE/Ag6sGkJx+DAeGWRFJVm2SnUVkIPauXEfc
	 aygIPrjGNPH3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LIM2Pi79dRJV; Fri, 10 Mar 2023 09:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EF1D402D4;
	Fri, 10 Mar 2023 09:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EF1D402D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5071BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 09:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5646C821CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 09:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5646C821CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iOXzGGhzZ4fo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 09:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F6B882135
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F6B882135
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 09:12:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="325037915"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="325037915"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 01:12:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="627743257"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="627743257"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Mar 2023 01:12:11 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paYnK-0003gj-33;
 Fri, 10 Mar 2023 09:12:10 +0000
Date: Fri, 10 Mar 2023 17:11:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640af432.EajsGmMQOhdUN/cf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678439533; x=1709975533;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vgMrCK/n6Xc/9D0/J5iey+tghgKN2GyS6TJ6yye1nP8=;
 b=i2xo+qLkLEfl79dVcfN2GVGHP5bldbqZ/gjpiQRgIIf2SR9a400tb/9I
 44soSSfPQyZIIIJ9abEFVYvUsPbjTDCAxn380LO4HaYn4/at9hIW8s0Nq
 n1G5FRXjuu3Ii6ZUEYdI4zIn5eGqklfvFfhFH67YzULflJx/UwnmzItWy
 I8Q/Lb9fUI2bV5VcOAHYKkZtI8ubJr+OHVpCrDpWWYzXdIa+hQdugh0p+
 7H0bcArVycE0Pfst63RKM7L7aiv1aHAqGKJJmXTmIpXKL4qQ1gRXiQVVU
 bweWqPfW7Y5nNOosKjwC9vEYoD6t3s3NtsDjJR7y1Oh6ZJGB65D+KZSyv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i2xo+qLk
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 db47fa2e4cbf180a39d8e6d6170962bd7d82e52d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: db47fa2e4cbf180a39d8e6d6170962bd7d82e52d  Merge branch 'sctp-add-another-two-stream-schedulers'

elapsed time: 1323m

configs tested: 141
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230308   gcc  
alpha                randconfig-r023-20230308   gcc  
alpha                randconfig-r031-20230308   gcc  
alpha                randconfig-r033-20230308   gcc  
alpha                randconfig-r035-20230308   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230308   gcc  
arc          buildonly-randconfig-r003-20230308   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                  randconfig-r003-20230308   gcc  
arc                  randconfig-r034-20230308   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230308   gcc  
arm                          collie_defconfig   clang
arm                                 defconfig   gcc  
arm                  randconfig-r024-20230308   gcc  
arm                  randconfig-r046-20230308   gcc  
arm                         vf610m4_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230309   clang
arm64                randconfig-r014-20230308   clang
arm64                randconfig-r016-20230308   clang
csky         buildonly-randconfig-r001-20230308   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230309   gcc  
csky                 randconfig-r006-20230308   gcc  
csky                 randconfig-r011-20230308   gcc  
hexagon              randconfig-r002-20230308   clang
hexagon              randconfig-r036-20230308   clang
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                         bigsur_defconfig   gcc  
ia64         buildonly-randconfig-r004-20230308   gcc  
ia64                                defconfig   gcc  
ia64                        generic_defconfig   gcc  
ia64                      gensparse_defconfig   gcc  
ia64                 randconfig-r021-20230308   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230308   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r022-20230308   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r004-20230309   gcc  
m68k                 randconfig-r006-20230309   gcc  
m68k                 randconfig-r016-20230308   gcc  
microblaze           randconfig-r001-20230308   gcc  
microblaze           randconfig-r002-20230309   gcc  
microblaze           randconfig-r005-20230309   gcc  
microblaze           randconfig-r012-20230308   gcc  
microblaze           randconfig-r016-20230308   gcc  
microblaze           randconfig-r021-20230308   gcc  
microblaze           randconfig-r026-20230308   gcc  
microblaze           randconfig-r032-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                      malta_kvm_defconfig   clang
mips                 randconfig-r001-20230309   gcc  
mips                 randconfig-r003-20230309   gcc  
mips                   sb1250_swarm_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230308   gcc  
nios2                randconfig-r023-20230308   gcc  
nios2                randconfig-r032-20230308   gcc  
openrisc                         alldefconfig   gcc  
parisc       buildonly-randconfig-r006-20230308   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230309   gcc  
parisc               randconfig-r013-20230308   gcc  
parisc               randconfig-r024-20230308   gcc  
parisc               randconfig-r025-20230308   gcc  
parisc               randconfig-r026-20230308   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc      buildonly-randconfig-r005-20230308   clang
powerpc                    gamecube_defconfig   clang
powerpc                       holly_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                 mpc832x_mds_defconfig   clang
powerpc                      pmac32_defconfig   clang
powerpc                     powernv_defconfig   clang
powerpc              randconfig-r012-20230308   clang
powerpc              randconfig-r013-20230308   clang
powerpc              randconfig-r033-20230308   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230308   clang
riscv                randconfig-r015-20230308   clang
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230308   clang
s390                 randconfig-r035-20230308   gcc  
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230308   gcc  
sh                        dreamcast_defconfig   gcc  
sh                   randconfig-r031-20230308   gcc  
sh                   randconfig-r036-20230308   gcc  
sh                           se7721_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230308   gcc  
sparc        buildonly-randconfig-r006-20230308   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230308   gcc  
sparc64      buildonly-randconfig-r002-20230308   gcc  
sparc64              randconfig-r004-20230309   gcc  
sparc64              randconfig-r013-20230308   gcc  
sparc64              randconfig-r022-20230308   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230308   gcc  
xtensa       buildonly-randconfig-r003-20230308   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
