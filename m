Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00BD6A0E5D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 18:09:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C68641695;
	Thu, 23 Feb 2023 17:09:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C68641695
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677172195;
	bh=hO7dBAEMDKhKxWaZpgKvQ/WdLjDIFFD033kOVnTeu6c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rLHFve58vZQgf92ltOzcVwlE7VxlA+dlpIR3T1zuShmV7CVq+V2WnYFU1Ze5WAIDc
	 sO2KWE64824TzJ6LDoOP6CphWyX4ULYpFWZyb+iq9qv3BDseLEWKvLcVmzlKVCs1Jv
	 RLC0UJcR1iV164sIg2Bt11xs6Ze1Am2c6uYLSVwUpxZSBhvk/TwjRYV3YYTW8CZbiZ
	 5pd+PspUQjDEEDYLUrYXHSSBxvlPWI9L4K0WreUkgh8JOOgbgtA9Mt9KCTqF7cW9pa
	 FWLu/nU+eeSNl4I3xrEosionZJmLNn06j0Q4QKWSySsLat4nPNpP3Oi3ZoAr/+3iYO
	 Gzb02E93jMwzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xETqviQBUWpL; Thu, 23 Feb 2023 17:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C3CC415BE;
	Thu, 23 Feb 2023 17:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C3CC415BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 095AF1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 17:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4C344181B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4C344181B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uGoYlpQl1E58 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Feb 2023 17:09:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4368B4180F
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4368B4180F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 17:09:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="313642656"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="313642656"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 09:06:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="781990829"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="781990829"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2023 09:06:10 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVF2o-0001XH-00;
 Thu, 23 Feb 2023 17:06:10 +0000
Date: Fri, 24 Feb 2023 01:05:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f79cf2.oquUgqaGlBAjefho%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677172188; x=1708708188;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4nROlsYRT3jAZxCNx82SWrg1meV5H9ReMKKaggKBF30=;
 b=ListQ83nv1+iLtAqV5oQ/I8ywASw0caIWmYjbGFXtztXPjwfON2ZxpbN
 m1/WdgcV8oSfM7zA+K5TfCjIqlGGoPMLmM8BG0ygPF0pmB4SkVZP7m8+Q
 gzJ/vBjoXnbe/osA0Z2HmiJZoh4ChhE+l1QMJ4ck5rE9DBE8iNxXkbYop
 R64uXvcQCWNib5XPJmY0gZcS1bB9KJo14l5AVgfoGisCI1DqpnLrY8cD9
 xeVu+XNi585VfHsnt7OhFKVqL9qhNuCEi/rd8XEseNjP0n5nMAXZ56ZeX
 0FJNbY0E8+37XEIzhrEw2LH8TVYw+m7+SVzzu+GLFpkmOYNaT36raC5NX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ListQ83n
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3ade1515102382b27ebca75badcdc41f0352cc4e
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
branch HEAD: 3ade1515102382b27ebca75badcdc41f0352cc4e  ice: remove unnecessary CONFIG_ICE_GNSS

elapsed time: 908m

configs tested: 67
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230222
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230222
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
hexagon              randconfig-r041-20230222
hexagon              randconfig-r045-20230222
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
riscv                randconfig-r042-20230222
s390                 randconfig-r044-20230222
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
