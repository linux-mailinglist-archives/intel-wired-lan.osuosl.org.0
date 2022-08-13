Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D4659198A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Aug 2022 11:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 951B160B89;
	Sat, 13 Aug 2022 09:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 951B160B89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660382363;
	bh=LCy0I5U/p88+wVv4LooBagSlo+3isIuD3JvBhgNYAvg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fiKMTG3Y3s9ZHz98m5GIuxwzZUB/Iu1czNjpqiUL8UqXYWpelIYcLK9vV8lF8tQwO
	 Sfq6qGzAjwEvYBs7vHCJ2RZ9QaKA1lxmrkyuxBzoBQ2hfu/RXsA16XM2KpSHyKZU0M
	 EhhHm4luebgIrDSg1qz0gXhCjFe6omMVjy7GgnrTUIP8G3e1CCYr43S7ZgjvcdnpiQ
	 a1HKc8NY0ae99WTKrmlcV1HluaKzIf+/y2w0q2QnTjZTpazCyfZCLN8v3HEv38sJqo
	 StdcEiJtT6zm9fD9beynGTYFz8LSHAafKUGybMBMvl+RO3IxK0MFWu+WOmakTJnpqn
	 1vbryMLy4z40A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id URxCba14SCIV; Sat, 13 Aug 2022 09:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6686660A6B;
	Sat, 13 Aug 2022 09:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6686660A6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34FCF1BF408
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 09:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0EED640164
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 09:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EED640164
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BEoRLIkILcvQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Aug 2022 09:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD7C140143
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD7C140143
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 09:19:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="291739615"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="291739615"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2022 02:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="609483334"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 13 Aug 2022 02:19:14 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMnIX-0001W3-1D;
 Sat, 13 Aug 2022 09:19:13 +0000
Date: Sat, 13 Aug 2022 17:18:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f76c61.en1JVQ3JoU2zEfE/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660382356; x=1691918356;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BHDJdeN0us5kvIcFYN1FbbcGBI7OqPYgK1QcDKxX0Ng=;
 b=duuQXRmjhf7A36uulOql4Kj6C+Ul8O5LEdo6u89ChlAn+gyBHbkg312P
 qmfDUJNMdu7KU3LHAgFDpTxMwsQ86dRojl2ELBuN4ZHUuO1aCyXDQ+H+K
 glg5VsfAqbw78vNaSdgKCqLU97eNWxqBQDmbhIW2wM9jEKMMB/n0Zwr2F
 YBOGyRmDVoTP6O7wT8UIiqSB06+eOk758Rzitwjc+ZKLRYges/dK4oNQi
 qLDfrH4MBZ3ii/o1KqNUQ0qlEGFva7IlEcorf0GUmtk5YrgIBgpjDH+A/
 0FON44KYLx3wjdG/GxRAlgafmO59bpLXItcEa3KathUo330cWWGcQ9Uto
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=duuQXRmj
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 66b92a3501fa44ec721fd4b334b14a67a50b360c
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
branch HEAD: 66b92a3501fa44ec721fd4b334b14a67a50b360c  ice: remove non-inclusive language from codebase

elapsed time: 717m

configs tested: 49
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
arc                  randconfig-r043-20220812
m68k                             allmodconfig
x86_64                        randconfig-a004
i386                             allyesconfig
i386                          randconfig-a014
s390                 randconfig-r044-20220812
x86_64                        randconfig-a002
arc                              allyesconfig
riscv                randconfig-r042-20220812
alpha                            allyesconfig
x86_64                        randconfig-a006
x86_64                          rhel-8.3-func
powerpc                          allmodconfig
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
arm                                 defconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
x86_64                           rhel-8.3-syz
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                              defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a016
i386                          randconfig-a013
hexagon              randconfig-r045-20220812
hexagon              randconfig-r041-20220812
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
