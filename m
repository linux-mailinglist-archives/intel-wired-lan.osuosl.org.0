Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A3B705F18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 07:08:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 168D76FE77;
	Wed, 17 May 2023 05:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 168D76FE77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684300089;
	bh=gzyD5rSLNo39diHZvN9RySg2BWkoctwNZJQc2hgscZA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nO1T96wdfnaOtn0Oso5Eobv1Os366ZDY4ZtKD1lKehKOybek8r73Novs7O5VQpUJU
	 Q7WLme9ZAWo9f9YcuOBOvpXjeXhR++5fHu5Jp+of9zVjbROrLnpISXaXOE/cegFmfV
	 kn/uZhiNgU4IzLA8wI5nZjhlN1w7RzfPjsCXL6lb0qVMDtH4o92qGuMLm13VWa5xls
	 MidGfThGLNBysCakNIccm/D81UMLbBNfgJLQWrJV1eRK7S7y49jReKk3x+exdhE+kH
	 q5zV9UgsVBjzhaMHeIsCX5i0eWueR+SweogH/bYYpMiG8U8+gwG8XmfjCoWFqmLZ8J
	 ysOB+o9yeaVSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AB91d4cUJ3tE; Wed, 17 May 2023 05:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B0C560ADD;
	Wed, 17 May 2023 05:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B0C560ADD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3266B1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 05:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1234441D8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 05:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1234441D8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7bXVaql7INR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 05:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32F8141B98
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32F8141B98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 05:07:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="438010509"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="438010509"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 22:07:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="704686302"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="704686302"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 16 May 2023 22:07:54 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pz9OD-0008Gr-32
 for intel-wired-lan@lists.osuosl.org; Wed, 17 May 2023 05:07:53 +0000
