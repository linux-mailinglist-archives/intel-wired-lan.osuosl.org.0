Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4ED94A660
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 12:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF84580DB8;
	Wed,  7 Aug 2024 10:55:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XJIduQuOPYIf; Wed,  7 Aug 2024 10:55:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71E8580D58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723028124;
	bh=LArz/3alT4LucS/wmHnXg1108OrS37xVW1UYx5oA6nk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GHaQl/Ner6bhN6e3l44/d95rrj2d5rfxbRMXVEuIafc9/f3+fUERgAYLITDuVcs1T
	 IIPmW5uv5hmYE3BNSieII6UWX+cJq6IF3gfswTVpu7NleJ2crUUyWeMXJAKXuYbodi
	 yooSmzbFkrCN70DF+XywfSAxLbeIMki9U8nAVZGUz779I6c/SLxQQn5Z5/8cVhGDr2
	 Ytdl68rrFAykADBuyX8qKPU/18nbJ+vqjShuqwFe3SN2j1rXHQxGySJpCDKwwG5L0D
	 LXg4mf8CirGuS/GTi+Ead150lHet8zUigqVn8ryckoPE8e8MCng6q88p7gi0vmH/KT
	 p7/GdDavhpCOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E8580D58;
	Wed,  7 Aug 2024 10:55:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89B3B1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 770BD6067A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3l9Rfd5q4A_X for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 10:55:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0ECB6605BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0ECB6605BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0ECB6605BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:19 +0000 (UTC)
X-CSE-ConnectionGUID: 8TzQR4SwTxWDDPi+sPobbA==
X-CSE-MsgGUID: o3mPuPIvSJa/XrL8rsgSBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31664383"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="31664383"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:55:18 -0700
X-CSE-ConnectionGUID: zykzEOA1TS2aTj0/DuTb2Q==
X-CSE-MsgGUID: SgsqjdcUQI6zBwBcEs9L3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="87757257"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 07 Aug 2024 03:55:15 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Aug 2024 12:53:23 +0200
Message-Id: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723028120; x=1754564120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M1ianc8JwsI4u02T2tYknievW9MU8sYHfzm2bd2GtsM=;
 b=Oc84Rsv6QlZknUnwNeknTQmjCl+UmJUf8S9/kayoLHchNGmgw1k9Akuz
 qakAaEN+zQgIjLR4OA07OEW2NdDbIwsTm18Xb+q0dnXIlWflzVDYq16cE
 tNF4WlGAFCQcj+jG8seUA0kYc6YlH7MpcrxPWH6D8DYtETEP+rI6rCXlX
 6JeLo/nK5mUZIC+mz7HtANn57+YBJNwpuUwzdM2L6M51NtypKTlau9EHQ
 ZbcoeBY4OmVz8FSWdnVLw9ms3g0CxbxMBmoudtYddbHB4YPwyRvrQIR1x
 mIZyz6t6OqClWEvMg0fXGd0xnqA9sZDjD1nKzsmAvFk6mrXb02/upoTOn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Oc84Rsv6
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix Rx data path for
 PAGE_SIZE >= 8192
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bjorn@kernel.org, anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 luizcap@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

