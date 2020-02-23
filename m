Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 356CA169347
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2020 03:22:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86CAB85FA5;
	Sun, 23 Feb 2020 02:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hp_LgtmCILPG; Sun, 23 Feb 2020 02:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAAFE860E6;
	Sun, 23 Feb 2020 02:22:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 739041BF962
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F0B486587
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71NzED24iAKu for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Feb 2020 02:22:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ACCBA85930
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:22:11 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B404A227BF;
 Sun, 23 Feb 2020 02:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424531;
 bh=aYvB/CLqNzY0NxikruZq6X2FXZDOhA/dHZFO0339dAo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w3jZp0krimDbF/pG7CR0W5fDvPIjl6r2v2nILqkdFneioYE2XFhm3tvIyHD7nnWSk
 p6m92+S/qiotzHaNvMyh0EyseWVpenZBjjncrqBYJHb+nZuEuzU/WHOKW2jhhU2v90
 vB+eKvdvdl3HrL8vQEuCs+Oq0Uy0XTSoAewS9Dy0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 22 Feb 2020 21:21:04 -0500
Message-Id: <20200223022119.707-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022119.707-1-sashal@kernel.org>
References: <20200223022119.707-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.5 43/58] ice: Don't allow same
 value for Rx tail to be written twice
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

[ Upstream commit 168983a8e19b89efd175661e53faa6246be363a0 ]

Currently we compare the value we are about to write to the Rx tail
register with the previous value of next_to_use. The problem with this
is we only write tail on 8 descriptor boundaries, but next_to_use is
updated whenever we clean Rx descriptors. Fix this by comparing the
value we are about to write to tail with the previously written tail
value. This will prevent duplicate Rx tail bumps.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 35bbc4ff603cd..6da048a6ca7c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -10,7 +10,7 @@
  */
 void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
 {
-	u16 prev_ntu = rx_ring->next_to_use;
+	u16 prev_ntu = rx_ring->next_to_use & ~0x7;
 
 	rx_ring->next_to_use = val;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
