Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9C1665914
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 11:33:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65C168200E;
	Wed, 11 Jan 2023 10:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65C168200E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673433192;
	bh=IvT1+nIxCkuPHCIHKhBcPZkyRuvGn5hY3SWLlS9Q+6s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bbLtFar90nH6Fyi2SPwxWL/w9AMI+RQmHcy+oiLAr8hJQJGsQrQoEMeo2hCAMLdZL
	 OrLFhwPe4Qoxw5Nl6ygZ0/FsvRsai/ZCYShnOudeNKBgY+rdcTvA1hvOCm0WTrfwOq
	 l7XwfU5lJuUzVQScWD79HwtZieeQ4YnQIcs/RkDlRNgOdgHGGgZOxYxevaJ3iki9oJ
	 6581sMzTjJDh7bRnykwrBp3Anvr5RhepJ2VT4JF9PiPxrNAPi3FDEPqxmLWZFb1wiI
	 G9C3TXpGfl82cZlz1Ot2h91IDAI78OLPchky8Dim1jtQIhQoRaGPUwACG1vEiawz79
	 j9kQiNye7H3Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uoX7-cZKN4Hr; Wed, 11 Jan 2023 10:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AE0881F96;
	Wed, 11 Jan 2023 10:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE0881F96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A19D01BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7942D81F90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7942D81F90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7YPqJoo1Jfx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 10:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80D8281FFA
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80D8281FFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="303079756"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="303079756"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 02:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="725873447"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="725873447"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jan 2023 02:33:03 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFYPj-00091E-2V;
 Wed, 11 Jan 2023 10:33:00 +0000
Date: Wed, 11 Jan 2023 18:32:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63be9040.34F0MT41bd+/1YB+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673433185; x=1704969185;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZOw8j+yH454VZx+2gEsYNu6L7WeMi62ulEWLr13X0G0=;
 b=AyeyA6xAUBgINu5UzTZf3c6xO9p7THn0Cf5NgWL6OaOhvlGnt1+P3WLy
 HzIBOleDs05VtYX9p6ZPJA8cQLfz6etM9LqhZlwJbSCyIMjIjxaCYQKAs
 sxQRmjLMwOQZ5fTsnb25t5cd8uSQHRyHdJssJIiB7e5EYwwmId8oeKHcS
 h2vg9k17cjLzOEANvC80fwkf/6Ndihf9ym7+8ivLkNIDS5mfTijwROpwg
 LoxPpSEQ2xOM9py1s8aRgpITG4W0UvkOU6jRpjs1MdgYDY5xOd7a13NI5
 51so73RsJiKBa+KuelLVi7L+M2xQvi33eBkvPL2YW5dBZmseVdEguRR+7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AyeyA6xA
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 6650c8e906ce58404bfdfceceeba7bd10d397d40
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 6650c8e906ce58404bfdfceceeba7bd10d397d40  iavf/iavf_main: actually log ->src mask when talking about it

elapsed time: 721m

configs tested: 65
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
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
m68k                             allyesconfig
ia64                             allmodconfig
arc                  randconfig-r043-20230110
riscv                randconfig-r042-20230110
s390                 randconfig-r044-20230110
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                          amiga_defconfig
riscv                            allmodconfig
arm                        keystone_defconfig
sh                          rsk7264_defconfig
sh                           se7722_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig

clang tested configs:
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
x86_64                          rhel-8.3-rust
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

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
