Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D6E665912
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 11:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01E59419CA;
	Wed, 11 Jan 2023 10:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01E59419CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673433183;
	bh=u/R/zult0IRJcRCNlNgfe1LnQ/H3b54aDxoD8O4Hjtg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xXyPBAC9+bWf85zfCWFpc4zvDMnPPnmgP1EmJGN2w7d0o1HyqO/KaYSbBBGa4/8aS
	 yTWVPMi7bffcLGS04fwp5FQinzeA/sMOyxNcSHsIh2G8/uTPVtVR05HyoCb3gBEEwl
	 pRtbihgMB3AK6GWZeQPtBLpLxlNTmq4p8iqFWsb3hJ7XFA8BRLJoZlLuYrbhwOudro
	 efXwB5jy0BwAHS8Wom01WNZZ5J5wdocw8ynGsfr8j7TUaUVoDSS4WPBpr5nru6V7ud
	 HP7t45/oLBRt0hvTQA2esvkbEexrX6EqD1GvwtcOAgGPLoakdpjj5kA5VINUI7DKGp
	 jqp3Bt41Od/Cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSZIN2LFWtxb; Wed, 11 Jan 2023 10:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FCE54192B;
	Wed, 11 Jan 2023 10:33:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FCE54192B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 087131BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E274181FBF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E274181FBF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GulzqZxw4nak for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 10:32:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 045BC81F90
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 045BC81F90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:32:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409622388"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="409622388"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 02:32:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="607301731"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="607301731"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 11 Jan 2023 02:32:52 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFYPY-00090s-30;
 Wed, 11 Jan 2023 10:32:51 +0000
Date: Wed, 11 Jan 2023 18:32:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63be9029.TTCNYZQJeoqPhBmw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673433174; x=1704969174;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=C8DHqK03j7iCWvZlBZq4zFUodcpueSUV7Sufo8KOptQ=;
 b=ayG+PBHvzJwSNhpjQgE2DjhDIr2CgSWrO22aq+qzzBJxEBVURGpzfCte
 bS0Q2oJQ0O/UpmFEqLwpiT02sVkt/GDP3BGrPY0wQAvVelgQLQYOHvytj
 Kzr2BrekzB5lzBLoKmvIuyPgZ4gAcMl6qkzXQMDeNCZeC+xKTm+hdJU6H
 urCI1gx2iIj345xKXFzg3U0CD6jQDUYJ1MrygrV2Z9nqiwip4mL/cJvGR
 pnqAsMxax6kbmSVyrX81elTxa4vlrI7GbcSF6dZgGZZ/fe/fB/+bzWtk/
 HlZIkjO85bk98s4j63f75alJr0vcsxtreBmjGKnYmy0WfMNNo33JBKX3r
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ayG+PBHv
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 53da7aec32982f5ee775b69dce06d63992ce4af3
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
branch HEAD: 53da7aec32982f5ee775b69dce06d63992ce4af3  octeontx2-pf: Fix resource leakage in VF driver unbind

elapsed time: 1247m

configs tested: 120
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                            allnoconfig
ia64                             allmodconfig
i386                             allyesconfig
i386                                defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
riscv                randconfig-r042-20230110
s390                 randconfig-r044-20230110
arc                  randconfig-r043-20230110
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
mips                             allyesconfig
arc                        nsim_700_defconfig
sparc64                             defconfig
riscv                               defconfig
arm                            zeus_defconfig
powerpc                 mpc834x_mds_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                           tb10x_defconfig
powerpc                  iss476-smp_defconfig
csky                             alldefconfig
nios2                               defconfig
m68k                          amiga_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
riscv                            allmodconfig
i386                          randconfig-c001
m68k                       m5249evb_defconfig
arm                       aspeed_g5_defconfig
mips                      fuloong2e_defconfig
i386                             alldefconfig
parisc                              defconfig
sh                         microdev_defconfig
sh                          urquell_defconfig
arm                        keystone_defconfig
sh                          rsk7264_defconfig
sh                           se7722_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20230110
sh                           se7724_defconfig
arm                         lpc18xx_defconfig
powerpc                     pq2fads_defconfig
arm                          pxa910_defconfig
openrisc                            defconfig
arm                           h3600_defconfig
mips                 decstation_r4k_defconfig
sh                   rts7751r2dplus_defconfig
m68k                                defconfig
sh                          rsk7201_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                            allyesconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
s390                       zfcpdump_defconfig
arm                         lubbock_defconfig
powerpc                     redwood_defconfig
sh                          rsk7203_defconfig
sh                            hp6xx_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
arm                  randconfig-r046-20230110
hexagon              randconfig-r041-20230110
hexagon              randconfig-r045-20230110
mips                malta_qemu_32r6_defconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
