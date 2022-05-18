Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F49B52C6AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 00:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEB0041CE8;
	Wed, 18 May 2022 22:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alEnWYCnCCCK; Wed, 18 May 2022 22:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7975141CE5;
	Wed, 18 May 2022 22:54:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6861BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 22:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA30441CE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 22:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-1mgiAc5PEv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 May 2022 22:54:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF7AA41C6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 22:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652914481; x=1684450481;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2p0d/vEv6rUuvgtJLMMZJ8zvpCYB471VkT2qXMR9Q2k=;
 b=W3S/cP0qAVTLawJiY8OocZcpP2x8IbY6rP63ZIkCVXtsB1I32/KKlziT
 2gQMacqypalp4kC6QUqeWwVh1rjU16x0endZE6cpsOkEHctErIKAUiKAi
 9tnx04Bw/WydqA7mtl7z38YbPHiXrELGPL93oCMWlE/Dni/Km89JbP9pz
 IK00YjS30niYOuQ6cJFrZ5H5VpYGh8u7yKTSvi47b4LKMGHWQvkXvSHJx
 SLjBfKmN7ZjWt2VlZayEFQozCchLuE9bbatRxZDlAdvb2mImO8RtxXKkS
 yJ/Bm853NEDaZf46T38z15xcCb8hwLYu8tO7sUREnZaJ3Us2CTWI7HDFT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="252444667"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="252444667"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 15:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="575303229"
Received: from lkp-server02.sh.intel.com (HELO 242b25809ac7) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 18 May 2022 15:54:40 -0700
Received: from kbuild by 242b25809ac7 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nrSYx-0002jg-Jg;
 Wed, 18 May 2022 22:54:39 +0000
Date: Thu, 19 May 2022 06:54:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62857915./6ZsYxwvPckiOrN8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 bf13502ed5f941b0777b3fd1e24dac5d93f3886c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: bf13502ed5f941b0777b3fd1e24dac5d93f3886c  ice: Fix interrupt moderation settings getting cleared

elapsed time: 1733m

configs tested: 91
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220516
arm                         at91_dt_defconfig
m68k                          amiga_defconfig
arm                             pxa_defconfig
arm                         cm_x300_defconfig
sh                   sh7770_generic_defconfig
powerpc                 mpc8540_ads_defconfig
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                                defconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
sh                               allmodconfig
arc                                 defconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc64                            defconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64               randconfig-a012-20220516
x86_64               randconfig-a011-20220516
x86_64               randconfig-a013-20220516
x86_64               randconfig-a014-20220516
x86_64               randconfig-a016-20220516
x86_64               randconfig-a015-20220516
i386                 randconfig-a014-20220516
i386                 randconfig-a011-20220516
i386                 randconfig-a013-20220516
i386                 randconfig-a015-20220516
i386                 randconfig-a012-20220516
i386                 randconfig-a016-20220516
arc                  randconfig-r043-20220516
riscv                randconfig-r042-20220516
s390                 randconfig-r044-20220516
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a002-20220516
x86_64               randconfig-a001-20220516
x86_64               randconfig-a003-20220516
x86_64               randconfig-a004-20220516
x86_64               randconfig-a005-20220516
x86_64               randconfig-a006-20220516
i386                 randconfig-a003-20220516
i386                 randconfig-a001-20220516
i386                 randconfig-a002-20220516
i386                 randconfig-a006-20220516
i386                 randconfig-a005-20220516
i386                 randconfig-a004-20220516
hexagon              randconfig-r041-20220516
hexagon              randconfig-r045-20220516

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
