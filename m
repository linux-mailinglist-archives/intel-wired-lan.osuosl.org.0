Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8F4A152AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 16:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 722D2836F0;
	Fri, 17 Jan 2025 15:19:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fuKmsnlhVSTK; Fri, 17 Jan 2025 15:19:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8C4F835F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737127161;
	bh=7m9Vx/nniJ0jQJU53APOon63kWpuoeq1x+vzXEd+qvc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3ZYtBXm4NXoErs9tKgBhBSjGJJijPzMh4fwCKGfM3n/B43+6L0QPgOJswAmfRskuY
	 hbSzmeBl/Q0HgbQWF/ObB+DzkYx+cCx/0MLHhBEPypMSCexIZrSrB645vJUe9RG+9A
	 ROsYJcln3FZo9QS7am4sjybegPeYteeo8zYrdNvJMNJpRYo+SCG/gJzNH21ZwtzgwM
	 KyPMDatrZQgmiDzL4V72fKFZ7uVaNxJadIxv4vOcR87qkEO7yXlJmF3EkggbqSEdwf
	 z87oHi9EoR6yFvDBEnNgHXvNLNlCmvKPX3rSrWrVCqz/BoMaNveBB6StIzGwNLBeFx
	 Msdi0NQbMHFIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8C4F835F2;
	Fri, 17 Jan 2025 15:19:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F93531
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 15:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A452835F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 15:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p1HTo2PeWv47 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 15:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7416D835C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7416D835C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7416D835C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 15:19:18 +0000 (UTC)
X-CSE-ConnectionGUID: Hez4uwCeREirB7G/6/9SUQ==
X-CSE-MsgGUID: kdJBrF9MQ12JtsmPF8PjBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37798401"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37798401"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 07:19:18 -0800
X-CSE-ConnectionGUID: ERw9NffvSE67rXuNSh5Vmg==
X-CSE-MsgGUID: ooe5vkRqSeuCea4oO6WSaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="136664367"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 17 Jan 2025 07:19:15 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Jan 2025 16:18:57 +0100
Message-Id: <20250117151900.525509-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737127159; x=1768663159;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JA7xwcXMPi1Rs6xK5uK4v4vQUIVpPbUhe3Vxy6GhPok=;
 b=cvaQMN5vAsiZ1Aq3NbOmcd/bXliZ++vTUJRJL4wCSuQN5REKYbxBuHej
 IytjtufmK0rVOn1ze3wWqAda/WcE8dHDJ4MSolVC4ZIrJeot3QFpayUkV
 nvpXwLzTFk1Srg+w4lhpFRZ66Wx6Kkh0qYndbpe78zG4qEIs7bhz3dKVJ
 buMSvEbdT5RngOnPeqgF57HqydMlvqsJPbLF4oqdvKiuwQmVETzNePR/6
 LeT9wZ6qwqce+GuyjrO/ta4PD2j0o0Xxr49xXU0WkiPQiSCgEAyTnJNiB
 MZ5t1wZwD9CP2+lEROmKPJeChpEFI4dITV8VSK+6T3qOSqB1DwYIXRj9Q
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cvaQMN5v
Subject: [Intel-wired-lan] [PATCH v2 intel-net 0/3] ice: fix Rx data path
 for heavy 9k MTU traffic
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

 drivers/net/ethernet/intel/ice/ice_txrx.c     | 128 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  43 ------
 3 files changed, 82 insertions(+), 90 deletions(-)

-- 
2.43.0

