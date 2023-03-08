Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3204A6AFF79
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 08:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC40F40B56;
	Wed,  8 Mar 2023 07:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC40F40B56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678259389;
	bh=wQLENoGKANu7EwVrFvglEfhM8rsAnrcLxzfMyrf/EsU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f3L0lXB65w6bT/ndxyTU1vADFaiwh28sU0bMs805Np/19J+JwwNppYYiaKdwHhgAE
	 8kKkgvxQlig+TbykTk0bau77uobO/G0a5ybd+nVJav5svzt1NcouuGpSmi+W8UpZ+0
	 DbrUpdojLP4Re+TOLEFulQ0Xgva4lDGsMM+xnoLkUO0qCpqztno0QBTWD/BWQx1RFk
	 uM5/KbUGQzAsvmSxrGhF9vs4KPkXtArpKYUd075ZZTS6OzgWfC0X4GRGY680FdwwxX
	 2PfPp797Mmlx1ZlsryxOpFTNxbHA5TWLjKYYKfv0dDlu1F+DNpSbYUJDyiNWCYIqHU
	 e/WVNwckQ4fkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YfGQxxGU-gnZ; Wed,  8 Mar 2023 07:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 940304018B;
	Wed,  8 Mar 2023 07:09:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 940304018B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60A6F1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 07:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38D6B81C6E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 07:09:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38D6B81C6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9R8N8T6A7be for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 07:09:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17B6581C2F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 17B6581C2F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 07:09:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="324395593"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="324395593"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 23:09:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="676863230"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="676863230"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 07 Mar 2023 23:09:38 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZnvd-0001wj-1n;
 Wed, 08 Mar 2023 07:09:37 +0000
Date: Wed, 08 Mar 2023 15:09:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640834ac.ZdzhPrHp1HvRrmYl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678259383; x=1709795383;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nSaJbh9BPXUy4n3g1TDfP0Q2jusxP98zhTTpkZvcB5I=;
 b=byEwu4uLnIMsaJa/lF+gmCip3wHl2HMea2RnKtjNX1Qk9ovdUS7s2HmU
 ovy0Hklze21TOJtEzoYHrXmO0M4YQu2zWZWx9LtOWRYP1HmEnR81EqJcx
 cH40GO8fP436kHgzTsmmanMk88VEUfxUrLey2SmIabsWYc3W7GuZZZECc
 6WT4j0xETOp/s8qZeRXt8sXmg5aZpedQTbIdJjC9VduvBHDW7qsMPTLhJ
 FAfgUIIk8eV1pmTKUSw6nFWAariG6UpUzTFZKAtSk+6oETSRO/I6q52Zb
 wsS9gyATduyNKhRFuw/Bq5wHVqa4t+rKMTQZDTYTRCR/l3u3KdiQBd9P3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=byEwu4uL
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5bbac2b4b31d25c800b24e5c365424179fd1bb14
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
branch HEAD: 5bbac2b4b31d25c800b24e5c365424179fd1bb14  iavf: fix non-tunneled IPv6 UDP packet type and hashing

elapsed time: 879m

configs tested: 152
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230305   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230306   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230306   gcc  
arm64                randconfig-r002-20230305   clang
arm64                randconfig-r002-20230306   gcc  
arm64                randconfig-r024-20230306   clang
arm64                randconfig-r026-20230306   clang
csky                                defconfig   gcc  
csky                 randconfig-r025-20230306   gcc  
csky                 randconfig-r032-20230305   gcc  
hexagon              randconfig-r013-20230305   clang
hexagon              randconfig-r014-20230306   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230306   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r034-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230306   gcc  
ia64         buildonly-randconfig-r002-20230305   gcc  
ia64         buildonly-randconfig-r003-20230306   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230305   gcc  
ia64                 randconfig-r024-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230306   gcc  
loongarch            randconfig-r022-20230305   gcc  
loongarch            randconfig-r036-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r006-20230305   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230306   gcc  
m68k                 randconfig-r013-20230306   gcc  
m68k                 randconfig-r022-20230306   gcc  
m68k                 randconfig-r023-20230306   gcc  
m68k                 randconfig-r026-20230305   gcc  
microblaze           randconfig-r003-20230305   gcc  
microblaze           randconfig-r004-20230306   gcc  
microblaze           randconfig-r016-20230306   gcc  
microblaze           randconfig-r022-20230305   gcc  
microblaze           randconfig-r022-20230306   gcc  
microblaze           randconfig-r031-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230305   gcc  
mips                 randconfig-r006-20230306   clang
mips                 randconfig-r025-20230305   clang
nios2                               defconfig   gcc  
nios2                randconfig-r035-20230306   gcc  
openrisc     buildonly-randconfig-r005-20230306   gcc  
openrisc             randconfig-r001-20230305   gcc  
openrisc             randconfig-r011-20230305   gcc  
openrisc             randconfig-r012-20230305   gcc  
openrisc             randconfig-r014-20230305   gcc  
openrisc             randconfig-r026-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230306   gcc  
parisc               randconfig-r014-20230306   gcc  
parisc               randconfig-r023-20230305   gcc  
parisc               randconfig-r025-20230306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230306   gcc  
powerpc              randconfig-r016-20230305   gcc  
powerpc              randconfig-r025-20230305   gcc  
powerpc              randconfig-r031-20230305   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230306   clang
riscv                randconfig-r013-20230305   gcc  
riscv                randconfig-r034-20230305   clang
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230305   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230305   gcc  
s390                 randconfig-r023-20230305   gcc  
s390                 randconfig-r035-20230305   clang
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r012-20230306   gcc  
sh                   randconfig-r021-20230306   gcc  
sh                   randconfig-r033-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230305   gcc  
sparc                randconfig-r011-20230306   gcc  
sparc64              randconfig-r021-20230305   gcc  
sparc64              randconfig-r026-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r004-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r014-20230305   gcc  
xtensa               randconfig-r015-20230305   gcc  
xtensa               randconfig-r023-20230306   gcc  
xtensa               randconfig-r024-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
