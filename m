Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89CB576C3F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jul 2022 08:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAD80418E8;
	Sat, 16 Jul 2022 06:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAD80418E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657953191;
	bh=UMgtz3gDIrbiYqafA/TuokLe09n/H9tTy0BtSnxZnCY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BRxmSbATZncBORwSfOBlXK4hytH/WkQnLrSC4yxnCcLNa2k0/rDmzlRlwviASOqKN
	 o7GDJU+5AN7Uxv24nMqv9FGz7BfPcoFTeSjGIPD5CetvG9CjNlmkjAVGBzexdMCNvG
	 2FdePFHjAC0mZo//s5ffhM8detzy6PtcnyIemx6ietObXlmBH7yRZVeo14rHXIrtiH
	 1eI4NSIzMy1YwW2K2Gj1X3jKL+NJWe9drpoFiEx/4NZTPUzi7jS0Gb14zrmtE/aAuN
	 EGcDUDA+LmpBdh7Vd9zL1xVhqSGxN7N7dxcCcI2ySsdcT1MCiWuwCadIzbLYg7Q3T7
	 uhHb090JxOhvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69y7StM24V0V; Sat, 16 Jul 2022 06:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88B5F40329;
	Sat, 16 Jul 2022 06:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88B5F40329
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E75A31BF57B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jul 2022 06:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD51A6F482
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jul 2022 06:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD51A6F482
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvjL0qKrkcop for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jul 2022 06:33:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C2D46F477
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C2D46F477
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jul 2022 06:33:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="349916811"
X-IronPort-AV: E=Sophos;i="5.92,276,1650956400"; d="scan'208";a="349916811"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 23:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,275,1650956400"; d="scan'208";a="773219159"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 15 Jul 2022 23:33:00 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oCbMK-0001EK-Bk;
 Sat, 16 Jul 2022 06:33:00 +0000
Date: Sat, 16 Jul 2022 14:32:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d25b71.ev7qR8Ow7LFSzQOO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657953182; x=1689489182;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3cdtmNhlyelhq5g7A636enzpSGjdth92PXAoA3GxSWg=;
 b=Sv/XvWFbeCPEPdAMJz6/OKQuA/F9gvFpv5oV/CyXfCFMmrqrStHwWa3t
 sUYGTGlsBeAvl3IhfEUPoPBWPKlNKm8Rt1ykR9CoRn/P1RPSvHlIADZZF
 QYbzINkYX5+v7mUpYVzTx57Wf0jkInozd8RvKFzid/KvsIoN09hZ/uH9V
 64wBXoavX5eI/Q1tgFx2ost2lLiyrskC0B7Ps3z2YYxP6kqiRMfF9hK4L
 ojNdaS/igV61cmV12TDjqI6uowh/JnYxmhoWmGDZmRZ3QBrdoRmFk+nOB
 bT9Ocj40Lnk1RO2aLNfymxAlKRI8A7p+oKzgk0N67vRofOdA0VrlJhZWa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sv/XvWFb
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 928bf374cc64c96508425e0b15c6d030afe6e075
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 928bf374cc64c96508425e0b15c6d030afe6e075  ice: Implement FCS/CRC and VLAN stripping co-existence policy

elapsed time: 723m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                      footbridge_defconfig
xtensa                              defconfig
openrisc                    or1ksim_defconfig
arm                        mvebu_v7_defconfig
powerpc                 mpc85xx_cds_defconfig
parisc                generic-32bit_defconfig
arm                           u8500_defconfig
sh                          urquell_defconfig
s390                       zfcpdump_defconfig
m68k                             alldefconfig
mips                           jazz_defconfig
arm                          simpad_defconfig
arm                       multi_v4t_defconfig
powerpc                     ep8248e_defconfig
sh                        sh7763rdp_defconfig
mips                    maltaup_xpa_defconfig
mips                      loongson3_defconfig
arm                        keystone_defconfig
powerpc                      tqm8xx_defconfig
mips                            ar7_defconfig
sh                         ecovec24_defconfig
m68k                        m5307c3_defconfig
ia64                             alldefconfig
openrisc                 simple_smp_defconfig
powerpc                     tqm8555_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220715
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                       aspeed_g4_defconfig
arm                          moxart_defconfig
powerpc                     ppa8548_defconfig
mips                      maltaaprp_defconfig
powerpc                    socrates_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                       netwinder_defconfig
mips                       lemote2f_defconfig
powerpc                    ge_imp3a_defconfig
arm                          collie_defconfig
arm                   milbeaut_m10v_defconfig
mips                     cu1830-neo_defconfig
powerpc                      obs600_defconfig
arm                            dove_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220715
s390                 randconfig-r044-20220715
hexagon              randconfig-r041-20220715
riscv                randconfig-r042-20220715
hexagon              randconfig-r045-20220716
hexagon              randconfig-r041-20220716

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
