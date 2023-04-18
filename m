Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C4B6E5E6D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 12:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51A34418A4;
	Tue, 18 Apr 2023 10:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51A34418A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681813067;
	bh=7WJsI4KSXQCN77tgfw/mVmUsgdwzKXFk9QrzP5NTsJI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JCfH0ctap64noUFTKFPyTvdi3W7SJPT42Rygepy9K/ImtmPDSzvZYpLs+xbcEDnW6
	 Gg1tL5wDSUTamsH4P5fv0RFtw9bLx3ZozYo/Vlk1aSxwz8O45osTzBABLIc4r5jEDl
	 zed+RJ73TvGk9A8t+24XwcCPWqgs/01+lStIJbAB3yz8wO4ut7vTxooNaQEpRFv/qJ
	 sUbQ23sUWKShU8B0limgOzlNJAMOsgQerXibHKJcG5DAOygi1YzMTebd7eovCAQdS+
	 XuySxiF3GS5ToOkVdasctOHF7C9PMiTnLk2SV8nGfesDlyuVbGzlGmu9wImKQGGthQ
	 mnwO0qOoF01Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZwfiRB6rMji0; Tue, 18 Apr 2023 10:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED905418A3;
	Tue, 18 Apr 2023 10:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED905418A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DB9C1C4293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 10:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6D0C83B96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 10:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6D0C83B96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjwbAcRqiw_o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 10:17:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E64881FA5
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E64881FA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 10:17:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="345130588"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="345130588"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="641328243"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="641328243"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 18 Apr 2023 03:17:33 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1poiOy-000dEd-15;
 Tue, 18 Apr 2023 10:17:32 +0000
Date: Tue, 18 Apr 2023 18:16:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643e6e19.NueBpOZsQYACKt7S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681813059; x=1713349059;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5MtskHqZxXPwsw4j1SmOjFILOrJ2pztOA/PyP+OtMQ8=;
 b=Ta2yIDlf4WIfDAeUo7TwP4guUfysZ50OYgLvNHLE6jD1VFyW8T9AKnTS
 7cNuFe0yjaEcdv6DPmUn9I+F5qY6h2JKveOiAzeOlf9d8EOPRN7f51CII
 ui8oqQ7RhcTJd+XdyGXpCd0fxn0j6N527J+C+iZUFiUKFbnD7OcScjvuK
 FGVNwsiEBMHDpj+WNSx9CefQS1Iyxs3gVOhUkjc2GBwYfZsp/eBU3l+HA
 R1VltMkLVQg7kyPnfW5FRqHfRGqsAEAMQqq2CwiTRiYLd8cvCyA/66/wT
 Jj9/WTdE9Bt9ySGfe23el3jZ7MXyCwTEUUDHBVnE+QiznzQKE+0cM2Br9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ta2yIDlf
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6848f960e7170ce25731695bfe2f3eb84c48deb5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 6848f960e7170ce25731695bfe2f3eb84c48deb5  ixgbe: Enable setting RSS table to default values

elapsed time: 725m

configs tested: 111
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230417   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230417   gcc  
alpha                randconfig-r004-20230417   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230417   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230416   gcc  
arc                  randconfig-r043-20230417   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230416   clang
arm          buildonly-randconfig-r005-20230416   clang
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230416   clang
arm                  randconfig-r046-20230417   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230416   clang
arm64                               defconfig   gcc  
arm64                randconfig-r036-20230416   clang
csky                                defconfig   gcc  
csky                 randconfig-r006-20230417   gcc  
csky                 randconfig-r011-20230416   gcc  
hexagon      buildonly-randconfig-r006-20230416   clang
hexagon              randconfig-r003-20230417   clang
hexagon              randconfig-r035-20230416   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r015-20230416   gcc  
ia64                 randconfig-r034-20230416   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230416   gcc  
loongarch            randconfig-r013-20230417   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230416   gcc  
m68k                 randconfig-r004-20230416   gcc  
microblaze           randconfig-r011-20230417   gcc  
microblaze           randconfig-r016-20230417   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230416   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230417   gcc  
openrisc             randconfig-r006-20230416   gcc  
openrisc             randconfig-r013-20230416   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230417   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230416   gcc  
riscv        buildonly-randconfig-r004-20230417   clang
riscv        buildonly-randconfig-r005-20230417   clang
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230416   clang
riscv                randconfig-r042-20230416   gcc  
riscv                randconfig-r042-20230417   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230416   clang
s390                 randconfig-r044-20230416   gcc  
s390                 randconfig-r044-20230417   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r005-20230417   gcc  
sparc        buildonly-randconfig-r004-20230416   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r012-20230417   gcc  
sparc64              randconfig-r016-20230416   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230417   gcc  
xtensa               randconfig-r015-20230417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
