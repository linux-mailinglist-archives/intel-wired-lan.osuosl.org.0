Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 473EE619475
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 11:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBBCF6106E;
	Fri,  4 Nov 2022 10:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBBCF6106E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667557828;
	bh=gKSoGUBREU+TF+1v05lRpKatd1OcbDjuhkQY7tE5M+8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bMt4VPo/jHpMkvFn4vmYLIqjh8Ec2VWrvuzYzNXisgzc139Po0if8U2Ctqtxdi5Yu
	 CCPm/uDGdkbT7LXUQf03xkLmJ1mD9YnMZXGkVxaxlPMBX1qIhZipMoQR69zOU7lRLj
	 SNYCXYZCJnc0EiSdKvt1U1eMDTGaEsWu1IbUnPl6lbGhA5+CP8XlT8un2KIRzDh6h8
	 9baBvVJneRPsV73zaUyms7R+6uyJNdSNUIVSkuVzgxIvxVI7DdTbP50hGNgFbw0bln
	 XJAU/EkxL0lv2lJdQQ53ZzlrxFZPGCOgWH0KWBMmY/Mtnahy+2m7tUj7HMjNRbYTEU
	 P02S0iyiGRZow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDmjkosRVa1o; Fri,  4 Nov 2022 10:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3A7A61082;
	Fri,  4 Nov 2022 10:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3A7A61082
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8800E1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 637E981E32
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 637E981E32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yQhE8V8xa6x9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 10:30:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7651681DED
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7651681DED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="372041992"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="372041992"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 03:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="586144516"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="586144516"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 04 Nov 2022 03:30:11 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqtxi-000GtC-2x;
 Fri, 04 Nov 2022 10:30:10 +0000
Date: Fri, 04 Nov 2022 18:29:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6364e983.BO/CNu0FMujRmRMd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667557821; x=1699093821;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=bH3maB2ebXPRUOmcll6JKsyBQVJQv+C/g/cuBcydBaI=;
 b=TVTgI0sXAT/NX+eQZH6S9mO2cHGYVBlTjQqeEGdZkwr7Nd7x/2Q5MIKi
 vs+NsXa4LO9a6fXZVbxpBr3+rnWTfVGVrECBTkZsQjoptXuc4OwBPUCHa
 kXds9FJLwir0+Uz+lHkH7hwq9N1vhHxdxmLFYHZbuzJU3Yv0NRquVCs4L
 nJ/Gbtdc3f+DPeukq75YxGJwT3T42VxDX7MHhONUGg5bjB3fEEf76dy4Q
 IVtaKQ55tht5uKws3eMGwxvDC3AJp/L07bOPY/ifMPj6iBzZ0WuzDl0dF
 /hVxlurpIHapHboJ/Ev/VAK0kh9f4TamFW8JRCjf2hCufrc3dmg93mGh/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TVTgI0sX
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 fbeb229a6622523c092a13c02bd0e15f69240dde
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
branch HEAD: fbeb229a6622523c092a13c02bd0e15f69240dde  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 753m

configs tested: 70
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                        randconfig-a006
i386                          randconfig-a005
s390                 randconfig-r044-20221102
arc                  randconfig-r043-20221102
riscv                randconfig-r042-20221102
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                                defconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
riscv                randconfig-r042-20221104
arc                  randconfig-r043-20221104
s390                 randconfig-r044-20221104
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
powerpc                     taishan_defconfig
xtensa                  cadence_csp_defconfig
m68k                        m5307c3_defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
xtensa                         virt_defconfig
m68k                           sun3_defconfig
arm                        keystone_defconfig
arm                        spear6xx_defconfig
m68k                                defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20221104
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015

clang tested configs:
x86_64                        randconfig-a005
i386                          randconfig-a006
hexagon              randconfig-r041-20221102
hexagon              randconfig-r045-20221102
i386                          randconfig-a002
i386                          randconfig-a004
mips                       rbtx49xx_defconfig
arm                       cns3420vb_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                     am200epdkit_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
