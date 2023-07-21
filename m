Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C152E75BEF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 08:35:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 342BF82234;
	Fri, 21 Jul 2023 06:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 342BF82234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689921300;
	bh=13KJVjwBIH/utsgFjrBYDDHsGxeOLfccY2wLcqxLf08=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s2C0nFbM5ukJxfwwoINY6pFLdfhxIjeWAibaDaXFvH20ZUbF4iqHfTegVBEKVQZ4x
	 GsDF3iQa7Lt5ob7ROPZ0kFKGlAAeMsXRbbcrjeEYFxgJpG4DcYy9g7ouMa4khzEMMA
	 85sQuw7qMaLa1S2M4rWOugJrr1XzQYckCiSpXQYWS+qK12X8sUHMxnpWmkB9Q+lYEn
	 2BEPSuEuXYOzL2bdrtu51DPwrSuMnNETAoOzxBsCgcFNc4fRWTLNUk7h3THaacb5Na
	 BAiJcFtEkV+Nl/1FkvEmcUvhauS9PU6VFDPg1sEJCzu+FSj/sTCk+9vkb0djUKKxqX
	 WZReUiGrMq1WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sSt7NTt4I0py; Fri, 21 Jul 2023 06:34:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7C6B82203;
	Fri, 21 Jul 2023 06:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7C6B82203
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81CBE1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 06:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5612C60A70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 06:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5612C60A70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M7zBvONpWy9b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 06:34:52 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A701607EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 06:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A701607EC
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="356935475"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="356935475"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 23:34:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="971327557"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="971327557"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2023 23:34:25 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qMjiK-0006y7-03
 for intel-wired-lan@lists.osuosl.org; Fri, 21 Jul 2023 06:34:10 +0000
Date: Fri, 21 Jul 2023 14:33:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307211410.Nj6JBASf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689921292; x=1721457292;
 h=date:from:to:subject:message-id;
 bh=h7KfdYhNmDqBaqcxHT9otyNqFcVr0a73mu3Kvb7oJkk=;
 b=f++v8F44NKH+Cd+DuslK33r7pdyCG6KT1e0aNghxeMoCy9UVZRqe9p6i
 kr+TLM+//wADhXGGnHklIBWguXYh3u0RJPWMjAh2b9AS4QJSwo/jMtkS7
 8sdfdY1G4H6X3P4YgVlIjjDzAVOpYPDQ1QOoUuhmA3DV3RDUkvypOCazE
 R+0xA4MVcNqUEsMOMcocGS3alEQOA26VCQ79pMbIv33y/IuG29JLqKQzA
 eioQID00jwij5yV8zQSG6R5L2zP50E67apAgXNJjj93WyVHM/1ek0Urv8
 xgDwTPuTRs1aU/KZruwVWtf5wEfXq3OW7xzYP0scMadxsScbgz00pAxvw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f++v8F44
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 414f268bc4acb8188c44fdb498ce5b9ac6f90f62
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 414f268bc4acb8188c44fdb498ce5b9ac6f90f62  ice: add tracepoints for the switchdev bridge

elapsed time: 720m

configs tested: 130
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                  randconfig-r022-20230720   gcc  
arc                  randconfig-r024-20230720   gcc  
arc                  randconfig-r043-20230720   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r035-20230720   clang
arm                  randconfig-r046-20230720   gcc  
arm                         s3c6400_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230720   clang
arm64                randconfig-r026-20230720   clang
csky                                defconfig   gcc  
csky                 randconfig-r005-20230720   gcc  
hexagon              randconfig-r021-20230720   clang
hexagon              randconfig-r022-20230720   clang
hexagon              randconfig-r036-20230720   clang
hexagon              randconfig-r041-20230720   clang
hexagon              randconfig-r045-20230720   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230720   gcc  
i386         buildonly-randconfig-r005-20230720   gcc  
i386         buildonly-randconfig-r006-20230720   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230720   gcc  
i386                 randconfig-i002-20230720   gcc  
i386                 randconfig-i003-20230720   gcc  
i386                 randconfig-i004-20230720   gcc  
i386                 randconfig-i005-20230720   gcc  
i386                 randconfig-i006-20230720   gcc  
i386                 randconfig-i011-20230720   clang
i386                 randconfig-i012-20230720   clang
i386                 randconfig-i013-20230720   clang
i386                 randconfig-i014-20230720   clang
i386                 randconfig-i015-20230720   clang
i386                 randconfig-i016-20230720   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r033-20230720   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230720   gcc  
m68k                 randconfig-r006-20230720   gcc  
m68k                 randconfig-r013-20230720   gcc  
m68k                 randconfig-r014-20230720   gcc  
microblaze                      mmu_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                 randconfig-r001-20230720   clang
mips                 randconfig-r034-20230720   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230720   gcc  
openrisc             randconfig-r011-20230720   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230720   gcc  
parisc               randconfig-r006-20230720   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r002-20230720   gcc  
powerpc              randconfig-r023-20230720   clang
powerpc              randconfig-r024-20230720   clang
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230720   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230720   gcc  
s390                 randconfig-r013-20230720   clang
s390                 randconfig-r015-20230720   clang
s390                 randconfig-r044-20230720   clang
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                   randconfig-r025-20230720   gcc  
sh                   randconfig-r031-20230720   gcc  
sh                          rsk7201_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r036-20230720   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230720   clang
um                   randconfig-r012-20230720   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230720   gcc  
x86_64       buildonly-randconfig-r002-20230720   gcc  
x86_64       buildonly-randconfig-r003-20230720   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r011-20230720   clang
x86_64               randconfig-r016-20230720   clang
x86_64               randconfig-x001-20230720   clang
x86_64               randconfig-x002-20230720   clang
x86_64               randconfig-x003-20230720   clang
x86_64               randconfig-x004-20230720   clang
x86_64               randconfig-x005-20230720   clang
x86_64               randconfig-x006-20230720   clang
x86_64               randconfig-x011-20230720   gcc  
x86_64               randconfig-x012-20230720   gcc  
x86_64               randconfig-x013-20230720   gcc  
x86_64               randconfig-x014-20230720   gcc  
x86_64               randconfig-x015-20230720   gcc  
x86_64               randconfig-x016-20230720   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r032-20230720   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
