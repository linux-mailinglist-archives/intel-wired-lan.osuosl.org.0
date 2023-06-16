Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B6D7329A5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 10:17:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 269BB60F74;
	Fri, 16 Jun 2023 08:17:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 269BB60F74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686903446;
	bh=/TjeBKVq45vf7YyG7Xb/MBrfQ7KJpUygsFZJyxrdJkY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UeBzkKjQzZRMuu/oOKBaiDlz6H8uP508G/ZhH5opPuRBgnXwxiNYFimHIswWWR2MV
	 XZ6mWDHW6vRbV1i7zhgp/i6niV558B1L4Rb6fBAJ35F6rGzWfbf5y1wDOyqwsWCIEe
	 DJ8/wL7VnZ6P+QLQ0/1IRKP3sLSQAkZum56B/R52kP93fXzW6qqxTtMPvPza7MYHQE
	 suuCmKOBHryLYOBt3sken1r4ZW/o3zpKdQyapan9HJgw+Nj1A4qJsUyb2Zc+o6Ze/2
	 daRJIIZ97wt0EuhtAUN7gIiO9RYrKRsxToNr2MwZrFfuKJUbOutZkmIczOin/zc2ja
	 oZbJnAWvE16kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Slx24qrr8Xdp; Fri, 16 Jun 2023 08:17:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9754560EF2;
	Fri, 16 Jun 2023 08:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9754560EF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0B001BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 08:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 951D960E11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 08:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 951D960E11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jyxBetUSEIt8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 08:17:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9208960ACF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9208960ACF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 08:17:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="422804982"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="422804982"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 01:17:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="802751417"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="802751417"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jun 2023 01:17:16 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qA4dv-0000zH-2o
 for intel-wired-lan@lists.osuosl.org; Fri, 16 Jun 2023 08:17:15 +0000
Date: Fri, 16 Jun 2023 16:16:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306161645.s4LukjQM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686903438; x=1718439438;
 h=date:from:to:subject:message-id;
 bh=yaNldkIUn3cWDSrviZuxsQNwe4qQ6X31opeaSlldQZk=;
 b=YpGRewn6tBxU37iLyd3WjMpeVEsxq9DMhwZ+k0Ba4rUsSFHnTuVEuAM1
 usVRWGjbRwyY5+MEkpw897XNWxe2aR/up+NQf1M3hiPmceXE7xJLNCuRC
 r4JoFSwJEqA4C4volO3L8dnHk3rVVICibRTrZJTDCT4Y1/NQ6x3k4oXJr
 TY7vEARHtIbOtQWmvdsoXmctJoblxuo9uz6cgHC7ufn19G8xH5Cr+Hcop
 5goTc8/hH9lk2XI1ntBV/hJ3wb+LBwXMzubK4DkW6eP6TPG70gMNJ4PQI
 NdfX0Ay5c164XdqLKf/9wKrVs2xg156ScAyAMjhNlc1tyVE45u5hvScY/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YpGRewn6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 299061ae55ad9ed43ee9fbe7327bab4b6c21816a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 299061ae55ad9ed43ee9fbe7327bab4b6c21816a  igc: Add TransmissionOverrun counter

elapsed time: 727m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230615   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230615   gcc  
arc                  randconfig-r006-20230615   gcc  
arc                  randconfig-r043-20230615   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230615   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230615   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230614   gcc  
csky         buildonly-randconfig-r002-20230615   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230614   gcc  
hexagon      buildonly-randconfig-r005-20230615   clang
hexagon              randconfig-r041-20230615   clang
hexagon              randconfig-r045-20230615   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230614   clang
i386                 randconfig-i002-20230614   clang
i386                 randconfig-i003-20230614   clang
i386                 randconfig-i004-20230614   clang
i386                 randconfig-i005-20230614   clang
i386                 randconfig-i006-20230614   clang
i386                 randconfig-i011-20230615   clang
i386                 randconfig-i012-20230615   clang
i386                 randconfig-i013-20230615   clang
i386                 randconfig-i014-20230615   clang
i386                 randconfig-i015-20230615   clang
i386                 randconfig-i016-20230615   clang
i386                 randconfig-r014-20230614   gcc  
i386                 randconfig-r024-20230615   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r035-20230615   gcc  
loongarch            randconfig-r036-20230615   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r034-20230615   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230615   clang
nios2                               defconfig   gcc  
nios2                randconfig-r016-20230614   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r002-20230615   gcc  
openrisc             randconfig-r031-20230615   gcc  
openrisc             randconfig-r032-20230615   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230614   gcc  
parisc               randconfig-r025-20230615   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230615   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230614   gcc  
riscv                randconfig-r042-20230615   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230615   clang
s390                 randconfig-r026-20230615   clang
s390                 randconfig-r044-20230615   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230615   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                   randconfig-r005-20230615   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r033-20230615   gcc  
um                               alldefconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r006-20230615   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230616   clang
x86_64               randconfig-a002-20230616   clang
x86_64               randconfig-a003-20230616   clang
x86_64               randconfig-a004-20230616   clang
x86_64               randconfig-a005-20230616   clang
x86_64               randconfig-a006-20230616   clang
x86_64               randconfig-a011-20230615   clang
x86_64               randconfig-a012-20230615   clang
x86_64               randconfig-a013-20230615   clang
x86_64               randconfig-a014-20230615   clang
x86_64               randconfig-a015-20230615   clang
x86_64               randconfig-a016-20230615   clang
x86_64               randconfig-r022-20230615   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa               randconfig-r003-20230615   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
