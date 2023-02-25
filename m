Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 144B66A2910
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Feb 2023 11:32:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1399560687;
	Sat, 25 Feb 2023 10:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1399560687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677321157;
	bh=lUeaQkAdW1HjhIs9XKcuwIQCbVgXRVlxvjI3aLOOdBs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Lg2v45ZZiWY5ELacypT7BGcodMpBppWJXISgSGPGnz3HVB/OL8cecZ80AXII6A3Ts
	 aAxTjNvZXPGel7QWo7IhjESr+lw9ApnCixoP2BSWXKtGV/yHdxHTzRzymDeS55qddy
	 8LyCAS/doKvRb1dUkbl8StqnJG3RZgODGFbtgfcbS4aUobsoNNONHCbxtzI035MNWf
	 76nvEejf+Ff4vTOrXIKUcpMWJLsN0e2FEsrTzh7A0Aky8vrMqK0XUE34G6twcrrEx8
	 8Zry1Di4JzIhyuPGybhzlME3itkUWQeW6IAt7BPORjAj5V7vDhEHVBXAjb9lCi1c0m
	 B8hTvpopfG46w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id brxZpHu0GG8X; Sat, 25 Feb 2023 10:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9E0260B42;
	Sat, 25 Feb 2023 10:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9E0260B42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 318151BF82C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 10:32:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08E8881A73
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 10:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08E8881A73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ntnjx5-lHg_t for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Feb 2023 10:32:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEEE881A65
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEEE881A65
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 10:32:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="335891572"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="335891572"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 02:32:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="673170536"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="673170536"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Feb 2023 02:32:26 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVrqs-000379-0K;
 Sat, 25 Feb 2023 10:32:26 +0000
Date: Sat, 25 Feb 2023 18:32:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f9e3b8.4Sc9EQb09Oo7Bkfy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677321148; x=1708857148;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=042rwirLdeptftzcsITf43y982yfrQLkxRHxIS1MQ+U=;
 b=axh5eGFMmAtS/IAqBD3IcUAi1YntDev8igZtKrhq1gJISmzYv4AA3fe5
 QniIo1XaiXz8kndyTqNkjRMxxmjWXOL4ixkO2thZQoCGWtpNcKMLssKNs
 FpPJL/8Jlr+6ZrSauF4FE1GOs5AYjzpwrIP9cqTOHBu/6bNCdB/yn3QrQ
 O3hZGpptmDzadHi/MOpqdxpXsspT5+7EAi8tdl3MH6M0nI3NaOil48gE6
 5PlO7X6i87pM0onSxkxXPQzOqbTTySgfuhIX5N5O1qgDrLJPUx4lLVCPY
 ylVOYkE2v5WtQgii1g0HQ6UbDxTRbAoZTJTONhPgQ8wbdkZuOgnQBCOnz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=axh5eGFM
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 cc616c162be7ce330e8748141e05fd0f0bb48093
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
branch HEAD: cc616c162be7ce330e8748141e05fd0f0bb48093  igc: Remove obsolete DMA coalescing code

elapsed time: 723m

configs tested: 19
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
clang                                   alpha   defconfig
gcc                                       arc   defconfig
gcc                                       arm   defconfig
gcc                                     arm64   defconfig
gcc                                      csky   defconfig
gcc                                      i386   defconfig
gcc                                      ia64   defconfig
gcc                                 loongarch   defconfig
gcc                                      m68k   defconfig
gcc                                     nios2   defconfig
gcc                                    parisc   defconfig
gcc                                  parisc64   defconfig
gcc                                     riscv   defconfig
gcc                                     riscv   rv32_defconfig
gcc                                      s390   defconfig
gcc                                     sparc   defconfig
gcc                                        um   i386_defconfig
gcc                                        um   x86_64_defconfig
gcc                                    x86_64   defconfig
gcc                                                  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