Date: Wed, 17 May 2023 13:07:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230517050725.d1v2y%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684300076; x=1715836076;
 h=date:from:to:subject:message-id;
 bh=HyGwyNxX6zQeg0jrSbq/vGjSuXOy4HWDiEFv01GPUJo=;
 b=QPt9QniS/+DhFxPvs1q0vARrlHvZp/4MKNgzz+gEvP+spnErx7UzH1g6
 jZMqwvBjneN6M9AteUQ0QrK1JwLrUlICqmyBLmvSLJDq/iAN/Xf57/yMU
 h5jOkXn3HwkUsS9sDotLpyDlQR9JfpjhvDHaytIVHx6NxVdC9vkHrmjib
 RHbTdDLK8V8Jgbcv4qhithm6A4yogw0kXnSXD2+gYBr9fDVDIPCog7MjI
 jvA1mn/uYfrYO8H/zDVIiXdtlr9ZVczGzXUvBOYYsCoYo5l0ZOYEihfWI
 OI0o6v/oq8ZsrNBNqZp7g2p6MElQa/aG0Df3Z4XAk/H43uXqYC4PQwD/d
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QPt9QniS
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 225c657945c4a6307741cb3cc89467eadcc26e9b
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: INFO setup_repo_specs: /db/releases/20230517121050/lkp-src/repo/*/tnguy-net-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 225c657945c4a6307741cb3cc89467eadcc26e9b  net: bcmgenet: Restore phy_stop() depending upon suspend/close

elapsed time: 1254m

configs tested: 452
configs skipped: 34

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230515   gcc  
alpha        buildonly-randconfig-r003-20230515   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230515   gcc  
alpha                randconfig-r005-20230516   gcc  
alpha                randconfig-r011-20230515   gcc  
alpha                randconfig-r013-20230515   gcc  
alpha                randconfig-r013-20230516   gcc  
alpha                randconfig-r025-20230515   gcc  
alpha                randconfig-r032-20230515   gcc  
alpha                randconfig-r033-20230516   gcc  
alpha                randconfig-r034-20230515   gcc  
alpha                randconfig-r036-20230516   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc          buildonly-randconfig-r003-20230515   gcc  
arc          buildonly-randconfig-r003-20230517   gcc  
arc          buildonly-randconfig-r006-20230515   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r001-20230515   gcc  
arc                  randconfig-r005-20230515   gcc  
arc                  randconfig-r015-20230515   gcc  
arc                  randconfig-r015-20230516   gcc  
arc                  randconfig-r022-20230516   gcc  
arc                  randconfig-r043-20230515   gcc  
arc                  randconfig-r043-20230516   gcc  
arm                              alldefconfig   clang
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                          collie_defconfig   clang
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                            qcom_defconfig   gcc  
arm                  randconfig-r001-20230515   gcc  
arm                  randconfig-r002-20230515   gcc  
arm                  randconfig-r004-20230515   gcc  
arm                  randconfig-r025-20230515   clang
arm                  randconfig-r032-20230515   gcc  
arm                  randconfig-r036-20230515   gcc  
arm                  randconfig-r046-20230515   clang
arm                  randconfig-r046-20230516   gcc  
arm                  randconfig-r046-20230517   clang
arm                        shmobile_defconfig   gcc  
arm                         socfpga_defconfig   clang
arm                           spitz_defconfig   clang
arm                       versatile_defconfig   clang
arm64                            alldefconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230515   clang
arm64                randconfig-r014-20230515   gcc  
arm64                randconfig-r024-20230516   clang
csky         buildonly-randconfig-r001-20230515   gcc  
csky         buildonly-randconfig-r002-20230515   gcc  
csky         buildonly-randconfig-r003-20230515   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230516   gcc  
csky                 randconfig-r004-20230515   gcc  
csky                 randconfig-r006-20230515   gcc  
csky                 randconfig-r011-20230515   gcc  
csky                 randconfig-r012-20230516   gcc  
csky                 randconfig-r022-20230515   gcc  
csky                 randconfig-r023-20230515   gcc  
csky                 randconfig-r026-20230517   gcc  
csky                 randconfig-r031-20230515   gcc  
csky                 randconfig-r031-20230516   gcc  
csky                 randconfig-r036-20230515   gcc  
hexagon              randconfig-r006-20230515   clang
hexagon              randconfig-r021-20230515   clang
hexagon              randconfig-r023-20230515   clang
hexagon              randconfig-r024-20230516   clang
hexagon              randconfig-r025-20230516   clang
hexagon              randconfig-r026-20230516   clang
hexagon              randconfig-r031-20230515   clang
hexagon              randconfig-r033-20230515   clang
hexagon              randconfig-r041-20230515   clang
hexagon              randconfig-r041-20230516   clang
hexagon              randconfig-r041-20230517   clang
hexagon              randconfig-r045-20230515   clang
hexagon              randconfig-r045-20230516   clang
hexagon              randconfig-r045-20230517   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230515   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230515   clang
i386                 randconfig-a002-20230515   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230515   clang
i386                 randconfig-a004-20230515   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230515   clang
i386                 randconfig-a006-20230515   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230515   gcc  
i386                 randconfig-a012-20230515   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230515   gcc  
i386                 randconfig-a014-20230515   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230515   gcc  
i386                 randconfig-a016-20230515   gcc  
i386                          randconfig-a016   gcc  
i386                 randconfig-i051-20230515   clang
i386                 randconfig-i052-20230515   clang
i386                          randconfig-i052   clang
i386                 randconfig-i053-20230515   clang
i386                 randconfig-i054-20230515   clang
i386                          randconfig-i054   clang
i386                 randconfig-i055-20230515   clang
i386                 randconfig-i056-20230515   clang
i386                          randconfig-i056   clang
i386                 randconfig-i061-20230515   clang
i386                 randconfig-i062-20230515   clang
i386                          randconfig-i062   clang
i386                 randconfig-i063-20230515   clang
i386                 randconfig-i064-20230515   clang
i386                          randconfig-i064   clang
i386                 randconfig-i065-20230515   clang
i386                 randconfig-i066-20230515   clang
i386                          randconfig-i066   clang
i386                 randconfig-i071-20230515   gcc  
i386                          randconfig-i071   clang
i386                 randconfig-i072-20230515   gcc  
i386                 randconfig-i073-20230515   gcc  
i386                          randconfig-i073   clang
i386                 randconfig-i074-20230515   gcc  
i386                 randconfig-i075-20230515   gcc  
i386                          randconfig-i075   clang
i386                 randconfig-i076-20230515   gcc  
i386                 randconfig-i081-20230515   gcc  
i386                 randconfig-i082-20230515   gcc  
i386                          randconfig-i082   clang
i386                 randconfig-i083-20230515   gcc  
i386                 randconfig-i084-20230515   gcc  
i386                          randconfig-i084   clang
i386                 randconfig-i085-20230515   gcc  
i386                 randconfig-i086-20230515   gcc  
i386                          randconfig-i086   clang
i386                 randconfig-i091-20230515   clang
i386                 randconfig-i092-20230515   clang
i386                 randconfig-i093-20230515   clang
i386                 randconfig-i094-20230515   clang
i386                 randconfig-i095-20230515   clang
i386                 randconfig-i096-20230515   clang
i386                 randconfig-r014-20230515   gcc  
i386                 randconfig-r016-20230515   gcc  
ia64                             allmodconfig   gcc  
ia64                         bigsur_defconfig   gcc  
ia64         buildonly-randconfig-r004-20230515   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230515   gcc  
ia64                 randconfig-r005-20230515   gcc  
ia64                 randconfig-r011-20230515   gcc  
ia64                 randconfig-r011-20230516   gcc  
ia64                 randconfig-r013-20230515   gcc  
ia64                 randconfig-r024-20230516   gcc  
ia64                 randconfig-r032-20230516   gcc  
ia64                 randconfig-r033-20230515   gcc  
ia64                          tiger_defconfig   gcc  
ia64                            zx1_defconfig   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230517   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230516   gcc  
loongarch            randconfig-r002-20230515   gcc  
loongarch            randconfig-r021-20230515   gcc  
loongarch            randconfig-r023-20230516   gcc  
loongarch            randconfig-r031-20230515   gcc  
loongarch            randconfig-r033-20230515   gcc  
loongarch            randconfig-r035-20230515   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k         buildonly-randconfig-r001-20230515   gcc  
m68k         buildonly-randconfig-r002-20230515   gcc  
m68k         buildonly-randconfig-r004-20230515   gcc  
m68k         buildonly-randconfig-r005-20230517   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                 randconfig-r002-20230516   gcc  
m68k                 randconfig-r005-20230515   gcc  
m68k                 randconfig-r016-20230515   gcc  
m68k                 randconfig-r022-20230515   gcc  
m68k                 randconfig-r033-20230515   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze           randconfig-r002-20230516   gcc  
microblaze           randconfig-r012-20230515   gcc  
microblaze           randconfig-r013-20230515   gcc  
microblaze           randconfig-r014-20230515   gcc  
microblaze           randconfig-r015-20230515   gcc  
microblaze           randconfig-r021-20230515   gcc  
microblaze           randconfig-r036-20230516   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                        bcm47xx_defconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                         bigsur_defconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                      bmips_stb_defconfig   clang
mips         buildonly-randconfig-r006-20230515   gcc  
mips                           ip28_defconfig   clang
mips                     loongson1c_defconfig   clang
mips                      maltaaprp_defconfig   clang
mips                           mtx1_defconfig   clang
mips                 randconfig-r002-20230515   gcc  
mips                 randconfig-r004-20230515   gcc  
mips                 randconfig-r022-20230515   clang
mips                 randconfig-r035-20230515   gcc  
mips                           rs90_defconfig   clang
nios2                         3c120_defconfig   gcc  
nios2        buildonly-randconfig-r005-20230515   gcc  
nios2        buildonly-randconfig-r006-20230516   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230515   gcc  
nios2                randconfig-r005-20230516   gcc  
nios2                randconfig-r011-20230515   gcc  
nios2                randconfig-r021-20230515   gcc  
nios2                randconfig-r022-20230515   gcc  
nios2                randconfig-r023-20230515   gcc  
nios2                randconfig-r024-20230515   gcc  
nios2                randconfig-r034-20230515   gcc  
openrisc     buildonly-randconfig-r003-20230515   gcc  
openrisc     buildonly-randconfig-r005-20230516   gcc  
openrisc     buildonly-randconfig-r006-20230515   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r014-20230515   gcc  
openrisc             randconfig-r015-20230515   gcc  
openrisc             randconfig-r023-20230515   gcc  
openrisc             randconfig-r036-20230515   gcc  
parisc                           alldefconfig   gcc  
parisc       buildonly-randconfig-r001-20230515   gcc  
parisc       buildonly-randconfig-r001-20230516   gcc  
parisc       buildonly-randconfig-r004-20230515   gcc  
parisc       buildonly-randconfig-r005-20230515   gcc  
parisc       buildonly-randconfig-r006-20230515   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230515   gcc  
parisc               randconfig-r006-20230516   gcc  
parisc               randconfig-r012-20230516   gcc  
parisc               randconfig-r013-20230515   gcc  
parisc               randconfig-r015-20230515   gcc  
parisc               randconfig-r021-20230515   gcc  
parisc               randconfig-r026-20230515   gcc  
parisc               randconfig-r026-20230516   gcc  
parisc               randconfig-r031-20230515   gcc  
parisc               randconfig-r031-20230516   gcc  
parisc               randconfig-r032-20230516   gcc  
parisc               randconfig-r034-20230516   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                       ebony_defconfig   clang
powerpc                        fsp2_defconfig   clang
powerpc                        icon_defconfig   clang
powerpc                      makalu_defconfig   gcc  
powerpc                   microwatt_defconfig   clang
powerpc                 mpc832x_rdb_defconfig   clang
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                 mpc8560_ads_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                      pmac32_defconfig   clang
powerpc                     ppa8548_defconfig   clang
powerpc              randconfig-r001-20230515   clang
powerpc              randconfig-r004-20230515   clang
powerpc              randconfig-r025-20230515   gcc  
powerpc              randconfig-r025-20230517   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     skiroot_defconfig   clang
powerpc                    socrates_defconfig   clang
powerpc                     tqm8560_defconfig   clang
powerpc                      tqm8xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230515   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230515   clang
riscv                randconfig-r004-20230515   clang
riscv                randconfig-r004-20230516   gcc  
riscv                randconfig-r012-20230515   gcc  
riscv                randconfig-r022-20230517   gcc  
riscv                randconfig-r025-20230515   gcc  
riscv                randconfig-r036-20230516   gcc  
riscv                randconfig-r042-20230515   gcc  
riscv                randconfig-r042-20230516   clang
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230517   gcc  
s390         buildonly-randconfig-r002-20230515   gcc  
s390         buildonly-randconfig-r003-20230515   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230515   clang
s390                 randconfig-r005-20230515   clang
s390                 randconfig-r012-20230515   gcc  
s390                 randconfig-r013-20230515   gcc  
s390                 randconfig-r022-20230516   clang
s390                 randconfig-r023-20230516   clang
s390                 randconfig-r024-20230515   gcc  
s390                 randconfig-r026-20230516   clang
s390                 randconfig-r032-20230515   clang
s390                 randconfig-r033-20230515   clang
s390                 randconfig-r034-20230516   gcc  
s390                 randconfig-r035-20230515   clang
s390                 randconfig-r044-20230515   gcc  
s390                 randconfig-r044-20230516   clang
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230516   gcc  
sh           buildonly-randconfig-r004-20230516   gcc  
sh           buildonly-randconfig-r004-20230517   gcc  
sh           buildonly-randconfig-r005-20230515   gcc  
sh                        dreamcast_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                   randconfig-r001-20230515   gcc  
sh                   randconfig-r003-20230515   gcc  
sh                   randconfig-r011-20230516   gcc  
sh                   randconfig-r013-20230516   gcc  
sh                   randconfig-r015-20230515   gcc  
sh                   randconfig-r024-20230515   gcc  
sh                   randconfig-r032-20230515   gcc  
sh                   randconfig-r032-20230516   gcc  
sh                   randconfig-r033-20230515   gcc  
sh                   randconfig-r034-20230515   gcc  
sh                   randconfig-r036-20230516   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230515   gcc  
sparc                randconfig-r015-20230515   gcc  
sparc                randconfig-r032-20230515   gcc  
sparc                randconfig-r033-20230516   gcc  
sparc                randconfig-r034-20230515   gcc  
sparc                randconfig-r035-20230516   gcc  
sparc64      buildonly-randconfig-r004-20230515   gcc  
sparc64      buildonly-randconfig-r006-20230515   gcc  
sparc64              randconfig-r006-20230515   gcc  
sparc64              randconfig-r011-20230515   gcc  
sparc64              randconfig-r012-20230515   gcc  
sparc64              randconfig-r033-20230516   gcc  
sparc64              randconfig-r035-20230516   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230515   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230515   clang
x86_64               randconfig-a003-20230515   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230515   clang
x86_64               randconfig-a005-20230515   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230515   clang
x86_64               randconfig-a011-20230515   gcc  
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230515   gcc  
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230515   gcc  
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230515   gcc  
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230515   gcc  
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230515   gcc  
x86_64                        randconfig-a016   clang
x86_64               randconfig-k001-20230515   gcc  
x86_64               randconfig-r011-20230515   gcc  
x86_64               randconfig-r014-20230515   gcc  
x86_64               randconfig-r016-20230515   gcc  
x86_64               randconfig-r035-20230515   clang
x86_64               randconfig-x051-20230515   gcc  
x86_64               randconfig-x052-20230515   gcc  
x86_64                        randconfig-x052   clang
x86_64               randconfig-x053-20230515   gcc  
x86_64               randconfig-x054-20230515   gcc  
x86_64                        randconfig-x054   clang
x86_64               randconfig-x055-20230515   gcc  
x86_64               randconfig-x056-20230515   gcc  
x86_64                        randconfig-x056   clang
x86_64               randconfig-x061-20230515   gcc  
x86_64               randconfig-x062-20230515   gcc  
x86_64               randconfig-x063-20230515   gcc  
x86_64               randconfig-x064-20230515   gcc  
x86_64               randconfig-x065-20230515   gcc  
x86_64               randconfig-x066-20230515   gcc  
x86_64               randconfig-x071-20230515   clang
x86_64                        randconfig-x071   clang
x86_64               randconfig-x072-20230515   clang
x86_64               randconfig-x073-20230515   clang
x86_64                        randconfig-x073   clang
x86_64               randconfig-x074-20230515   clang
x86_64               randconfig-x075-20230515   clang
x86_64                        randconfig-x075   clang
x86_64               randconfig-x076-20230515   clang
x86_64               randconfig-x081-20230515   clang
x86_64               randconfig-x082-20230515   clang
x86_64                        randconfig-x082   clang
x86_64               randconfig-x083-20230515   clang
x86_64               randconfig-x084-20230515   clang
x86_64                        randconfig-x084   clang
x86_64               randconfig-x085-20230515   clang
x86_64               randconfig-x086-20230515   clang
x86_64                        randconfig-x086   clang
x86_64               randconfig-x091-20230515   gcc  
x86_64               randconfig-x092-20230515   gcc  
x86_64                        randconfig-x092   gcc  
x86_64               randconfig-x093-20230515   gcc  
x86_64               randconfig-x094-20230515   gcc  
x86_64                        randconfig-x094   gcc  
x86_64               randconfig-x095-20230515   gcc  
x86_64               randconfig-x096-20230515   gcc  
x86_64                        randconfig-x096   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa       buildonly-randconfig-r001-20230515   gcc  
xtensa       buildonly-randconfig-r004-20230515   gcc  
xtensa       buildonly-randconfig-r006-20230515   gcc  
xtensa                       common_defconfig   gcc  
xtensa               randconfig-r003-20230515   gcc  
xtensa               randconfig-r014-20230516   gcc  
xtensa               randconfig-r021-20230517   gcc  
xtensa               randconfig-r026-20230515   gcc  
xtensa               randconfig-r036-20230515   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
