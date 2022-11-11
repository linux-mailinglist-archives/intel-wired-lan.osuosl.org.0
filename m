Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C10A16258E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 11:57:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C4B260B2D;
	Fri, 11 Nov 2022 10:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C4B260B2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668164233;
	bh=U3HkTTBzW2PZlyDPx1W9WuOHlx/cZhMUnxHEYmfpTeM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0ZRZed+1CNDIm6YrFFaXt3SoAd0zxmOSvNr9R+tRbxS6ZAyL8xSziJ+649QgxUTFK
	 KXElXH/ZrBhyLqnxqekoUoiw58IwSAWWopimo/nbUf0KVOzDFtceR59AO6gl7mEHGw
	 m9jS6ayhK8Ld1kXWLUPB2XVxgadrjxNK4XUog/pfjE9svN2ZFZVvMLqCt42Wc5DdzU
	 2hcUZtb32NpZehCzuaeiZsm7rVO07YSArge7MAlV50gNQok7jQC/4l6kbjd8Igpcoy
	 P8njbqLPFkXj79hoqgW/mdMJxylcoV6cj1nBaGlwCgoRQeGPz5Im8O2qAVOAJaaYop
	 l2JFJkxb9aPTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4anRcjjXmta; Fri, 11 Nov 2022 10:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D42860B26;
	Fri, 11 Nov 2022 10:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D42860B26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81A9A1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 10:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56CC44015F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 10:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56CC44015F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZZYTSuz43P7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 10:57:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91177400BB
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91177400BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 10:57:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="309202844"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="309202844"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 02:57:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668779456"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="668779456"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 11 Nov 2022 02:57:04 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otRia-0003sY-0V;
 Fri, 11 Nov 2022 10:57:04 +0000
Date: Fri, 11 Nov 2022 18:56:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636e2a48.QH87iC9mbIPhOPo5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668164226; x=1699700226;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3OD+wfkL5G3vJQtncF8bR/axRXkSkJ1WipXKlsoj6c0=;
 b=ffKI48hDZm1RKs1owyu7qhcpN4Iv5PLpW/oPjqbXUCw3L7CgU4CflkGV
 UJ1lp710pbiRZ7x1AmP5uQRvvlNu0VsVxeJafOARzxpM81rwBj/XDRJ+D
 Y+64rrFEvBj9XkNuFQXNw0N+TsREjsz3uIF4CwiCvaNhTY7RDcP0Lu+BJ
 4ZNXEBpSvaFnxWkxwZfpGj6JNt4YL5MXJDSxEQmAxRA4Tx6WfMK4NdwP9
 brb1CAkSsXWr18MUKGoeub6GgcPeMnPHJ0XGCAXAOyafkCNl/r96l8mjb
 VWFaxnUkWMsR9VbxX6KuOvGjahMqSadhUVyd9QvHV3nVzLqkjVFhrDDde
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ffKI48hD
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 79b0872b1075abd36b3c141f510ff7ec1878c22f
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
branch HEAD: 79b0872b1075abd36b3c141f510ff7ec1878c22f  Merge branch 'mana-shared-6.2' of https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma

elapsed time: 823m

configs tested: 64
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                            allnoconfig
s390                             allmodconfig
arc                                 defconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
i386                                defconfig
arc                        nsimosci_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                       ppc64_defconfig
arm                          pxa910_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
alpha                               defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20221111
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
sh                   secureedge5410_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                    xip_kc705_defconfig
xtensa                          iss_defconfig
powerpc                 mpc834x_mds_defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a006
arc                  randconfig-r043-20221110
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                             allyesconfig
riscv                randconfig-r042-20221111
arc                  randconfig-r043-20221111
x86_64                        randconfig-a002
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221110
riscv                randconfig-r042-20221110
hexagon              randconfig-r045-20221110
s390                 randconfig-r044-20221110
i386                          randconfig-a002
i386                          randconfig-a006
arm                       aspeed_g4_defconfig
mips                      pic32mzda_defconfig
arm                         lpc32xx_defconfig
powerpc                      obs600_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
