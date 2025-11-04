Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECCFC2EB18
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0C1E60BB3;
	Tue,  4 Nov 2025 01:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MKWZMwF7-z89; Tue,  4 Nov 2025 01:07:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB23860BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218446;
	bh=qx6uEJIDlRd6MGMj/XxglR1ewn2avDQo0CAAT0hseKY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jmUiYJXo31izS7he+s/D37DoMw4JiS+3jh42uX56A9EefeI3aSH0qia+crsJDAjJ0
	 vt/3b6UPgOQEGBe1s2AyPMCiZ6YDLGlTDJeqlgZrcRzsYoajOR1LM9eeNijMzIOGrC
	 8AExlaOGcIM7EX1cvkb6ZGw5A4Mf0KfcA3og3BqSMj0B0o3e1Xm/v3JV0kF+BzTDLS
	 xB6gRwyILnIl4J01RDRDPF/6eXa+WB3A3+LKWr6D9jr+8iEUlUkZ4JmY5bNpZaG+vV
	 znoG68MNNKnf7QMbHbTpOiDF+N60dW779iOiDULtII2Vpq3lRgag89ElscKNX8VLse
	 hzizmQIzBX6Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB23860BAF;
	Tue,  4 Nov 2025 01:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 04452222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E91F48145A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DDKN9bmMOcvg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D55358144D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D55358144D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D55358144D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:20 +0000 (UTC)
X-CSE-ConnectionGUID: i4BU52Y/SxKkGZD0i7bhfw==
X-CSE-MsgGUID: xd5opIu3Q0uhcxZ2ezqeqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190637"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190637"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:18 -0800
X-CSE-ConnectionGUID: llwJixHZTcyo2DAqPiHPRw==
X-CSE-MsgGUID: DbsYCgsxTimwItY0g0wFjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828748"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:15 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:45 -0800
Message-Id: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKhRCWkC/4XNyw6CMBAF0F8hXTuG6YOHK//DuCh0kPoApQUxh
 H+3YUVMiMubO/fMxBx1lhw7RBPraLDOtk0IuItYWevmQmBNyIzHXGGMCVxv0FGlS9928OqpJ3B
 eewc5pRwLIUuKkYX1M1zZcZFPzL7v0NDo2Tk0tXVh/FleDrj0f/UBASFLc6WMpFyo4mgbT/d92
 T4Wc+BrJ912eHCMJhKoBK8k/Tpi5fBs2xEQgxFpJTSXOink2pnn+Qv2oC8bWAEAAA==
X-Change-ID: 20251016-jk-refactor-queue-stats-9e721b34ce01
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=4788;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=fXbu60cFBKrIJEcbeF4F/C66OFQIBm+e3I/RMERzBag=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwN3yX6WlFTk5nj5ru7frR9rdr7IePu1H21rW/RNWn
 r8/OFmwo5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgImccGL4zS6V3cDh9jqjXb2h
 d6Hy+n+nXe8tMZCQslv8Pnfi0s3V2gz/NLaLCHbe/PFFOmblx/+TCu7sk+BcL/VBaNJ3b1vnyZu
 lGQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218441; x=1793754441;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=fXbu60cFBKrIJEcbeF4F/C66OFQIBm+e3I/RMERzBag=;
 b=VdCsqrACbKbOZgLJCnjaW9PjUwMCG3GpGa6Ff8tGIVJ2oFP43yqMkzpY
 dVuMqAsijQRx1HgNuDMhE1I1J6u/TcBSkzXOgvrT75gh0oFFrDBaCLBFu
 O6p4Qty+nlgt2BzsyE2RMVmueHJzG9s3If5nRmXzXdib7mLjE4elOgtVa
 tKRHjHhh6W3plBOteHeB+UcsMfL4X7oFZmcZAXWQY2tpbajj4oC4veLuI
 +OxPlmqcjgio3TQhpH8kCLfICICighehsIXJEE47D2gIwth4eFJHrI3O4
 kyZWorL+KeM1F/+XLYXMipLLLJYJxOFnpuVBJ9zpJrUQL0biJdsxbaWDB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VdCsqrAC
Subject: [Intel-wired-lan] [PATCH iwl-next 0/9] ice: properly use u64_stats
 API for all ring stats
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
   impacts 32-bit systens with CONFIG_LOCKDEP enabled.

*) A few locations accessed the packets and byte counts directly without
   using the u64 stats API.

*) The prev_pkt integer field is moved out of the stats structure and into
   the ice_tx_ring structure directly.

*) Cache line comments in ice_tx_ring and ice_rx_ring were out of date and
   did not match the actual intended layout for systems with 64-bit cache
   lines. Convert the structures to use __cacheline_group instead of
   comments.

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

I have included the cacheline cleanup in ice_tx_ring and ice_rx_ring here,
but that could arguably be split to its own series. I only noticed it
because of attempting to move the prev_pkt field out of the ring stats. I
replaced the comments with cacheline_group, but I did not make an attempt
to optimize the existing cachelines. Probably we should experiment with the
method used in idpf with the 'read-mostly', 'read-write' and 'cold'
groupings, but doing so will require a more thorough deep dive on
performance profiling and tuning.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (9):
      ice: initialize ring_stats->syncp
      ice: use cacheline groups for ice_rx_ring structure
      ice: use cacheline groups for ice_tx_ring structure
      ice: move prev_pkt from ice_txq_stats to ice_tx_ring
      ice: pass pointer to ice_fetch_u64_stats_per_ring
      ice: remove ice_q_stats struct and use struct_group
      ice: use u64_stats API to access pkts/bytes in dim sample
      ice: shorten ring stat names and add accessors
      ice: convert all ring stats to u64_stats_t

 drivers/net/ethernet/intel/ice/ice.h          |   3 -
 drivers/net/ethernet/intel/ice/ice_lib.h      |   6 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 135 ++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   2 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  30 ++--
 drivers/net/ethernet/intel/ice/ice_lib.c      |  61 ++++++--
 drivers/net/ethernet/intel/ice/ice_main.c     | 201 +++++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  45 +++---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   4 +-
 11 files changed, 331 insertions(+), 162 deletions(-)
---
base-commit: 4601e382d0413867dbbb150d90e47352d7b0631e
change-id: 20251016-jk-refactor-queue-stats-9e721b34ce01

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

