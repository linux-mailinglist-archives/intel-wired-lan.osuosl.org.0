Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35AD4164F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 20:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52B6D401B2;
	Thu, 23 Sep 2021 18:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cB6Qc5uXU-94; Thu, 23 Sep 2021 18:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30034400C3;
	Thu, 23 Sep 2021 18:13:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03D731BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3B9260BAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzyRIIkA7fDj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 18:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91CF360B2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B13F61211;
 Thu, 23 Sep 2021 18:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632420799;
 bh=jwrL23NbCo2fsm514Iz5xIfaNN+I2B1pwpVoLvCR6TI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hqK4EjhPz3dvY3xJm/awyd9QJ6c+1DSwBOJp8FO+vKbRtw3RaEgqoqjr/tan5lpfk
 rIJdAf0U0FDjGvaZfpV5+OimJrS7e9+vyi/ZFl9fvlscuHKGEEXDYR7aiu9vqMj0+7
 aioSEAu1XkXpaAZ3Me++nEoAJs9I3XndjgG1LER+QZYQm7dJy8GDLF/0O4GHgRUZWb
 L5oHsMkRgRoQSgsFUoaJBQxuORLgjWHsr1INekH1rC9Bu0oB6w3MvvuZUaxid6AFRT
 GrCWLfysdWtvDS+ihvjy3w1pnlwv1uvSoV0CrVqRJCYxICLvYYkTwB01cLXwlvNKls
 3aWJocAOiUBUw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 23 Sep 2021 21:12:52 +0300
Message-Id: <1e19cd378b76b891acd4cff122b622fdb0f99ed0.1632420431.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 5/6] ice: Delete always true
 check of PF pointer
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>,
 Leon Romanovsky <leonro@nvidia.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

PF pointer is always valid when PCI core calls its .shutdown() and
.remove() callbacks. There is no need to check it again.

Fixes: 837f08fdecbe ("ice: Add basic driver framework for Intel(R) E800 Series")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 34e64533026a..aacc0b345bbe 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4593,9 +4593,6 @@ static void ice_remove(struct pci_dev *pdev)
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	int i;
 
-	if (!pf)
-		return;
-
 	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
 		if (!ice_is_reset_in_progress(pf->state))
 			break;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
