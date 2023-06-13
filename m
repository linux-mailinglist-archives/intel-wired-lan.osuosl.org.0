Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3307272E6B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:10:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46C8D4099D;
	Tue, 13 Jun 2023 15:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46C8D4099D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686669025;
	bh=TR+8u/sdHdDhseP2XoUBw/CAmDH5AluTNpvln+QQuXQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=A5fsRCYjb43azjd4UMc7OZsBu6qvOxz46vXqKY6GRGI97hO3nWNnmvF58Bj0xYsAc
	 Tc9TvaU8JuxocC1312FhWw8eVfpnBqhnp/VAu/YXaMjZE5nCckxg0rs4SNkrEm82qu
	 /QuD+qg7zv5m04Mh3heNihqCP01yZ3W4HDMICtjgnpc8Ll00z0c+Kf5u0jEdmSgAUJ
	 sQIEMJBV5TqAfyuH8tYzAGyzMrWD37V/hgC/ZyMLrkJ2pxXi2lStska10jX1c3Ls/+
	 w28w0N5kKQH6StRXC1nriTCT5qPbdke3Jr6XsyvV89HYJKWei+LdrG8iawb8PYk/G2
	 Ug/khC2CH7+Xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-1wrxcJqNB1; Tue, 13 Jun 2023 15:10:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97C9A408FD;
	Tue, 13 Jun 2023 15:10:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97C9A408FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4CF1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D81A82C84
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D81A82C84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3zFTOxSW2uC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 15:10:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 633E0820C8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 633E0820C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:10:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338000009"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338000009"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 08:10:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="1041802186"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="1041802186"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jun 2023 08:10:11 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 17:10:05 +0200
Message-Id: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686669014; x=1718205014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wJHHcNgaMX0oYvDrU2aakU5zXPurfwpvSyXv0As7+4E=;
 b=MC7jLz/WkcCm0Iil4rIZjTey6NKuPL/DPQO48brsD9MVb7tLxB+euRgi
 hUKh0Pi30iJdueQ2u6TkZkuimdUq+vRU6xsHdVNm1e61mL9kAldSJUNdS
 KnEh8arvu5w4csVqUqNKgxSMW/TEb+vZE4PxqinV1h2T74a9WbLusMrzd
 GD4roRm+MwZ46GrQbX8+qcslj/o7Es4eU7JA31UigHn6t9oY+pWrDToxX
 aAvHklIocD7qr5Y6yooZ4URR+R/Dny3xJSej0z6dOiJfGNAYp0e6jOjXS
 ktOiRisUqkn9I8gTsn2Y0cN6hY3UZ4nMouFcgu92RRsBvRyUnd79vVGTM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MC7jLz/W
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, fred@cloudflare.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ice driver's .ndo_bpf callback brings the interface down and
up independently of the presence of XDP resources. This is only needed
when either these resources have to be configured or removed. It means
that if one is switching XDP programs on-the-fly with running traffic,
packets will be dropped.

To avoid this, compare early on ice_xdp_setup_prog() state of incoming
bpf_prog pointer vs the bpf_prog pointer that is already assigned to
VSI. Do the swap in case VSI has bpf_prog and incoming one are non-NULL.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..8940ee505811 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2922,6 +2922,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 					   "MTU is too large for linear frames and XDP prog does not support frags");
 			return -EOPNOTSUPP;
 		}
+
+	/* hot swap progs and avoid toggling link */
+	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
+		ice_vsi_assign_bpf_prog(vsi, prog);
+		return 0;
 	}
 
 	/* need to stop netdev while setting up the program for Rx rings */
@@ -2956,13 +2961,6 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		xdp_ring_err = ice_realloc_zc_buf(vsi, false);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Rx resources failed");
-	} else {
-		/* safe to call even when prog == vsi->xdp_prog as
-		 * dev_xdp_install in net/core/dev.c incremented prog's
-		 * refcount so corresponding bpf_prog_put won't cause
-		 * underflow
-		 */
-		ice_vsi_assign_bpf_prog(vsi, prog);
 	}
 
 	if (if_running)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
