Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E48590AFB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 06:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF38D61117;
	Fri, 12 Aug 2022 04:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF38D61117
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660278221;
	bh=pQr8GYtdnoc1lB5fPnQaDHh/k9TK1MlrhqArpegN4R0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IzmBWVBmVf/YPDRQ8L8qqHqp/cana9fHtWN2TYRa0J4JBbiKTlo0+kITtbNG4Jxtf
	 j+e42r6ZiDD90MHDCz8KUI9kIE74o77oeFrfU68netI4ErapB6btjRjOJlhQHmaWDt
	 6UcrLvO8hF6/4EvDrfJhQePC3S/ZiVFH9rJhuUluNdFe/j2I8bUxvupJgQxe/7z8Rd
	 QYLOBjjPg96eB/7M67BeEWpMHePT7fo1L4zkJITgeJbQbrAsNuNmp+QZl+9meKXM61
	 FiXDd/t/TPyaSUfaPQNl6zwW17qnXTFwLF77rqZloYukxSh7D7z8w/jnJhF84goY7J
	 HsaUrpPx5oP4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0O7J3nCoO9rD; Fri, 12 Aug 2022 04:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B59A560F5E;
	Fri, 12 Aug 2022 04:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B59A560F5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCD751BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E0D660F5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E0D660F5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7SzrmuTit7I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 04:23:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D2F6605B1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D2F6605B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:23:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292312976"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292312976"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:23:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="556392956"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 11 Aug 2022 21:23:31 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMMCo-00008A-2c;
 Fri, 12 Aug 2022 04:23:30 +0000
Date: Fri, 12 Aug 2022 12:23:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f5d5c0.jd00b95fyYCKucyu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660278213; x=1691814213;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=D0uQXqecQhHoNQO2y5NufO4IGmFwAJjxCvi7mgHjKKg=;
 b=eT0kocGpIkbQZ2vn1XmUX9M+QYnXW4bD9EgKs8VZaGwNOUr8PdLnQo2k
 f6eLgNVZGoeWdflmtD3UZ0+z0e6srJDZpLaMtvNRxfttln950hBPttovd
 b1tD1yE2IZxZW339C6nyu3ExXhNlktPt1rom/mB9RCfJp8u1bQfZId9zu
 f2n1OyCsZg/3ByQarmk93AWEeSl1ord4neuIaZKMoeABRHr6v0hVgdwHJ
 5xZYFKm8F9G/F17mUq5u6dzx/GgavKCegnm5dIHgZfLqV2Pwf5r+GVHCI
 2NFzNb+ScypmkxjYJvp/iyw/5eIuR922IbdtiCPtmDoG9nK8IyGR9FZGx
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eT0kocGp
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 84ba28901629cd3aa3b24d359bc4da3ac24c2329
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
branch HEAD: 84ba28901629cd3aa3b24d359bc4da3ac24c2329  Merge git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf

elapsed time: 793m

configs tested: 74
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20220811
i386                             allyesconfig
i386                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
xtensa                  cadence_csp_defconfig
arm64                            alldefconfig
ia64                            zx1_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
sh                   secureedge5410_defconfig
sh                          rsk7264_defconfig
m68k                       m5475evb_defconfig
sh                        sh7757lcr_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                           tb10x_defconfig
sh                            titan_defconfig
arm                           tegra_defconfig
i386                          randconfig-c001
m68k                        mvme147_defconfig
csky                             alldefconfig
mips                            gpr_defconfig
xtensa                           allyesconfig
arc                        nsimosci_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
hexagon              randconfig-r045-20220811
hexagon              randconfig-r041-20220811
riscv                randconfig-r042-20220811
s390                 randconfig-r044-20220811
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
mips                        omega2p_defconfig
mips                  cavium_octeon_defconfig
powerpc                     kmeter1_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
