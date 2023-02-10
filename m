Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 656D16917FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 06:33:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02291402D2;
	Fri, 10 Feb 2023 05:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02291402D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676007223;
	bh=mJpA9s/9bjJL61Xm506JjYdpR7ocL6coeR09W7zeHtY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CC2MFBR9Z4bhzLQGJmD4XwFROClp4moBksedYPFMpkiPAjdP6HletbF9GF2fKRdET
	 PqPndEmYm1S40HHyqQaqrGGjvqHJPBCMDGEoNb4h4DWGbOxpmepORonVfbmRRw61Im
	 lLbNTKK11xBDRxqZr24vbipOW13vjrFYk6xeNrs3Wmtz2IBe+yLFUQB+OX7d9H3S5e
	 2RJIlUNsMDNytIKD3PC6MInTfYzhwvgpflyDBwSduJX0OyFptxBap63wtRTDq0ARMt
	 AZ8WAjCzxNipL+BgJjPSUhhglAAS9QEbL2u12hf0r6wgd7PIHyYeA9raPn6KJZaYK4
	 UuiFUwrZYuvmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0hgp_3llw1Lg; Fri, 10 Feb 2023 05:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F40D402C5;
	Fri, 10 Feb 2023 05:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F40D402C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6ADE81BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 05:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4282260AA3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 05:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4282260AA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c68EjjZmk8ug for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 05:33:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E20160A9C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E20160A9C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 05:33:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="330349932"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="330349932"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 21:33:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="617780862"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="617780862"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Feb 2023 21:33:25 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQM2G-0005aI-1C;
 Fri, 10 Feb 2023 05:33:24 +0000
Date: Fri, 10 Feb 2023 13:32:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e5d6e8.MSbXtEkepA7EolIQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676007214; x=1707543214;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HgYe8FwR6DnU0phX69L+UIndPfGF5GbCxUI2IYSHQFQ=;
 b=lNhi7rORwcv3Beohgi1uDBGfGgQkJwLd/TisiL6s3rP2a5N1fEpr70jn
 v10Si77f7keMajgcIA7TDpqFfeV642RDcRtwHor6BYd7rOaZQbQkijSiu
 ee+Mipjlyr5ZDJ6IVdQ6VSZizuo4p7XRBt5CyzNYiwCFlOKS2UjQjOYR2
 lj4hwPUNM3JLKDvaaGVO+L7CcMCjJTKI4LaRPCaKrxXOW9aYdJXo3zEMo
 i5sHcqw+kkvcXAftspAJNctM5gYieV7CWZ7aayG2mXVwMcmaY3AIOxxTF
 l3yAoujmwAi8MQ+EvikBoZNvHYEkDohUKYPYb17ZLfuiU7dq/RFBmBH4B
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lNhi7rOR
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 fd1818ef4485ce9620e5e965c119ff84c64d81a4
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
branch HEAD: fd1818ef4485ce9620e5e965c119ff84c64d81a4  ice: use debugfs to output FW log data

elapsed time: 727m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
powerpc                           allnoconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
x86_64                        randconfig-a013
ia64                             allmodconfig
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
arc                                 defconfig
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
x86_64                        randconfig-a004
s390                             allmodconfig
mips                             allyesconfig
alpha                               defconfig
x86_64                        randconfig-a002
s390                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
s390                             allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a005
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                                defconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm                                 defconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
x86_64                        randconfig-a012
s390                 randconfig-r044-20230209
x86_64                        randconfig-a014
riscv                randconfig-r042-20230209
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
