Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12A86A8008
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 11:38:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96CC9408CA;
	Thu,  2 Mar 2023 10:38:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96CC9408CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677753500;
	bh=V2ZJ7xgjmBbo5b4Kbcl9x4nMekN/aZS4/ZTtNWirRFQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dgF23+O+ipndaifoAc7M5c33UNvYvwFrCuiuMF7FHdFnEl4Aky6PWJ4c+CP1hUkFQ
	 xHlQiQ179mbkN8dvUk7tWzTHQ5D959p6KL4Q41OBgQqDnOo01sj/Agki6xaFaeocMw
	 9pAhC+xFp3w1F0sT2wimV3ct7OQdlwjmyiaKsaQLO9h1PAio7fNCNsnnGa3lGmUs+z
	 fCEhCvL13+M2zaSv+64WXxIp0/qsU9pi1cL2zRxpY4O0uaeWWl91EVJFBMLx80jSlt
	 mG0o0CEAvupZA4DWU34iLe+UGKWpi0tGSLMM0gAwjqx2uA9hgQVuT+lOOtXybI1YAz
	 SKjCflue47sNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JljuAVFo2b5E; Thu,  2 Mar 2023 10:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 777C640584;
	Thu,  2 Mar 2023 10:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 777C640584
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99A9E1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 10:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71C4460D95
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 10:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71C4460D95
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K9Djff896mey for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 10:38:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D12360B99
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D12360B99
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 10:38:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="336185036"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="336185036"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 02:38:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="763956226"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="763956226"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2023 02:38:11 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXgKA-0000PZ-26;
 Thu, 02 Mar 2023 10:38:10 +0000
Date: Thu, 02 Mar 2023 18:37:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64007c82.voVz8tc+u7ChMCVE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677753493; x=1709289493;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YxwF4axiC/z59+DGBc8PEKrnzdsjciSw0DAQ/x4xeIA=;
 b=L1nd2no+O6vyPX32KSqmR/Z2iaaGqL8yzSoteas5OSQQXSGHFMaJ38hu
 aV2Wk936ppPAIwpCrd7ouT4eCN4h1qV1zDnlt+MOZvhCzKgBFgnxhERD5
 7IHxnwV6ME2MjKPYlz6n/xEgwB5wr5bg1Peq7pBS865dIleel9tGrBl8G
 YBZCDZxrEK2Z0V3KFWYv0zkWLe6v5Uy6Jc+YSQzaPFcE3+S2tfMfE9aRB
 WlZJpWplSplkBzC8oHDQBo8AaleotI6L0Faw6rcCwMsuEMxLzwjIlt1bt
 rLQ7d6fIaG1x1p32yvI5fLAaCp97WgB0e4U9Bk9y8LKbfDNIJyx90Dxho
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L1nd2no+
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4540b94162575f45612e5766b1fe0837d83c176f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 4540b94162575f45612e5766b1fe0837d83c176f  ice: remove comment about not supporting driver reinit

elapsed time: 729m

configs tested: 102
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230302   gcc  
alpha                randconfig-r031-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230302   gcc  
arm                  randconfig-r034-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230302   gcc  
arm64                randconfig-r013-20230302   clang
arm64                randconfig-r024-20230302   clang
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r001-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r032-20230302   gcc  
microblaze   buildonly-randconfig-r002-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
mips                 randconfig-r003-20230302   clang
mips                 randconfig-r016-20230302   gcc  
nios2        buildonly-randconfig-r006-20230302   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230302   gcc  
openrisc             randconfig-r004-20230302   gcc  
openrisc             randconfig-r026-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r033-20230302   gcc  
powerpc              randconfig-r035-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230302   clang
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230302   clang
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230302   gcc  
sh                   randconfig-r011-20230302   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r015-20230302   gcc  
sparc64              randconfig-r023-20230302   gcc  
sparc64              randconfig-r025-20230302   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
