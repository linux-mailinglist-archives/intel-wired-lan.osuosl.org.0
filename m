Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AA86F7C20
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 06:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0B8660E24;
	Fri,  5 May 2023 04:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0B8660E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683262625;
	bh=12ko4urPV2jJEu/2vXEeEgoOAQqmWu6a9iQDANdi+sQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ErkSZ1kZrxYMiG9UZx1Q3F3nMTGQ+TDnun93noMdP+htOgLFenRPEY+WobmKs4dJK
	 3YDx28Cmt59IqO8ubJApuDi2SNYGIR66sVyHOvtgqnGkFUbkl6wta2Re10DQxT/sxF
	 McLV0YUrBP3msKHyngkIh7OUbTJZ+RiHZuyYzpeumsh/KIpoTkmfKbZqCVg83kzvBL
	 qW8aQdyBBDA2LaSugs7Wh+Y/8Nlfqt+Mm6kk7LP9rRxO5rw9UFGArOGMiYvRQpUPd3
	 r+/FS5j/yZREeqxAi+8+/SCWm1UcDLGcRFpx8Su7ASZPMs7fY3R5aNNPcmZ2933MJt
	 PTTs11zNnBcyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kXMFNs1kQs-h; Fri,  5 May 2023 04:57:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A80D60DA5;
	Fri,  5 May 2023 04:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A80D60DA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3ED1A1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27A7F40C21
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:56:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27A7F40C21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUcgayvT2j6c for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 04:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F41D94010D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F41D94010D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:56:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351262550"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="351262550"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 21:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="786896681"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="786896681"
Received: from lkp-server01.sh.intel.com (HELO fe5d646e317d) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 04 May 2023 21:56:55 -0700
Received: from kbuild by fe5d646e317d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1punV0-00009X-2V
 for intel-wired-lan@lists.osuosl.org; Fri, 05 May 2023 04:56:54 +0000
Date: Fri, 05 May 2023 12:56:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230505045614.UZ80q%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683262617; x=1714798617;
 h=date:from:to:subject:message-id;
 bh=d0jP3fzlkhY36EqLpycPsdLMp3ogfp8oFXn/Nd9wcaE=;
 b=WkLQVEc3Xj/QKRDvFIfRfzOD6uTwP/TJPE7mRki7OetBcusY9jSHbENB
 yQetaOEGTrzYQfPDOvDWUdtFLv9vBB4AdOHmL/WS/lU7lPzBxtimVE8EA
 yvgMgsMEAfSV9FBLNNVf3IRc2+WkMHLV5VhWy1iEzqXOhTLF2mXdmAbkw
 THAva2YQZK+V/WmfXw7thnFaGXHSYaHKuGn0Z82oMxaEc8lxMCZRbIy7h
 pr/QXNdpkxS+pnkrMTBxhcSG3KgsFlBE1gypIyJb9n8SforvBV+uMnkBU
 XG1/9lYhcetNn98UoICBy3WhyjuLiLYwVdYPAvf4V5NuXeoVgjdaZWMUz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WkLQVEc3
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 42e9fa181be75cbd59bc8113e10009c84d1a27f9
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
branch HEAD: 42e9fa181be75cbd59bc8113e10009c84d1a27f9  ice: Fix undersized tx_flags variable

elapsed time: 722m

