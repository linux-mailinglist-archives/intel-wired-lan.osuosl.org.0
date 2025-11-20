Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C21E4C762E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 21:21:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 556786F534;
	Thu, 20 Nov 2025 20:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KVMkdY8SuMIi; Thu, 20 Nov 2025 20:21:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 809546F51E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763670086;
	bh=gwidPIrBh9cVSdg4niNa5FM9pM6+wKOZoH49B0h1Mqo=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=onfqprnE3tqr6dc/5e7miAjOo88nlx9CUrriVPPW3ffykVAv6M/RQUCej0pHXhBK7
	 gpquumra8q6J5DUxuiPUxuAhcbX0XfBDPRoq0ZkeCfycXx0LUEvrEwN9CoZ0mh5NgG
	 eJSdUoI5+0xxbWaCWtpeDNbWx0Q1LlIR4UjdH9e6SWizK+nMm4oDWfpv0GjaYJRTjp
	 x5MEGs61/bksIzdoAZYPtS1YYSD0CXDtmZf5mq9Sa/G0pOkG7phhodvyVSjpYBlGUD
	 5IXcbxFhkhqDov5QA74piaWrnRbCdWxWUDbTKTT9/+T/ZqcL2pz8a8EBJexgPZHzL4
	 isNHoMmkyBZ6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 809546F51E;
	Thu, 20 Nov 2025 20:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 179BB158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 364B841D7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id npMdAMBM32OW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 20:21:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BF5F41DB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BF5F41DB1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BF5F41DB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:21:20 +0000 (UTC)
X-CSE-ConnectionGUID: rR8EMhfhQ4aztKj3r3jn5A==
X-CSE-MsgGUID: 9MBv3Hx8T3Oj4ZjalX36YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65688941"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65688941"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 12:21:17 -0800
X-CSE-ConnectionGUID: WAQi/kKiRTC8BqDtbEBfqA==
X-CSE-MsgGUID: lvSI+lq/TnKMWuTacBsLWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="222419689"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 12:21:11 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 20 Nov 2025 12:20:40 -0800
Message-Id: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABp4H2kC/33O3U7DMAwF4Fepcj2j2PlrueI9Ji7S1mWB0bImK
 0NT350oEqJCKpfW8fnsu4g8B47isbqLmZcQwzTmQR8q0Z38+MIQ+jwLkmRQooXXN5h58F2aZrh
 c+coQk08RGnaErdIdSxS5/ZG3wq3IRxE+zzDyLYnnnJxCzOWvcnLBkhcdpdrVFwQJaHVP3Nema
 e1TGBOfH7rpvZgLbR2z71B2amvIGDc0xtFfR/06kup9R2WnV25QnrS3rd44h+rnD/d/3zn0jBp
 1S7z9Y13Xb8nSsTWYAQAA
X-Change-ID: 20251016-jk-refactor-queue-stats-9e721b34ce01
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=4587;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=f9H5zInx1tkiTRX2oNbYV+CR/1Axsm51loeW7WIZCyI=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkz5Cv0tHD83XLTVyZ2sH//4tcQnS+9Tp1gPfPymZpO38
 q7qgoe1HaUsDGJcDLJiiiwKDiErrxtPCNN64ywHM4eVCWQIAxenAEzk6GeG/wFPNQJV8s9cCLor
 tt1X1yhXUZnFYM3eHdNYL984FGzk/I+R4dKlh5VZkiFXu0TfydQJLutNvDZN1fBK01d2o8j/G1L
 28AAA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763670081; x=1795206081;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=f9H5zInx1tkiTRX2oNbYV+CR/1Axsm51loeW7WIZCyI=;
 b=j1cVhAmFYBh5uX4rrHt5qYRj3iQkT90az4EP3+a0gB69xkxxux86jawG
 /dkkEdAMNDf0vrs1yFuHnSjwIG4YL/BKelAEyb2swmkM1vS1xMi6YZs2x
 mKoKQdDs8Vxgjocl1dyDxfD+Fa3C/G1Qh09BDqDhc1A1NuYy6EzTrZf3t
 1hglRssmYIxm8Vs/VvfFD08xpU4+HPIjkWUH4e8lpXkPHqmntvCrTikxc
 ajuP3Kdx49KUqHbY+KVh9FtAEsrfxlW/jrClMM32f+lyu+neD5FgtC7Et
 hEDnczEUKloLDfNeMFfafk7lhrIf110D5qhvQ4UPH7QRam1taeomUUJxA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j1cVhAmF
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/6] ice: properly use
 u64_stats API for all ring stats
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver has multiple u64 values stored in the ring structures for
each queue used for statistics. These are accumulated in
ice_update_vsi_stats(). The packet and byte values are read using the
u64_stats API from <linux/u64_stats_sync.h>.

