Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A921A762A56
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 06:38:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB8F88209B;
	Wed, 26 Jul 2023 04:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB8F88209B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690346295;
	bh=tANw5xXvnb11txEUu7PrrAYPd+vttsd+84eQjH988BQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7Za0MleE3RhxGIo+Ckuor/Jj2i4pc6FXp0Ibyelj3aL5Z8DdGFj/89vJFB9qOHY9w
	 4+saLQ6fj/DNarXgpdm9+8h8kFZ5KXBCRuLSZbRPhrtmF1WjwMKfaGskRN4zDaw3+7
	 9Jo80jR1V2rycmvH5QTLsp2ru8YsvA3bSop9W1kyQ9XcSUdBoFkBQKLaY2RC7T3M13
	 xjDOI3Fl5SBKXcXnK+Oi57ds5XCef38obAFhdmv/Mt8o0+XfsqXt8MlNYb3SKTd5hi
	 AVwZbsif+qt/tmVeiCvsRRrhliKPt7NHycykkZxbn/IMTrnXNqQcnJSbU7rEXOcG21
	 H/Wqtj1Eeetog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DApmkvsnONpE; Wed, 26 Jul 2023 04:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76C2D82098;
	Wed, 26 Jul 2023 04:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76C2D82098
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8137D1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 04:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62BE2610DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 04:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62BE2610DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjWZ7fuLA7Bi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 04:38:07 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DF58610C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 04:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF58610C1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="348186540"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="348186540"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 21:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="676501733"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="676501733"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 25 Jul 2023 21:38:05 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOWHB-0000g9-18
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Jul 2023 04:37:50 +0000
Date: Wed, 26 Jul 2023 12:36:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307261239.YylbRwyp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690346286; x=1721882286;
 h=date:from:to:subject:message-id;
 bh=gFFOI/8wcvZERfRXRYqrWhOahXAZrIpkiDzbnIrMvz4=;
 b=MuB9YwvUHXsNPDuQrVgxZdoOv8G1qDjpYfRXfSqkdsH06AI3yMsRPF56
 Uxkbj0YPCAbkk5h7RWmv99oL7lNiVFxk8yC9avr0B3cEPL+3pkhN8r/9N
 jB7F80zXSd5Ornet06T+SeH/QkSpGBdfRy2w3vYtldYAQYrJyrv6ltV8V
 GfaZ44fepeJy3J3mP9CEWd2t0B7TOiNfF6KM/s/0lpljYe+bVfVIhn+Fl
 bdXLUuLY5TrEcTepsRxiutTw2V65HuIdNJ/KHuIb8IEdhOa8nSJgngubZ
 s8iCl6I/kWKxfOXkn9ePRBo4d1TnEOsHBBvIKm4O4GkXtVxyr2oRTDPpw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MuB9YwvU
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 a5a91f546444940f3d75e2edf3c53b4d235f0557
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: a5a91f546444940f3d75e2edf3c53b4d235f0557  Merge branch 'support-udp-encapsulation-in-packet-offload-mode'

elapsed time: 770m

