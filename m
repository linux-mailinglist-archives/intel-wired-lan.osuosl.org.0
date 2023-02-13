Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0745769509A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 20:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 898D381D68;
	Mon, 13 Feb 2023 19:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 898D381D68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676316352;
	bh=+mC0G8f8/sXxufasdOi+VDyb5i8PfsG/CtRWBCeCgZ4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3nPKL45qdJBxpEIWo3XiFoEx6gUYaIdeXTm/juzABzFZmWVMLTXwex16S4bLuqHiw
	 BbdJbiT6CLUOSQ/LMFtNoRHvSa0SvFmFeNIXjPAtlyFzW3P9/JtKKQitSoOH45ftX8
	 akWM518he/Pt6G06n/fBzpX9sohHZvQZWh5LyaM8T4GT3NoeCcBK/yjlICxFpRYzWT
	 7CnlxStOx2Nc4KXm/LmKLIQUGsSFD/jjEZ7qCXmaDVjQSYkAMSaWG6swhABl1f8Q1t
	 Ntn/hdBEUftj2e4gxTb3jAiABbO5y3yiO6f1tTLOetnMzluE+P/nk3Ym7pgL33e6Ut
	 hopgi6bc7BUwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZ_TX-ug8RQN; Mon, 13 Feb 2023 19:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71F9781CEF;
	Mon, 13 Feb 2023 19:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71F9781CEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F3DC1BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 19:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88E4980DC0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 19:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88E4980DC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_duXiPlbijb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 19:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C875080C97
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C875080C97
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 19:03:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332281389"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="332281389"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 11:03:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="670928942"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="670928942"
Received: from paamrpdk12-s2600bpb.aw.intel.com ([10.228.151.145])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 11:03:31 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Feb 2023 00:18:20 +0530
Message-Id: <20230213184828.39404-1-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Feb 2023 19:25:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676315013; x=1707851013;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vduEa+aiPXYPGE8wexexfc+l1PDUMEyrG/6ljt4OTtQ=;
 b=E+l3gW315CQC87eW68F/W/9uxPBfQHCUbU+sQH86fICVKQIUS5TWSWIG
 z1OpTY5f7qfgbv4aOTXgt607PWX6RbC5rKYpWBD/2Jr12p/klWPVk7rQk
 IAyhVbbPTyp8rv4Evss4A1f4912HNYl9/e8nulFDZQjbRshMn+LMuxluu
 AZIYcPsScfueXy2bEB0yO5FJkxM5bz9qNm2SGY9xy7tYpBSt4Dg1JL9oR
 jx5NhbmlyR2ec6RJJcTs0CpqsTkGPoe7HJ5YjsJcljFX4zbZ6PzV0bknp
 TRDESaK4UD5wU/lDXyNeIlueY0Gbd+BggnfcL6au2UEsz6NB8cvAUWX7J
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E+l3gW31
Subject: [Intel-wired-lan] [PATCH intel-next v2 0/8] i40e: support XDP
 multi-buffer
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset adds multi-buffer support for XDP. Tx side already has
support for multi-buffer. This patchset focuses on Rx side. The last
patch contains actual multi-buffer changes while the previous ones are
preparatory patches.

On receiving the first buffer of a packet, xdp_buff is built and its
subsequent buffers are added to it as frags. While 'next_to_clean' keeps
pointing to the first descriptor, the newly introduced 'next_to_process'
keeps track of every descriptor for the packet. 

On receiving EOP buffer the XDP program is called and appropriate action
is taken (building skb for XDP_PASS, reusing page for XDP_DROP, adjusting
page offsets for XDP_{REDIRECT,TX}).

The patchset also streamlines page offset adjustments for buffer reuse
to make it easier to post process the rx_buffers after running XDP prog.

With this patchset there does not seem to be any performance degradation
for XDP_PASS and some improvement (~1% for XDP_TX, ~5% for XDP_DROP) when
measured using xdp_rxq_info program from samples/bpf/ for 64B packets.

Changelog:
    v1 -> v2:
    - Instead of building xdp_buff on eop now it is built incrementally.
    - xdp_buff is now added to i40e_ring struct for preserving across
      napi calls. [Alexander Duyck]
    - Post XDP program rx_buffer processing has been simplified.
    - Rx buffer allocation pull out is reverted to avoid performance 
      issues for smaller ring sizes and now done when at least half of
      the ring has been cleaned. With v1 there was ~75% drop for
      XDP_PASS with the smallest ring size of 64 which is mitigated by
      v2 [Alexander Duyck]
    - Instead of retrying skb allocation on previous failure now the
      packet is dropped. [Maciej]
    - Simplified page offset adjustments by using xdp->frame_sz instead
      of recalculating truesize. [Maciej]
    - Change i40e_trace() to use xdp instead of skb [Maciej]
    - Reserve tailroom for legacy-rx [Maciej]
    - Centralize max frame size calculation

Tirthendu Sarkar (8):
  i40e: consolidate maximum frame size calculation for vsi
  i40e: change Rx buffer size for legacy-rx to support XDP multi-buffer
  i40e: add pre-xdp page_count in rx_buffer
  i40e: Change size to truesize when using i40e_rx_buffer_flip()
  i40e: use frame_sz instead of recalculating truesize for building skb
  i40e: introduce next_to_process to i40e_ring
  i40e: add xdp_buff to i40e_ring struct
  i40e: add support for XDP multi-buffer Rx

 drivers/net/ethernet/intel/i40e/i40e_main.c  |  75 ++--
 drivers/net/ethernet/intel/i40e/i40e_trace.h |  20 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 426 +++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_txrx.h  |  21 +-
 4 files changed, 311 insertions(+), 231 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
