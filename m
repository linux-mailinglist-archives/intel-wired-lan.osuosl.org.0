Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F00C6A1A66E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 16:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A08186FA90;
	Thu, 23 Jan 2025 15:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FBjMd7NT1mbP; Thu, 23 Jan 2025 15:01:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1F686FA8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737644498;
	bh=2i0cXZeHtg5shFrALBWN6Q+JnsXGD8wbuxT1zJYYWXk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ek7s0npktJlhMJZIdtoVUt4d3Y/nVgxyGXsdBXZIhoIW8ck35wbF8ttByMwRGp4dt
	 DOdBYSX0aegghf/onZ5OhQHM+XZLSSESaWZzDxp9mdm6hck0dNA1479Yg4ewbV+/di
	 QycEmlOHF3/HR3i5ub2+cXNMfFPtWd/QuO7DImj9IxF+qbY7pfonR4SyJjZ6H1j8fu
	 ybkk25bWqB1NM7WFCti0THYbKjgBYEa8f0FscUAQJpcAZetaM5KdnvB49a7uQGg535
	 NT1uV5VkbH72NVJIm97eFfUfxeCHUUniWBsyv0fpsMEnGFnfzY3vNY3wtz6eVP3uk9
	 aGPuvDrMMqtpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1F686FA8C;
	Thu, 23 Jan 2025 15:01:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA03AB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9ADD64104F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1zckxw4DxO2v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 15:01:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4D75A4037E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D75A4037E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D75A4037E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:34 +0000 (UTC)
X-CSE-ConnectionGUID: RpDveB0RSaaLlyE4hN1VUA==
X-CSE-MsgGUID: yvJAUEy9TYWpJ++8zMF2eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38293520"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38293520"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 07:01:34 -0800
X-CSE-ConnectionGUID: DQXNLQ7rRlGxM6VwZrCBqQ==
X-CSE-MsgGUID: w56aLiCgT1ejtFZRcuHtSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111508862"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa003.fm.intel.com with ESMTP; 23 Jan 2025 07:01:31 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Jan 2025 16:01:15 +0100
Message-Id: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737644496; x=1769180496;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ARqUgcmalthga3LTbgTcnjBIhh2qzGi/IDE/hw1VajM=;
 b=JPp/22w6g+hW3s0uajoffJpBl4B1weZfmMaiS1VaS1ZDf6ew2AbyxAER
 b5//4o/shks1nRYSOsJs5hxpm0MzfUbWIbk8MeI79a1hB9RYCCFDMrizo
 V8fOz3zvvMQZKXuEGmOaPBWqaYeEZi2Tz+032ik4lBbD5fvoyGat28L6J
 MhWpePa1/RbvsvQfOXwm4BDrQfgYH6BMF1IWlXknEe+bLMVXqaDumOKKH
 RBXeqaKSYtnJ8CCGabtMCQukp3DnD0FYnLABCY9jHLSV2NAnGlD7Hqahp
 TxGvr9KUXBZSCPfIXbbpXzhFMaMDF9Afr5zD961rkX/C/yQ1p8Wjflq5h
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JPp/22w6
Subject: [Intel-wired-lan] [PATCH v5 iwl-net 0/3] ice: fix Rx data path for
 heavy 9k MTU traffic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 xudu@redhat.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, jmaxwell@redhat.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

v4->v5:
* add missing kdoc variable description in patch 3 (Simon Horman)
* include review tags from Simon

v3->v4:
* fix kdoc issues (Simon Horman)
* fix typo in commit msg in patch 1 (Simon Horman)

v2->v3:
* s/intel/iwl in patch subjects (Jakub Kicinski)

v1->v2:
* pass ntc to ice_put_rx_mbuf() (pointed out by Petr Oros) in patch 1
* add review tags from Przemek Kitszel (thanks!)
* make sure patches compile and work ;)


Hello in 2025,

