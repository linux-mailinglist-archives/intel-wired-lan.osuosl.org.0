Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9F665C23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 14:08:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEBE6403C5;
	Wed, 11 Jan 2023 13:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEBE6403C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673442521;
	bh=fjQij+rwbyCEQyIoht8D+HboKz1tjEcbYfxPxJw0xb4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JnSyY/sPgaqpVKCj0Bnn6VIO/B85LBAB0duiDTqCOG7wMNrB5FZnue9EicgBZ8E0t
	 ++/Cj7sRXRBSvw9wpfyF1I31hhp9qijVHxg/c/UMgIJK2R4pbgJJe8BFVdKUxuBd+C
	 CB0wcWc/+NVpROGDYHD0+Fv/9cAS/IZAy8YRZaRqcIS9HFWbqmXfaNDGHg4RFpFywo
	 dKODdAJhOuQtMtKEkin/P8oqRvEnj2Xhd0BQV2/c7rfhEdHLf24SPKK3fck1Z4S/PD
	 Yh8pyTUcyZvo/T7/XvpPBs2WtqgSJaJA/iFH9WW/+RBCT7jI2fV/GRJxPDLBIKTYo4
	 +l16+eBG7tNCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LT40-8eFT-er; Wed, 11 Jan 2023 13:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 568E040342;
	Wed, 11 Jan 2023 13:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 568E040342
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83E4B1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 13:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DDBE80DCC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 13:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DDBE80DCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEYTJg5Cv6t7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 13:08:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E09B80A4D
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E09B80A4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 13:08:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="323472912"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="323472912"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 05:08:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="659364591"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="659364591"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jan 2023 05:08:31 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFaqD-00099W-2X;
 Wed, 11 Jan 2023 13:08:29 +0000
Date: Wed, 11 Jan 2023 21:08:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63beb4b4.fgGblaQRLjAr8ptz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673442513; x=1704978513;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ga32Dj83Owj8xMcJNDRjxfj7nlkGBeDBnC7dth5cah4=;
 b=JmudwZ7GQfljkBuQ6ZZtetYTXvmopqhrmvbsd6DR0OnboKbDW1FZ97Yo
 LU889EeTpbrVrI+sKEZnmC5W4OVc4g8mOgQ/MJi+S+zz6ItFRSfYZqH1B
 jGtHRk4g7WVDgeyXhvMSRDUtle3JQl8mK12ZEYvk8uCa9f1q/qVsOCZZb
 dmIF1Kf5EfrmAHz7oydDME4pgbsks+mNpI8vNdRbAsp/yLjIDiPsfguQW
 WuZCAXwLOIPLrAiJiEwwI6eQtMTYiMVydtbzV5yX4lzT4vO2i5T11XvCS
 O/PyevXjwnup6NURJeLGbirP9KnzFawCgQhZVEx8z8f/eTBGDi9aJWau+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JmudwZ7G
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a813a564b1e9a7904fbc11c5f112a6c451dca077
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
branch HEAD: a813a564b1e9a7904fbc11c5f112a6c451dca077  i40e: use ERR_PTR error print in i40e messages

elapsed time: 727m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
x86_64                            allnoconfig
arc                  randconfig-r043-20230110
s390                 randconfig-r044-20230110
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
riscv                randconfig-r042-20230110
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                          amiga_defconfig
riscv                            allmodconfig
sh                   rts7751r2dplus_defconfig
m68k                                defconfig
sh                          rsk7201_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                     taishan_defconfig
arm                         assabet_defconfig
parisc                generic-64bit_defconfig
mips                        vocore2_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                  iss476-smp_defconfig
sh                          r7780mp_defconfig
mips                           gcw0_defconfig
mips                         bigsur_defconfig
sh                          sdk7786_defconfig
sh                             espt_defconfig
openrisc                         alldefconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
arc                           tb10x_defconfig
csky                             alldefconfig
arm                        keystone_defconfig
sh                          rsk7264_defconfig
sh                           se7722_defconfig
i386                             alldefconfig
sh                         microdev_defconfig
sh                          urquell_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arm                        mvebu_v7_defconfig
sh                     magicpanelr2_defconfig
arm                          badge4_defconfig
i386                          randconfig-c001

clang tested configs:
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001
riscv                randconfig-r042-20230111
s390                 randconfig-r044-20230111
hexagon              randconfig-r041-20230111
hexagon              randconfig-r045-20230111
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
