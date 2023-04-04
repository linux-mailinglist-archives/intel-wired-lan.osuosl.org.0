Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B506D594F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 09:19:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78E1F408FB;
	Tue,  4 Apr 2023 07:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78E1F408FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680592750;
	bh=70NAs6QsTXzt2DoD5WxHqNa7tY/fJDuGT8/0mGLyn4k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AcLyu0w9CqExKSaxlP6h7fwCu5++BomHwV4J9E1+Cqqfn1OlwHIKepOdWG3Q2v9T4
	 50KOBx423fq4+6SmwzqChYVXnw1P1INOLb7r8T0S0N2vkaG9EjT+Ls+2UIjpj/MCfp
	 SYcsIWgN7yx8L3jw10etzgXYs0f1Vt1C2A9q6KGpA1wQ0bkvvDAquS0yamN7xknBJu
	 HdFYKOL4vQn1dzoqD2Q9HScrowqRB+0Sfd4bPX6ScFeb4jJMqKnWvZ9qMqkrJa1grh
	 Pn+VTFh5LAvT5XcdkWVt3DLP3HVb1TWarmM9hmy+/23iE/Oc66gRXUg+lMznPHfDRV
	 YzNH/rR2dnG+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fu-3ywLrXwjL; Tue,  4 Apr 2023 07:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E766840620;
	Tue,  4 Apr 2023 07:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E766840620
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DFF91C277D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1550761014
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1550761014
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mu_NKT2TAig1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 07:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A09E606F9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A09E606F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:19:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="322504745"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="322504745"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 00:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="797408806"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="797408806"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2023 00:19:00 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjawV-000PLN-2O;
 Tue, 04 Apr 2023 07:18:59 +0000
Date: Tue, 04 Apr 2023 15:18:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <642bcf47.2NFS941/9nGwd/8x%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680592742; x=1712128742;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aSqNWi0/IgUOkWmr+AazjjloZkOjvi6JM/e+EggyVck=;
 b=YMmj9gXp6RUYbyZ8xaTsrwZvLvkh/w+5EVgWGSf40hqXVyyC6GzHnI1q
 MEg/+/7uW7v9X3dBJ+3MRMPrQ1uysti/LTFckFAUStigzW0puqFO8aKbJ
 CuDuAhY4YBtJdLj1YpqtKJMMOb0CTRcVJ7DodyUA9d0jRinzJsWpRwcok
 Jo08EVFYX6gNetW/NbLx1QEMVwiaFlTnx2k37B3YBDz4RGsTQm3aGCNT9
 SVpiBEhVURPbAYkFXsE8iD4P5n2ABrq/FpeXydWeMoysV+Folyut2f9H+
 NFSkmkq/96W/opmSBnByMPTd2xuFmAVCIAZD+KF9zNrz9pm5LOW0kFfSB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YMmj9gXp
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fdf2876d9516d5891fa1fc87ba108afa97def377
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
branch HEAD: fdf2876d9516d5891fa1fc87ba108afa97def377  i40e: fix PTP pins verification

elapsed time: 724m

configs tested: 96
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230403   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230403   gcc  
arc          buildonly-randconfig-r006-20230403   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                           omap1_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230403   clang
arm64                randconfig-r015-20230403   gcc  
arm64                randconfig-r032-20230403   clang
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r006-20230403   clang
hexagon              randconfig-r024-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230403   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230403   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        vocore2_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230403   gcc  
openrisc     buildonly-randconfig-r003-20230403   gcc  
parisc       buildonly-randconfig-r003-20230403   gcc  
parisc       buildonly-randconfig-r005-20230403   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230403   gcc  
powerpc      buildonly-randconfig-r006-20230403   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc              randconfig-r013-20230403   gcc  
powerpc                     taishan_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230403   clang
s390                 randconfig-r006-20230403   clang
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r002-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
