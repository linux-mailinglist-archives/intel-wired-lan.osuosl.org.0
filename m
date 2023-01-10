Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DDA663F42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jan 2023 12:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A76A60F15;
	Tue, 10 Jan 2023 11:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A76A60F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673350281;
	bh=bQDeLrGnC3aTKhMFIkGzyngXY2bT0UX3Ylkb02l+t9E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I5y8kRiBBIcVcsBG1ndTd+/7cY0cyO95mgFbV6Q7FmBeARw5PDISiYrgGBqpZEolE
	 2J1KrpJh5OXnx5QUHLg4rIIy7XyrQ3z2PKtEvGreADhi++nyGLFGudH0s8bEEUookH
	 Go8bv8aOxVehKEBIkvhBfVxnlYcD5BD8LxD9AIewywpLhWA88uxPLFK4A60xmMzBiC
	 mT0ZAH4LIxUKygtVoEfd+huHJdcNX7zZQt8CPUyNX+6os0mFZGqcvaAm9RaYGWZl3S
	 VKdpeXTTBcBiFofYJwrDm3k4KjumhYm3Mo2iv56WxIclWWQav4QNO4FS85kp5EOGVP
	 ZSo25HhrRjuPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9g8GtjNlOJPy; Tue, 10 Jan 2023 11:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B98E60B48;
	Tue, 10 Jan 2023 11:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B98E60B48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33FC31BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 11:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D69D81A24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 11:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D69D81A24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zqz1KTkK9XGi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jan 2023 11:31:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08B6381493
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08B6381493
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 11:31:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="325128847"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325128847"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 03:31:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650339284"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="650339284"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2023 03:31:12 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFCqV-0007vg-19;
 Tue, 10 Jan 2023 11:31:11 +0000
Date: Tue, 10 Jan 2023 19:29:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63bd4c2c.JvSyAcUf1YmUAgPQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673350274; x=1704886274;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DXH52BncXfnVV9F0Qn7PpYzrLpXEuf5f4GYMLkOXTNI=;
 b=oKMqcTc2yxK6C4v/r7SjtuykNBH35LvMlJ1sOaX9TSI2B8dYzpOz0aVy
 VQYScCX+hhdSdu76yYXY0VOm2PGesOv+lm3yRBsY/43qVhRRLwWn9YGPF
 8/ESgxwToUAcrNr4L4ImjuTLNOeA6VV0sAR+Pt6LCQgoJDrY8V0mKB04r
 poQYEaw7vr0rOOhbTr59b3yKQ0bB+s5AQiCJrT9cMhVZPhcW8NfOXShfa
 qu4OsUWEvo03Nu5suYqFv5AzTNuk7qusn/vG9VH8dL4LLkROcL5saHA0a
 Xojti6sKGRt9ckd+J8TuCI2qEFNe2X3nQcpKHCqPE3e3FMNZB+Rli0USx
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oKMqcTc2
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3b0d4b9dc1f5dadaae2506b1937947624e9020fe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 3b0d4b9dc1f5dadaae2506b1937947624e9020fe  net/i40e: Replace 0-length array with flexible array

elapsed time: 728m

configs tested: 117
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
ia64                             allmodconfig
i386                                defconfig
i386                 randconfig-a011-20230109
x86_64               randconfig-a011-20230109
i386                 randconfig-a013-20230109
x86_64               randconfig-a013-20230109
i386                 randconfig-a012-20230109
x86_64               randconfig-a012-20230109
i386                 randconfig-a014-20230109
x86_64               randconfig-a014-20230109
x86_64                           rhel-8.3-bpf
i386                 randconfig-a016-20230109
x86_64                           rhel-8.3-syz
x86_64               randconfig-a016-20230109
arm                                 defconfig
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a015-20230109
i386                          randconfig-a001
i386                 randconfig-a015-20230109
i386                          randconfig-a003
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
i386                          randconfig-a005
mips                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
riscv                randconfig-r042-20230109
s390                 randconfig-r044-20230109
arm                  randconfig-r046-20230108
arc                  randconfig-r043-20230108
arc                  randconfig-r043-20230109
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                           jazz_defconfig
sparc64                          alldefconfig
arc                         haps_hs_defconfig
m68k                           sun3_defconfig
parisc                generic-32bit_defconfig
sh                     sh7710voipgw_defconfig
mips                            gpr_defconfig
m68k                        m5407c3_defconfig
xtensa                           allyesconfig
ia64                         bigsur_defconfig
m68k                        mvme147_defconfig
sh                           se7712_defconfig
arm                             pxa_defconfig
powerpc                         ps3_defconfig
sh                          polaris_defconfig
powerpc                 canyonlands_defconfig
i386                          randconfig-c001
powerpc                      ppc6xx_defconfig
x86_64                           alldefconfig
powerpc                 mpc834x_mds_defconfig
m68k                        stmark2_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
riscv                randconfig-r042-20230110
s390                 randconfig-r044-20230110
arc                  randconfig-r043-20230110
arm                             rpc_defconfig
arm                           corgi_defconfig
xtensa                    xip_kc705_defconfig
powerpc                     asp8347_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64               randconfig-a003-20230109
x86_64               randconfig-a002-20230109
x86_64               randconfig-a001-20230109
x86_64                          rhel-8.3-rust
x86_64               randconfig-a004-20230109
x86_64               randconfig-a005-20230109
x86_64               randconfig-a006-20230109
arm                  randconfig-r046-20230109
riscv                randconfig-r042-20230108
hexagon              randconfig-r041-20230108
hexagon              randconfig-r041-20230109
hexagon              randconfig-r045-20230108
hexagon              randconfig-r045-20230109
s390                 randconfig-r044-20230108
x86_64                        randconfig-k001
arm                        multi_v5_defconfig
arm                          ep93xx_defconfig
powerpc                     ksi8560_defconfig
i386                 randconfig-a005-20230109
i386                 randconfig-a006-20230109
i386                 randconfig-a001-20230109
i386                 randconfig-a002-20230109
i386                 randconfig-a003-20230109
i386                 randconfig-a004-20230109
arm                          pcm027_defconfig
powerpc                       ebony_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