Several non-standard counters are also accumulated in the same function,
but do not use the u64_stats API. This could result in load/store tears on
32-bit architectures. Further, since commit 316580b69d0a ("u64_stats:
provide u64_stats_t type"), the u64 stats API has had u64_stats_t and
access functions which convert to local64_t on 64-bit architectures.

The ice driver doesn't use u64_stats_t and these access functions. Thus
even on 64-bit architectures it could read inconsistent values. This series
refactors the ice driver to use the updated API. Along the way I noticed
several other issues and inconsistencies which I have cleaned up,
summarized below.

*) The driver never called u64_stats_init, leaving the syncp improperly
   initialized. Since the field is part of a kzalloc block, this only
   impacts 32-bit systems with CONFIG_LOCKDEP enabled.

*) A few locations accessed the packets and byte counts directly without
   using the u64 stats API.

*) The ice_fetch_u64_stats_per_ring() function took the ice_q_stats by
   value, defeating the point of using the u64_stats API entirely.

To keep the stats increments short, I introduced ice_stats_inc, as
otherwise each stat increment has to be quite verbose. Similarly a few
places read only one stat, so I added ice_stats_read for those.

This version uses struct ice_vsi_(tx|rx)_stats structures defined in
ice_main.c for the accumulator. I haven't come up with a better solution
that allows accumulating nicely without this structure. Its a bit
frustrating as it copies the entries in the ring stats structures but with
u64 instead of u64_stats_t.

I am also still not entirely certain how the ice_update_vsi_ring_stats()
function is synchronized in the ice driver. It is called from multiple
places without an obvious synchronization mechanism. It is ultimately
called from the service task and from ethtool, and I think it may also be
called from one of the netdev stats callbacks.

I'm open to suggestions on ways to improve this, as I think the result
still has some ugly logic and a fair amount of near duplicate code.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v4:
- Drop the cacheline_group changes. Olek and I plan to work on a full
  solution in a separate series.
- Drop moving prev_pkt out of the stats. This might still be a good idea,
  but it should wait for the cacheline group changes.
- Link to v3: https://patch.msgid.link/20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com

Changes in v3:
- Use SMP_CACHE_BYTES in assertions to avoid issues on ARM v7 with 128-byte
  cache (due to xdp_rxq_info changing size)
- Only check the tx_lock cache group size for non-debug kernels, rather
  than keeping logic to check its size when DEBUG_LOCK_ALLOC is enabled.
- Link to v2: https://patch.msgid.link/20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com

Changes in v2:
- Fix minor typos.
- Link to v1: https://patch.msgid.link/20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com

---
Jacob Keller (6):
      ice: initialize ring_stats->syncp
      ice: pass pointer to ice_fetch_u64_stats_per_ring
      ice: remove ice_q_stats struct and use struct_group
      ice: use u64_stats API to access pkts/bytes in dim sample
      ice: shorten ring stat names and add accessors
      ice: convert all ring stats to u64_stats_t

 drivers/net/ethernet/intel/ice/ice.h          |   3 -
 drivers/net/ethernet/intel/ice/ice_lib.h      |   6 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  77 +++++++---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   2 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  30 ++--
 drivers/net/ethernet/intel/ice/ice_lib.c      |  61 +++++---
 drivers/net/ethernet/intel/ice/ice_main.c     | 196 +++++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  45 +++---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   4 +-
 11 files changed, 280 insertions(+), 150 deletions(-)
---
base-commit: 2fcc88754f4c49e3d9aef226fdfaa1634aa24c66
change-id: 20251016-jk-refactor-queue-stats-9e721b34ce01

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

