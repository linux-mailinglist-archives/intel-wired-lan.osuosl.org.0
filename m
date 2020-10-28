Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F91629D20E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 21:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D37C18740F;
	Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R+DF-lDBS+nZ; Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9E3A87403;
	Wed, 28 Oct 2020 20:20:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87AC31BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8196382B51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9Gn6lALemYi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 20:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 243DF872B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:56 +0000 (UTC)
IronPort-SDR: DSUsanCgOkhq5TU8KZIMZSZ5s4shZlr8jClDyjjevIMhJAU5INPoIBimwc8ULJvVIXIO9KJ5ub
 Tz7vj/A2Ghig==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="164833062"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="164833062"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:53 -0700
IronPort-SDR: jM0z+ypIeDg0+Dq0z+5PJGofhmbvMNnmiVAQjyJARG/4AXqM/O3jOC9NPzZxVrEyHhnqVj3z05
 eUIT5vGRhdqg==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374734"
Received: from zcolon-mobl.amr.corp.intel.com ([10.209.108.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:52 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Oct 2020 13:19:33 -0700
Message-Id: <20201028201943.93147-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 00/10] igc: Add XDP support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

This patch series adds XDP support for the igc driver. For more context see the
cover letter from v1 in [1]. This v2 addresses the feedback received from the
community (thanks, Maciej Fijalkowski).

The main changes from v1 are:

	* Moved igc_rx_offset() changes to the patch the introduces XDP_PASS
	  action support.
	* Fixed uninitialized variable issue in igc_xdp_run_prog().
	* Changed wrapping code to avoid modulo operation.
	* Removed redundant xdp_rxq_info_unreg_mem_model() call.

A separated patch will be provided to address the comment about double VLAN
tagging in igc_change_mtu().

Best,
Andre

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201009025349.4037-1-andre.guedes@intel.com/

Andre Guedes (10):
  igc: Fix igc_ptp_rx_pktstamp()
  igc: Remove unused argument from igc_tx_cmd_type()
  igc: Introduce igc_rx_buffer_flip() helper
  igc: Introduce igc_get_rx_frame_truesize() helper
  igc: Refactor rx timestamp handling
  igc: Add set/clear large buffer helpers
  igc: Add initial XDP support
  igc: Add support for XDP_TX action
  igc: Add support for XDP_REDIRECT action
  igc: Implement ndo_xdp_xmit callback

 drivers/net/ethernet/intel/igc/Makefile   |   2 +-
 drivers/net/ethernet/intel/igc/igc.h      |  18 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 280 +++++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  89 +++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 205 ++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  27 +++
 6 files changed, 520 insertions(+), 101 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h

-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
