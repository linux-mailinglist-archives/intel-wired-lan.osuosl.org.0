Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA75A0BD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Aug 2022 10:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42AC86103E;
	Thu, 25 Aug 2022 08:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42AC86103E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661417367;
	bh=dB7GhJPNBLHtOyPwsffY17VlRviwBbyvicC0rIh5HaE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JoLBm1q+jncvg027MqeezQnvVHqqqZdPgxjVluiefwd9wPkehqTLtfPcGmhyVkt7V
	 qaGILMSRbXRGOJYc0HSKQk0w6iD3iaiMTC4zPG56HrzukE3s+Pf/j/YkxIE4iEcQ13
	 X9L5p1CvW4xGNDffx+aihojDs2k5cwsVSpYkAzqcGgzytDUVy1PZ8nop9MR/GLVxMl
	 rro+xB0Nf1XoCWHUZN+YuFKggmAlP+4gzVNg9yqvUY9SigUUWCpnKIGQbkogT5+Joj
	 nxlVBk+aBkoh5u/iqaDhp6x21L6XWbLYxU7ni+bbNStphoxieDvpZJcscC0EuvVH7f
	 Ck+yHyN3dx4GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llSq0W-EIlDs; Thu, 25 Aug 2022 08:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1259C60C23;
	Thu, 25 Aug 2022 08:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1259C60C23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F06901BF37C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 08:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4C7E408AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 08:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4C7E408AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66IK3fYY4gN2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Aug 2022 08:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D02FD4017E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D02FD4017E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 08:49:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="281157886"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="281157886"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 01:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="639503038"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2022 01:49:19 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oR8YA-0001vT-1r;
 Thu, 25 Aug 2022 08:49:18 +0000
Date: Thu, 25 Aug 2022 16:48:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6307375d.Q/LrB7TDmOfnokUd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661417360; x=1692953360;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=b4Zk5ucKr9lLJB25lmxKMqMEEJNI+52JcvR92OErojU=;
 b=BjxkKosYE+w0FDrWfgavVieCE/9xyxmTuKmEQTCq30UumRtzfxtCdHh+
 HX0qwoDIRkrOBcse+MuPJDjOkptjWHg2iXDDVAdaAE/X+mwKjB+3VIgts
 J9QxAkpxEgPEd0ipnFe2wHVrpf22ZLOL8ax3lQz0Z86RVuDeFd+1SN5By
 YsZ3e910cWl6t8yONjYK4QssnjJorIholk1XZQFXJPkUrt6FSvmOl5DFT
 Nis7NFOSo1v1iuORY/x9jVyaZC6FyMsPiFidFH5SA+uuTcFj93ZdMeMQ9
 UHbWfTGh9CNpDne1vvCsw2pYnid/ojs6u0DKVtScW4kNeEFhUd/bBj/c+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BjxkKosY
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 bcf3a156429306070afbfda5544f2b492d25e75b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: bcf3a156429306070afbfda5544f2b492d25e75b  i40e: Fix incorrect address type for IPv6 flow rules

elapsed time: 739m

configs tested: 127
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
i386                                defconfig
sh                               allmodconfig
arc                  randconfig-r043-20220823
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                             allyesconfig
m68k                             allyesconfig
arm                                 defconfig
x86_64                        randconfig-a004
x86_64                               rhel-8.3
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a006
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                           allyesconfig
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
arm                            lart_defconfig
m68k                       m5249evb_defconfig
sh                             espt_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                          rsk7269_defconfig
m68k                                defconfig
sh                   secureedge5410_defconfig
sh                         ap325rxa_defconfig
xtensa                    smp_lx200_defconfig
sh                      rts7751r2d1_defconfig
xtensa                         virt_defconfig
sh                   sh7724_generic_defconfig
powerpc                      makalu_defconfig
arm                            pleb_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
i386                          randconfig-c001
ia64                          tiger_defconfig
sh                           se7721_defconfig
powerpc                      pcm030_defconfig
arc                    vdk_hs38_smp_defconfig
ia64                                defconfig
mips                    maltaup_xpa_defconfig
sh                         ecovec24_defconfig
um                                  defconfig
microblaze                      mmu_defconfig
arm                        realview_defconfig
arm64                               defconfig
arm                              allmodconfig
mips                             allmodconfig
arm                            zeus_defconfig
s390                          debug_defconfig
ia64                            zx1_defconfig
mips                        bcm47xx_defconfig
powerpc                      arches_defconfig
csky                             alldefconfig
ia64                      gensparse_defconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
sh                           se7751_defconfig
m68k                        stmark2_defconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220823
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220823
s390                 randconfig-r044-20220823
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a006
arm                      pxa255-idp_defconfig
powerpc                 mpc8560_ads_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
