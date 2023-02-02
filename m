Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF0068848C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 17:36:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EED8D80E07;
	Thu,  2 Feb 2023 16:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EED8D80E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675355761;
	bh=1YUFJA2/cdw4isM4qG55siIM1VofsPEMVq+kDg+9jVw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tOAdLrMe7OBDSuLr+Fv1Vvl88cASqP+O1HLg1qHS5oK8cX1vuK3gLNbu2nKOX7FU6
	 /2FAaEiSl4Si0RZgaYmi87zx8P8DokhwVSpcP4hzN89JpRZBo3j6YysWv8lH6nPtq7
	 I/FHWuMFOfTyhxVLhfzy1mHfT7SMmu8hncBLEVSg5n2y4rkY38ONUqX1e/paQrIRNU
	 QcOU+B2NDmTg8tz22c9mB9rjXe6NJY4B5kUEcUgmKrd4K5GbRmZamCHUK/3hbsm7Ep
	 YWcjckWdpIboPwZfZ55qO/9pnrzpgrqnvZk19lK/rtVesnuO9fVTzJsSRovbGxN3UT
	 oA52X3gcOtHZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAhkH8dbbZMn; Thu,  2 Feb 2023 16:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5C2280D8C;
	Thu,  2 Feb 2023 16:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5C2280D8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4460E1BF404
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 16:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C50F82014
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 16:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C50F82014
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id enAB53vJq0ib for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 16:35:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DDDD82012
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DDDD82012
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 16:35:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308143016"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308143016"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 08:35:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="733990120"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="733990120"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2023 08:35:38 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNcYk-0006fQ-06;
 Thu, 02 Feb 2023 16:35:38 +0000
Date: Fri, 03 Feb 2023 00:35:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63dbe648./0LrNifk6ahyLJ9N%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675355754; x=1706891754;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=abCmB++QpdTa1lBJJx6bZNX4wvBLjYRqXFoF7tWa5Z0=;
 b=M9xUaMOWAhAZuAVlio/MB/eMoz/sK3fxZRn/qQy5NvEP8RIetCNJ4w+d
 tMeoZuIGoeGrIXGYGGXoul9ZweIZVl15pnOVjghUANx1lScxPDXQxXS4N
 XLPxzMYNHtWOUu2dAYTmgltErUk6fm1VJdWl6fM55GPwHvjaa6gBHkaae
 DciXBthuCMrGKzOmNizR7sOf1opChXX4At/1RFhY6t5El9oa48TK8Ut+7
 0eIfSOntc+YDRo7ho52qs6tpcgit43fEyE3790n5qwLaYrgVaW/D9Hx+t
 Gyz4DyQdlOpVSPukXSF4k3ojn0+vnUrvnLlXAgL9UE5WNGciYSaWmiABh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M9xUaMOW
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9bd00d9ebefdd8b78316ead5a4615477e25733e7
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
branch HEAD: 9bd00d9ebefdd8b78316ead5a4615477e25733e7  ice: Fix DSCP PFC TLV creation

elapsed time: 1334m

configs tested: 84
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
alpha                               defconfig
x86_64               randconfig-a001-20230130
arc                              allyesconfig
x86_64               randconfig-a003-20230130
s390                                defconfig
x86_64               randconfig-a004-20230130
x86_64                          rhel-8.3-func
x86_64               randconfig-a002-20230130
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
s390                             allyesconfig
ia64                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
sh                               allmodconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                 randconfig-a003-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a006-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-c001
parisc                generic-32bit_defconfig
arc                      axs103_smp_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                                 defconfig
arm                              allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arc                        nsim_700_defconfig
sparc                       sparc64_defconfig
arm                              allmodconfig
arm64                            allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130
x86_64                        randconfig-k001
mips                  cavium_octeon_defconfig
powerpc                     skiroot_defconfig
powerpc                    gamecube_defconfig
powerpc                     akebono_defconfig
i386                             allyesconfig
arm                          pcm027_defconfig
powerpc                       ebony_defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
