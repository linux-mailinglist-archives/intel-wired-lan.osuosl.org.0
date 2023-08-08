Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EC0773A03
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 14:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8291A610FA;
	Tue,  8 Aug 2023 12:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8291A610FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691496192;
	bh=hLoscFGMNkVATFbYUyyDv175sMAF4ogwHp/O9aVVPPU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i3rrCWfBU6d+SL2jGBPP30r57H8SBpkmsydGsa1yXnHHnWkZpY8pH7CBXuTlS2XCP
	 csjr4UhwqNeEQKcOabPrHKJONj22kWtYXqClVvVHcyXnYI87MoVdSrrAbluPdQeUX7
	 lXjQTwEvn47RmSm6wGghJgUAQn5woAlqQrbvTc+QvxMJxmE7e9TzSSTCyAhzAPKC++
	 wUGRg6KBCHaifw4C6g747ZQfNyqqi8UNR/D9eAgyV4af9pXfpIwndO/DbsxKv33IU3
	 4vZ/BYE9y4dKUDW1tX1v9F1Pz81IAOriOuNezgJu7zDxKPCccPR31gC8/RIIQgqdnO
	 oB+u+wFyAwsAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUWFCkrNhf3g; Tue,  8 Aug 2023 12:03:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 347B0610E9;
	Tue,  8 Aug 2023 12:03:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 347B0610E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1924B1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 12:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E49C540B2E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 12:03:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E49C540B2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkFRp5tSvjjQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 12:02:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1B66400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 12:02:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1B66400C7
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="373551096"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="373551096"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 05:02:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="855076440"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="855076440"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Aug 2023 05:02:57 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qTLQO-0005KQ-28
 for intel-wired-lan@lists.osuosl.org; Tue, 08 Aug 2023 12:02:56 +0000
Date: Tue, 08 Aug 2023 20:02:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308082009.6gBpPUSd-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691496179; x=1723032179;
 h=date:from:to:subject:message-id;
 bh=+aYl/75CPWWwPBuFlczjuljVQ6Cq+6k2yLb/cbA9/BA=;
 b=FvQYWv5pGqf7G4kjFkd57K4zkr5oVx4zEVQuYTAktekuOG7DeZ+8RQ0R
 E50nTQYzXrmF5QXiWXHzy7TI52TeHWQPBRgVFfaFgDeQpjU0x+71srEDL
 e8xuL8XwUqHSg7fHwWnR85Ji9DDVs78R3mB4vBLvZUl3/ztrtf0VuBxrZ
 k9NnUI8Sc5wdJh1aENJHsMnBfGjrB3LytXBpULuyMNKRPxTRvP/HnGOck
 Q4tcby1UEq0r+U87/hs8MasWVJhjqe+ODK3/GRNSICfyxUY+cHy/+t1HG
 mO2UHaVhapTmSKPaHERLusDOQeH3aJEHrdC1W3z+k3o72J3Gl5ozXl2lO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FvQYWv5p
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1ab9db6a7ea32f84313e13e60e9b8d866f9e7ed8
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
branch HEAD: 1ab9db6a7ea32f84313e13e60e9b8d866f9e7ed8  virtchnl: fix fake 1-elem arrays for structures allocated as `nents`

elapsed time: 727m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230807   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230807   gcc  
arc                  randconfig-r023-20230807   gcc  
arc                  randconfig-r043-20230807   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230807   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230807   clang
csky                                defconfig   gcc  
csky                 randconfig-r003-20230807   gcc  
csky                 randconfig-r012-20230807   gcc  
hexagon              randconfig-r002-20230807   clang
hexagon              randconfig-r006-20230807   clang
hexagon              randconfig-r041-20230807   clang
hexagon              randconfig-r045-20230807   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230807   gcc  
i386         buildonly-randconfig-r005-20230807   gcc  
i386         buildonly-randconfig-r006-20230807   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230807   gcc  
i386                 randconfig-i002-20230807   gcc  
i386                 randconfig-i003-20230807   gcc  
i386                 randconfig-i004-20230807   gcc  
i386                 randconfig-i005-20230807   gcc  
i386                 randconfig-i006-20230807   gcc  
i386                 randconfig-i011-20230807   clang
i386                 randconfig-i012-20230807   clang
i386                 randconfig-i013-20230807   clang
i386                 randconfig-i014-20230807   clang
i386                 randconfig-i015-20230807   clang
i386                 randconfig-i016-20230807   clang
i386                 randconfig-r005-20230807   gcc  
i386                 randconfig-r031-20230807   gcc  
i386                 randconfig-r032-20230807   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230807   gcc  
microblaze           randconfig-r035-20230807   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r015-20230807   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r026-20230807   gcc  
nios2                randconfig-r034-20230807   gcc  
openrisc             randconfig-r021-20230807   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230807   gcc  
powerpc              randconfig-r011-20230807   clang
powerpc              randconfig-r036-20230807   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230807   clang
riscv                randconfig-r042-20230807   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230807   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230807   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230807   gcc  
x86_64       buildonly-randconfig-r002-20230807   gcc  
x86_64       buildonly-randconfig-r003-20230807   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230807   clang
x86_64               randconfig-x002-20230807   clang
x86_64               randconfig-x003-20230807   clang
x86_64               randconfig-x004-20230807   clang
x86_64               randconfig-x005-20230807   clang
x86_64               randconfig-x006-20230807   clang
x86_64               randconfig-x011-20230807   gcc  
x86_64               randconfig-x012-20230807   gcc  
x86_64               randconfig-x013-20230807   gcc  
x86_64               randconfig-x014-20230807   gcc  
x86_64               randconfig-x015-20230807   gcc  
x86_64               randconfig-x016-20230807   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r025-20230807   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
