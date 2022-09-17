Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BED605BB6FD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 09:35:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5474E842D7;
	Sat, 17 Sep 2022 07:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5474E842D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663400158;
	bh=H1v449z08dlb0KlIwPOdmLisD3aNXxycrmeM5I2jOWw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JFFGPVa9grNp7FUEgxhtG2fcCTnBVU0ZC/Acar0IraKmCigu9qFhvhHYraN1Sz2Pr
	 Wj6Yq/Kh9d0nBqiIYn63D43n3NXT51O9HDOsFhDrhn57fLuGByry5FCofReZv3S53v
	 tRjkb1bYsI1ntP+ST8W7hsQMXxj7G4ujlBJp/OP9CyNsBFZlEfE6qSc9qh1R2t2dTL
	 ODJTSyOFDxHJQ4OJhIVidHzVt92zED5hjxPffkvT7OEdAgIR/zEYYhg7iMyvq2VIUk
	 V00Q5A59L+IHie6LH6/SOgQhvpYD3Fnlu+3p7PXyNeJ1IFiqPjsdVbvs0oKkdmwTBb
	 bYQJiJ8e6nT0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8OybTPr1Vof2; Sat, 17 Sep 2022 07:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22E64842C5;
	Sat, 17 Sep 2022 07:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22E64842C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E89341BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 07:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE811842C5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 07:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE811842C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqLIaixJcpfm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Sep 2022 07:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A50EB842C0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A50EB842C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 07:35:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="296722436"
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="296722436"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2022 00:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="569078284"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 17 Sep 2022 00:35:48 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oZSMe-000071-0I;
 Sat, 17 Sep 2022 07:35:48 +0000
Date: Sat, 17 Sep 2022 15:35:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632578a7.T/v/Ibdjq7U/BN0b%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663400150; x=1694936150;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FL3gMFRue4FsSqANog3vL8AeZqaF41gF4E8NZP4JmZg=;
 b=Vx2si4t1GUJ450QnnD64a1rOKengSkTut8+ww2Suzzxvd5qTAZ7ospiN
 WjO2JkBBtDDqoMf0p5HsPZakaI/f7ATfWLptGEKHABoM8qUSxvOYOItJv
 75Vi/D/4U8B4mfYvstFCh+ycZbIDQSrL1PQok+wJ6ulSXcUI4whY8CFJs
 +SRwPrR4xoV5ZTRKHWQNYBBdCZ62elPj7ApjKuWboLjg1eX5Sj/mBnzbw
 gj/OKhwDelIlpdJcJDNg2Bv4l3zuQFCkG++U5wM85UWpgp/BMxOLX3HJq
 kzE9WxYwnSboPRDBdc52TEIKEF8DJXLyvI5lbnaED/qR9BqGDnf7hSBgc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vx2si4t1
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7c92352ce5b0b83ca4d3ef7524095c8a451a7ce4
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
branch HEAD: 7c92352ce5b0b83ca4d3ef7524095c8a451a7ce4  ice: fix rmmod crash when ts2phc is running

elapsed time: 842m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20220917
riscv                randconfig-r042-20220917
s390                 randconfig-r044-20220917
x86_64                              defconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64                               rhel-8.3
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                           allyesconfig
mips                             allyesconfig
s390                                defconfig
sh                               allmodconfig
s390                             allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                                defconfig
i386                          randconfig-a005
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
x86_64                        randconfig-a015
x86_64                    rhel-8.3-kselftests
sh                           se7722_defconfig
csky                             alldefconfig
powerpc                     tqm8548_defconfig
m68k                        m5307c3_defconfig
sh                          lboxre2_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
xtensa                    xip_kc705_defconfig
mips                    maltaup_xpa_defconfig
sparc                               defconfig
powerpc                      pasemi_defconfig
sh                           se7724_defconfig
m68k                          atari_defconfig
sh                          rsk7269_defconfig
powerpc                       maple_defconfig
arm                           imxrt_defconfig
sh                            titan_defconfig
m68k                       m5275evb_defconfig
powerpc                   motionpro_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                          polaris_defconfig
arm                           sama5_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
mips                 decstation_r4k_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
ia64                             allmodconfig
powerpc                  storcenter_defconfig
arm                            mps2_defconfig
arm                       aspeed_g5_defconfig
arm                           h3600_defconfig
openrisc                    or1ksim_defconfig

clang tested configs:
hexagon              randconfig-r041-20220917
hexagon              randconfig-r045-20220917
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
s390                 randconfig-r044-20220916
hexagon              randconfig-r045-20220916
riscv                randconfig-r042-20220916
hexagon              randconfig-r041-20220916
mips                       rbtx49xx_defconfig
arm                         mv78xx0_defconfig
x86_64                        randconfig-k001
arm                       mainstone_defconfig
x86_64                           allyesconfig
arm                                 defconfig
mips                      maltaaprp_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
