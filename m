Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C35759B09
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 18:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2389360FF6;
	Wed, 19 Jul 2023 16:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2389360FF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689784793;
	bh=kSxHFhGczLkrUi521Ku8dJ14COouIjkOx5U7STh6obw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RTwDeVhR4GPNNZtZIS0jz7NLUwH/gNq+raXUTVnbCRY0GPJhROwW4gqy9a6H5db8Y
	 4LPwcUPrFuSgnFdJgaEll618ihljcPOz30pjVYkI3rpdRH25efrA+OQyyuJBFIT6o+
	 KC1Fcxb+fqiCtwYcgLFr5Sz1RCq3jHfNmbdDu+/GoHkz1qSWm/pFY9rFdlvHXaPPBg
	 VwQ4ssuJpf+c3yNXbl+FjSlGQt7A5NQIZTgy3C3Su9t+N9pLUPUINgqxMpWfS7DMjx
	 0YbZkUaonbTi+37PuihHQUH4lzhXTB+77yEMPA2j5ub4KAAv/kykJz9gerOVEv3Xdr
	 0rUzpH44IPQVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBei4OKqnpyX; Wed, 19 Jul 2023 16:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD4E9600CB;
	Wed, 19 Jul 2023 16:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD4E9600CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E832C1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 16:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF70E40253
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 16:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF70E40253
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wObOYyenzrtX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 16:39:44 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 16:39:44 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA797403C4
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA797403C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 16:39:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365398031"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="365398031"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 09:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="837754225"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="837754225"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jul 2023 09:32:37 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qMA6O-0005EC-19
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Jul 2023 16:32:36 +0000
Date: Thu, 20 Jul 2023 00:23:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307200031.4Iqtp7to-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689784784; x=1721320784;
 h=date:from:to:subject:message-id;
 bh=egbyBj7mQ2vD4s/tUxwyTZ5eUe65cbUqjp9SbSXteYk=;
 b=c62qJLk3GbfN1GNIGs0BHMxtgteX4MPER27pnW5sDE0LecCz9mh3YGJy
 HjV0IX4iDtpSKTcTP+6+91w7EX58a2dg+IYSS9ajj46Nt4Ubjgu9w3r9H
 +cg/e7tfNx57gPCeadiOzBaQSpM/zdP7LgdWZ9AmLw4ipaDQAWCKj56Ci
 cBgEnT/HSHURMyzx20IHSRhebz5on0tGSKLNGbySuR/m5ehT6yNM6aT/X
 5TpMMPLvRDcSyDXgINe9Z5IzIpstSPRelKmdbZ+Q0N+1LLoRju9yFzaNr
 8+nLBLOxCKyDzySsy+B5Wy7q9HljvTi0ZIx8F8AeHEGCs+t4WPZOg4zcV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c62qJLk3
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 447109aeb443a968ce2dd71160f5d015458fc8e7
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
branch HEAD: 447109aeb443a968ce2dd71160f5d015458fc8e7  ice: Reset stats on queues num change

elapsed time: 1265m

configs tested: 120
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230718   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230718   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                                 defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                           omap1_defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r012-20230718   gcc  
arm                  randconfig-r016-20230718   gcc  
arm                  randconfig-r021-20230718   gcc  
arm                  randconfig-r046-20230718   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230718   clang
csky                                defconfig   gcc  
csky                 randconfig-r001-20230718   gcc  
hexagon              randconfig-r041-20230718   clang
hexagon              randconfig-r045-20230718   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230718   gcc  
i386         buildonly-randconfig-r005-20230718   gcc  
i386         buildonly-randconfig-r006-20230718   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230718   gcc  
i386                 randconfig-i002-20230718   gcc  
i386                 randconfig-i003-20230718   gcc  
i386                 randconfig-i004-20230718   gcc  
i386                 randconfig-i005-20230718   gcc  
i386                 randconfig-i006-20230718   gcc  
i386                 randconfig-i011-20230718   clang
i386                 randconfig-i012-20230718   clang
i386                 randconfig-i013-20230718   clang
i386                 randconfig-i014-20230718   clang
i386                 randconfig-i015-20230718   clang
i386                 randconfig-i016-20230718   clang
i386                 randconfig-r035-20230718   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230718   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r015-20230718   gcc  
m68k                 randconfig-r032-20230718   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                           ip22_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230718   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230718   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                     kilauea_defconfig   clang
powerpc                    mvme5100_defconfig   clang
riscv                            alldefconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230718   gcc  
riscv                randconfig-r022-20230718   clang
riscv                randconfig-r025-20230718   clang
riscv                randconfig-r042-20230718   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230718   gcc  
s390                 randconfig-r023-20230718   clang
s390                 randconfig-r044-20230718   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r026-20230718   gcc  
sh                   randconfig-r033-20230718   gcc  
sh                          rsk7201_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r024-20230718   gcc  
sparc64              randconfig-r034-20230718   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r002-20230718   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230718   gcc  
x86_64       buildonly-randconfig-r002-20230718   gcc  
x86_64       buildonly-randconfig-r003-20230718   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230718   clang
x86_64               randconfig-x002-20230718   clang
x86_64               randconfig-x003-20230718   clang
x86_64               randconfig-x004-20230718   clang
x86_64               randconfig-x005-20230718   clang
x86_64               randconfig-x006-20230718   clang
x86_64               randconfig-x011-20230718   gcc  
x86_64               randconfig-x012-20230718   gcc  
x86_64               randconfig-x013-20230718   gcc  
x86_64               randconfig-x014-20230718   gcc  
x86_64               randconfig-x015-20230718   gcc  
x86_64               randconfig-x016-20230718   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
