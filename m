Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF665C37DA8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:07:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A94D613DB;
	Wed,  5 Nov 2025 21:07:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1VrgeMDsx2Xb; Wed,  5 Nov 2025 21:07:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63809613D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376837;
	bh=6VeHRZdjy0MB02eC/+EhYwEjgjP0JRPkQbODBjaaKDo=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WuHbCJJDpzy4wBqxa44uWFPwSIguqujKHyO+Ka24OYs5odi/5YTOUINWGwruTs89B
	 SFAqihLNyEQgU8ntT6MgMONuHf9Gr1CM6hjndo+uA1dnFxnDW7ETAZVU0QHiefKaQ1
	 qRkDORXCVaFZsLYWIHOt0t9ssxn9PGx+vM2mH6sxGoEjKlSBP1sxKe06Lu1+64PGZS
	 C4atQmADXLpuuB7yDAORPMZw5SxjKRvrCx8A8Pidwu2oSKC9VK3U9IB4SkCURyoG5R
	 2T1zU9pl4iEbQX81BJFxZY4IYLXeqeOOnByJ6XuSriBRfenNvti+iMOSrypGvatccS
	 cyQEBqmUvOcjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63809613D4;
	Wed,  5 Nov 2025 21:07:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 39607462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FD254119F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LflTX4r0gwnM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:07:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8317C4108F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8317C4108F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8317C4108F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:13 +0000 (UTC)
X-CSE-ConnectionGUID: lnCc8W+nTuO/9a7MlM/yiQ==
X-CSE-MsgGUID: WVQeZg+OSvaeL+ZHQPVncA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75114371"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75114371"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
X-CSE-ConnectionGUID: dhRbpRO6RnOfVTw/RWWiCw==
X-CSE-MsgGUID: mmkvBiQVSReCUkTHh2IkjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187513278"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 05 Nov 2025 13:06:32 -0800
Message-Id: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFu8C2kC/4WOy27CMBBFfwV53UGeGTuPrvgP1IUTT4pbmkBsU
 iqUf6/JKkKiXY7unHPvTUUZg0T1urmpUaYQw9Dng142qj24/l0g+Hwr0mRRYwEfnzBK59o0jHC
 +yEUgJpci1FISNmxa0agyfcpf4bqY9yp8H6GXa1JvOTmEmOGfpXLCJf/XPiEgVGVtrTdSs212o
 U9y3LbD171s4VHzX7wGLIwn8ZWtm2LF3zdNtN5RPvdQ3uGdCKNl6ow8enjloeq5h/Mez2XHjow
 rGrP2zPP8CziWF3CYAQAA
X-Change-ID: 20251016-jk-refactor-queue-stats-9e721b34ce01
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=4932;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=rlMhcEHMRWJ0HSNJoLa1bFGn5gmg/hAuctVLfT//Ub8=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzuPVXffx+xjLj160Z6V8p5F+OfN7775q1zUj0fWKKTo
 3z8sXtmRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABNhkGJkeFtTHvL//Eu9E6n/
 /b5mSipMvnJK64NWcczJqgtnHbk6XRj+h3sIFT1wTLHo2+M49cEkk5R932oF+e6a231Qn6DHJi/
 KDgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376833; x=1793912833;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=rlMhcEHMRWJ0HSNJoLa1bFGn5gmg/hAuctVLfT//Ub8=;
 b=l1TimkvBSuqBcj/giyu3yJDY8yRfM/ckQuAwGGCjy82GDrQuadir2MPK
 T1cqwSEBvbRtIBPqQzDHtBxSnanB7b6gZITN0sfX6UYNNdhs5kDA28Jk9
 TiHDywKiGqX/PYxhyHEaypi6iVsMH4YZ+0gBFbZMLa0mrBP5qLttYMv5b
 bzWtk/R1G9sdw2S0pC2C3vPo8obWTXBDAb3bPe6khYVYE2QnTFmM4Gs6g
 NDYIVQ3TZ/uSM74nK85Da3Xu1BZeSnSTzjzKoZfanDJFR5LDhix/Bg7xN
 9VUz8suRJx199R7GEu9GYtT8edby601UHDUmjf9/iLii2Ni3wiA/+T7li
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l1TimkvB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/9] ice: properly use
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
Changes in v2:
- Fix minor typos.
- Link to v1: https://patch.msgid.link/20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com

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
base-commit: c5acd2847bb5371988d6b5c165b0776967cc7da2
change-id: 20251016-jk-refactor-queue-stats-9e721b34ce01

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

