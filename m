Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C2F119690
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2019 22:28:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CAF2858B6;
	Tue, 10 Dec 2019 21:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Q7dIHvg0eKK; Tue, 10 Dec 2019 21:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC53C85CFE;
	Tue, 10 Dec 2019 21:28:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5E4A1BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADE0E85F0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zIu1Jm0z-RQG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2019 21:13:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3ECEF85EAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:13:45 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F209214D8;
 Tue, 10 Dec 2019 21:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012425;
 bh=E7+lbFqFUYF8+yzcyNj2J5LN1HbMM0cafsvQ6ohnLvU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=abMuJ8j5G0/xOf8M70DbY+x+25ZyGcZjHW5wFoBJAGk7cyNNkgcjiDw60vLw/26v0
 DUy/SngWjuyhBKT85c7cTJfxr+uFkh3FHyVEGkZgBMsElbnkHfWyd9UIuIAav2QjeV
 hhcQ8ZuHvRQ5Cw87o0jejQeZ1PGiSOKCnzbzugOQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 10 Dec 2019 16:07:24 -0500
Message-Id: <20191210210735.9077-300-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Approved-At: Tue, 10 Dec 2019 21:27:55 +0000
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 339/350] ice: Fix setting
 coalesce to handle DCB configuration
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Brett Creeley <brett.creeley@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

[ Upstream commit e25f9152bc07de534b2b590ce6c052ea25dd8900 ]

Currently there can be a case where a DCB map is applied and there are
more interrupt vectors (vsi->num_q_vectors) than Rx queues (vsi->num_rxq)
and Tx queues (vsi->num_txq). If we try to set coalesce settings in this
case it will report a false failure. Fix this by checking if vector index
is valid with respect to the number of Tx and Rx queues configured.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7e23034df955c..1fe9f6050635d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3368,10 +3368,17 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	struct ice_vsi *vsi = np->vsi;
 
 	if (q_num < 0) {
-		int i;
+		int v_idx;
+
+		ice_for_each_q_vector(vsi, v_idx) {
+			/* In some cases if DCB is configured the num_[rx|tx]q
+			 * can be less than vsi->num_q_vectors. This check
+			 * accounts for that so we don't report a false failure
+			 */
+			if (v_idx >= vsi->num_rxq && v_idx >= vsi->num_txq)
+				goto set_complete;
 
-		ice_for_each_q_vector(vsi, i) {
-			if (ice_set_q_coalesce(vsi, ec, i))
+			if (ice_set_q_coalesce(vsi, ec, v_idx))
 				return -EINVAL;
 		}
 		goto set_complete;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
