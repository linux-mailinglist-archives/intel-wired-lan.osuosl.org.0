Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F65F74FFB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 08:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 173B5820CC;
	Wed, 12 Jul 2023 06:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 173B5820CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689144557;
	bh=IE72811jFTPqtR6SgSeWHxYPQo4uyS26hw4MVfYcaEA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lakWK05+FRl4r7DXaRwODsz+MSf1W6XDohVRZNldofbZ7ZZhfl+/AaxqooYSDEwh7
	 wo6TNkpuhp9Nlz8rtcXfp2O3hD0zfazC62At7qIEI3XzUnLf/uuL1mlgNDO9xyTe6F
	 YLuod1DEE74eri55CSDDkWLeqHcqnDwr59KHxwygR8SCHcUR25VbdA94W54EDejZNe
	 r+VpjTs6yRIm5dKBCSX/aco1wfNpBxa5EsKaCjq4J/9DWWwspPiZvc5X1nUlpD8PDN
	 21NtpkGAKZaXNRffrNFI5F767N1XkU4+n67tFGfGYxkFhVs4KDLe3oHAdGI3cgE06C
	 RO2GKvCMN29ig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYMCJZivvb9A; Wed, 12 Jul 2023 06:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2E5680AD2;
	Wed, 12 Jul 2023 06:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2E5680AD2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87FA81BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FD174010C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FD174010C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UslKfpODNa7y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 06:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 304F540227
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 304F540227
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:49:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="428554885"
X-IronPort-AV: E=Sophos;i="6.01,198,1684825200"; d="scan'208";a="428554885"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 23:48:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="845550099"
X-IronPort-AV: E=Sophos;i="6.01,198,1684825200"; d="scan'208";a="845550099"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 11 Jul 2023 23:48:44 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJTeV-0005TW-1B
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jul 2023 06:48:43 +0000
Date: Wed, 12 Jul 2023 14:48:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307121423.oYrZ1pML-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689144550; x=1720680550;
 h=date:from:to:subject:message-id;
 bh=B+xGw3sv4L7sn9vu7e2cukbSFafn3jD4AboXuu0K3aI=;
 b=bo+bX7PkOFmaGX3Lb0HpEmCVIXyjAPjl3PhyTHv4BjcgD32IF+fYQgDo
 UMBULJNEcVh3BuaA12G5XlvaexWJpPOUtR3wTKtcpA5VG/pr8M9jdPkrD
 pb7gyqu45iFpdvOMPP1Ej841r6fSV4CmNIwOTn3PQF6Mofh71R2kSFJic
 l/IFCSlK/LnkwNW2XmPM6jFvVFs6L0HOa6um0VUn01XrzDI1ri5DkBo0i
 jBWqPQ0Bp1hOq5rvvEacUNfgkQAuQwiem0kP/SQxS/2hzHgW2Umg84Ldq
 x7Y7rgxUuWYbWV0vw3Scik9L0EsFQwtgyD9BqMIs2cMj5nX8yhnDJB9Nq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bo+bX7Pk
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 51f73eb10fe64f45415ac852b742c034e3f362a4
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
branch HEAD: 51f73eb10fe64f45415ac852b742c034e3f362a4  iavf: check for removal state before IAVF_FLAG_PF_COMMS_FAILED

elapsed time: 720m

configs tested: 104
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r036-20230710   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230711   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230712   clang
arm                  randconfig-r046-20230711   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230712   gcc  
arm64                randconfig-r005-20230712   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r034-20230710   gcc  
hexagon              randconfig-r016-20230711   clang
hexagon              randconfig-r041-20230711   clang
hexagon              randconfig-r045-20230711   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230710   gcc  
i386         buildonly-randconfig-r005-20230710   gcc  
i386         buildonly-randconfig-r006-20230710   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230710   gcc  
i386                 randconfig-i002-20230710   gcc  
i386                 randconfig-i003-20230710   gcc  
i386                 randconfig-i004-20230710   gcc  
i386                 randconfig-i005-20230710   gcc  
i386                 randconfig-i006-20230710   gcc  
i386                 randconfig-i011-20230711   gcc  
i386                 randconfig-i012-20230711   gcc  
i386                 randconfig-i013-20230711   gcc  
i386                 randconfig-i014-20230711   gcc  
i386                 randconfig-i015-20230711   gcc  
i386                 randconfig-i016-20230711   gcc  
i386                 randconfig-r035-20230710   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230711   gcc  
loongarch            randconfig-r013-20230711   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r015-20230711   gcc  
microblaze           randconfig-r025-20230712   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r021-20230712   gcc  
openrisc             randconfig-r032-20230710   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r024-20230712   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230711   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r033-20230710   gcc  
s390                 randconfig-r044-20230711   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r022-20230712   gcc  
sparc64              randconfig-r026-20230712   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230710   gcc  
x86_64       buildonly-randconfig-r002-20230710   gcc  
x86_64       buildonly-randconfig-r003-20230710   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r006-20230712   gcc  
x86_64               randconfig-x001-20230710   clang
x86_64               randconfig-x002-20230710   clang
x86_64               randconfig-x003-20230710   clang
x86_64               randconfig-x004-20230710   clang
x86_64               randconfig-x005-20230710   clang
x86_64               randconfig-x006-20230710   clang
x86_64               randconfig-x011-20230711   clang
x86_64               randconfig-x012-20230711   clang
x86_64               randconfig-x013-20230711   clang
x86_64               randconfig-x014-20230711   clang
x86_64               randconfig-x015-20230711   clang
x86_64               randconfig-x016-20230711   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230712   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
