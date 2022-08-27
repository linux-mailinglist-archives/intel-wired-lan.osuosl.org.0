Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 134BB5A3489
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Aug 2022 06:34:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D541460BBF;
	Sat, 27 Aug 2022 04:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D541460BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661574837;
	bh=vRYGm0VlSWSi5EZ1679+w6CphMz4ym5F1qvYRfHaYLw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U/TzwlcbUSlPeUyEe7J+7NY7XDQChtPvVRtU5d99AYDMVbZZXJ4SjEWPf+/GLyU4V
	 32kKBbs4Q8JCyjgp5/Sali2cq/uuPRf911nN5j9/b41dS0HojOGs756J0S05hRsx7l
	 EkvdWI3iEB4V7Sd3gSMCsdAU8Qm1PqaaVs7Sr+y72Mpgw40UDi/YCz4vLIWoiTTYP/
	 ZAGbUlKS3EcAt9doNQyDiujtb3skm5YcFESvMfQP2uzDhp+UqFVpEWStSFbQXRsn1B
	 /Fm8n8tMCrP2GhkN8kgQQNDA6PDhQHs3IgamyXhB/0AWKjg29ToERo7Mx7QVzrJ6As
	 89vqTU32gCd9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAYx4EOM_D3t; Sat, 27 Aug 2022 04:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B498C60BAF;
	Sat, 27 Aug 2022 04:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B498C60BAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFA831BF313
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 04:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 977EC8127F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 04:33:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 977EC8127F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZGg5xBcuGAzC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Aug 2022 04:33:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FE1081277
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FE1081277
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 04:33:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="275038038"
X-IronPort-AV: E=Sophos;i="5.93,267,1654585200"; d="scan'208";a="275038038"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 21:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,267,1654585200"; d="scan'208";a="561656667"
Received: from lkp-server01.sh.intel.com (HELO 71b0d3b5b1bc) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2022 21:33:37 -0700
Received: from kbuild by 71b0d3b5b1bc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oRnVp-0000zZ-0h;
 Sat, 27 Aug 2022 04:33:37 +0000
Date: Sat, 27 Aug 2022 12:32:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63099e66.Sy+DZsWTq5FFW0E1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661574828; x=1693110828;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XB9bCdpe58xjoI0WtlCk1ngCrw0SliwogyQonbEOt2M=;
 b=BRhBDyw9kMlCzkHA47eQNo1DofHLegbBNPwCWfLcQC2HE94dxXqDWbu4
 gUcbsbKCwIdmMTzaQqA/Ab6ZMiIiYHJ8WWq8fY35WVR6FXyvDUFpkGK4X
 TRxLuotc4hjjcGUvX9pPUZxgBm4urFiZzl950rklQv/vCbFA+wK1MlNxW
 Oia/vwxVBb+5ILH3BoG7uqjfpubj39VHpom14NnqAfsSXEInz6SpFLsiu
 wpoqjecb/EcRXbH3iWWv2L6i/tb6hZbpQZ9b5NYdM7oOnAwkm509NKsPH
 xRJRHZ7xm+/FxW/QKixpXZbmc/ac9c+p2VquwJUD9XXTfr9nemOmBP99O
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BRhBDyw9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 083727b0d8f3ee1f86211eec229c4bb7260379cb
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
branch HEAD: 083727b0d8f3ee1f86211eec229c4bb7260379cb  ice: Add set_termios tty operations handle to GNSS

elapsed time: 724m

configs tested: 83
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
loongarch                         allnoconfig
x86_64                        randconfig-a002
loongarch                           defconfig
powerpc                           allnoconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a006
arm                                 defconfig
i386                                defconfig
i386                          randconfig-a014
arc                                 defconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a012
mips                             allyesconfig
i386                          randconfig-a016
s390                             allmodconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a001
x86_64                         rhel-8.3-kunit
i386                          randconfig-a003
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
s390                                defconfig
arm                              allyesconfig
m68k                             allmodconfig
i386                          randconfig-a005
s390                             allyesconfig
arc                              allyesconfig
arm64                            allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
m68k                             allyesconfig
arc                  randconfig-r043-20220823
riscv                randconfig-r042-20220826
arc                  randconfig-r043-20220826
arc                  randconfig-r043-20220825
s390                 randconfig-r044-20220826
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
parisc                           allyesconfig
nios2                            allyesconfig
parisc                              defconfig
nios2                               defconfig
parisc64                            defconfig
powerpc                          allyesconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                            allmodconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a012
hexagon              randconfig-r041-20220825
hexagon              randconfig-r041-20220823
hexagon              randconfig-r045-20220825
s390                 randconfig-r044-20220823
hexagon              randconfig-r045-20220826
hexagon              randconfig-r041-20220826
riscv                randconfig-r042-20220825
s390                 randconfig-r044-20220825
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220823
hexagon              randconfig-r045-20220827
riscv                randconfig-r042-20220827
hexagon              randconfig-r041-20220827
s390                 randconfig-r044-20220827

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
