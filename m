Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB923D7C34
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jul 2021 19:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B745440146;
	Tue, 27 Jul 2021 17:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id do590ZhozEU0; Tue, 27 Jul 2021 17:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFF9F4013F;
	Tue, 27 Jul 2021 17:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02CCB1BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 17:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F28E7400DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 17:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQ7wwD_sfnyb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jul 2021 17:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A318F400BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 17:33:22 +0000 (UTC)
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 93F3F3F22C; 
 Tue, 27 Jul 2021 17:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1627407199;
 bh=cBQwGCAj7Np0JZQGOqZ79HMB7qL2mXEkmrdNgg4EJ4E=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=mfTD8IsCtnM8DhI3A9RQumKOhdpf7ZkKijfXkyOWFCQko26ZHn5khfdTsC/i6ttXy
 6WUd8CwBtSFSMHHXsGfQx9cjBy20PSAYjLCQLj9JdjKsuzdnx8QAg1p1lDrd3h0kGF
 mFBD7q0kubdi1Ks4c0Tw8FK7FD0Vq9IbA4bp2PqJbTCDbRfVimCiT5ckbDriwtH+Gg
 728Pksb2SVbSble2fxbYTg/8ls7rwjRrHoVhkhCxlBcT0S78ZLGnC5wKCprbo1m+vY
 MkhxwqTCsiSxmmL1z6FYFohA942fyGoqweUHiR6RAIkMJNowfBHEAOmOqK/GRi4gQX
 eT+Kp6H2/WdJA==
From: Colin King <colin.king@canonical.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Tue, 27 Jul 2021 18:33:18 +0100
Message-Id: <20210727173318.78154-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH][next] i40e: Fix spelling mistake
 "dissable" -> "disable"
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a dev_info message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b4a57251256a..4eb9005e85da 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4638,7 +4638,7 @@ void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
 		err = i40e_control_wait_rx_q(pf, pf_q, false);
 		if (err)
 			dev_info(&pf->pdev->dev,
-				 "VSI seid %d Rx ring %d dissable timeout\n",
+				 "VSI seid %d Rx ring %d disable timeout\n",
 				 vsi->seid, pf_q);
 	}
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
