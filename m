Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E775E7B17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 14:48:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09DE183E95;
	Fri, 23 Sep 2022 12:48:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09DE183E95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663937281;
	bh=72M3hTuK91vloV+42PYYxCYVCHU7dTtcSzEUQhUBU78=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U7Orj2adkCcNPZoE7qlV5YCszU3oOdLVDe8AqLL/XSxn6cNPVfS4kQGj26RC68WkN
	 vItUfhQWNQU/02xBV4qrQQvT1cnLDhAR3sT9EVdBlAz930PIygSJ0p5yWFieSW+83Z
	 pUDwlZj2srsCe8GoM2+LpS86L7Zcc25GwpNZtFj54ABqd0wJNweUQQyAwJ7ohP74Gg
	 /NWqE4/WOhb9nQbDNTIh6GKQqTyFYMJ7E2tT7vHYaPK131SrVVBGcvkun2Zebzk4Zb
	 v8tz/vGZH9KYdn9JB9gt9sE6X+BW9/balvNMWdGT0qkR3qvKjIAdBiNPFNgFucyeuf
	 Zx/V8NmCE3ICg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NW308RelN6dI; Fri, 23 Sep 2022 12:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAD6B83ECA;
	Fri, 23 Sep 2022 12:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAD6B83ECA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A75AD1BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 12:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81660408F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 12:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81660408F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K6_uhiM6c3hY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 12:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97CCD4011C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97CCD4011C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 12:47:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="326913686"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="326913686"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 05:47:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="688704170"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2022 05:47:52 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1obi5v-0005fc-1p;
 Fri, 23 Sep 2022 12:47:51 +0000
Date: Fri, 23 Sep 2022 20:47:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632daaca.ib3jUw9olJjR3VUd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663937273; x=1695473273;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1uoP3kbP0ZLl8rIuWpaEj3/ew427ywfxjWNgvZJHBlQ=;
 b=Jh1gEt7WLpOXc5+DEsSDdkGCoBRORV1qhWQXxlpuARFplGzFXFyuUEQt
 U6M7PaQSg+eGpsuSHx6d27Awdcq1KQKn2j1OYM6ApFYWn/AWQdsBTWHWO
 r2eHU3sL5nzaiivRgpjCyOk5V1HGM5/LV/yJSuwZyU1fca0Xi0lyqAo0A
 6ktgv8z2aNJolPD22vgR4UJgrkATW/rtYH7RH7329GG+84eTuD7bqHZFl
 Ew4VtRq3EJEJRs5/XYgzjNWSvOMWWiqypHcu5VUtmF19wc6WtiWhEUnO1
 3g1uqwv8X86Ya0VLZH3UdQdg+XcHuHTRK65wCLrE4PX2I3NGnr7g/xJaO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jh1gEt7W
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 83e4b196838d90799a8879e5054a3beecf9ed256
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
branch HEAD: 83e4b196838d90799a8879e5054a3beecf9ed256  selftests: forwarding: add shebang for sch_red.sh

elapsed time: 1303m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20220922
x86_64                        randconfig-a006
i386                          randconfig-a005
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
ia64                             allmodconfig
mips                           ip32_defconfig
arm                         s3c6400_defconfig
s390                       zfcpdump_defconfig
sh                   sh7770_generic_defconfig
xtensa                         virt_defconfig
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
s390                             allmodconfig
x86_64                           allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                             allyesconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
sparc                               defconfig
loongarch                        alldefconfig
xtensa                       common_defconfig
m68k                        stmark2_defconfig
i386                          randconfig-c001
i386                          randconfig-a003
i386                          randconfig-a001
powerpc                         wii_defconfig
powerpc                    adder875_defconfig
arm                             ezx_defconfig
mips                       bmips_be_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                          iss_defconfig
nios2                            alldefconfig
m68k                            mac_defconfig
sh                        edosk7705_defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
x86_64                        randconfig-c001
arm                  randconfig-c002-20220922
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
hexagon              randconfig-r041-20220922
riscv                randconfig-r042-20220922
hexagon              randconfig-r045-20220922
s390                 randconfig-r044-20220922
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a006
powerpc                        fsp2_defconfig
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                      ppc64e_defconfig
arm                          ep93xx_defconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-c007
arm                  randconfig-c002-20220922
i386                          randconfig-c001
s390                 randconfig-c005-20220922
riscv                randconfig-c006-20220922
mips                 randconfig-c004-20220922
powerpc              randconfig-c003-20220922
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