These three small fixes addres the following panic reported by Luiz
(https://lore.kernel.org/netdev/8f9e2a5c-fd30-4206-9311-946a06d031bb@redhat.com/):

[  225.715759] Unable to handle kernel paging request at virtual address 0075e625f68aa42c
[  225.723669] Mem abort info:
[  225.726487]   ESR = 0x0000000096000004
[  225.730223]   EC = 0x25: DABT (current EL), IL = 32 bits
[  225.735526]   SET = 0, FnV = 0
[  225.738568]   EA = 0, S1PTW = 0
[  225.741695]   FSC = 0x04: level 0 translation fault
[  225.746564] Data abort info:
[  225.749431]   ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
[  225.754906]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
[  225.759944]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[  225.765250] [0075e625f68aa42c] address between user and kernel address ranges
[  225.772373] Internal error: Oops: 0000000096000004 [#1] SMP
[  225.777932] Modules linked in: xfs(E) crct10dif_ce(E) ghash_ce(E) sha2_ce(E) sha256_arm64(E) sha1_ce(E) sbsa_gwdt(E) ice(E) nvme(E) libie(E) dimlib(E) nvme_core(E) gnss(E) nvme_auth(E) ixgbe(E) igb(E) mdio(E) i2c_algo_bit(E) i2c_designware_platform(E) xgene_hwmon(E) i2c_designware_core(E) dm_mirror(E) dm_region_hash(E) dm_log(E) dm_mod(E)
[  225.807902] CPU: 61 PID: 7794 Comm: iperf3 Kdump: loaded Tainted: G            E      6.10.0-rc4+ #1
[  225.817021] Hardware name: LTHPC GR2134/MP32-AR2-LT, BIOS F31j (SCP: 2.10.20220531) 08/01/2022
[  225.825618] pstate: 00400009 (nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[  225.832566] pc : __arch_copy_to_user+0x4c/0x240
[  225.837088] lr : _copy_to_iter+0x104/0x518
[  225.841173] sp : ffff80010978f6e0
[  225.844474] x29: ffff80010978f730 x28: 0000000000007388 x27: 4775e625f68aa42c
[  225.851597] x26: 0000000000000001 x25: 00000000000005a8 x24: 00000000000005a8
[  225.858720] x23: 0000000000007388 x22: ffff80010978fa60 x21: ffff80010978fa60
[  225.865842] x20: 4775e625f68aa42c x19: 0000000000007388 x18: 0000000000000000
[  225.872964] x17: 0000000000000000 x16: 0000000000000000 x15: 4775e625f68aa42c
[  225.880087] x14: aaa03e61c262c44f x13: 5fb01a5ebded22da x12: 415feff815830f22
[  225.887209] x11: 7411a8ffaab6d3d7 x10: 95af4645d12e6d70 x9 : ffffba83c2faddac
[  225.894332] x8 : c1cbcc6e9552ed64 x7 : dfcefe933cdc57ae x6 : 0000fffde5aa9e80
[  225.901454] x5 : 0000fffde5ab1208 x4 : 0000000000000004 x3 : 0000000000016180
[  225.908576] x2 : 0000000000007384 x1 : 4775e625f68aa42c x0 : 0000fffde5aa9e80
[  225.915699] Call trace:
[  225.918132]  __arch_copy_to_user+0x4c/0x240
[  225.922304]  simple_copy_to_iter+0x4c/0x78
[  225.926389]  __skb_datagram_iter+0x18c/0x270
[  225.930647]  skb_copy_datagram_iter+0x4c/0xe0
[  225.934991]  tcp_recvmsg_locked+0x59c/0x9a0
[  225.939162]  tcp_recvmsg+0x78/0x1d0
[  225.942638]  inet6_recvmsg+0x54/0x128
[  225.946289]  sock_recvmsg+0x78/0xd0
[  225.949766]  sock_read_iter+0x98/0x108
[  225.953502]  vfs_read+0x2a4/0x318
[  225.956806]  ksys_read+0xec/0x110
[  225.960108]  __arm64_sys_read+0x24/0x38
[  225.963932]  invoke_syscall.constprop.0+0x80/0xe0
[  225.968624]  do_el0_svc+0xc0/0xe0
[  225.971926]  el0_svc+0x48/0x1b0
[  225.975056]  el0t_64_sync_handler+0x13c/0x158
[  225.979400]  el0t_64_sync+0x1a4/0x1a8
[  225.983051] Code: 78402423 780008c3 910008c6 36100084 (b8404423)
[  225.989132] SMP: stopping secondary CPUs
[  225.995919] Starting crashdump kernel...
[  225.999829] Bye!

Third patch contains the root cause description. I suppose that i40e
would break as well for arm64 and multi-buffer traffic as when we update
the skb shared info we assume that xdp_buff::frame_sz is constant but it
should be accounted per each buffer.

Thanks,
Maciej

Maciej Fijalkowski (3):
  ice: fix page reuse when PAGE_SIZE is over 8k
  ice: fix ICE_LAST_OFFSET formula
  ice: fix truesize operations for PAGE_SIZE >= 8192

 drivers/net/ethernet/intel/ice/ice_base.c | 21 +++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c | 47 ++---------------------
 2 files changed, 24 insertions(+), 44 deletions(-)

-- 
2.34.1

