Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541DA673188
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 07:10:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDA79403E9;
	Thu, 19 Jan 2023 06:10:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDA79403E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674108645;
	bh=2TV0oqYNBSiWq0REl1wTqqqGa3NOKDsihJUbHxNAKQU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f5GabiPXLpl5FpAbWIu+pD1NHfavUzi13w0v7fz3YPKfwpe3yMINS5txhVH9CrT0P
	 2GD/YSk89jRRVwFe2/uWZuav+att1Zsx4V0H6jhPIVn40Sed8ZzzRGBaB067qgIEIV
	 e9a6vKeD/0gu1NcNxoQIgaF0VqPcqUaPtEHOvKkpVNh1VHjxKxL42QJ6uPHSiH7tPv
	 6VYyLCpPhAu+Mo0rmEHmKAyCF3t+6x3RgaJfoBp1FZKh2cd7yuo+JlkCh3EsxulT9Y
	 YnGPSF+oByFZ+Y3O9b3xtRBRV5Ib3cpCnz3FujQgYnmGZvnA40HikgeCLlkhn1/h5h
	 4mIK01ESKUthg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btg8bISZYaPA; Thu, 19 Jan 2023 06:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC27D40148;
	Thu, 19 Jan 2023 06:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC27D40148
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 011A31BF407
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 06:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBF426107E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 06:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBF426107E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lfBGYuN2_-r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 06:10:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E600461016
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E600461016
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 06:10:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="323892669"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="323892669"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 22:10:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="833878894"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="833878894"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 18 Jan 2023 22:10:37 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIO8C-0001Bo-0w;
 Thu, 19 Jan 2023 06:10:36 +0000
Date: Thu, 19 Jan 2023 14:10:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c8ded2.w1d5UwPeBDbVFf38%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674108638; x=1705644638;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=czzCxrnF6I25gSatnMzXWofHy3SgWJYM2xolE3avUkQ=;
 b=X0GafqvD4VB0oeO9J9gryyDaFFrvsxSyUxrLodNFk9ZfnxWXeRdij7/O
 2hj75G/Z0z/DUrm+pa0TiGHkfG8TrKqmxE8mZpWaGchaIRfiNzljX3ER3
 PAiFQY+FR57cI2evqiZaTWpt2yr2EQIQZ6Y4BhkFCDlfVaOlLG+YEOV0X
 OruM/uoc59CdH0dlyV8AlDBT7fLgfaDr5tnENQni/1b6mEOv8WJrqoQF4
 H/jsOfvClKQ6ugmqGnyOFazqYzTff6kJldr1QwvyVR16wgN7lxR4r8QqG
 FfZTelNesvdfy15WjhYf5zOF/1Me54qk+ap/0OyOkoEZZ0Z6mI1hVRzD+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X0GafqvD
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6c7e8cb3ddcc056c999eeeede43c6fc5390b3d9c
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
branch HEAD: 6c7e8cb3ddcc056c999eeeede43c6fc5390b3d9c  i40e: Fix crash when rebuild fails in i40e_xdp_setup

elapsed time: 726m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                            allnoconfig
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
riscv                randconfig-r042-20230118
s390                 randconfig-r044-20230118
arc                  randconfig-r043-20230118
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
i386                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                       lemote2f_defconfig
arm                         socfpga_defconfig
arm                         orion5x_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
