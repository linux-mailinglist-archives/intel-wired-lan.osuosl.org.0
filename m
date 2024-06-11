Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05445903A9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 13:42:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 156384055E;
	Tue, 11 Jun 2024 11:42:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p83JE2uxisC0; Tue, 11 Jun 2024 11:42:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7D114058D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718106144;
	bh=mCZxlub6j8uEA4lbsp/sgnULAffwmRtCAapFgUFXVtY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=S03wnNwIcC5IPlX5x6RjhCV+ms5P6rB7Fc7c/Kf5NtkQLzrd6Z+VTRA+A5B/u9J/1
	 VovwbSqSqBLQ3oig3xW2Ly1W1fZVVrWCaqQVHL6HIAKJGS5KWN/ZuXUO6YZ0NaAEy7
	 XTYdeK9B8LRWkm+Q4+Ps3ZY2OPhB/kUG66GD4J/L0P7EsL+XioU/avwK5NtGaBKp4c
	 tZA8XrBn1/GhiOdg0LJkvlOW2Vp+R0vpyzxr8MO8nGpcrf020PRT0xuXZ54t3yLh94
	 BkJHhgAZgeYjSoaVxs/N/A2/J1w5jU9M6FnZZCpkE+14E65v3/NH2Rc5qxLB+bKCIs
	 Y+1Wt7B1Z1nsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7D114058D;
	Tue, 11 Jun 2024 11:42:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3871BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83E0C404F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpqeI28HFKV0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 11:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 31D38404F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31D38404F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31D38404F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:42:20 +0000 (UTC)
X-CSE-ConnectionGUID: FHJPn2tdQN+G3Nl8CFl18g==
X-CSE-MsgGUID: TCJ3/TEdRWWcPYHm8E9aCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14763017"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="14763017"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 04:42:19 -0700
X-CSE-ConnectionGUID: kk0TNnTLRbO4k7YfF5S38w==
X-CSE-MsgGUID: BnwbP1zaQdKNO9OPSn3MQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="43968638"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2024 04:42:18 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sGztI-0000NL-0L;
 Tue, 11 Jun 2024 11:42:16 +0000
Date: Tue, 11 Jun 2024 19:41:53 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <202406111926.YVudwbSa-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718106141; x=1749642141;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=BiPB2Ctg7NTXRTtb16mEbjJOd9PBqX0xayAmaS1s69w=;
 b=Ksxrgq3WSjXMCJISrsUlu4HQWoZLT+kk7nPBZGA0wRGKa0o0/nHTmIjc
 E2vc4E97O41Kshva3BcSQ5e1oFlS+x6Pm/umSxHka8PcSHUOr8UqyY202
 Hb6LBkyK83GxD7+NKN3wCGo2PVfpAV22cqPzGV7Ko6BotbQ+YKsE+LvKL
 2IVZNEp5SfjtvQelXh0V8DldiZd7YWwPv9Ab7n7pUrh44FMe7mU+yRhgv
 sH/hrnEtMXoGzebATaAaOh1lzM2NHjjK3y1c/+DdvPdcFUp++spT0tR6s
 lKxKP4Vk0S2wKbG3SVRPOupI3gT7TpBMKmNj6M7yrLPvSmqXtA7pNuuR5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ksxrgq3W
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 65/95] ld.lld: error:
 undefined symbol: ptp_schedule_worker
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   10d0e5f67bf964e5e8cc7a99ab8c1942ce3d97c7
commit: cad731b65625243ce2b7b83375ab76c7828398be [65/95] iavf: periodically cache PHC time
config: riscv-randconfig-002-20240611 (https://download.01.org/0day-ci/archive/20240611/202406111926.YVudwbSa-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 4403cdbaf01379de96f8d0d6ea4f51a085e37766)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240611/202406111926.YVudwbSa-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406111926.YVudwbSa-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: ptp_schedule_worker
   >>> referenced by iavf_ptp.c:184 (drivers/net/ethernet/intel/iavf/iavf_ptp.c:184)
   >>>               drivers/net/ethernet/intel/iavf/iavf_ptp.o:(iavf_ptp_init) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
