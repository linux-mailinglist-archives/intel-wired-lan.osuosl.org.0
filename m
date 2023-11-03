Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D12427E0C64
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 00:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A86C41E92;
	Fri,  3 Nov 2023 23:47:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A86C41E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699055233;
	bh=8uzaTtZx6ps2JkRFc91mOWH6W11NO5YoORwTmnUvEys=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=i/OxGrB5RZ7yRgkxEPCjpiMy8U/xqnpCsJURam/pHpddbp2ZjCJ+btZzvWLCNKc5P
	 CEnubI6JNIjb82P6MZI3CtIvIlVqCnAT/TDoY7eh54k8YJi1iUvqEKgxHO0kYhjSC1
	 FQTc0OHnr3hCnV8gq4CgG94l/W0nqDSUIDVNTkoce/Rciwlxk75IiPPwSJndN4Xw0F
	 iL+Y9dbOrUXHaG0UfdATMB6qbjQMiZgL72eqmm7RpS7NX6DtupPPnF3NdlHw+TFfH7
	 IxUR0xTQlr4afrFHqY/ey6h0f5cqPy2IAcdBKDFgLwEwt87ZHIBkB7I1B2dLMnlZob
	 Wz9yGa5s6pbjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6uy_zmGtYyv; Fri,  3 Nov 2023 23:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70EBE41EAA;
	Fri,  3 Nov 2023 23:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70EBE41EAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7FCD1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 948FF405B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 948FF405B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkMSMyPAU-B2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 23:47:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C054405A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C054405A2
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="374076055"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="374076055"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="905504333"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="905504333"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  3 Nov 2023 16:46:55 -0700
Message-ID: <20231103234658.511859-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699055225; x=1730591225;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YzpM3LzEmQIUG3/odpo1c+6u7KJG5TwlvRoNOTVPvHM=;
 b=cWe2TbAaK6pSPaFgriDKg1G+xCVyZ50vMcVgh495r7lSo+Q4s9tYSdCk
 Z3xrGIHYD2roDyNwWRSM8BNa7PfvKpHgjC2n7LTB7u0OJ0in8+BbTUW17
 CDdNsARWYR9in47hgBjThpvOxBSGHHMYOaGhtKWX38QDdw4KPoGDEYe2H
 V4o0pxbvKsRFXMBvOobcHwMj42G41a+Yhp2cUIwwHLITCdro1iHiVN7dy
 7hSOSB8GzIhQdLLpF1bmMD3olZDRm4zqcRAqSEiI0vlP874kUv+FEvKIh
 V/tt6JNG2usT4kHzLJKRUtP8S1wkqFj9r4axqjcpDFK7/+1slX7RaM+Qm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cWe2TbAa
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: restore timestamp config
 after reset
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We recently discovered during internal validation that the ice driver has
not been properly restoring Tx timestamp configuration after a device reset,
which resulted in application failures after a device reset.

After some digging, it turned out this problem is two-fold. Since the
introduction of the PTP support the driver has been clobbering the storage
of the current timestamp configuration during reset. Thus after a reset, the
driver will no longer perform Tx or Rx timestamps, and will report
timestamp configuration as disabled if SIOCGHWTSTAMP ioctl is issued.

In addition, the recently merged auxiliary bus support code missed that
PFINT_TSYN_MSK must be reprogrammed on the clock owner for E822 devices.
Failure to restore this register configuration results in the driver no
longer responding to interrupts from other ports. Depending on the traffic
pattern, this can either result in increased latency responding to
timestamps on the non-owner ports, or it can result in the driver never
reporting any timestamps. The configuration of PFINT_TSYN_MSK was only done
during initialization. Due to this, the Tx timestamp issue persists even if
userspace reconfigures timestamping.

This series fixes both issues, as well as removes a redundant Tx ring field
since we can rely on the skb flag as the primary detector for a Tx timestamp
request.

Note that I don't think this series will directly apply to older stable
releases (even v6.6) as we recently refactored a lot of the PTP code to
support auxiliary bus. Patch 2/3 only matters for the post-auxiliary bus
implementation. The principle of patch 1/3 and 3/3 could apply as far back
as the initial PTP support, but I don't think it will apply cleanly as-is.

This was originally posted to net-next before 6.6 release, and later posted
as a v2 to net. I'm re-posting this to Tony's Intel Wired LAN dev queue so
we can queue it up since its driver only changes.

Changes since v2
* rebased on to Tony's net dev-queue to send through IWL

net V2 was posted here:
https://lore.kernel.org/netdev/20231031222725.2819172-1-jacob.e.keller@intel.com/

Changes since v1
* Update target to net and rebase onto current net tree.
* Add appropriate fixes tag to 1/3.
* Slightly update the cover message.
* picked up Jesse's Reviewed-by tag.

net-next V1 was posted here:
https://lore.kernel.org/netdev/20231028002322.2224777-1-jacob.e.keller@intel.com/

Jacob Keller (3):
  ice: remove ptp_tx ring parameter flag
  ice: unify logic for programming PFINT_TSYN_MSK
  ice: restore timestamp configuration after device reset

 drivers/net/ethernet/intel/ice/ice_main.c |  12 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 146 ++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |   5 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c |   3 -
 drivers/net/ethernet/intel/ice/ice_txrx.h |   1 -
 5 files changed, 84 insertions(+), 83 deletions(-)


base-commit: 1405b6c08fc9d3ba6c01de477556d127534ce52f
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
