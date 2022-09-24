Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ECE5E8D51
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Sep 2022 16:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5066441D05;
	Sat, 24 Sep 2022 14:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5066441D05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664029786;
	bh=YXd0oTUuOz4AISqkPe2UVy6YDGwKQp/e7x+9ep+IqCc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a3mXeaTb7A6tPLgT1vOtCVOWCoNr4TGl6sxR+J9Y/+ltPLXhl5L6H3+mj3tkcZR5k
	 OshH8Fg+C82w6SlPQ6khyVFRqe3GRMgcpLo5jH4eetZ7FlbwHv0MWNnIA5yM2/vXEY
	 9CpZLA+Vne1pn3J/Y42vqpb7vd3xfGm9T4iQdl5Kat9xbr4ERJlhCX9PQVd8/98USo
	 wlO8G79YVATSvXyqVI7JLEUVkrWLmOt4kwGnMwwcjPYalK/TOrnil5rfJuMroDnN/k
	 jBJqkMw6OiF1lqRYV8aX8e1xilEurZ2Mo0dLM4DRujd+Vh6QaZFfCznmnCVsjzsVcu
	 EDtnGUJ1j/Aag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a90hFuF-dEmj; Sat, 24 Sep 2022 14:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C499241C48;
	Sat, 24 Sep 2022 14:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C499241C48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C16D1BF325
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 14:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA95583F46
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 14:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA95583F46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qNGhrBfGC5f for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Sep 2022 14:29:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 635F483EC8
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 635F483EC8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 14:29:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="283895602"
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="283895602"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 07:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="651295090"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Sep 2022 07:29:36 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oc69w-0006cm-0H;
 Sat, 24 Sep 2022 14:29:36 +0000
Date: Sat, 24 Sep 2022 22:28:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632f1422.1XyesEKYRPIhR0nB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664029778; x=1695565778;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vm8m6iTyAv06DWnkYj8C3Y9sNDpG5cuSX1tNB148wGk=;
 b=RgLtOzD3++AQurzE2T4seUEL1x3cHuZ4jI6HlRMV+2jmHrf2dp2Xawat
 t49ETZnqT9OhhbBKMcdmrskYV+TSgX4mTyfUQ5rwU2eeM2St28FzhIZ/6
 vU3RJtCbuWrsMmXPn/FTVPI1BHXIQ2wK9o5PeqSqzNZVaLb24Mg5lxUir
 1j6RIPoY3RTFeNcFUp2D4B8FFv0SW/6i/vHtuZ9kxkfDb+4ffjVj5VyNo
 xZ8mKyade5ji4YAHewoO8Z6MxNXwiXHgOC51h89H3QXN2Ov/rP0wT89F4
 KfNHFhLqperMUPnPUGXD+PXWeVdELKIH13tMc0YTTjwagnkhzmX7mmbs+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RgLtOzD3
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 4dfa5f05fffac3a8fa4f9a68a671b5b7e6d3b411
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
branch HEAD: 4dfa5f05fffac3a8fa4f9a68a671b5b7e6d3b411  Merge tag 'linux-can-next-for-6.1-20220923' of git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next

elapsed time: 1325m

configs tested: 119
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
sh                               allmodconfig
arc                  randconfig-r043-20220923
s390                 randconfig-r044-20220923
riscv                randconfig-r042-20220923
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a016
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                             allyesconfig
i386                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                                 defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
alpha                               defconfig
x86_64                        randconfig-a006
x86_64                              defconfig
ia64                             allmodconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220923
i386                          randconfig-c001
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                         ap325rxa_defconfig
nios2                         10m50_defconfig
sh                          sdk7780_defconfig
m68k                         apollo_defconfig
arm                            hisi_defconfig
sh                          rsk7201_defconfig
nios2                         3c120_defconfig
xtensa                              defconfig
powerpc                     tqm8555_defconfig
arc                      axs103_smp_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arm64                               defconfig
ia64                             allyesconfig
arm                              allmodconfig
m68k                                defconfig
ia64                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sparc                       sparc32_defconfig
mips                         bigsur_defconfig

clang tested configs:
hexagon              randconfig-r045-20220923
hexagon              randconfig-r041-20220923
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
x86_64                        randconfig-k001
powerpc                 mpc836x_mds_defconfig
mips                     cu1830-neo_defconfig
x86_64                        randconfig-c007
arm                  randconfig-c002-20220923
i386                          randconfig-c001
s390                 randconfig-c005-20220923
riscv                randconfig-c006-20220923
mips                 randconfig-c004-20220923
powerpc              randconfig-c003-20220923
arm                           sama7_defconfig
powerpc                    gamecube_defconfig
arm                         s3c2410_defconfig
mips                          rm200_defconfig
arm                          sp7021_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
