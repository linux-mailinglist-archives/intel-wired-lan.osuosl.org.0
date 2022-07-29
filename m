Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7ED584B10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 07:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 619924184D;
	Fri, 29 Jul 2022 05:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 619924184D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659072333;
	bh=YA1T/bSxG+tYR87fo5w4YjTqsIxuP6fEnX2+P0D9TSk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WIrbu6wbzsEjVyN6VWYm9ODkeTMpM59jKM1bv7r9CcxW8+wX2xZ6ZNjCSjiv+wDSJ
	 Mk0Yp9Lpotg39euNdB3lUfXvxgPk5LpwXo5ZjVk8hAKa51Tkxgwd9q9SoSamDy71FA
	 yvV/rDITVkY1b3kx+KniG2I0FfIrJW80mpQmysDyRZXtzZN9/sqUvRZ+Bl4E5Myptl
	 WZGb6J/UQMr8C66c+vI6ADrZvpsDsHxxe6pbN6g1hmPp65UI2SKe+sDfbdIdrCFfeU
	 qzgJ7HjOiMCUM+oooIbU6vARMiVbeeLJgujRFTQkvZ8VeQp8eLVEdGUJWdI2YVUh76
	 zdrsrrg5QG4sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RcyNjr95EP68; Fri, 29 Jul 2022 05:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08DC54183B;
	Fri, 29 Jul 2022 05:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08DC54183B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD7DC1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8789482690
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8789482690
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHLAoePuxqmb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 05:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AD35824F4
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AD35824F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:25:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="374996554"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="374996554"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 22:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="551617901"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 28 Jul 2022 22:25:23 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHIV1-000B8w-03;
 Fri, 29 Jul 2022 05:25:23 +0000
Date: Fri, 29 Jul 2022 13:25:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e36f30.y4Hu7yxNiUrmM+hd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659072325; x=1690608325;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1g+jiRXhMrVtzZgdpyiq+vkvtYR/2lF5FuuQaavrMhU=;
 b=HcRf6m3yMJExwXN9fzpa+rHewnY2mzdcbzAOCswJwdCn9/H5HiPU190v
 8mtBou77M51MpFhuVh2BfO157nu0KRoVjQhNmGgIJzyV8HcxGyzDMmUvt
 7267WGEhJrnXyle9qnpZ8NjMSJPVpl7oRgmuaZxhMPkK+df4WJ9MkC+Iw
 VAvjLOfjSO3Tr3KNJH6Xa+cHsuEYkr0ZzYWcdDkUf6/36jhaEAZ5rnjiu
 DnPvm0E7TpTdGla/UQ0EVC9rpzNK7qR8zwl8P9Gfbs+eTb3uwZuJQS4u/
 d9dx/u7gTdHnGVSD4fmRoc01D7Wlns+5VRsHS7DExkPBD3MQwqR8O+w/n
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HcRf6m3y
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 623cd87006983935de6c2ad8e2d50e68f1b7d6e7
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
branch HEAD: 623cd87006983935de6c2ad8e2d50e68f1b7d6e7  net: cdns,macb: use correct xlnx prefix for Xilinx

elapsed time: 1065m

configs tested: 101
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
s390                       zfcpdump_defconfig
openrisc                         alldefconfig
i386                          randconfig-c001
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
xtensa                  cadence_csp_defconfig
mips                           ip32_defconfig
arc                            hsdk_defconfig
sh                 kfr2r09-romimage_defconfig
sh                     sh7710voipgw_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                        m5407c3_defconfig
powerpc                     taishan_defconfig
sh                         ap325rxa_defconfig
powerpc                      tqm8xx_defconfig
arm                          lpd270_defconfig
arm                                 defconfig
arm                              allyesconfig
s390                 randconfig-r044-20220728
arc                  randconfig-r043-20220728
riscv                randconfig-r042-20220728
i386                             allyesconfig
arm64                            allyesconfig
x86_64                           allyesconfig
ia64                        generic_defconfig
sh                           se7343_defconfig
arm                            mps2_defconfig
openrisc                    or1ksim_defconfig
alpha                            allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                 randconfig-c004-20220728
powerpc              randconfig-c003-20220728
nios2                               defconfig
m68k                            mac_defconfig
ix86_64                              rhel-8.3
ia64                          tiger_defconfig
microblaze                          defconfig
arm                         axm55xx_defconfig
nios2                         10m50_defconfig
alpha                               defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220728
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
hexagon              randconfig-r041-20220728
hexagon              randconfig-r045-20220728
powerpc                     tqm5200_defconfig
powerpc                        fsp2_defconfig
powerpc                      katmai_defconfig
powerpc                   microwatt_defconfig
powerpc                      ppc64e_defconfig
mips                          rm200_defconfig
arm                  colibri_pxa270_defconfig
arm                      pxa255-idp_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                 mpc836x_mds_defconfig
riscv                             allnoconfig
arm                         hackkit_defconfig
powerpc                      ppc44x_defconfig
arm                  colibri_pxa300_defconfig
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
