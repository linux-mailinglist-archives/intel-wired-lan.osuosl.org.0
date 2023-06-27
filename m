Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743E873F333
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 06:13:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3723416A5;
	Tue, 27 Jun 2023 04:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3723416A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687839184;
	bh=8YT4bRC/gC7fPACYRssoyPNd79C/VqwKm86U1r0ntaA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=li1/hC0/zvPFS+ENl3hoaoQeuwCzs57GT+xrcE/cZWRSXIWFrGyMmmwW6+Nkf8/nq
	 0PNB2IO8yM3/YVtq5FKEkNh79U7Gl+CcExdaZJUF7S2KYlEj792oxl1p1cKbG7CE2l
	 NTlkrjYNTKiHk0o6iHQMyBPa6I0vju7JjEetGKLPVXGnV6w71PySAjKSWNe5tXjFfW
	 3pSzIJtf59Rv+EyEHua1OoSQPq+ocggNo5xfz5/deWeqQLdpZwi02h9YmyHihKFoGi
	 wqAEqTmHlkX7wMlpYDDpwY7WL+sgcsv9+Y5ueODV2vq+ovlc1azqlVK78dzM97Y7Dp
	 Z9OYawDlwb0qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wXxrpcQKin0v; Tue, 27 Jun 2023 04:13:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52AD14021C;
	Tue, 27 Jun 2023 04:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52AD14021C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7491BF33C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 04:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04AC960BED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 04:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04AC960BED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDf_2yLHdpxb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 04:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 108EC60ADD
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 108EC60ADD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 04:12:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341809240"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="341809240"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 21:12:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="786431881"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="786431881"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jun 2023 21:12:55 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qE04V-000Bhp-0M
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Jun 2023 04:12:55 +0000
Date: Tue, 27 Jun 2023 12:12:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306271222.o7rPDUHr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687839177; x=1719375177;
 h=date:from:to:subject:message-id;
 bh=fDmrCwdNI+72wQA7V9FK0Y+i79CtjOcnoJwOhclxE+U=;
 b=euktvvrYCizDex+T5IKiIjtezmh8irsccuI1LJFon//NDZnjaGf9k4n8
 n/NSNYxyQI8v6PmM4BXLEMq67tf2BOUEF6Z/oU+FUobZt//pPxsK+XxTO
 SxI/Hys3/BUuzEtI/oBcNRG2r9ke1dXSubtFUMNhaopBFsfeAE8ZBV8US
 ZUWqIIUKnxNec9ZeP5KK8c11F7oUCgJSgS8RSAuNe+yqeKiFzZtaQ3gaf
 oPpHlPCAT+iqB1CYZ0R7IKuxFGAAn4b9okZD8plhpVihdqLhOL7VXDjCq
 yzwQ1XqWWxY7/iGD0ynHyhxHH8SHWCzi8+eA0pMTegJfq1/2PLkZirUYk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=euktvvrY
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 380e315e569c3591fc5109afdbbe65d4bb77bd47
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
branch HEAD: 380e315e569c3591fc5109afdbbe65d4bb77bd47  ice: Rename enum ice_pkt_flags values

elapsed time: 723m

configs tested: 107
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230626   gcc  
arc                  randconfig-r043-20230626   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r001-20230626   gcc  
arm                  randconfig-r014-20230626   clang
arm                  randconfig-r046-20230626   clang
arm                        spear6xx_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230626   gcc  
csky                 randconfig-r013-20230626   gcc  
hexagon              randconfig-r041-20230626   clang
hexagon              randconfig-r045-20230626   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230626   clang
i386         buildonly-randconfig-r005-20230626   clang
i386         buildonly-randconfig-r006-20230626   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230626   clang
i386                 randconfig-i002-20230626   clang
i386                 randconfig-i003-20230626   clang
i386                 randconfig-i004-20230626   clang
i386                 randconfig-i005-20230626   clang
i386                 randconfig-i006-20230626   clang
i386                 randconfig-i011-20230626   gcc  
i386                 randconfig-i012-20230626   gcc  
i386                 randconfig-i013-20230626   gcc  
i386                 randconfig-i014-20230626   gcc  
i386                 randconfig-i015-20230626   gcc  
i386                 randconfig-i016-20230626   gcc  
i386                 randconfig-r002-20230626   clang
i386                 randconfig-r016-20230626   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230626   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r026-20230626   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r024-20230626   clang
mips                 randconfig-r025-20230626   clang
mips                 randconfig-r031-20230626   gcc  
mips                 randconfig-r036-20230626   gcc  
nios2                         10m50_defconfig   gcc  
nios2                               defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230626   gcc  
parisc               randconfig-r023-20230626   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                     ksi8560_defconfig   clang
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc              randconfig-r033-20230626   clang
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230626   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230626   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r006-20230626   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230626   gcc  
sparc64              randconfig-r021-20230626   gcc  
sparc64              randconfig-r034-20230626   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230626   clang
x86_64       buildonly-randconfig-r002-20230626   clang
x86_64       buildonly-randconfig-r003-20230626   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r022-20230626   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                              defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
