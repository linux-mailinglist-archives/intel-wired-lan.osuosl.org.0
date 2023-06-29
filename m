Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9A7741F85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 07:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57391410A5;
	Thu, 29 Jun 2023 05:08:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57391410A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688015306;
	bh=f1TlG5fa2xf40qn3WALFa/kmqXlarB6JSoqbiqK6MR4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GkUb5ddxXv+7rmHjbjrhpUWiGd24W1FnUyoFsFNCjoAhmqFx/pyQv4c9HAe+FOZZk
	 K18JAEV96x9yej34zG2qsMzKXxK5GyHOBDCMj3PUgNgxxjMi/CSR5M+kW0id31uRLY
	 KO4F4QlINdzDiLuAvlFVxllwCk9PL+Cg6gB/9VaVWddMNqDvXTv383+dyqSwMnlFvQ
	 OcOhrmqyYZwTZabGAjP1sPcCjwF0xXZe2SuJW6HT8NB2TgNaMc1wr4XMv6rWuD2kzd
	 QSf69U5H/sG34bQ7RID6xstj9oVT5pjpq+6OJHyIqroVpdtmc628A08l9raQOBGSpE
	 rychapVIUQ96w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkvMUfEmxKZJ; Thu, 29 Jun 2023 05:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3A6E40448;
	Thu, 29 Jun 2023 05:08:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3A6E40448
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89D731BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF17640198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF17640198
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1QKD6qLZQtsQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 05:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E8844019C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E8844019C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:08:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="364573214"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="364573214"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 22:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="830395866"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="830395866"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2023 22:08:10 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qEjt3-000DpH-0f
 for intel-wired-lan@lists.osuosl.org; Thu, 29 Jun 2023 05:08:09 +0000
Date: Thu, 29 Jun 2023 13:07:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306291333.kncyTauU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688015293; x=1719551293;
 h=date:from:to:subject:message-id;
 bh=YQXMh9ef3Uo2bWTKrfpdvnlZIwGFKOAVcc8UA3sXDow=;
 b=l7XAfAVOSjp1H+kaVD3So74PjHohufzkuTeUjw79glXSng9IvBcvZMWb
 vVCnqWeALN/GuvER9emESVQRVmExRHnVhTxz5n+LGea21DO3BzYY/Upnm
 1HsuGSk+p6tWIt7ilw26CQHlS0mQImdeJafMEbVQHx+4QQza8buP5SoFL
 sy0uTAlQCUIUUs6jR8lF9+1C8Yxr4xLz6RHZ2dJJXJnMyxgrok348NTZm
 M5aQ9Xf5esmfCp2Zt87RLr4T/LeetvxED5w/h+RrMQTi0uSdRFYeNPZbv
 DIa83U+YUHl3TBSYa/OBSr1rcszHe06WYs9ChmpE5f2DXy/QDZpFEypsR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l7XAfAVO
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 3674fbf0451df0395f9fa18df3122927006a3829
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 3674fbf0451df0395f9fa18df3122927006a3829  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 2104m

