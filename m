Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E5B730EEB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 08:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E5C383B22;
	Thu, 15 Jun 2023 06:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E5C383B22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686808806;
	bh=6h0Dz4XkH902TvpihDRE7Ddo07yQ2gR7Y73cjYVkj5M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ey0eCSeUw1H95ops5aU9Zj73FdxG300H6Qfi6TGHHfuLVW0WNWmp/Sxz/1BbFsbbR
	 sMA6p4lXCVX0SNKievFhjIhey/vFHIm8Wwj+TWHfWA2df68XEVYplZCeXVAvtsioSa
	 l4Ro15lLQkvuWY6KJ53vS6UIzhsOFXnKj4brQJgVf7UX/p5MWRbQ6dYm4k1qmYiZhe
	 6OELabF1tSEHe7aRdyyjTmAFqKz66Os8UUqjZpwQHFe2E2jZ4y/LQBd/U0PE1IhOmL
	 ftxUe0rFTzGuf+vJreDOpcaFActFt1vzmIRQ5uQ/0tqCgLQuJMYME8YwdIOdLyJYUT
	 Y3roDCRoyZ+8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynuyb0I5lU0C; Thu, 15 Jun 2023 06:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6E3183AB6;
	Thu, 15 Jun 2023 06:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6E3183AB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CF0D1BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 05:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51A1D83AB6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 05:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51A1D83AB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xsVBxcy3yHNN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 05:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DA8883AB1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DA8883AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 05:59:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="338447825"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="338447825"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 22:59:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="745356669"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="745356669"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 14 Jun 2023 22:59:46 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9g1J-0001Wp-21
 for intel-wired-lan@lists.osuosl.org; Thu, 15 Jun 2023 05:59:45 +0000
Date: Thu, 15 Jun 2023 13:59:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306151326.RU40bpZZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686808798; x=1718344798;
 h=date:from:to:subject:message-id;
 bh=Gb6B8ZnvegZuqOuEalntSAlu74jrNVe9QqNtfwfir54=;
 b=APoi8mfmiz+Wm5Jr9Hr39w+MyMLV+h45JqI4bYad3oeVDNd5eJLeXolR
 FrO6KyjUNbrUUEomLfdi7QmDoDEma9Fan+W1Qi4pavPSZi3lHX7lsq6S9
 1k4TiLWR3l0T3TYaXEMoIUPrOnoCFPYOTSVRFax6+r2CEIdzcACJv3v8X
 MzjEVWfngluUpP5pJs2O/noYVVK9dNBG6zOcZMhtGUIM61OWXfSLZv2zs
 C3DRGy/2ZYli9fSm2eYLxyqJftsrrF8rACj6BbDi7FqC68l+0Lf22wkLy
 Hh1VVDJkPM1nmAH0nMnhUE+jmdPC3wWkiMwQrQvbWjo/DH7XgngFM0/Z3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=APoi8mfm
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7527419088d42a3e00f527afcfc290481c777cc9
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
branch HEAD: 7527419088d42a3e00f527afcfc290481c777cc9  ice: reduce initial wait for control queue messages

elapsed time: 724m

configs tested: 100
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230614   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230614   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230612   gcc  
arm                  randconfig-r046-20230614   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230613   clang
csky         buildonly-randconfig-r002-20230614   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230614   clang
hexagon              randconfig-r045-20230614   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230614   clang
i386                 randconfig-i002-20230614   clang
i386                 randconfig-i003-20230614   clang
i386                 randconfig-i004-20230614   clang
i386                 randconfig-i005-20230614   clang
i386                 randconfig-i006-20230614   clang
i386                 randconfig-i011-20230612   gcc  
i386                 randconfig-i012-20230612   gcc  
i386                 randconfig-i013-20230612   gcc  
i386                 randconfig-i014-20230612   gcc  
i386                 randconfig-i015-20230612   gcc  
i386                 randconfig-i016-20230612   gcc  
i386                 randconfig-r024-20230613   clang
i386                 randconfig-r036-20230612   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230612   gcc  
loongarch            randconfig-r014-20230614   gcc  
loongarch            randconfig-r022-20230613   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230612   gcc  
m68k                 randconfig-r012-20230614   gcc  
microblaze           randconfig-r013-20230614   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230612   gcc  
mips                 randconfig-r023-20230613   gcc  
nios2        buildonly-randconfig-r005-20230614   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r016-20230614   gcc  
openrisc             randconfig-r035-20230612   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230614   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230612   clang
riscv                randconfig-r015-20230614   gcc  
riscv                randconfig-r042-20230614   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230614   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230614   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r033-20230612   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r006-20230614   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230613   gcc  
x86_64               randconfig-a002-20230613   gcc  
x86_64               randconfig-a003-20230613   gcc  
x86_64               randconfig-a004-20230613   gcc  
x86_64               randconfig-a005-20230613   gcc  
x86_64               randconfig-a006-20230613   gcc  
x86_64               randconfig-a011-20230614   gcc  
x86_64               randconfig-a012-20230614   gcc  
x86_64               randconfig-a013-20230614   gcc  
x86_64               randconfig-a014-20230614   gcc  
x86_64               randconfig-a015-20230614   gcc  
x86_64               randconfig-a016-20230614   gcc  
x86_64               randconfig-r032-20230612   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r031-20230612   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
