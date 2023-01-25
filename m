Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D554367AA03
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 06:39:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1C25610C5;
	Wed, 25 Jan 2023 05:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1C25610C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674625193;
	bh=ROCBJB7mobksRw5r9idpJDOwLhGVYfY+AsQa8wcH8Ac=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a/RWbDKcz+cgEpxTYDIK0DH2wrNG3ba7zVPVvg5Y8vguMoowe1JiGEvOczQ36Eecm
	 HXRRZq1fY31H+NOKrgj+MEpoR4it3tXUEn4cw+sUXWUJKUF2AAhMtVGxfsM/xO+apT
	 q3M1oliKM33OnQZHUnHtoVc21zQFUK1jdKABtlCCmL2mQj0bOtjGeK///D0wHz0bM6
	 bG9+oFebHMbnkyTSkRtzlZt4JQrLicqOdf+Mq6ZXeGGCRrsSW166Ny8trraNwA9tpj
	 6B2a5EMZn6YgOciYE7cyDvqbJKcNMA891ou9tVqbnBXFZB+Il2EWIVgrb01LS+iDwB
	 AinyVERB5p9+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9fLcm2LiTLxz; Wed, 25 Jan 2023 05:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2C5E61042;
	Wed, 25 Jan 2023 05:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2C5E61042
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD9001BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 05:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABF73415D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 05:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABF73415D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Hr6SgrKBDZr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 05:39:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48B50415E7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 48B50415E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 05:39:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="388835450"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="388835450"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 21:39:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="991152294"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="991152294"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2023 21:39:43 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKYVa-000742-2A;
 Wed, 25 Jan 2023 05:39:42 +0000
Date: Wed, 25 Jan 2023 13:39:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d0c093.SzYfOuSwu06qmdpE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674625185; x=1706161185;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nH6O2sZofPSu+i+aJeK9iD+b4vaObzxPJEmCAonFVPg=;
 b=az76rU5WzqKWnFD8NgmJInaOmBcpymAhB/Ms8iLIzKBNpb3GUsuF8Xcl
 g8Qq8q5RY0ZbI7nWng1C2tNDPzY2N+busScPQdA2AhoCInb4YPrnBJhrG
 pKiHt4WzniPPutKbw8xlaK9gC8se5WRF0A2aN/ab15gLedz6P1MAUOVAj
 WagPyiQfW4abe7JGlDcEL/dwlsNpUICseVYlhWs8ZgQ8m0ecgv1SQX7Xh
 zHHaP+K+ioNzuN2oMXIUmBsWio7972fNQ2MJQ0STLavX7x5wJKvNV6T8T
 ET3TufsNk67Bx+ekhYFVhIzoZIJiYKtx7Clr5wUvO2jbqGo0GNC6e7KhL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=az76rU5W
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 c554520f2cbec9ccb5b7301f0602ac65c4d95d53
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
branch HEAD: c554520f2cbec9ccb5b7301f0602ac65c4d95d53  Merge branch 'netlink-protocol-specs'

elapsed time: 1100m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
ia64                             allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a001-20230123
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
alpha                               defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
um                           x86_64_defconfig
arc                                 defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
s390                                defconfig
s390                             allmodconfig
powerpc                           allnoconfig
s390                             allyesconfig
arm                  randconfig-r046-20230123
arc                  randconfig-r043-20230123
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a006-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123
i386                          randconfig-c001
xtensa                  audio_kc705_defconfig
m68k                          atari_defconfig
powerpc                     stx_gp3_defconfig
arm                       aspeed_g5_defconfig
arc                        vdk_hs38_defconfig
powerpc                 mpc837x_rdb_defconfig
m68k                        stmark2_defconfig
mips                        vocore2_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
sh                           se7724_defconfig
sh                          kfr2r09_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
sh                   sh7724_generic_defconfig
xtensa                  cadence_csp_defconfig
sh                           se7751_defconfig
parisc                generic-32bit_defconfig
arm                        clps711x_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                       holly_defconfig
arm                            mps2_defconfig

clang tested configs:
x86_64               randconfig-k001-20230123
riscv                randconfig-r042-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
x86_64                          rhel-8.3-rust
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
mips                   sb1250_swarm_defconfig
mips                     cu1000-neo_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
