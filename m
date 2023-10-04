Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9CC7B7EE2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 14:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10B9C4197A;
	Wed,  4 Oct 2023 12:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10B9C4197A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696421844;
	bh=mCoqJtZJlqdqGDBRIvVeHUfM/HhbfvRXEQSdElEZ0A4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vsfOzUq8KZqP9bxMzH2VmljLwIObLTIj+PxnxEd+3DGva3Q0x6G5+K5GNo+ZII/uz
	 oh7oCurjvgE9oVkHov+8B12iAhHM5kWt2m+b5G8YS6fZR4T1mh0waJv1kbwUuobrEQ
	 N7wHE5saJ/vdF1W60bDyjnlCpqa6QFxIWRdjvBlOB3eDY02tq915L7AEDt6O9ZZr0N
	 OcJKlCs9/AtoPbEXOlYRK4Yg4o/OHCMCwrr2x92v96IjWOnd8snYiY/10R2VnRfNYl
	 /9sjdEzAOJYN5ck36aOe9nbvDmX2AIyjx38HIx0cS4og27pYQC2m1v9fx7cQKYILy1
	 fe2ux6dLO61rA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CLBC8MBx28Di; Wed,  4 Oct 2023 12:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C17DD40374;
	Wed,  4 Oct 2023 12:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C17DD40374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83EB71BF288
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 12:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C61041970
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 12:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C61041970
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o1uDQmSarHch for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 12:17:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86EDC40374
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 12:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86EDC40374
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="414066389"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="414066389"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 05:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="780759445"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="780759445"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2023 05:17:12 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qo0oQ-000IgX-04
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Oct 2023 12:17:10 +0000
Date: Wed, 04 Oct 2023 20:16:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310042007.kKgj5y75-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696421834; x=1727957834;
 h=date:from:to:subject:message-id;
 bh=cnZmam59P8gEnz9Zbg87aiASezXyeZ0+eOU4F9y2Prc=;
 b=SQIIhRnyvjkx2bvGpx0f3hW40pH1ouEcMY4z6ImQTjCiTPaP6GH3cZ41
 T4haVl9ZpxaEIVkGly2ObTazdWXHO2xBbUXImg9e4SmZNDcn9cSIEgLiT
 7s9LsT/BMc0yYfFozYsxYc311J3Kr+57sZj5WFhn5FRB2XrndRQbJE9G7
 FK9kygrLsiy3TKfb9oHctlE5SV3EnfMhH029y+JFDxnTI8i3KgvQF/a8P
 J/XjRXrBA1hX7HoOK/HitTO03CreoJLBdbhyvS2abp3I+vE67rcb08Xq3
 /vK5zNcocWFTUZc8bjFAWrPZObn922qoYAMZonxnJi48fGEcV0x7Unvy9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SQIIhRny
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9e1359afcbcba9c1981fd69c7091c0ee19326e9a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9e1359afcbcba9c1981fd69c7091c0ee19326e9a  ice: manage VFs MSI-X using resource tracking

elapsed time: 732m

configs tested: 86
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
