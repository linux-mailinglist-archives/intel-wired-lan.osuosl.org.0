Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 069DAC41F50
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26FF980EC1;
	Fri,  7 Nov 2025 23:32:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pyGKAlfb5BAA; Fri,  7 Nov 2025 23:32:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C9E980EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558347;
	bh=M2GZJ8eCLiciKQ9yPOAONqTkoUh2bqueuvk2hr6kcA0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f4tQQnesAf8TVSAJSINQlXNPB3q6XSNN+QiGDnvY7pZLtRWUTHfn0mPpTmbNUSZkI
	 1i+l28Dc4t0uP9CHaNykCBzJwXlJbZjHoGemFFeIniFZnEwfjHOqvyqwSrMDZoigCH
	 RZpie2dnHkGWQtVLlY3lODxF6juTCgr6Yb4rQTDNfnz1zmHxhXDjh5LZST9q+RDoTn
	 rZgLk/v4RZcpj1GxFiyzkz7wB9QkjyORi0RYNG/fKo79eEgxqGEfLnDHhI//0emp0m
	 gRO6aITwR45cKe94X9krLD3BvOwxHyO9ZwfUlnUhbAkWjgr14zyMV73ZxvBmd+6mIn
	 eVyj6v59nbmXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C9E980EB7;
	Fri,  7 Nov 2025 23:32:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A2B7D25D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 950F980EB0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R0fHQfbW4RQl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1F8D80EAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1F8D80EAE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1F8D80EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:19 +0000 (UTC)
X-CSE-ConnectionGUID: P1dEvgEWTsCE62lu9+Lr4Q==
X-CSE-MsgGUID: uwszL9bpRN2x5BMh0+zm1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628775"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628775"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
X-CSE-ConnectionGUID: 1PAhrkUDTT+tq+R4DQGeUg==
X-CSE-MsgGUID: w2gNIv08QSOMKAsh2osHjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815413"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:44 -0800
Message-Id: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGKBDmkC/3XNTQ6CMBAF4KuYrh3TTmkBV97DuCh00PoDSgtiD
 He36UZjwvLlzfvmzTz1jjzbrt6sp9F517UxyPWK1SfTHgmcjZkhRyW40HC+QE+NqUPXw2OggcA
 HEzyUlKOoZFYTFyyu7/HKTUneM/e8QktTYIfYnJyP41d6OYrUJ11wuaiPAjgInVkkW6iy0jvXB
 rpu6u6WzBF/HbXsYHQKrVCpvClVjv+O/Doci2VHRsfKvJEGM6Or7NeZ5/kDZQsBMFgBAAA=
X-Change-ID: 20251016-jk-refactor-queue-stats-9e721b34ce01
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=5320;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=lg95PqZ6UPEcke6CzDZMCmLXRUpVCM7TugkfOV8gbAQ=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xhrrNcF3ZjjfuNyql7+zPdumb3f2x7W1u3NS/0ctS
 U4xPVTbUcrCIMbFICumyKLgELLyuvGEMK03znIwc1iZQIYwcHEKwEQ+BjMyLA5e51xkec0iJPa7
 c+5mpu49W9p/73AQiI2NdUianFSgzvBP51Flb+F++40ufw6tmHd9Y8xPFantvjdt9ujYdYX84N7
 HCQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558341; x=1794094341;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=lg95PqZ6UPEcke6CzDZMCmLXRUpVCM7TugkfOV8gbAQ=;
 b=YDgGTZs1hMMGK/Yxj6AqVSADgWU3dg5baB9B1jkU/tDLENXbCQ4Pv1kV
 XzU3jnB9M6DPWxLhXWgpO9SnROmX/zLOAGQ7b8W0pt745znyx+YAs2LnP
 F7jBqFuZX1VrJaxqj3OQND7/V27fTxWGTJA1Z3wsjaXqQEb9B862ROfVx
 R0OSIP5OlCvFbu6vKodQSX2f0eYXyuD43ZBMMWyYMr4+cfh0qmewOk0cs
 5kqtbFQ02uo5cEz8ldgxS8Ft0a01xBdLQYx1qUGdlFVMaFomWur9XriXX
 yudr3ODiwbee979KyaTrjLamV/5XhcliU1o5VEoDUAIkcaWebWd11D9QY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YDgGTZs1
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/9] ice: properly use
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

