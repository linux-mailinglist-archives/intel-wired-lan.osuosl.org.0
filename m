Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE72B1D5D5A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7804C880B7;
	Sat, 16 May 2020 00:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJZMyk2bjUst; Sat, 16 May 2020 00:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF4B287F74;
	Sat, 16 May 2020 00:45:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 154EF1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1216D87F8B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfMKhC3ddt8O for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC69587F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:00 +0000 (UTC)
IronPort-SDR: lrzj25kDT10Lrjhl/JdYTtoE34xxcMDRtUTUgc2db791y0rvjli0IxZqxJ4K3PpkpRuxBfjGfI
 2ALoiCHzPrJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:44:59 -0700
IronPort-SDR: dFVYq3VpniaNW1+F33v0OP9k/A1DMeylY94OGoo6Qdh0SIj3iRAqGzz5Yt4T1EB7OVbwj064Xi
 x57GKy9MWzQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960345"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:44:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:15 -0700
Message-Id: <20200516004226.4795-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 03/14] ice: Change number of XDP TxQ
 to 0 when destroying rings
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

From: Marta Plantykow <marta.a.plantykow@intel.com>

When XDP Tx rings are destroyed the number of XDP Tx queues
is not changing. This patch is changing this number to 0.

Signed-off-by: Marta Plantykow <marta.a.plantykow@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 644784e86177..61c7d0b57f02 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1906,6 +1906,9 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
 	for (i = 0; i < vsi->tc_cfg.numtc; i++)
 		max_txqs[i] = vsi->num_txq;
 
+	/* change number of XDP Tx queues to 0 */
+	vsi->num_xdp_txq = 0;
+
 	return ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 			       max_txqs);
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
