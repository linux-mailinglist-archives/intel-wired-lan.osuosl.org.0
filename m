Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BA9710EE4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 16:59:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62D2E410A9;
	Thu, 25 May 2023 14:59:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62D2E410A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685026785;
	bh=PmSdO0S3ptkl2R+m96JKPc9Rpc9htVNc+xk5WGbYPms=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YHrXkICHAFupNaS0Pol+C8FZUwq2FmtoDDNOJ6clLB7OASdP2WbCEiPacnhgK4DSH
	 w8z1Nr6wqxHoKsaZPxRcOgQ57fl41EW/2jWLC0lZ90N0D5Q9e6Zkk0ryDKczxvzaD6
	 Yy3Y2NTOY+xfp8a2hXPtqMjK4j3TaaXYSOtHO9YDIBc3t79Q/KlhsAtkqHJEKtDfoa
	 kdg0KSHfD31IGd8oWceFL/R+MtHcvp+Z6u/gy2frevl7O1+qH914yMIQBxV+BGQwqe
	 FPdhBg5T0WCuNfckUCTb1AAPUAS3ZO9wbNom3ZBKuX7mvYehWofTg3F6iqitpr1hH3
	 Q8VEeF9mWlxFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWA1O6YDRCC1; Thu, 25 May 2023 14:59:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36C1A40531;
	Thu, 25 May 2023 14:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36C1A40531
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E5051BF282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0288261651
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0288261651
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qV3CTWU89Qg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 10:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5705A61631
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5705A61631
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:53:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 425ED644B2;
 Thu, 25 May 2023 10:53:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A14CC433D2;
 Thu, 25 May 2023 10:53:07 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
Date: Thu, 25 May 2023 12:52:58 +0200
MIME-Version: 1.0
Message-Id: <20230525-null-ice-v1-1-30d10557b91e@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAk+b2QC/x2M0QqDMBAEf0XuuQcmqaX4K6UPMa71QK6SVBHEf
 /fs4ywzu1NBFhRqq50yVinyVQN3qyiNUT9g6Y3J1z7UjW9Yl2liSeDQu2d8hOEe4Mj0LhZwl6O
 m0YJLs3HOGGT7/79I8aP3cZzb+JqMdAAAAA==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.2
X-Mailman-Approved-At: Thu, 25 May 2023 14:59:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1685011989;
 bh=DGZUNnKLpFIKKgAIoq8KpqEt+LPmKrgx96HvrKtT9Yw=;
 h=From:Date:Subject:To:Cc:From;
 b=Dft2P935xbpmZpkslBzCWrsDqbaeVKgPg3BoZ5+uADaeCLyX91goudh/37PWofh5j
 YKZkCYWz+F0uWy56wWc5BSRRRTx7Pf6VvqulpN/Q3LoBo1NnJNS0yj++edEeri0DdZ
 KfjL2vUmtjaAo38IuDuhlje4cSdsr9IWyyhvV5qIozhc1H76JayVKB4xYPrKO7mwqt
 5rZ77eCbN8cVz3Nh4YgO12xlgfdpkmsgTRPVG7Oh37iKlPkzv1zGPOJPjArM/9NGWI
 VaWQmNQXR5J4WyPKyl2Ig2sQF24+A9JNxW2I+jh5XKv5uApSVSni5S0D36RFXjgLe5
 rWHWzZ/xO294Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Dft2P935
Subject: [Intel-wired-lan] [PATCH net] ice: Don't dereference NULL in
 ice_gns_read error path
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
Cc: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If pf is NULL in ice_gns_read() then it will be dereferenced
in the error path by a call to dev_dbg(ice_pf_to_dev(pf), ...).

Avoid this by simply returning in this case.
If logging is desired an alternate approach might be to
use pr_err() before returning.

Flagged by Smatch as:

  .../ice_gnss.c:196 ice_gnss_read() error: we previously assumed 'pf' could be null (see line 131)

Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
Signed-off-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 2ea8a2b11bcd..3d0663840aa1 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -128,12 +128,7 @@ static void ice_gnss_read(struct kthread_work *work)
 	int err = 0;
 
 	pf = gnss->back;
-	if (!pf) {
-		err = -EFAULT;
-		goto exit;
-	}
-
-	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
+	if (!pf || !test_bit(ICE_FLAG_GNSS, pf->flags))
 		return;
 
 	hw = &pf->hw;
@@ -191,7 +186,6 @@ static void ice_gnss_read(struct kthread_work *work)
 	free_page((unsigned long)buf);
 requeue:
 	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
-exit:
 	if (err)
 		dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
 }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
