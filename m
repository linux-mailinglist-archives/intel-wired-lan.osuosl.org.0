Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E0757526
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 09:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1E9981E91;
	Tue, 18 Jul 2023 07:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1E9981E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689664627;
	bh=ojwZFBdkD1YP9aKwwByESuK5vU46/Uas4dvoUSu78ww=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KOFgMmgh+ugG/jgSzrrkljSbdVlPdRTqSj18BQb2XLoRbLvpB54tcFg+uXr/u5tOr
	 DhlbxDJwOhroRVS1s3eUhQf6eYl4X1U2PL1X4fuSfJXIUwdjYmCnMXSFuxVFOj2jVj
	 Z/PuiD1SDG7i6Tcvyzg6v98BTzZqbzPpvZ/3PuXWdsSzNVfDnAiTGhF0XtfpaKp+IM
	 Vjmdf4zEzVWnH7d47d4cHuBY86FEsf0HbgdYFHSgtlV9ZdmmVj6blXUWB4bPMoYKao
	 hvb39Its9UIG5GZccOcLxvi+JjuD7HV3enn8MguTANbaw/nm765UmMGO4miRbWnBD5
	 XIiWPOlCenONQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cqTF8KhTZHMA; Tue, 18 Jul 2023 07:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9D72818A1;
	Tue, 18 Jul 2023 07:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9D72818A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 116921BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 07:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECC03818A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 07:16:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECC03818A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h1zG1nOVGb3R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 07:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE6A381E43
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE6A381E43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 07:16:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369686750"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369686750"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 00:16:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723497474"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723497474"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 00:16:51 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qLex1-0000K7-07
 for intel-wired-lan@lists.osuosl.org; Tue, 18 Jul 2023 07:16:51 +0000
Date: Tue, 18 Jul 2023 15:15:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307181554.S9f13bBp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689664615; x=1721200615;
 h=date:from:to:subject:message-id;
 bh=S7SHr1hTu3urFUDSuuaOgx4T+BJpod0siR7tU4bEPhI=;
 b=OKDgdW8F1mF2AeGB2VzoqyCcKuVADGpSrPyeVfbN5kVRVJIQQsdoyk9D
 jcDh3QIqTTrM+UnzB+2U3hhQQbXMNCDUXePI6Xh/rstJVAoCzamUvYpIc
 1UvTVyp8r+Ms1wLmlC4VZdTTFHr53cSiRgWDQuWhzUvzH39BNBOAS4krh
 2i5m4GBy9/9KRBK9Y3Ue/EFSLt6/mlB70WuWJOQ9R0b+Wt3XN/PaB7Eza
 E7piVcmafiCXVDcDNASaWekIna/b8cnb0ceejLQrOw1mMShGdyV/fp2Rf
 boZKDWE33gUc0hM6fBhonE1tAfXwmH38SQAPTdX7xjodZ81FCEVjscFKu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OKDgdW8F
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3a78e3e1ac7da2f416519fc52260761e563d9509
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 3a78e3e1ac7da2f416519fc52260761e563d9509  ice: add FW load wait

elapsed time: 722m

configs tested: 125
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                  randconfig-r043-20230717   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230717   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230717   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230717   gcc  
csky                 randconfig-r031-20230717   gcc  
hexagon              randconfig-r041-20230717   clang
hexagon              randconfig-r045-20230717   clang
i386                             allyesconfig   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230717   clang
i386         buildonly-randconfig-r005-20230717   clang
i386         buildonly-randconfig-r006-20230717   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230717   clang
i386                 randconfig-i002-20230717   clang
i386                 randconfig-i003-20230717   clang
i386                 randconfig-i004-20230717   clang
i386                 randconfig-i005-20230717   clang
i386                 randconfig-i006-20230717   clang
i386                 randconfig-i011-20230717   gcc  
i386                 randconfig-i012-20230717   gcc  
i386                 randconfig-i013-20230717   gcc  
i386                 randconfig-i014-20230717   gcc  
i386                 randconfig-i015-20230717   gcc  
i386                 randconfig-i016-20230717   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze           randconfig-r034-20230717   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                 randconfig-r025-20230717   clang
mips                          rb532_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230717   gcc  
nios2                randconfig-r011-20230716   gcc  
nios2                randconfig-r012-20230716   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230716   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                     mpc5200_defconfig   clang
powerpc                      ppc44x_defconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r003-20230717   clang
powerpc              randconfig-r022-20230717   gcc  
powerpc              randconfig-r036-20230717   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230717   clang
riscv                randconfig-r035-20230717   clang
riscv                randconfig-r042-20230717   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230717   gcc  
sh                               allmodconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r014-20230716   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230717   gcc  
sparc64              randconfig-r006-20230717   gcc  
sparc64              randconfig-r015-20230716   gcc  
sparc64              randconfig-r023-20230717   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230717   clang
x86_64       buildonly-randconfig-r002-20230717   clang
x86_64       buildonly-randconfig-r003-20230717   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r013-20230716   clang
x86_64               randconfig-r024-20230717   gcc  
x86_64               randconfig-x001-20230717   gcc  
x86_64               randconfig-x002-20230717   gcc  
x86_64               randconfig-x003-20230717   gcc  
x86_64               randconfig-x004-20230717   gcc  
x86_64               randconfig-x005-20230717   gcc  
x86_64               randconfig-x006-20230717   gcc  
x86_64               randconfig-x011-20230717   clang
x86_64               randconfig-x012-20230717   clang
x86_64               randconfig-x013-20230717   clang
x86_64               randconfig-x014-20230717   clang
x86_64               randconfig-x015-20230717   clang
x86_64               randconfig-x016-20230717   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
