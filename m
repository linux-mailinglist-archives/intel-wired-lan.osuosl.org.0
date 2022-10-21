Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBA160759B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 13:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29C6540C1E;
	Fri, 21 Oct 2022 11:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29C6540C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666350496;
	bh=ufHjkqnzVobBH07xfDW/1qAwQ3a/XS+c+i1oHWtFOYQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j2+JbYL7AvgN0VlGl+XredyBqI40zOJUhiYb3FbLKxL77EXZv3QmsWLfUXPVIhZFp
	 KF+yjCMBsNAt8Mq6WJmsTS4pwQncx8at+xWekUO+F4JUYgznaNxpkT2wxGofFsigdy
	 j7dZ/WX7dK34eYDk7Tst4hq4IwWzfYUg03XoblxQpULoNuKcAuptGdW4gReOY6PJqI
	 9yhN+VKWyWWlaKNCK8Mo9R+eqSwDoE03ZbMrXkxc2q/nD7s11Hb0JruGJuU/bP3U+Q
	 1Fpbchdbu/YdPO6LqIQoKNQ8kaSyOLC2Y5K9DhznGBGYgPNWXtsbnxxfJeCF/5EKrX
	 Q4/5sd2RhHklg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VFELKxu2yHLT; Fri, 21 Oct 2022 11:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08ACE40123;
	Fri, 21 Oct 2022 11:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08ACE40123
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D79C1BF311
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 11:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17EF0404D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 11:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17EF0404D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H_y7nrChh0LW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Oct 2022 11:08:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BF4840123
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BF4840123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 11:08:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308663476"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308663476"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 04:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="699292423"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="699292423"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2022 04:08:05 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olpsi-0002Wj-37;
 Fri, 21 Oct 2022 11:08:04 +0000
Date: Fri, 21 Oct 2022 19:07:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63527d76.a6X/WTr1dNaJKMrP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666350487; x=1697886487;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kkTZwxTAXOFkrnBSHf9lA90PZ2i0Py7FB70GGGLoRp0=;
 b=Wb5ZSItfpAvOJ8Mry4smmbYkyMYty0ROzktQ1ACOHadvm2lkoRUf5C/Q
 hEIymKAo9ehfA6BNSRqxD2AivN2e51lFeoOUAW3KSWKAXB+9+IOcgih0e
 5KV4H4ExvYFm/kCT7ej50kZDDTrUKw3iL/uPXwZee7cH0HLyDhJ1xsa7I
 Bo3X7wZAcqWEnWlsT1fCabB9hmA8i+7km5qz32n78RrVEXwA4entHv+CF
 PToQbvd5QyOBIz+wRaGzUgDa2X6eo66vFENz7lrEII9F3MpPfyB8FhoQf
 w3uHAj8da7+egEM3dP4r+o1gPBOYd8M11S0vRrUyBu/JrLe2OWBkhHcFl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wb5ZSItf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7b0906625048a016a865fbca9f93a3f21e29d22b
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
branch HEAD: 7b0906625048a016a865fbca9f93a3f21e29d22b  ice: use GNSS subsystem instead of TTY

elapsed time: 722m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
x86_64                              defconfig
arc                  randconfig-r043-20221019
arc                  randconfig-r043-20221020
s390                 randconfig-r044-20221020
riscv                randconfig-r042-20221020
x86_64                               rhel-8.3
x86_64                           allyesconfig
openrisc                         alldefconfig
powerpc                       holly_defconfig
sh                ecovec24-romimage_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
arm                          gemini_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
i386                                defconfig
s390                             allmodconfig
s390                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
arm                                 defconfig
i386                             allyesconfig
m68k                         apollo_defconfig
arc                        vdk_hs38_defconfig
sh                           se7712_defconfig
m68k                             allmodconfig
mips                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
arm64                            allyesconfig
arc                              allyesconfig
arm                              allyesconfig
arc                  randconfig-r043-20221018
s390                 randconfig-r044-20221018
riscv                randconfig-r042-20221018
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
mips                      loongson3_defconfig
xtensa                generic_kc705_defconfig
nios2                            alldefconfig
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
powerpc                      chrp32_defconfig
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                     eseries_pxa_defconfig
powerpc                  storcenter_defconfig
mips                           ci20_defconfig
m68k                        mvme147_defconfig
openrisc                            defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221020

clang tested configs:
riscv                randconfig-r042-20221019
hexagon              randconfig-r041-20221020
hexagon              randconfig-r045-20221020
hexagon              randconfig-r045-20221019
hexagon              randconfig-r041-20221019
s390                 randconfig-r044-20221019
arm                       mainstone_defconfig
arm                  colibri_pxa300_defconfig
x86_64                        randconfig-k001
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
arm                          ep93xx_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                          ath79_defconfig
arm                         shannon_defconfig
mips                     cu1830-neo_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                          ath25_defconfig
powerpc                 mpc8560_ads_defconfig
mips                           rs90_defconfig
arm                           omap1_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
