Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 946C2576455
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 17:19:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD9C042884;
	Fri, 15 Jul 2022 15:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD9C042884
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657898342;
	bh=F59KFEc8zfoC2f6Z070wMTAYgUdu2mg2xKcIMeAvadE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PS3WiHbnhPvcR11O3/VUQJaHbSlkOIjMYqG95zbnW9JLpE8+qCL0Z89YRDQD85++6
	 tzbJHuhcVZYl6eUBD/32MDWZocIObiEn/snCMqIs083lPS6Zo1sZcLAUa7z3ijPJSI
	 WQSbdbPM2AQKaeE16PESOW4Ka7qSsWeH9+ue1nMVwy1nhDcOnAl+VceasGKjXKbd4o
	 qmFH/uSgX9qIbk3wl1h0q0UXFi7sYVA6Nxavj2M8L5ZwQb5VJ37GZq1+LLeDRvVkZA
	 OxfH4w+4LgOai2ilfB2Waa6OfqxWy6FP8af5fGEZhzwy6FLt2Z9Z3s0+uWkz4l/nwu
	 2SQFdFyxqOfzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uO4HMv9I-kGR; Fri, 15 Jul 2022 15:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86B7C42821;
	Fri, 15 Jul 2022 15:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86B7C42821
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EBD71BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 15:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27E0B42821
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 15:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27E0B42821
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyKzs_Uh7yby for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 15:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02F3B42805
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02F3B42805
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 15:18:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="286555702"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="286555702"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 08:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="842541160"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jul 2022 08:18:53 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oCN5g-0000Gb-JT;
 Fri, 15 Jul 2022 15:18:52 +0000
Date: Fri, 15 Jul 2022 18:38:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d143af.aeTaVOWzybuLcqGD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657898335; x=1689434335;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=U1ntNfkUh4KY7+OvDUhMWHa5azDfvfEAdnB7lQS6jS4=;
 b=g9BAmgwE/aGlcb+OOhFu/ateCj3NynW3GUn78vAANRbTN8W38mjJuxI0
 RJt7NqPxU2kOC/hkgQkO4gDXeL3TfEESXT3I7mnTH6SExfb7JQwBukTEl
 tFv79v1jHsDA9bZo00kyoODdJUMkOrMjH21elSNCjJTcYK3GMWXu5Gks+
 XiyyuyH9k9RvOb9EVv7nVHVdWnn/+C5IBciCoJIHGTY8P4nBfAJV1v/FG
 hR90LRtwY/dlPbzSR8hH50ipWQEVJJ+/sfzHp3A5Fn+p5dL89NTZZkWFf
 5W3c5X7w2cjqM2i/F1MUEvH5EJ/pY9DE1YD2MrFoR3BtoPiQELDw141as
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g9BAmgwE
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 36f9a162b57a91c09742d691cff96cf90751e1b0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 36f9a162b57a91c09742d691cff96cf90751e1b0  ice: Remove pci_aer_clear_nonfatal_status() call

elapsed time: 984m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sparc                             allnoconfig
arm                           h3600_defconfig
mips                         cobalt_defconfig
sh                        sh7785lcr_defconfig
arm                        clps711x_defconfig
powerpc                      pcm030_defconfig
m68k                          atari_defconfig
arc                          axs103_defconfig
powerpc                     pq2fads_defconfig
arm                             ezx_defconfig
powerpc                 mpc8540_ads_defconfig
alpha                             allnoconfig
arm                           viper_defconfig
sh                        edosk7705_defconfig
csky                              allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220714
hexagon              randconfig-r041-20220714
hexagon              randconfig-r045-20220715
s390                 randconfig-r044-20220715
hexagon              randconfig-r041-20220715
riscv                randconfig-r042-20220715

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
