Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7D15F3CA7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Oct 2022 08:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ED6381DAB;
	Tue,  4 Oct 2022 06:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ED6381DAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664863836;
	bh=Rq8bKWVb7051EjjAx/wNuzbuEmcN11doCTEPDetu5pM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=B18he24jy5mzD4W3/QooZL7GKSHJzbUZuNUpKC/2OqMzFO1R0Vc7CV4/zxdW5Wbg/
	 UVrNirw1yZalvmJw7nWY1/6M1EpkXjJSut1/rfa5bkoZQKXhVkChT96OjkXjKxh93e
	 AYVZg7VGVRFnqN9Y3ZutgfA7VxZ3NOiDY6aG1Qreubwa0+b1Umf0aX38YFTlZehWI6
	 3P3Fp7grkSww0sTzHwFHDRB8OWve4bkaBDJwreXDhse+kCGfGSwoIEzEfctPf5tQB2
	 jzwm5beZZbRtsWPAtut74/SUMFEFkrPdaDR/NwIm6lTfk0E/YlfnOeGEVVuzKL4V+T
	 rntFIfal1GG3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FCuJBM5jFZNE; Tue,  4 Oct 2022 06:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B87AF824B4;
	Tue,  4 Oct 2022 06:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B87AF824B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24F581BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 06:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9E43824B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 06:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9E43824B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 278NhMEgrIsI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Oct 2022 06:10:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C51081DAB
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C51081DAB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 06:10:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366934810"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="366934810"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 23:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="749268196"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="749268196"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 03 Oct 2022 23:10:26 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ofb8L-0005Nk-2N;
 Tue, 04 Oct 2022 06:10:25 +0000
Date: Tue, 04 Oct 2022 14:09:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <633bce26.kP16kUwaeYyWaIpZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664863828; x=1696399828;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ipziRWLGqa6+GNOpgxzA3tmUa87sw/W4j1mP+BMl924=;
 b=ipA5nCmH0Sgo9EzhhbuIYsBeCLFBIjvCXW0rvoKjOvIGH5n8K5vloS+J
 9JNKtk8eA4mlrTbyYWoPECszsCfRzb8jnvOPNMVGeOegi2WrhNJbktOji
 489zNwbOGFi5BWZvyAMEVIcjgpHR2a+VvQrQriSOjSQMK6DaYfnnH92rB
 pRiIByVKRdYu2aiGRU7EL0LXtBwtw2HocuZLbckzKD3GY3f06xIbxMxA5
 mEtqlyPlaxam0/RyL9QU+po5tAvYAgMprtNZeAbj7YKo2t2/PPL/An74/
 vGPh+uUc2yKu70Tva0jMwtavTlVKK6tM9lWF9OFQvDNO/xkdYTfG2ruS8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ipA5nCmH
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 76c908058f942f5ad479b092556717d37e9461cb
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
branch HEAD: 76c908058f942f5ad479b092556717d37e9461cb  e1000e: Remove unnecessary use of kmap_atomic()

elapsed time: 728m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                              defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                               rhel-8.3
i386                                defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                           allyesconfig
arc                              allyesconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
x86_64               randconfig-a011-20221003
arc                                 defconfig
m68k                             allyesconfig
x86_64               randconfig-a012-20221003
alpha                               defconfig
x86_64               randconfig-a013-20221003
x86_64               randconfig-a015-20221003
x86_64               randconfig-a014-20221003
x86_64               randconfig-a016-20221003
s390                                defconfig
s390                             allmodconfig
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
s390                             allyesconfig
i386                 randconfig-a011-20221003
i386                 randconfig-a012-20221003
i386                 randconfig-a013-20221003
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
riscv                randconfig-r042-20221003
i386                 randconfig-a014-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003
ia64                             allmodconfig

clang tested configs:
i386                 randconfig-a004-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
hexagon              randconfig-r041-20221003
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221003
riscv                randconfig-r042-20221002
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
