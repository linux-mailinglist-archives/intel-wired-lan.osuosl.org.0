Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25153665C25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 14:08:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1796381324;
	Wed, 11 Jan 2023 13:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1796381324
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673442526;
	bh=QS5shOfme+6CO0gadCSOaqC/dQp1RdIktSfY9pqTNcQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eKbCbzvgS/9OgIryk/45oH26FgEQDud5dE9734N3juCCcN6u1Hu5P17SBfNbkIRCf
	 dQ+c948WQ6A+XXsm4mZUhSuFiDUN14cqUEsimvL4Nf6ZOef4zMb0XEdtSQCSFf/kHD
	 E1bW4yuiu4VmnX8GU9Qwh08SnYmMbK9tUTPRSKKOuZYiOVqrw7LFJyMJ3Zd88QL9Vu
	 XrC1tcqCAYdA2PWhERTBS11yt7BocgiFD9/4DC3cPtTRnRDLy0wP44sMUcpBb0k+KA
	 0Lr/7LU/XOgEnb65wqeGcSdDQXXEAhZDzYO0a0EEhn8jMiOM5f8VupfzZZI83F0FlP
	 gN9Ybtbd0GOUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPs2eo8BvTXx; Wed, 11 Jan 2023 13:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4782A812F8;
	Wed, 11 Jan 2023 13:08:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4782A812F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6BC1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 13:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7199A4035B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 13:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7199A4035B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bGIdledFAEEo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 13:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1180F40342
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1180F40342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 13:08:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="311219642"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="311219642"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 05:08:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="746145230"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="746145230"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jan 2023 05:08:30 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFaqD-00099a-2m;
 Wed, 11 Jan 2023 13:08:29 +0000
Date: Wed, 11 Jan 2023 21:08:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63beb4b1.eb57d+w9/PAHxf2Y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673442516; x=1704978516;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jicIo3cHDGud+l+xryrUuuMBk3hcwdSl5QwyTDexc9w=;
 b=Ms5lK/sZ1g0JGc6hVuBI3/baBExHez2q91KIHrfKJ1Y78Rk0Jb94miRg
 Q8RjiKT5aNN24DFTwx6HXLz25ZxFRAftZKAwGZntQ3o1OgtJA0aa8+Dc4
 VnFNXecMw3ZrivdSUlwknd9mRqtHdxnNTWu2bcB/H5/mqM+YtBOWbbpd7
 330zscije4VP6YhmnvmXg+1JIzkJIhqD78XYElIEZxgIRIbZ0caEC0GUP
 z4NLT3mhV0cmFSB/DFRjC69O6NETAC1+Q84YHPMIMlCchwu0wNv0rIgIT
 o4RMGancHw91GcI+DBB4rVdE+uLP0wrKgSXMVU5JpCVM8GpaytjH8C7nt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ms5lK/sZ
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 ef1757ef58467310a285e57e6dbf6cf8314e5080
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: ef1757ef58467310a285e57e6dbf6cf8314e5080  Merge branch 'net-mdio-start-separating-c22-and-c45'

elapsed time: 747m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                                defconfig
alpha                            allyesconfig
m68k                             allmodconfig
s390                             allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
arc                              allyesconfig
mips                             allyesconfig
x86_64                            allnoconfig
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
i386                                defconfig
riscv                randconfig-r042-20230110
s390                 randconfig-r044-20230110
arc                  randconfig-r043-20230110
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                          amiga_defconfig
riscv                            allmodconfig
sh                   rts7751r2dplus_defconfig
m68k                                defconfig
sh                          rsk7201_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                     taishan_defconfig
arm                         assabet_defconfig
parisc                generic-64bit_defconfig
mips                        vocore2_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                  iss476-smp_defconfig
sh                          r7780mp_defconfig
mips                           gcw0_defconfig
mips                         bigsur_defconfig
sh                          sdk7786_defconfig
sh                             espt_defconfig
openrisc                         alldefconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
arc                           tb10x_defconfig
csky                             alldefconfig
arm                        keystone_defconfig
sh                          rsk7264_defconfig
sh                           se7722_defconfig
i386                             alldefconfig
sh                         microdev_defconfig
sh                          urquell_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arm                        mvebu_v7_defconfig
sh                     magicpanelr2_defconfig
arm                          badge4_defconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20230111
s390                 randconfig-r044-20230111
hexagon              randconfig-r041-20230111
hexagon              randconfig-r045-20230111
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                  randconfig-r046-20230110
hexagon              randconfig-r041-20230110
hexagon              randconfig-r045-20230110
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
