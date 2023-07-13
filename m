Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6D5751D03
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 11:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFEC84203E;
	Thu, 13 Jul 2023 09:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFEC84203E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689239881;
	bh=VLkmYxTO45o6MiwOa21Qzh/jnHTt0BYfA3GtP2lIoC8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WPN2i1jM0OFisLddySW1rP5njKboiojT/N7K2pBaYmJPVllYh22g+1mjKfKy8GpUT
	 OZxcAuZpUwmi8YkrpaqOK5lhtpCJNBoDtXgvGMev9dLfRsrhKqixU14cfcfgfLNBVU
	 /o/qeGton0hoMSXo+XxAPfAeOznV77NfjHl9EDELeBpe94S7GLJWgRk+EaaBfZKOij
	 eT1xYZRorXR5+g5ZWqNRBz+72MsR/UR4wvvhJpG1oivMY7x9ITmKidRjPSR06byxb0
	 gf3YXL8SdOry3pgVYT1Uv6mtyB8fMV7i26XSeafBOFStn3Sq3Aaz0CQ3gjt7jRO5z5
	 OjP+aEoZOVFwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m61HPGCDm1jn; Thu, 13 Jul 2023 09:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 288E74202B;
	Thu, 13 Jul 2023 09:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 288E74202B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B49D1BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 09:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 427E540184
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 09:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 427E540184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f2SQgT-GN4G2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 09:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DA4D400C6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2DA4D400C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 09:17:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="344728715"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="344728715"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 02:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="1052544067"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="1052544067"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2023 02:17:47 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJsSJ-0006TJ-0n
 for intel-wired-lan@lists.osuosl.org; Thu, 13 Jul 2023 09:17:47 +0000
Date: Thu, 13 Jul 2023 17:17:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307131714.c91CWUYM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689239874; x=1720775874;
 h=date:from:to:subject:message-id;
 bh=+fo3cvRhoi/KG2Vn1BeRK4hQa+DAWA0tGeeBhFU5jWc=;
 b=hC/yldjvR828SD8z6GcJ23V/ZlR5YOn97Pd1D2FBub2b62wTmhHCVJml
 LFD4aE13G0l0seic5yUxA1L+e6EQaWoZzPs55Bv6g0u2Cb8O79HfPsl9K
 W4R/Tgd84fpavrj8M8Bfvv2K96YieEVjOMFkFRzx3VP8L7+yg/oSUKQdB
 Eh5y/Y6frIoAb30bQ1gA8+aEg1WR+lpf3mKyqxEJpERh6gKdXC0LEtaRf
 DQ1De1kiukeuzVHg0zucZv5L6gzkG/gihiSXL95yA2cKuFTXHR2L1DRWg
 qpAuIR5qznUUt2+M4CK1Qf+Mynry8alcpYxslz9j4HEiAo8AKga/40XJt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hC/yldjv
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 aec92bed8cd961f6bd58afc546bd0c08492af9ad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: aec92bed8cd961f6bd58afc546bd0c08492af9ad  i40e: Fix VF reset recognition

elapsed time: 720m

configs tested: 115
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230713   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230712   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r033-20230712   clang
arm                  randconfig-r036-20230712   clang
arm                  randconfig-r046-20230712   gcc  
arm                             rpc_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r035-20230712   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230713   gcc  
csky                 randconfig-r032-20230712   gcc  
hexagon              randconfig-r041-20230712   clang
hexagon              randconfig-r045-20230712   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230712   gcc  
i386         buildonly-randconfig-r005-20230712   gcc  
i386         buildonly-randconfig-r006-20230712   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230712   gcc  
i386                 randconfig-i002-20230712   gcc  
i386                 randconfig-i003-20230712   gcc  
i386                 randconfig-i004-20230712   gcc  
i386                 randconfig-i005-20230712   gcc  
i386                 randconfig-i006-20230712   gcc  
i386                 randconfig-i011-20230713   gcc  
i386                 randconfig-i012-20230713   gcc  
i386                 randconfig-i013-20230713   gcc  
i386                 randconfig-i014-20230713   gcc  
i386                 randconfig-i015-20230713   gcc  
i386                 randconfig-i016-20230713   gcc  
i386                 randconfig-r003-20230713   clang
i386                 randconfig-r006-20230713   clang
i386                 randconfig-r024-20230712   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r031-20230712   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r001-20230713   gcc  
microblaze           randconfig-r012-20230713   gcc  
microblaze           randconfig-r015-20230713   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                     loongson1c_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230713   gcc  
nios2                randconfig-r005-20230713   gcc  
openrisc             randconfig-r022-20230712   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230713   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230712   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230712   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r014-20230713   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230712   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64              randconfig-r023-20230712   gcc  
sparc64              randconfig-r026-20230712   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r025-20230712   gcc  
um                   randconfig-r034-20230712   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230712   gcc  
x86_64       buildonly-randconfig-r002-20230712   gcc  
x86_64       buildonly-randconfig-r003-20230712   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230712   clang
x86_64               randconfig-x002-20230712   clang
x86_64               randconfig-x003-20230712   clang
x86_64               randconfig-x004-20230712   clang
x86_64               randconfig-x005-20230712   clang
x86_64               randconfig-x006-20230712   clang
x86_64               randconfig-x011-20230712   gcc  
x86_64               randconfig-x012-20230712   gcc  
x86_64               randconfig-x013-20230712   gcc  
x86_64               randconfig-x014-20230712   gcc  
x86_64               randconfig-x015-20230712   gcc  
x86_64               randconfig-x016-20230712   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230713   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
