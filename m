Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE715ABEC3
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Sep 2022 13:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CFE682897;
	Sat,  3 Sep 2022 11:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CFE682897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662204756;
	bh=W+yayIF8gLv3NkrcpwntNK/MhWW2yZoa+HR1ruqwhH0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rgfqtE6gT6xqiXxCB+FbgM2h4cGeoQ4f+Pq8l6gJ/uKy9HK2LMina1Dd1KdokLvhZ
	 sq7h1g7bgB6jepwgiapxMosIhCgfWlLbmsPKp+5H25MSSkayNitSadzQFCbltZ2C2c
	 F145CZKfzvyvUaYNB8pXZ0+heb6zsb5PE8FY134i1NjHup51FK9Nbjm7YqEyUjDLTn
	 rtIp4hLNZZvRHhFYMkewj9OwLwnyXAV2BwTki1pbQyNy9fCzzAjfVyDJp1UM8ypjBK
	 cj1tfYJtG6MouOtdGHvg/hFj2K4Wf+XoE+YjsxDctNtpHgA9iC4PRIM3aDd5d2RiKV
	 W2+i9CKFUjjAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vS8LfBgQkrxy; Sat,  3 Sep 2022 11:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18676827AA;
	Sat,  3 Sep 2022 11:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18676827AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C0921BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 11:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E0C4410DF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 11:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E0C4410DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qxx5dLevlkOv for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Sep 2022 11:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79D09410DE
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79D09410DE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 11:32:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="297445786"
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="297445786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2022 04:32:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="643248441"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2022 04:32:26 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oURNx-0001ZN-1i;
 Sat, 03 Sep 2022 11:32:25 +0000
Date: Sat, 03 Sep 2022 19:32:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63133b36.Hh2q3sLbpW9Z+dLr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662204748; x=1693740748;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=k0TaK3eohgbszTrWVaQPCseIjfOk0NTp3tkVnqwLPLM=;
 b=Rdmv5uyOJ/kxndIGxA05LStYfNke2wd/EwoRhh7WMIcxqcJmV1nCdAa+
 ifb1njfvJSBYPz9QTMHRHpBRRnzDO6dOsFcb9yAB8wH/oZdUSx1Gj7toX
 L1/NKbsziuQQDq3WifQt6LnJEEIXMLjraPEKW3zTxtgkDGt92viva1UGe
 ufzieGX4You1QSE9DzYvZkMQr3IRZQaOxrilGdzII9xgumnEoRJU7aDkc
 aSgnmsv07bcWf2oBHCHN3oZ5AnHk9O8fZ8iFZPgT01xLI7hmsol3IqajA
 GjHZLHwrWHcGplw0svQGQ41SnKQ+VzlyeVm0R0I+EEAAwaMTJpsJfIj0D
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rdmv5uyO
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 03d4312496643963127441066d93475043659470
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 03d4312496643963127441066d93475043659470  ice: xsk: drop power of 2 ring size restriction for AF_XDP

elapsed time: 771m

configs tested: 85
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a002
arc                  randconfig-r043-20220901
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
x86_64                        randconfig-a006
i386                          randconfig-a005
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
xtensa                  nommu_kc705_defconfig
parisc64                            defconfig
alpha                             allnoconfig
i386                             allyesconfig
sh                        dreamcast_defconfig
arc                               allnoconfig
csky                              allnoconfig
riscv                             allnoconfig
sh                           se7722_defconfig
sh                         microdev_defconfig
openrisc                 simple_smp_defconfig
m68k                         apollo_defconfig
i386                             alldefconfig
sh                     magicpanelr2_defconfig
m68k                        mvme16x_defconfig
xtensa                       common_defconfig
sh                           se7619_defconfig
i386                          randconfig-c001
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
powerpc                    adder875_defconfig
powerpc                       ppc64_defconfig
mips                            ar7_defconfig
mips                    maltaup_xpa_defconfig
mips                           jazz_defconfig
um                               alldefconfig
mips                      loongson3_defconfig
arm                           tegra_defconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a015
riscv                randconfig-r042-20220901
hexagon              randconfig-r045-20220901
hexagon              randconfig-r041-20220901
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
s390                 randconfig-r044-20220901
arm                         mv78xx0_defconfig
powerpc                   microwatt_defconfig
arm                       spear13xx_defconfig
powerpc                       ebony_defconfig
riscv                            alldefconfig
arm                          ixp4xx_defconfig
powerpc                      walnut_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
