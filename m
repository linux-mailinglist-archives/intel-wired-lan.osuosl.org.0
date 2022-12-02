Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5630D63FF8A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Dec 2022 05:44:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CBA661127;
	Fri,  2 Dec 2022 04:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CBA661127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669956246;
	bh=CD1JxuPc++MC3KENsUht7GLB/z+1pNu5mn+lxPWFL2g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6x55aXzLbS1mrfeVDtcGaw1QOk38SPKsfT/fUJ3GCk8O2/1wKZaNqsyC4cZdtJ15e
	 +67d39pvQEs7CbnX4dR8fDhGAg0C1ibE0MZfZgvcMHZgVTOwtKwKHPQNlwl20w8sxi
	 UKKmLUuRyUsrq5mZRKeGBloIdBOj41xlln+rvNHNZ5J4wr3ANKkZvp1M8iii6rQEzD
	 OliY4weD4dOAdt6Kn6GVgTBJeCLva8vXkbBvftGtKt/+qNnYWumLjmmTiDIZMZ/Zc2
	 gB9jCuLPSjFt2EFiBI+M4b5PyR2XVkhk1kkmyzhjudGBl0zXAJGNcuL6o78m1o1Zpt
	 /lMZMepI9vxSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qWYtmr9XOwZz; Fri,  2 Dec 2022 04:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 676A36111D;
	Fri,  2 Dec 2022 04:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 676A36111D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5DF61BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 04:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 849AC405E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 04:44:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 849AC405E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZhHa1Z8EvixH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Dec 2022 04:43:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6694D405D0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6694D405D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 04:43:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="303472858"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="303472858"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 20:43:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="890011850"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="890011850"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2022 20:43:57 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0xu0-000DGB-1O;
 Fri, 02 Dec 2022 04:43:56 +0000
Date: Fri, 02 Dec 2022 12:43:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63898285.QVCDm933ZirYQDB0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669956239; x=1701492239;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mhQy8Ptj3eqU3M6dY8Z2SapSTFVaYNFQ0pPZ2ez4ZiU=;
 b=EPa2XnIbkGnrORNgmUPMaj73UUarKp6l1sOo1YUA0k8pPPqGaBuCSD2r
 dAMYoGOqzsxFWpHUMjWbtPQELdkMjNggNFzlNMdJQATqkQWIgtl9nU8Ga
 Bryk7fcbWd+dq7vc7tMN+ZdC/twBfS9xwq/t0HRjFb7oKICNo/41F+S8v
 mBajUbupwIXXW21oJ6WNAmXf6d8Cxx93FxBPqjNzUsNItZ71gJ2XJk/y5
 kgAYywZZoftg60klQRFHmNP/PizZ/JkbVGCh62K+EdcUtRpTcxgnUAyFn
 /zPgh5lkC6xjXPo3CABjKnsIw1ghsikH5Pwr0yIPTpaUUyM9rT83IwT3m
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EPa2XnIb
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 c25b7a7a565e5eeb2459b37583eea67942057511
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
branch HEAD: c25b7a7a565e5eeb2459b37583eea67942057511  inet: ping: use hlist_nulls rcu iterator during lookup

elapsed time: 1013m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
i386                                defconfig
arc                  randconfig-r043-20221201
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-c001
arc                        vdk_hs38_defconfig
arm                           stm32_defconfig
powerpc                 mpc834x_itx_defconfig
microblaze                      mmu_defconfig
xtensa                  cadence_csp_defconfig
arm                             rpc_defconfig
parisc                           alldefconfig
m68k                                defconfig
xtensa                    xip_kc705_defconfig
arm                           h5000_defconfig
powerpc                         ps3_defconfig
powerpc                      tqm8xx_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                         apsh4a3a_defconfig
sh                           se7780_defconfig
arc                            hsdk_defconfig
mips                             allmodconfig
xtensa                generic_kc705_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
arm                       omap2plus_defconfig
sh                             shx3_defconfig
arm                          exynos_defconfig
sh                           sh2007_defconfig
powerpc                      pasemi_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221201
hexagon              randconfig-r045-20221201
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
