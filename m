Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C35A23D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 11:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71F7E40C2E;
	Fri, 26 Aug 2022 09:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71F7E40C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661505160;
	bh=sCHl5LNOmToJnwMMptt6MahJUupapZOgriOPTQdnLwc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h6/JitENMjpXc5lceNkZRPW6iUvktXjVt2UD9nRmfDq5ppTasCMic7QgBUIL8KjHn
	 NiK2L5Zn6n+auwH6akQ57AAnR4PIcmxqEAGRGFkQRODFw15n6NpYG4zKdVg6NpEcrs
	 pWvHctmPqyug6sN5Qb9iS59XAwg35pKR+eizZdPzskAYDwI199LIip6hwkPk/2Rlsc
	 S2rA4j/cG7egmrA1xyce1LK0lgYA12x5z70SA8IqMOEZWuKeCzDTOrDdL4hwkkIcnS
	 H/crZZacC9AdsAm72otQbzbau8OV56pUyM7VCemZNYzJIp5zVQfUdxcPIlV/WAnPxo
	 bpJa5whwNpOOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1wNiZzQO5NaB; Fri, 26 Aug 2022 09:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29E3D400F1;
	Fri, 26 Aug 2022 09:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29E3D400F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F20FE1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC12583ED9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC12583ED9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kk65a1pxgBma for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 09:12:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFCD783ED6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFCD783ED6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:12:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="295737638"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="295737638"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 02:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="587234473"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 26 Aug 2022 02:12:16 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oRVNv-0003oM-38;
 Fri, 26 Aug 2022 09:12:15 +0000
Date: Fri, 26 Aug 2022 17:11:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63088e4e.+FHHKvHA5l0eQdsK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661505152; x=1693041152;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wS3VAWjjTcdwSG1BvVONAk5esrzqHCSZj5EMZug4Ias=;
 b=c2aFRnMYO/Uvgrb+P1z73T7UN1JZNkTPVcuKjNOSuXySFis4dEbYVied
 Qf8mvrhd2Vo0iUVdJpl01MAVMKNO34GAmQ0NqccxUjOJOoVZAW0gveHhU
 YODwGKvafHnBPS1dcZmFYaOtzn1Dk7sPNGopZwJr4yneG7MKdZGLsXrQe
 4DZbh5qfLsJbGPWl4qVog8FINXpdqq1fhzzLnnaY/o/KLClTt320EjtkK
 VjtxoDAiy2gadiOG8hznJcrGE7Psyq3ZzW4RMgd8lja7jDBsflYEGDbK6
 lru+aKCFl6IYnDriLhQFLdrgoPhYfx5V2+RiGiC8QKI12KDBkKnrLqxHu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c2aFRnMY
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8269e58436fcad6c0861f26937533503a12a5c2b
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
branch HEAD: 8269e58436fcad6c0861f26937533503a12a5c2b  ice: Add set_termios tty operations handle to GNSS

elapsed time: 720m

configs tested: 65
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
loongarch                         allnoconfig
x86_64                              defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                               rhel-8.3
loongarch                           defconfig
s390                             allmodconfig
x86_64                        randconfig-a004
x86_64                           allyesconfig
s390                                defconfig
x86_64                        randconfig-a002
i386                                defconfig
i386                          randconfig-a001
x86_64                        randconfig-a006
x86_64                        randconfig-a013
s390                             allyesconfig
i386                          randconfig-a003
arm                                 defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a005
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a014
i386                             allyesconfig
arc                  randconfig-r043-20220823
arc                  randconfig-r043-20220825
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a014
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
hexagon              randconfig-r041-20220825
hexagon              randconfig-r041-20220823
hexagon              randconfig-r045-20220825
i386                          randconfig-a015
s390                 randconfig-r044-20220823
riscv                randconfig-r042-20220825
s390                 randconfig-r044-20220825
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220823

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