this patchset fixes a pretty nasty issue that was reported by RedHat
folks which occured after ~30 minutes (this value varied, just trying
here to state that it was not observed immediately but rather after a
considerable longer amount of time) when ice driver was tortured with
jumbo frames via mix of iperf traffic executed simultaneously with
wrk/nginx on client/server sides (HTTP and TCP workloads basically).

The reported splats were spanning across all the bad things that can
happen to the state of page - refcount underflow, use-after-free, etc.
One of these looked as follows:

[ 2084.019891] BUG: Bad page state in process swapper/34  pfn:97fcd0
[ 2084.025990] page:00000000a60ee772 refcount:-1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x97fcd0
[ 2084.035462] flags: 0x17ffffc0000000(node=0|zone=2|lastcpupid=0x1fffff)
[ 2084.041990] raw: 0017ffffc0000000 dead000000000100 dead000000000122 0000000000000000
[ 2084.049730] raw: 0000000000000000 0000000000000000 ffffffffffffffff 0000000000000000
[ 2084.057468] page dumped because: nonzero _refcount
[ 2084.062260] Modules linked in: bonding tls sunrpc intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common i10nm_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm mgag200 irqd
[ 2084.137829] CPU: 34 PID: 0 Comm: swapper/34 Kdump: loaded Not tainted 5.14.0-427.37.1.el9_4.x86_64 #1
[ 2084.147039] Hardware name: Dell Inc. PowerEdge R750/0216NK, BIOS 1.13.2 12/19/2023
[ 2084.154604] Call Trace:
[ 2084.157058]  <IRQ>
[ 2084.159080]  dump_stack_lvl+0x34/0x48
[ 2084.162752]  bad_page.cold+0x63/0x94
[ 2084.166333]  check_new_pages+0xb3/0xe0
[ 2084.170083]  rmqueue_bulk+0x2d2/0x9e0
[ 2084.173749]  ? ktime_get+0x35/0xa0
[ 2084.177159]  rmqueue_pcplist+0x13b/0x210
[ 2084.181081]  rmqueue+0x7d3/0xd40
[ 2084.184316]  ? xas_load+0x9/0xa0
[ 2084.187547]  ? xas_find+0x183/0x1d0
[ 2084.191041]  ? xa_find_after+0xd0/0x130
[ 2084.194879]  ? intel_iommu_iotlb_sync_map+0x89/0xe0
[ 2084.199759]  get_page_from_freelist+0x11f/0x530
[ 2084.204291]  __alloc_pages+0xf2/0x250
[ 2084.207958]  ice_alloc_rx_bufs+0xcc/0x1c0 [ice]
[ 2084.212543]  ice_clean_rx_irq+0x631/0xa20 [ice]
[ 2084.217111]  ice_napi_poll+0xdf/0x2a0 [ice]
[ 2084.221330]  __napi_poll+0x27/0x170
[ 2084.224824]  net_rx_action+0x233/0x2f0
[ 2084.228575]  __do_softirq+0xc7/0x2ac
[ 2084.232155]  __irq_exit_rcu+0xa1/0xc0
[ 2084.235821]  common_interrupt+0x80/0xa0
[ 2084.239662]  </IRQ>
[ 2084.241768]  <TASK>

The fix is mostly about reverting what was done in commit 1dc1a7e7f410
("ice: Centrallize Rx buffer recycling") followed by proper timing on
page_count() storage and then removing the ice_rx_buf::act related logic
(which was mostly introduced for purposes from cited commit).

Special thanks to Xu Du for providing reproducer and Jacob Keller for
initial extensive analysis.

Thanks,
Maciej


Maciej Fijalkowski (3):
  ice: put Rx buffers after being done with current frame
  ice: gather page_count()'s of each frag right before XDP prog call
  ice: stop storing XDP verdict within ice_rx_buf

 drivers/net/ethernet/intel/ice/ice_txrx.c     | 150 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  43 -----
 3 files changed, 103 insertions(+), 91 deletions(-)

-- 
2.43.0

