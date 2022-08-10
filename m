Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F1C58E60A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 06:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02F4D60FF1;
	Wed, 10 Aug 2022 04:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02F4D60FF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660104621;
	bh=SosLBNihBngcpdqOXbjeADF8mym3W7GkDkgfTq5VcMk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A6REcTy328Sm56P3M/4dJrxIZnai0dP7fzub9dD/JJBBi4qulwJhBhc5Z2iegox+6
	 p7mOuSxaZVfbSsf3AEHZV1CLfsJg2/UQet1PbexaHoNJV+IQolPWS86zX8UDRNzvYr
	 vYgxwXatNJbinu4v7idtWe0HrjHdU0qLW7uvxQ7cqgQ1on4XDCHqUKJyQfXspEN9yE
	 7i5Q4hetRq3Eu1xWlOL/wBvchr6N+npmntcMupRafV+yrFsEdDTteDgt9OGiK/eYJM
	 be3PtaKkwaJmRuco2bZWQcHF/nNR14ZlMJpRvMxQt+Jvru0nKejUM4GaPbsuG/XDOg
	 9C9DtwUVZ6Y2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yLpaBXR26DYD; Wed, 10 Aug 2022 04:10:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1BF460FA8;
	Wed, 10 Aug 2022 04:10:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1BF460FA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 786071BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 04:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B4C88146A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 04:10:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B4C88146A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PsU-Q0PmcUYH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 04:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F4208145E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F4208145E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 04:10:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="277929563"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="277929563"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 21:10:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="581073916"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Aug 2022 21:10:07 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oLd2l-000NUb-14;
 Wed, 10 Aug 2022 04:10:07 +0000
Date: Wed, 10 Aug 2022 12:09:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f32f77.pa0EqECokjGvHsDR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660104611; x=1691640611;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZXk2ZaGk2wYSDJ1n6JkYvI0OCpqXM6qPKErAL2zOAO0=;
 b=Y1nNoqpFA8kCA80ZwaqArYEqqVoBa5tomnd1LaSzxov7vIfiCj77hpbu
 HD4+XTDkw0jlBex70vKZacYhOxQaek43lkcKQsqOnWtJBnKlVet4cftLz
 3SkMj1ukFPRbDQtGrIlGpl0wnG6EQm9hzJOrdjNfxbyaOjWgqoA0ox9B1
 Rd1fT0dYSyu9qdVlXOdIDP68YyETQfIsMxsJns670l3Tek93mXpbGZXFg
 BH/N2hqV97ZdTib3wPtHK40cTENyMUcDr6Pf4Uja/B+jclIZB3y/eylT0
 Yd9RAbTI5go+W7hPQNxH1d8T7ZtYlAZSZq4nntvW3iZRFfgrq6Rs/p4Uw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y1nNoqpF
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 b8c3bf0ed2edf2deaedba5f0bf0bb54c76dee71d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: b8c3bf0ed2edf2deaedba5f0bf0bb54c76dee71d  Merge tag 'for-net-2022-08-08' of git://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth

elapsed time: 1386m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
arc                  randconfig-r043-20220808
riscv                randconfig-r042-20220809
s390                 randconfig-r044-20220809
arc                  randconfig-r043-20220809
i386                 randconfig-a003-20220808
i386                 randconfig-a006-20220808
i386                 randconfig-a005-20220808
i386                 randconfig-a001-20220808
i386                 randconfig-a002-20220808
i386                 randconfig-a004-20220808
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
mips                         cobalt_defconfig
arm                           viper_defconfig
x86_64               randconfig-a002-20220808
x86_64               randconfig-a001-20220808
x86_64               randconfig-a006-20220808
x86_64               randconfig-a003-20220808
x86_64               randconfig-a004-20220808
x86_64               randconfig-a005-20220808
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
m68k                            q40_defconfig
sparc                       sparc32_defconfig
parisc                generic-64bit_defconfig
sh                          rsk7203_defconfig
riscv                    nommu_k210_defconfig
powerpc                       holly_defconfig
sparc64                             defconfig
arm                           u8500_defconfig
csky                             alldefconfig
mips                    maltaup_xpa_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
arm                         assabet_defconfig
sh                           se7619_defconfig
arm                            qcom_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                ecovec24-romimage_defconfig
mips                      loongson3_defconfig
loongarch                        alldefconfig
sh                           sh2007_defconfig
ia64                             allmodconfig
i386                 randconfig-c001-20220808
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                   secureedge5410_defconfig
xtensa                  audio_kc705_defconfig
sh                          rsk7264_defconfig
powerpc                      chrp32_defconfig
sparc                             allnoconfig
arm                          pxa3xx_defconfig
sh                        sh7785lcr_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220810
i386                          randconfig-c001

clang tested configs:
riscv                randconfig-r042-20220808
s390                 randconfig-r044-20220808
hexagon              randconfig-r041-20220808
hexagon              randconfig-r045-20220809
hexagon              randconfig-r045-20220808
hexagon              randconfig-r041-20220809
i386                 randconfig-a016-20220808
i386                 randconfig-a013-20220808
i386                 randconfig-a015-20220808
i386                 randconfig-a012-20220808
i386                 randconfig-a011-20220808
i386                 randconfig-a014-20220808
x86_64               randconfig-a016-20220808
x86_64               randconfig-a015-20220808
x86_64               randconfig-a014-20220808
x86_64               randconfig-a011-20220808
x86_64               randconfig-a012-20220808
x86_64               randconfig-a013-20220808
mips                      bmips_stb_defconfig
arm                       mainstone_defconfig
arm                   milbeaut_m10v_defconfig
x86_64               randconfig-k001-20220808
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