configs tested: 196
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230628   gcc  
alpha                randconfig-r011-20230627   gcc  
alpha                randconfig-r015-20230627   gcc  
alpha                randconfig-r024-20230627   gcc  
alpha                randconfig-r032-20230628   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r034-20230628   gcc  
arc                  randconfig-r043-20230627   gcc  
arc                  randconfig-r043-20230628   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                  randconfig-r006-20230627   clang
arm                  randconfig-r031-20230627   clang
arm                  randconfig-r033-20230628   gcc  
arm                  randconfig-r036-20230627   clang
arm                  randconfig-r036-20230628   gcc  
arm                  randconfig-r046-20230627   gcc  
arm                  randconfig-r046-20230628   clang
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r015-20230629   clang
csky                                defconfig   gcc  
csky                 randconfig-r012-20230629   gcc  
csky                 randconfig-r016-20230627   gcc  
csky                 randconfig-r033-20230627   gcc  
hexagon              randconfig-r025-20230627   clang
hexagon              randconfig-r041-20230627   clang
hexagon              randconfig-r041-20230628   clang
hexagon              randconfig-r045-20230627   clang
hexagon              randconfig-r045-20230628   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230627   gcc  
i386         buildonly-randconfig-r004-20230628   clang
i386         buildonly-randconfig-r005-20230627   gcc  
i386         buildonly-randconfig-r005-20230628   clang
i386         buildonly-randconfig-r006-20230627   gcc  
i386         buildonly-randconfig-r006-20230628   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230627   gcc  
i386                 randconfig-i001-20230628   clang
i386                 randconfig-i002-20230627   gcc  
i386                 randconfig-i002-20230628   clang
i386                 randconfig-i003-20230627   gcc  
i386                 randconfig-i003-20230628   clang
i386                 randconfig-i004-20230627   gcc  
i386                 randconfig-i004-20230628   clang
i386                 randconfig-i005-20230627   gcc  
i386                 randconfig-i005-20230628   clang
i386                 randconfig-i006-20230627   gcc  
i386                 randconfig-i006-20230628   clang
i386                 randconfig-i011-20230627   clang
i386                 randconfig-i011-20230628   gcc  
i386                 randconfig-i012-20230627   clang
i386                 randconfig-i012-20230628   gcc  
i386                 randconfig-i013-20230627   clang
i386                 randconfig-i013-20230628   gcc  
i386                 randconfig-i014-20230627   clang
i386                 randconfig-i014-20230628   gcc  
i386                 randconfig-i015-20230627   clang
i386                 randconfig-i015-20230628   gcc  
i386                 randconfig-i016-20230627   clang
i386                 randconfig-i016-20230628   gcc  
i386                 randconfig-r005-20230627   gcc  
i386                 randconfig-r024-20230628   gcc  
i386                 randconfig-r026-20230627   clang
i386                 randconfig-r032-20230627   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230627   gcc  
loongarch            randconfig-r035-20230628   gcc  
loongarch            randconfig-r036-20230627   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                 randconfig-r001-20230628   gcc  
m68k                 randconfig-r002-20230627   gcc  
microblaze           randconfig-r001-20230627   gcc  
microblaze           randconfig-r004-20230627   gcc  
microblaze           randconfig-r021-20230627   gcc  
microblaze           randconfig-r023-20230627   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                 randconfig-r011-20230628   clang
mips                 randconfig-r026-20230627   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230627   gcc  
nios2                randconfig-r025-20230628   gcc  
nios2                randconfig-r026-20230628   gcc  
openrisc             randconfig-r003-20230627   gcc  
openrisc             randconfig-r016-20230627   gcc  
openrisc             randconfig-r021-20230627   gcc  
openrisc             randconfig-r031-20230627   gcc  
openrisc             randconfig-r031-20230628   gcc  
openrisc             randconfig-r034-20230627   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230627   gcc  
parisc               randconfig-r013-20230627   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc              randconfig-r001-20230627   gcc  
powerpc                     redwood_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230627   gcc  
riscv                randconfig-r023-20230627   clang
riscv                randconfig-r032-20230628   clang
riscv                randconfig-r042-20230627   clang
riscv                randconfig-r042-20230628   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230627   gcc  
s390                 randconfig-r044-20230627   clang
s390                 randconfig-r044-20230628   gcc  
sh                               allmodconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r003-20230628   gcc  
sh                   randconfig-r006-20230628   gcc  
sh                   randconfig-r015-20230627   gcc  
sh                           se7722_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230627   gcc  
sparc                randconfig-r024-20230627   gcc  
sparc                randconfig-r032-20230627   gcc  
sparc                randconfig-r034-20230628   gcc  
sparc                randconfig-r035-20230628   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r006-20230627   gcc  
sparc64              randconfig-r023-20230628   gcc  
sparc64              randconfig-r031-20230628   gcc  
sparc64              randconfig-r033-20230627   gcc  
sparc64              randconfig-r033-20230628   gcc  
sparc64              randconfig-r035-20230627   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r036-20230628   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230627   gcc  
x86_64       buildonly-randconfig-r001-20230628   clang
x86_64       buildonly-randconfig-r002-20230627   gcc  
x86_64       buildonly-randconfig-r002-20230628   clang
x86_64       buildonly-randconfig-r003-20230627   gcc  
x86_64       buildonly-randconfig-r003-20230628   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r005-20230627   gcc  
x86_64               randconfig-r011-20230627   clang
x86_64               randconfig-r014-20230629   clang
x86_64               randconfig-x001-20230628   gcc  
x86_64               randconfig-x002-20230628   gcc  
x86_64               randconfig-x003-20230628   gcc  
x86_64               randconfig-x004-20230628   gcc  
x86_64               randconfig-x005-20230628   gcc  
x86_64               randconfig-x006-20230628   gcc  
x86_64               randconfig-x011-20230628   clang
x86_64               randconfig-x012-20230628   clang
x86_64               randconfig-x013-20230628   clang
x86_64               randconfig-x014-20230628   clang
x86_64               randconfig-x015-20230628   clang
x86_64               randconfig-x016-20230628   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230627   gcc  
xtensa               randconfig-r004-20230628   gcc  
xtensa               randconfig-r013-20230629   gcc  
xtensa               randconfig-r021-20230628   gcc  
xtensa               randconfig-r022-20230627   gcc  
xtensa               randconfig-r022-20230628   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