configs tested: 158
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230502   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230504   gcc  
alpha                randconfig-r014-20230502   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230501   gcc  
arc          buildonly-randconfig-r006-20230430   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r001-20230504   gcc  
arc                  randconfig-r015-20230502   gcc  
arc                  randconfig-r024-20230503   gcc  
arc                  randconfig-r043-20230430   gcc  
arc                  randconfig-r043-20230501   gcc  
arc                  randconfig-r043-20230502   gcc  
arc                  randconfig-r043-20230504   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230430   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230430   gcc  
arm                  randconfig-r046-20230430   gcc  
arm                  randconfig-r046-20230501   gcc  
arm                  randconfig-r046-20230502   clang
arm                  randconfig-r046-20230504   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230504   clang
arm64                randconfig-r015-20230504   gcc  
arm64                randconfig-r016-20230502   gcc  
csky         buildonly-randconfig-r005-20230501   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r036-20230430   gcc  
hexagon      buildonly-randconfig-r003-20230502   clang
hexagon              randconfig-r002-20230504   clang
hexagon              randconfig-r005-20230504   clang
hexagon              randconfig-r013-20230430   clang
hexagon              randconfig-r013-20230504   clang
hexagon              randconfig-r014-20230501   clang
hexagon              randconfig-r016-20230501   clang
hexagon              randconfig-r016-20230504   clang
hexagon              randconfig-r041-20230430   clang
hexagon              randconfig-r041-20230501   clang
hexagon              randconfig-r041-20230502   clang
hexagon              randconfig-r041-20230504   clang
hexagon              randconfig-r045-20230430   clang
hexagon              randconfig-r045-20230501   clang
hexagon              randconfig-r045-20230502   clang
hexagon              randconfig-r045-20230504   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230501   gcc  
i386                 randconfig-a002-20230501   gcc  
i386                 randconfig-a003-20230501   gcc  
i386                 randconfig-a004-20230501   gcc  
i386                 randconfig-a005-20230501   gcc  
i386                 randconfig-a006-20230501   gcc  
i386                 randconfig-a011-20230501   clang
i386                 randconfig-a012-20230501   clang
i386                 randconfig-a013-20230501   clang
i386                 randconfig-a014-20230501   clang
i386                 randconfig-a015-20230501   clang
i386                 randconfig-a016-20230501   clang
i386                 randconfig-r032-20230501   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230501   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r012-20230504   gcc  
microblaze           randconfig-r021-20230503   gcc  
microblaze           randconfig-r034-20230430   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230502   gcc  
mips                           ip22_defconfig   clang
mips                          malta_defconfig   clang
mips                 randconfig-r011-20230504   clang
mips                 randconfig-r022-20230503   gcc  
mips                 randconfig-r036-20230501   clang
nios2        buildonly-randconfig-r002-20230502   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230430   gcc  
openrisc     buildonly-randconfig-r004-20230430   gcc  
openrisc             randconfig-r011-20230430   gcc  
openrisc             randconfig-r026-20230503   gcc  
openrisc             randconfig-r033-20230430   gcc  
openrisc             randconfig-r035-20230430   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230502   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                     ksi8560_defconfig   clang
powerpc                     mpc512x_defconfig   clang
powerpc              randconfig-r013-20230501   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230502   gcc  
riscv                randconfig-r014-20230430   clang
riscv                randconfig-r023-20230503   clang
riscv                randconfig-r025-20230503   clang
riscv                randconfig-r042-20230430   clang
riscv                randconfig-r042-20230501   clang
riscv                randconfig-r042-20230502   gcc  
riscv                randconfig-r042-20230504   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230501   clang
s390         buildonly-randconfig-r004-20230502   gcc  
s390         buildonly-randconfig-r005-20230502   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r032-20230430   gcc  
s390                 randconfig-r044-20230430   clang
s390                 randconfig-r044-20230501   clang
s390                 randconfig-r044-20230502   gcc  
s390                 randconfig-r044-20230504   gcc  
sh                               allmodconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r003-20230430   gcc  
sparc64              randconfig-r011-20230501   gcc  
sparc64              randconfig-r012-20230430   gcc  
sparc64              randconfig-r012-20230501   gcc  
sparc64              randconfig-r031-20230501   gcc  
sparc64              randconfig-r035-20230501   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230501   gcc  
x86_64               randconfig-a002-20230501   gcc  
x86_64               randconfig-a003-20230501   gcc  
x86_64               randconfig-a004-20230501   gcc  
x86_64               randconfig-a005-20230501   gcc  
x86_64               randconfig-a006-20230501   gcc  
x86_64               randconfig-a011-20230501   clang
x86_64               randconfig-a012-20230501   clang
x86_64               randconfig-a013-20230501   clang
x86_64               randconfig-a014-20230501   clang
x86_64               randconfig-a015-20230501   clang
x86_64               randconfig-a016-20230501   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230430   gcc  
xtensa               randconfig-r006-20230504   gcc  
xtensa               randconfig-r033-20230501   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
