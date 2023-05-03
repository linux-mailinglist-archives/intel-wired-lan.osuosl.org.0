Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED75F6F4F30
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 05:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3AC60F7C;
	Wed,  3 May 2023 03:41:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC3AC60F7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683085319;
	bh=786NiBD5vnZogeeXDE2PIEReJJW8tn4KfJXfUiOamIE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KvgcDeTkPbehjJ4P0GO1TrEaoJkXNuifJKCf2KECMC2CuNzNyVprplzowXXE3UFcf
	 Pmxa2nYsJxXQKjPmqkLLMSgl+0Zc/k6sgs4lYzGFf4+O1gaEw3orvB/KN+29wDxTe6
	 BCWs809nFL+R5yP+S//pB8cTTiwvIOPnNHvYoEnCk4wXqWPDuPz76vKnF3BMyrtAFj
	 dJQqCwF/1+XMOc9jVKwxhHaK/Ahp9iP5uYyEBss31r/Ly16l8+HhpXIb9QcIcJogMo
	 TzqHtxkn9k5DTt2pS5KFmlcQFv/FJfz63cKCti8uyIrbkDBcdz7+qGHo+034fQotQ9
	 dXFL+1kt+HN7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gEUR46fpANk; Wed,  3 May 2023 03:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 530D960E79;
	Wed,  3 May 2023 03:41:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 530D960E79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 908981BF470
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 03:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 646B0402D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 03:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 646B0402D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L1ocu71y1_Th for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 03:41:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3BE440120
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3BE440120
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 03:41:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="346037191"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="346037191"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 20:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="726992891"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="726992891"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 02 May 2023 20:41:48 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pu3NE-0001TO-0e
 for intel-wired-lan@lists.osuosl.org; Wed, 03 May 2023 03:41:48 +0000
Date: Wed, 03 May 2023 11:41:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230503034100.vckMr%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683085310; x=1714621310;
 h=date:from:to:subject:message-id;
 bh=53vQGi+rKZwlZlkj3gMsI1dHtMox+u0Z0+XeOyQWw6o=;
 b=dW3zbIh9ta8qGKI7D5TRJo2isSFLFnn71zzGWpIzU3NjWVgDg8hLdqa/
 tzeKw6KOKgjAnENsKiXMbLl8WZe0S9dvG4jp+Pbd3wPYbNLOFp6TFVRmi
 rd5i/4tKmRzu+EH4/Jk5hCyIEEy/7vCD5/D32g4kVKMCmHQghQWAUQjV+
 6Ucxpo4X2izrno4OkE03foiBJ4wwjDBqc8vfT2305p8TrQkxy16HCh9IA
 oiSqZE76AOk/YM95unErgNqfrNdjsbi0M6KQ3kobr66J63H0AEdRoqHGw
 u9dj5o2ssDQoX+H8Pbzsh43/Asyc5wLC5dz1+GnUQ6T2EViDWtKdoshkJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dW3zbIh9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 56dce3a8f09a7c91ecfdb26f9841959a86c0f6cc
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
branch HEAD: 56dce3a8f09a7c91ecfdb26f9841959a86c0f6cc  ice: Fix undersized tx_flags variable

elapsed time: 731m

configs tested: 159
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230501   gcc  
alpha                randconfig-r023-20230430   gcc  
alpha                randconfig-r031-20230430   gcc  
alpha                randconfig-r031-20230502   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230430   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230501   gcc  
arc                  randconfig-r005-20230430   gcc  
arc                  randconfig-r013-20230501   gcc  
arc                  randconfig-r022-20230430   gcc  
arc                  randconfig-r024-20230502   gcc  
arc                  randconfig-r032-20230502   gcc  
arc                  randconfig-r033-20230502   gcc  
arc                  randconfig-r043-20230430   gcc  
arc                  randconfig-r043-20230501   gcc  
arc                  randconfig-r043-20230502   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230430   gcc  
arm                  randconfig-r046-20230501   gcc  
arm                  randconfig-r046-20230502   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230502   gcc  
csky         buildonly-randconfig-r002-20230430   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230502   gcc  
csky                 randconfig-r021-20230430   gcc  
hexagon      buildonly-randconfig-r005-20230430   clang
hexagon              randconfig-r004-20230430   clang
hexagon              randconfig-r024-20230501   clang
hexagon              randconfig-r041-20230430   clang
hexagon              randconfig-r041-20230501   clang
hexagon              randconfig-r041-20230502   clang
hexagon              randconfig-r045-20230430   clang
hexagon              randconfig-r045-20230501   clang
hexagon              randconfig-r045-20230502   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230501   gcc  
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
i386                 randconfig-r005-20230501   gcc  
i386                 randconfig-r035-20230501   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230430   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230501   gcc  
loongarch            randconfig-r021-20230502   gcc  
loongarch            randconfig-r022-20230501   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230430   gcc  
m68k                 randconfig-r025-20230502   gcc  
m68k                 randconfig-r026-20230501   gcc  
m68k                 randconfig-r035-20230430   gcc  
microblaze   buildonly-randconfig-r001-20230501   gcc  
microblaze   buildonly-randconfig-r006-20230430   gcc  
microblaze           randconfig-r014-20230430   gcc  
microblaze           randconfig-r025-20230430   gcc  
microblaze           randconfig-r025-20230501   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230430   clang
mips                 randconfig-r014-20230501   gcc  
mips                 randconfig-r034-20230501   clang
mips                 randconfig-r036-20230430   clang
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230502   gcc  
nios2                randconfig-r006-20230501   gcc  
nios2                randconfig-r012-20230502   gcc  
nios2                randconfig-r014-20230502   gcc  
nios2                randconfig-r023-20230501   gcc  
nios2                randconfig-r032-20230430   gcc  
nios2                randconfig-r034-20230502   gcc  
nios2                randconfig-r036-20230502   gcc  
openrisc             randconfig-r011-20230501   gcc  
openrisc             randconfig-r011-20230502   gcc  
openrisc             randconfig-r022-20230502   gcc  
openrisc             randconfig-r026-20230502   gcc  
openrisc             randconfig-r035-20230502   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230501   gcc  
parisc               randconfig-r016-20230501   gcc  
parisc               randconfig-r026-20230430   gcc  
parisc               randconfig-r032-20230501   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230502   gcc  
powerpc              randconfig-r015-20230430   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230430   clang
riscv        buildonly-randconfig-r003-20230501   clang
riscv        buildonly-randconfig-r004-20230430   clang
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230501   clang
riscv                randconfig-r031-20230501   gcc  
riscv                randconfig-r033-20230430   gcc  
riscv                randconfig-r034-20230430   gcc  
riscv                randconfig-r042-20230430   clang
riscv                randconfig-r042-20230501   clang
riscv                randconfig-r042-20230502   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230501   clang
s390                                defconfig   gcc  
s390                 randconfig-r003-20230430   gcc  
s390                 randconfig-r005-20230502   clang
s390                 randconfig-r016-20230430   clang
s390                 randconfig-r044-20230430   clang
s390                 randconfig-r044-20230501   clang
s390                 randconfig-r044-20230502   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230430   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r002-20230502   gcc  
sparc64              randconfig-r012-20230430   gcc  
sparc64              randconfig-r015-20230501   gcc  
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
xtensa               randconfig-r036-20230501   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
