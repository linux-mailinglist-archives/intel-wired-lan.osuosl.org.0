Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA0F1F22C6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DCC4877B4;
	Mon,  8 Jun 2020 23:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkEZvId4oYD6; Mon,  8 Jun 2020 23:10:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9085686BDC;
	Mon,  8 Jun 2020 23:10:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E3F41BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5AB5A854DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UR2OYc6glYl0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E966485487
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:10:53 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D184220CC7;
 Mon,  8 Jun 2020 23:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657853;
 bh=MPww2KMiIHzg/oIztqFpjBj3n/wGtvouVkgda4QhFYo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I9wOBa9ZTR/vP1qyv2pEKKq1gRtfBmoOOpNPOflBPsxfkqYGYxOEw8rxViCPb1Ko6
 5ge1DU9i2n1IMVH4muN2paWlfqjKzkY6M0MkcE4GLzBLQYigHyZtjmce0Cp5ZVK38j
 yb4GE1ctCKX+/cIQbIXX2iry+r8Wn68JiDZFRwpg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:05:11 -0400
Message-Id: <20200608230607.3361041-218-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 218/274] ice: Fix resource
 leak on early exit from function
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
 Eric Joyner <eric.joyner@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Eric Joyner <eric.joyner@intel.com>

[ Upstream commit 857a4f0e9f4956fffc0cedcaa2ba187a2e987153 ]

Memory allocated in the ice_add_prof_id_vsig() function wasn't being
properly freed if an error occurred inside the for-loop in the function.

In particular, 'p' wasn't being freed if an error occurred before it was
added to the resource list at the end of the for-loop.

Signed-off-by: Eric Joyner <eric.joyner@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index e7a2671222d2..abfec38bb483 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -3705,8 +3705,10 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 					      t->tcam[i].prof_id,
 					      t->tcam[i].ptg, vsig, 0, 0,
 					      vl_msk, dc_msk, nm_msk);
-		if (status)
+		if (status) {
+			devm_kfree(ice_hw_to_dev(hw), p);
 			goto err_ice_add_prof_id_vsig;
+		}
 
 		/* log change */
 		list_add(&p->list_entry, chg);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
