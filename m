Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD17A77EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 11:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D913D81E4C;
	Wed, 20 Sep 2023 09:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D913D81E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695203461;
	bh=hKfv1Tci5dK00G0BQEGmZYDpuexmP1fbD/EB/jlZ1Hg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jIOeDT6+5EzBZw/zO8kneGH+UgsYo/fatgy+uIGMSIG7NGlvxA1gdjhhLDeGliqsx
	 MxQxGhM7OZwi5JA/E7Iu32RFPPBcbk+YeJANr7W28zrx0lrv7L/dwwDtm4I1ucHRzP
	 LL/AMJc+kfux+HFcXM0q1udpUzXzwa9Nmwnc0LPGG4tLecy99nC5HHVKGl0cd+tdXQ
	 bZ85bKPQGhqICbE0nRIDOi70TKPv7Hsow1RSbd/MXDY/IU5IeiqPd/okojjAFb8RaI
	 pHAzqV+M9bOueGu8YvOSzLHBdn+q0EA4/rXB6iaDkC3Tf1jdL1pUmoNuxLRwOkrY2M
	 stH5kpx8wJUuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncesCu04DYdj; Wed, 20 Sep 2023 09:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 269D481E09;
	Wed, 20 Sep 2023 09:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 269D481E09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91EC71BF427
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 09:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65DC360D58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 09:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65DC360D58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2gVXQNktCM5S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 09:50:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6BEF60B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 09:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6BEF60B1B
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="384024258"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="384024258"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836784664"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836784664"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Sep 2023 02:50:51 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qitr7-0008bq-2K
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Sep 2023 09:50:49 +0000
Date: Wed, 20 Sep 2023 17:50:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309201733.6FvmcX3C-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695203453; x=1726739453;
 h=date:from:to:subject:message-id;
 bh=U3nnRimj/fL3/UNey4LFxG9DrkAGC2mxzwr+UowZtfQ=;
 b=LLdWk9kQ1mGDli6l5d459MTi58bm72q98kbGWWhTrSSgRCqKN67DnOWB
 FfACXX0K6wBbb//pIqd6pt/K2t5LiScNQOJczpa3o0u4UPL/Ax42C7dNr
 qz9b5BgJeBPzYHp+rA2kUA3LIj3o9KojRvvEwJEDmOSZZmnEQmYCH9bE1
 5+PTjbAhGSvqBVq692XNwQd6bl6VBabXSfropCVqqXTHijbyLnUUQpgHd
 VcF/SogRoQvNda3zP8flK0qqJ3fzgLL7MRsSd4o4N5y3fWh1Y+AalTIbx
 aKIRHUKTVmwo6N5lTHxxJma6o2hDW7tPYneOFABqPC5R2qDAC105d3SHz
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LLdWk9kQ
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS WITH
 WARNING 5bed8d585aa1db1651745173a66e32df82a5cb05
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 5bed8d585aa1db1651745173a66e32df82a5cb05  Merge branch 'add-wed-support-for-mt7988-chipset'

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202309200607.eC7wVSd1-lkp@intel.com

Warning: (recently discovered and may have been fixed)

include/asm-generic/rwonce.h:44:26: warning: array subscript 0 is outside array bounds of '__u8[0]' {aka 'unsigned char[]'} [-Warray-bounds=]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-defconfig
|   `-- include-asm-generic-rwonce.h:warning:array-subscript-is-outside-array-bounds-of-__u8-aka-unsigned-char
|-- microblaze-defconfig
|   `-- include-asm-generic-rwonce.h:warning:array-subscript-is-outside-array-bounds-of-__u8-aka-unsigned-char
|-- nios2-defconfig
|   `-- include-asm-generic-rwonce.h:warning:array-subscript-is-outside-array-bounds-of-__u8-aka-unsigned-char
|-- nios2-randconfig-002-20230920
|   `-- include-asm-generic-rwonce.h:warning:array-subscript-is-outside-array-bounds-of-__u8-aka-unsigned-char
`-- openrisc-defconfig
    `-- include-asm-generic-rwonce.h:warning:array-subscript-is-outside-array-bounds-of-__u8-aka-unsigned-char

elapsed time: 965m

configs tested: 100
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230920   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                   randconfig-001-20230920   gcc  
arm                         socfpga_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-006-20230920   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230920   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                  mpc866_ads_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230920   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230920   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230920   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-006-20230920   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
