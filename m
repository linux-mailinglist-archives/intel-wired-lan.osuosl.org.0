Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5FD3972B9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 13:46:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 294B260AB5;
	Tue,  1 Jun 2021 11:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CWW4O_SXTwjM; Tue,  1 Jun 2021 11:46:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E655860AAE;
	Tue,  1 Jun 2021 11:46:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 377CD1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 11:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B050404A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 11:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7vL7wlSYHwcX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 11:46:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AC034048A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 11:46:13 +0000 (UTC)
IronPort-SDR: 6PpqCxhzniqT8W0KAllJVeMLh6FtWoF83ga4WgyuYwz2hZcIwfMqga86X5U5StdmeBcWaeGIOh
 QtzGv6U5CYdQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="203526551"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="203526551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 04:46:13 -0700
IronPort-SDR: H9Z+QO7IZYdfqbUZq4+8NU2zWy761vwd7F6Sx/MWXw6y5Tp7iFXDHF1hSTRF7q2vsj9z0KJMdx
 wXctbumdoFKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="446931353"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2021 04:46:11 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Jun 2021 13:32:35 +0200
Message-Id: <20210601113236.42651-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
References: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next 1/2] ice: unify xdp_rings
 accesses
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There has been a long lasting issue of improper xdp_rings indexing for
XDP_TX and XDP_REDIRECT actions. Given that currently rx_ring->q_index
is mixed with smp_processor_id(), there could be a situation where Tx
descriptors are produced onto XDP Tx ring, but tail is never bumped -
for example pin a particular queue id to non-matching IRQ line.
Moreover, user can reduce the count of Rx queues which is the base for
sizing xdp_rings array so smp_processor_id() could cause an out of
bounds access.

Address that problem by ignoring the user ring count setting and always
initialize the xdp_rings array to be of num_possible_cpus() size. Then,
always use the smp_processor_id() as an index to xdp_rings array. This
provides serialization as at given time only a single softirq can run on
a particular CPU.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2c33b0c56c94..3c8668d8b964 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3099,7 +3099,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 		ice_vsi_map_rings_to_vectors(vsi);
 		if (ice_is_xdp_ena_vsi(vsi)) {
-			vsi->num_xdp_txq = vsi->alloc_rxq;
+			vsi->num_xdp_txq = num_possible_cpus();
 			ret = ice_prepare_xdp_rings(vsi, vsi->xdp_prog);
 			if (ret)
 				goto err_vectors;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0eb2307325d3..1915b6a734e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2534,7 +2534,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	}
 
 	if (!ice_is_xdp_ena_vsi(vsi) && prog) {
-		vsi->num_xdp_txq = vsi->alloc_rxq;
+		vsi->num_xdp_txq = num_possible_cpus();
 		xdp_ring_err = ice_prepare_xdp_rings(vsi, prog);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 207f6ee3a7f6..e1c05d69f017 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -279,7 +279,7 @@ void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
 
 	if (xdp_res & ICE_XDP_TX) {
 		struct ice_ring *xdp_ring =
-			rx_ring->vsi->xdp_rings[rx_ring->q_index];
+			rx_ring->vsi->xdp_rings[smp_processor_id()];
 
 		ice_xdp_ring_update_tail(xdp_ring);
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
