Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6718355F4D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 06:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5A7860C06;
	Wed, 29 Jun 2022 04:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5A7860C06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656475556;
	bh=872fT/C4lYxut2uRHGFggrw6JTEkG8g/LrqAMjkFCyE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OB2TjlbW5XR9N6fbG7rGQJMTr1imloXBmSmgzpsvtJ9mU4SbMqMf3AkKjoFvAU44T
	 u+f0GAqkQGWz0Cey2Lg7BYSoLpFOMWlhDX167YIdM3cHQHnR7f6BmnbCIR4Vu9XRsC
	 y03+/jS0XzGBzVy0TA7Afx3Hpar2A2pxPIDyuNsTwp7Q0/TOlDHW8Ah1f5cic1M9XS
	 noesPX2aD2sZ4qVFej+XH1kYREAGuz/jGCQeCbD230mSrOvYr5IE3d74YgNmCBVqA6
	 OPb4q1mot7meLv77UDmw45KetI5yTnRcRn8ET0yjI/OYPreAn8Wb0nr+0uZbWVg+UM
	 sp7AYLHPACcFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 77rim4yx9rIe; Wed, 29 Jun 2022 04:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C25B760B92;
	Wed, 29 Jun 2022 04:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C25B760B92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FFD41BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02F1160B92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02F1160B92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d2t9F1PziAb5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 04:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7B9360B0E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7B9360B0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:05:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="261717094"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="261717094"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 21:05:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="693399470"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 21:05:47 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o6OxW-000AtO-D5;
 Wed, 29 Jun 2022 04:05:46 +0000
Date: Wed, 29 Jun 2022 12:04:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62bbcf66.puWeb4BoUyheyg+b%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656475548; x=1688011548;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LaOIqS/GooAhz0QNxwKiXwi131vhD21PGG4az11DTTM=;
 b=jYmRD0Z4h+1gqCV8OuS8o2sRIEMwysRuDCNxlXRt+w8f8So/keSAWJE2
 lKwelLGWIcqXOJ+XQszSnUjk3tgaomZRPQxk9m24wNqcGL2mjMG5Ocpne
 C8bl+Ip5aqg7CeIPtUwc07NlEDAH7u3QE/sgIgjMBuuo5zr9NxvZxy/Ka
 xaA1VCDPNtxtfbjXMFkwd1OB+OJqgyIyQv1zQ7bW9Xe+dfmfMnzjT7avp
 tcUV2rKj8Ijy+bTGPE9KHh5giHMYeysiKjaIwSFh6Y3z1LAsAE+bUSTEl
 P6EABpd7rvq+yZ7Y3VdwSbL6NVELnNPMVywRmbQUSaHkAQ/fBLy0q0SG0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jYmRD0Z4
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 d521bc0a0f7cdd56b646e6283d5f7296eb16793d
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
branch HEAD: d521bc0a0f7cdd56b646e6283d5f7296eb16793d  Merge branch 'mlxsw-unified-bridge-conversion-part-4-6'

elapsed time: 873m

configs tested: 87
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220627
sh                               j2_defconfig
sh                           se7343_defconfig
parisc64                         alldefconfig
powerpc                      ppc40x_defconfig
arm                        realview_defconfig
arm                            pleb_defconfig
parisc64                            defconfig
arm                          pxa910_defconfig
arm                            hisi_defconfig
arc                     nsimosci_hs_defconfig
arm                        cerfcube_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 mpc837x_mds_defconfig
sh                           se7712_defconfig
arm                      jornada720_defconfig
ia64                         bigsur_defconfig
arm                       aspeed_g5_defconfig
sh                   sh7770_generic_defconfig
arc                            hsdk_defconfig
arm                         cm_x300_defconfig
riscv                            allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64               randconfig-k001-20220627
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64               randconfig-a014-20220627
x86_64               randconfig-a015-20220627
x86_64               randconfig-a016-20220627
x86_64               randconfig-a013-20220627
x86_64               randconfig-a012-20220627
x86_64               randconfig-a011-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
arm                      pxa255-idp_defconfig
arm                            dove_defconfig
x86_64               randconfig-a005-20220627
x86_64               randconfig-a006-20220627
x86_64               randconfig-a004-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a005-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a002-20220627
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
