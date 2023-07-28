Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF66766AAE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 12:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E91942C6D;
	Fri, 28 Jul 2023 10:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E91942C6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690540339;
	bh=+q68tT+0NitnBY0CT9Q0y2YCMUFMIIDBM6csVSPkMP0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Kfk8U7Wbs7S2/Iq/0kSFeDQHnGfcSmKgBl6MPP+e8cu4voQxNQBWFDakkQ6C7+vhM
	 PAmgnaT/RLCrIobtF+AoLpV+g425tE/YgryxX/l/xWwIeR5sw+7r8TMLm01xq2bxDr
	 h8DYL1lPCkAEDqn1Xryb+zEXrZo8pP99okhkDPlf92k1ef77eteUQkU2dpbjVhXN3G
	 Q+YSnBCnsaIuSs8NWN+p/DV7EhRdyxRXSZURmC2FiXpDkmXnT9DCf1RK0G0giB9U6j
	 IYDVhdyfFyfujyxOOxiXaFLt/ufrEuyuBmKDWZeqJ/3pa0R3ZbTJFKt45GxrT94/tr
	 s/QIOEv/0C/Xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mro6IPjM-Yug; Fri, 28 Jul 2023 10:32:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB6934090E;
	Fri, 28 Jul 2023 10:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB6934090E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D8801BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25A51840ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25A51840ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlL_J2scDVqa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 10:32:12 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D35E0840E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:32:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D35E0840E2
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399498300"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="399498300"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 03:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="901226671"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="901226671"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2023 03:32:10 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qPKlV-00036D-0J
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Jul 2023 10:32:09 +0000
Date: Fri, 28 Jul 2023 18:31:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307281840.bgxjmtVZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690540331; x=1722076331;
 h=date:from:to:subject:message-id;
 bh=jmxjBul5gWSZjJotvW5/6mN7QpD/iPu2LIiLnU2tu4g=;
 b=VornG8GpjT2AhA0WcI12SHtDt1nrk2QNpBpYt4mYOPao68wGzLm5Aiq+
 UUGIWqVXGdMU+Woe2n8FiwvtYFsrTe0dNt9ytSC0TB0EDdNYkK4ibi2Cn
 oNwuew4Zzsl9aYPmgud6aHuad0RdwbF85Q5rzNSFkTPwWwNBm08rFLjLY
 1oBKFwKoCczbPVDNkouf3TETRjVevmNCh8f6YV24oHZSsZg/HT7jUYDFD
 DM+ZgB0O+WnYog5aS0Qas502wcGnu4vX4DX3PNoImCuGh6227NJuYP/Zq
 RWTDd0bjH287eFdldEpBlzXrRD53YjhZB2eV/o/x3MfUrOGPAcjX7NEZm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VornG8Gp
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 3579aa86fb4046a378f7d68583cfb7f62e0feabd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 3579aa86fb4046a378f7d68583cfb7f62e0feabd  ice: update reset path for SRIOV LAG support

elapsed time: 890m

configs tested: 103
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230727   gcc  
alpha                randconfig-r013-20230727   gcc  
alpha                randconfig-r021-20230727   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230727   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230727   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230727   clang
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230727   clang
hexagon              randconfig-r045-20230727   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230727   clang
i386         buildonly-randconfig-r005-20230727   clang
i386         buildonly-randconfig-r006-20230727   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230727   clang
i386                 randconfig-i002-20230727   clang
i386                 randconfig-i003-20230727   clang
i386                 randconfig-i004-20230727   clang
i386                 randconfig-i005-20230727   clang
i386                 randconfig-i006-20230727   clang
i386                 randconfig-i011-20230727   gcc  
i386                 randconfig-i012-20230727   gcc  
i386                 randconfig-i013-20230727   gcc  
i386                 randconfig-i014-20230727   gcc  
i386                 randconfig-i015-20230727   gcc  
i386                 randconfig-i016-20230727   gcc  
i386                 randconfig-r022-20230727   gcc  
i386                 randconfig-r032-20230727   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r034-20230727   gcc  
microblaze           randconfig-r025-20230727   gcc  
microblaze           randconfig-r035-20230727   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230727   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230727   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230727   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230727   gcc  
sh                   randconfig-r024-20230727   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230727   gcc  
sparc                randconfig-r031-20230727   gcc  
sparc64              randconfig-r033-20230727   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r015-20230727   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230727   clang
x86_64       buildonly-randconfig-r002-20230727   clang
x86_64       buildonly-randconfig-r003-20230727   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r014-20230727   gcc  
x86_64               randconfig-x001-20230727   gcc  
x86_64               randconfig-x002-20230727   gcc  
x86_64               randconfig-x003-20230727   gcc  
x86_64               randconfig-x004-20230727   gcc  
x86_64               randconfig-x005-20230727   gcc  
x86_64               randconfig-x006-20230727   gcc  
x86_64               randconfig-x011-20230727   clang
x86_64               randconfig-x012-20230727   clang
x86_64               randconfig-x013-20230727   clang
x86_64               randconfig-x014-20230727   clang
x86_64               randconfig-x015-20230727   clang
x86_64               randconfig-x016-20230727   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r026-20230727   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
