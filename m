Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB1E69B36B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 20:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 983FC40C85;
	Fri, 17 Feb 2023 19:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 983FC40C85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676663753;
	bh=561Yz+kVMNsBGSLWIhTGUykzwUwrHBmuL0K+mRAcOt4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BGpEgfCFFPDmXtfd9SA3ZJn5fOjal4IAfxbK/MLbMfKU9wQHr4i2UM6XAFIv5bzUs
	 JRcAxq5KThN1wLUHL5xKUv8uM/dXtHqFx9CBmbQVAwJUh0wYdYVuxJY5TErQzA6Od5
	 I7fG7H4ahWuuJS3IcqDZLc98aj64cPuL3swIysAwtxkcU7C3NRWpRrkqmAVZUE+Dqw
	 tJM+Z8nbRixfCQJDeWP6XeKb7CXObD5oGLEygSVttS5yzUC3SmsrG2igfsiyQkXl89
	 ocT5xJzUEfEufgzyiOCO40G2xllpwlqzsGjppVyNfTNC6Lk7xg6m9toWXQkKqwj+rY
	 MnoVBXnjl0r9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J4WiLFDvKI30; Fri, 17 Feb 2023 19:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FAAD400CE;
	Fri, 17 Feb 2023 19:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FAAD400CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 271031BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 000D1402DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 000D1402DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFJiHSfCa_QF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 19:29:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBBF2400CE
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBBF2400CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="394550034"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="394550034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:29:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="701013375"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="701013375"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:29:45 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 18 Feb 2023 00:45:07 +0530
Message-Id: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 17 Feb 2023 19:55:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676662186; x=1708198186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CEnd+qF+2FYATu7ckoPg+BqcjVuV/8rQiz89geC2aUg=;
 b=FjvpsHW+ff01Di+U9BLIEGEeVIYF0nKvn7715uIthVpiUE0OMy6ZTg+a
 hzkgciYkcviyYZZbogcZeow7qTRpXpv60NnDB+Mt09sZKDvRAKskOBzRx
 RgfIBVRsqbz+EMCOwGGNW6sEwTsTm35AGefUvIzf8gWZCqvhPzwjnUoFF
 tLBFMbskMRn0+K57RmqfFZA6B0PPsmoVBUSEQubrqqdZJRTHFD2kZwkiT
 NxwaKFJfMbX4fjlvf4QvUuBjVlSUecGromgiLzc+HVb04XcZZ+fX7BCkS
 K2hQ/Fwseqld79PhxPOwYsAIpMchjBtY4zbXMClEHgTUOdZ+kZvzFKKN4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FjvpsHW+
Subject: [Intel-wired-lan] [PATCH intel-next v6 0/8] i40e: support XDP
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
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
    v5 -> v6:
    - Rebased on top of next-queue commit ce45ffb815e8 ("i40e: add double
      of VLAN header when computing the max MTU")

    v4 -> v5:
    - Change s/size/truesize [Tony]
    - Rebased on top of commit 9dd6e53ef63d ("i40e: check vsi type before
      setting xdp_features flag") [Lorenzo]
    - Changed size of on stack variable to u32 from u16.

    v3 -> v4:
    - Added non-linear XDP buffer support to xdp_features. [Maciej]
    - Removed double space. [Maciej]

    v2 -> v3:
    - Fixed buffer cleanup for single buffer packets on skb alloc
      failure.
    - Better naming of cleanup function.
    - Stop incrementing nr_frags for overflowing packets.
 
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

 drivers/net/ethernet/intel/i40e/i40e_main.c  |  78 ++--
 drivers/net/ethernet/intel/i40e/i40e_trace.h |  20 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 420 +++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_txrx.h  |  21 +-
 4 files changed, 307 insertions(+), 232 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