configs tested: 193
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230725   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230725   gcc  
arc                  randconfig-r031-20230725   gcc  
arc                  randconfig-r043-20230725   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230725   gcc  
arm                  randconfig-r021-20230725   clang
arm                  randconfig-r032-20230725   gcc  
arm                  randconfig-r046-20230725   clang
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230725   clang
arm64                randconfig-r013-20230725   gcc  
arm64                randconfig-r024-20230725   gcc  
arm64                randconfig-r032-20230725   clang
arm64                randconfig-r035-20230725   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230725   gcc  
csky                 randconfig-r013-20230725   gcc  
csky                 randconfig-r016-20230725   gcc  
csky                 randconfig-r022-20230725   gcc  
csky                 randconfig-r023-20230725   gcc  
hexagon                          alldefconfig   clang
hexagon              randconfig-r004-20230725   clang
hexagon              randconfig-r005-20230725   clang
hexagon              randconfig-r023-20230725   clang
hexagon              randconfig-r041-20230725   clang
hexagon              randconfig-r041-20230726   clang
hexagon              randconfig-r045-20230725   clang
hexagon              randconfig-r045-20230726   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230725   clang
i386         buildonly-randconfig-r005-20230725   clang
i386         buildonly-randconfig-r006-20230725   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230725   clang
i386                 randconfig-i002-20230725   clang
i386                 randconfig-i003-20230725   clang
i386                 randconfig-i004-20230725   clang
i386                 randconfig-i005-20230725   clang
i386                 randconfig-i006-20230725   clang
i386                 randconfig-i011-20230725   gcc  
i386                 randconfig-i012-20230725   gcc  
i386                 randconfig-i013-20230725   gcc  
i386                 randconfig-i014-20230725   gcc  
i386                 randconfig-i015-20230725   gcc  
i386                 randconfig-i016-20230725   gcc  
i386                 randconfig-r001-20230725   clang
i386                 randconfig-r022-20230725   gcc  
i386                 randconfig-r036-20230725   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230725   gcc  
loongarch            randconfig-r013-20230725   gcc  
loongarch            randconfig-r015-20230725   gcc  
loongarch            randconfig-r016-20230725   gcc  
loongarch            randconfig-r021-20230725   gcc  
loongarch            randconfig-r031-20230725   gcc  
loongarch            randconfig-r032-20230725   gcc  
loongarch            randconfig-r034-20230725   gcc  
loongarch            randconfig-r035-20230725   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230725   gcc  
m68k                 randconfig-r025-20230725   gcc  
m68k                 randconfig-r026-20230725   gcc  
m68k                 randconfig-r036-20230725   gcc  
microblaze           randconfig-r002-20230725   gcc  
microblaze           randconfig-r004-20230725   gcc  
microblaze           randconfig-r012-20230725   gcc  
microblaze           randconfig-r025-20230725   gcc  
microblaze           randconfig-r033-20230725   gcc  
microblaze           randconfig-r035-20230725   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                 randconfig-r002-20230725   gcc  
mips                 randconfig-r033-20230725   gcc  
mips                           xway_defconfig   gcc  
nios2                         10m50_defconfig   gcc  
nios2                         3c120_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230725   gcc  
nios2                randconfig-r014-20230725   gcc  
nios2                randconfig-r021-20230725   gcc  
nios2                randconfig-r026-20230725   gcc  
openrisc             randconfig-r015-20230725   gcc  
openrisc             randconfig-r016-20230725   gcc  
openrisc             randconfig-r031-20230725   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230725   gcc  
parisc               randconfig-r015-20230725   gcc  
parisc               randconfig-r016-20230725   gcc  
parisc               randconfig-r025-20230725   gcc  
parisc               randconfig-r036-20230725   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r006-20230725   clang
powerpc              randconfig-r032-20230725   clang
powerpc              randconfig-r035-20230725   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230725   clang
riscv                randconfig-r011-20230725   gcc  
riscv                randconfig-r023-20230725   gcc  
riscv                randconfig-r024-20230725   gcc  
riscv                randconfig-r034-20230725   clang
riscv                randconfig-r042-20230725   gcc  
riscv                randconfig-r042-20230726   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230725   gcc  
s390                 randconfig-r014-20230725   gcc  
s390                 randconfig-r031-20230725   clang
s390                 randconfig-r033-20230725   clang
s390                 randconfig-r036-20230725   clang
s390                 randconfig-r044-20230725   gcc  
s390                 randconfig-r044-20230726   clang
sh                               allmodconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r003-20230725   gcc  
sh                   randconfig-r014-20230725   gcc  
sh                   randconfig-r036-20230725   gcc  
sh                          rsk7201_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230725   gcc  
sparc64              randconfig-r005-20230725   gcc  
sparc64              randconfig-r014-20230725   gcc  
sparc64              randconfig-r022-20230725   gcc  
sparc64              randconfig-r025-20230725   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r016-20230725   clang
um                   randconfig-r032-20230725   gcc  
um                   randconfig-r034-20230725   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230725   clang
x86_64       buildonly-randconfig-r002-20230725   clang
x86_64       buildonly-randconfig-r003-20230725   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230725   gcc  
x86_64               randconfig-r024-20230725   gcc  
x86_64               randconfig-x001-20230725   gcc  
x86_64               randconfig-x002-20230725   gcc  
x86_64               randconfig-x003-20230725   gcc  
x86_64               randconfig-x004-20230725   gcc  
x86_64               randconfig-x005-20230725   gcc  
x86_64               randconfig-x006-20230725   gcc  
x86_64               randconfig-x011-20230725   clang
x86_64               randconfig-x012-20230725   clang
x86_64               randconfig-x013-20230725   clang
x86_64               randconfig-x014-20230725   clang
x86_64               randconfig-x015-20230725   clang
x86_64               randconfig-x016-20230725   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
