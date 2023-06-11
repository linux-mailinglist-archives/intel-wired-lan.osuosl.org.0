Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC7272C978
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 17:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CE4884191;
	Mon, 12 Jun 2023 15:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CE4884191
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686582690;
	bh=R/jWSTJPUsM03/oBDRXOxzZ4M/+p/spaeLNvfU9z3bY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dMokfc2CqeReHhGetEAmmSN1C+xLW/FNlmmqrOL/WTnL7jABteOILjzZFFj8MC+Sf
	 tUn9oRiePrlZbpKN6pQOLnmnKlS+75n02Gh7rU+iLebz4Qr4rru0jZ2rVgdnShrlWn
	 qwn+FP9J7SVksn7rC9KnUWBRtAuAl+ds6ZtjX0SYCBAkuRAYLRsEecgFWDU5N53YqB
	 P4PV61WThvIWWIbZ01oskk0GwbHM3KTGXAx7CzkHEnXMiI4LeuOYMjb4KLhhhaT6U/
	 qoM7TH2+CK/wV5Gw08Xgp6Sv3skF7TLm5ygI9KRv+Sv1gmNwCQaseeuJYzyibQI+HB
	 GRIv+swcH3OAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EGOtcY0cTLKk; Mon, 12 Jun 2023 15:11:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF48A82276;
	Mon, 12 Jun 2023 15:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF48A82276
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDBF1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 22:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E01882001
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 22:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E01882001
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHuZ8kRfcbVV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Jun 2023 22:30:26 +0000 (UTC)
X-Greylist: delayed 00:08:39 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B35F81FFC
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B35F81FFC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 22:30:26 +0000 (UTC)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id EB5072C298;
 Sun, 11 Jun 2023 18:21:44 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id E2BB22C297;
 Sun, 11 Jun 2023 18:21:44 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Received: from oatmeal.darkphysics (unknown [76.146.178.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id C31E22C295;
 Sun, 11 Jun 2023 18:21:41 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Date: Sun, 11 Jun 2023 15:21:36 -0700
From: Tree Davies <tdavies@darkphysics.net>
To: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Message-ID: <ZIZI5czU2Qv5KrPA@oatmeal.darkphysics>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="luNyGatCr/pDLYsq"
Content-Disposition: inline
X-Pobox-Relay-ID: 57659C30-08A6-11EE-AE76-B31D44D1D7AA-45285927!pb-smtp21.pobox.com
X-Mailman-Approved-At: Mon, 12 Jun 2023 15:11:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com;
 h=date:from
 :to:cc:subject:message-id:mime-version:content-type; s=sasl; bh=
 z+Ge1TsISNeopxsJaxZvRckLuWJjsX/bscizidOYUHY=; b=heK9KiFHa98/9xb4
 Syl79BqHipP7Lfncug0ygiCXtGxjxFZzs/LbKGIRTItHGW6Vdst280cqrA2Y8QcF
 o2xIp1zTreYsYEsmccLEZGou1O+35Kw+cyAxfTaqke52jsj1CSD6UH2i4WYwGc5I
 dH+3B/SUiLhBYcS15Xtb1X3BkPc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed;
 d=darkphysics.net; 
 h=date:from:to:cc:subject:message-id:mime-version:content-type;
 s=2019-09.pbsmtp; bh=z+Ge1TsISNeopxsJaxZvRckLuWJjsX/bscizidOYUHY=;
 b=PwEIP3kNnqBbKve2G14PXwGOp/iZ8K1Iqj4naiQfNCPFmd9UlHLZFnen7JiGog0ylJYgKQLw04J06/i8b5g60IBYwDnwIPLVWBlXvmOlArRKXX+J3cum56pklDaPkHCrkGmTAuJgQjLIXoEIfxD3lrjROKHKvXx4XpLy4hqCFMg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=pobox.com header.i=@pobox.com
 header.a=rsa-sha256 header.s=sasl header.b=heK9KiFH; 
 dkim=temperror header.d=darkphysics.net header.i=@darkphysics.net
 header.a=rsa-sha256 header.s=2019-09.pbsmtp header.b=PwEIP3kN
Subject: [Intel-wired-lan] [PATCH] net/e1000: Fix single statement blocks
 warning
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
Cc: tdavies@darkphysics.net, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--luNyGatCr/pDLYsq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--luNyGatCr/pDLYsq
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-net-e1000-Fix-single-statement-blocks-warning.patch"

From e92897ab5e93b8827d1654a0171bc53ab478ce49 Mon Sep 17 00:00:00 2001
From: Tree Davies <tdavies@darkphysics.net>
Date: Sun, 11 Jun 2023 14:41:31 -0700
Subject: [PATCH] net/e1000: Fix single statement blocks warning

This patch fixes checkpatch.pl warning of type:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Tree Davies <tdavies@darkphysics.net>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index da6e303ad99b..accc2bd7c35c 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -259,9 +259,8 @@ static int e1000_request_irq(struct e1000_adapter *adapter)
 
 	err = request_irq(adapter->pdev->irq, handler, irq_flags, netdev->name,
 			  netdev);
-	if (err) {
+	if (err)
 		e_err(probe, "Unable to allocate interrupt Error: %d\n", err);
-	}
 
 	return err;
 }
-- 
2.30.2


--luNyGatCr/pDLYsq
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--luNyGatCr/pDLYsq--
