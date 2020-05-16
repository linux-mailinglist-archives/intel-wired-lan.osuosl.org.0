Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A929A1D5D35
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EF6289AB3;
	Sat, 16 May 2020 00:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bvjPz71lbZ2A; Sat, 16 May 2020 00:39:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C777A89A23;
	Sat, 16 May 2020 00:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B54B01BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B194C89A23
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4VF2mY-9w0i6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4EE7289A30
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
IronPort-SDR: p2wM7X148ts1gGawXZ0+V++ViTUrf+uE9znwdaN9rhIpVx3SPT6nEaFAChur49Os7rpszneWCg
 HVTbtZSQx1Rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:19 -0700
IronPort-SDR: YaFkKjFIFjaA7wWKughVIpzPuwScRa3ojpaUrLt8yv3ViWJJOKPOdVc6Cfd0ttXWfjGaqCPIug
 A0o/Ukj7Ie9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560872"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:44 -0700
Message-Id: <20200516003644.4658-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 15/15] ice: Add more Rx errors to
 netdev's rx_error counter
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

From: Brett Creeley <brett.creeley@intel.com>

Currently we are only including illegal_bytes and rx_crc_errors in the
PF netdev's rx_error counter. There are many more causes of Rx errors
that the device supports and reports via Ethtool. Accumulate all Rx
errors in the PF netdev's rx_error counter.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e451120d6632..589bafb601ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4357,7 +4357,13 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 	if (vsi->type == ICE_VSI_PF) {
 		cur_ns->rx_crc_errors = pf->stats.crc_errors;
 		cur_ns->rx_errors = pf->stats.crc_errors +
-				    pf->stats.illegal_bytes;
+				    pf->stats.illegal_bytes +
+				    pf->stats.rx_len_errors +
+				    pf->stats.rx_undersize +
+				    pf->hw_csum_rx_error +
+				    pf->stats.rx_jabber +
+				    pf->stats.rx_fragments +
+				    pf->stats.rx_oversize;
 		cur_ns->rx_length_errors = pf->stats.rx_len_errors;
 		/* record drops from the port level */
 		cur_ns->rx_missed_errors = pf->stats.eth.rx_discards;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
