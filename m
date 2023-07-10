Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 723CC74D9C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AE3660F83;
	Mon, 10 Jul 2023 15:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AE3660F83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689002567;
	bh=GtvK3ul9m8IgKgCkGEOAtVAxogZySZWRSIiTCbVoRE0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SGUrO5jbP/TM5xkSJb5qbNgWY7nbQiNsVKlUHWK1wrJSKSZ8FiHhMkgE77hKDD8EP
	 QNghTSoWboE3/xl2nc1xo36ekS+mYjvUHhS0EEivHuciwvt315Ky6f/jxUTumHs8fH
	 rBVsBv7hI7XsoaG1gnfR6+RxwVJOvTZtBqrtkYR9syNsfKdot90Sf5rrHWaI4pKPQX
	 IiwvHOOQBSRpVhVZbhlqXFy+ecXKOdGcZ1B+RoOLmIKiPZp2kLqU9+g5XM9g1H0MIa
	 Ju1rZrPqdKtafVdyz0rOVsFG254KuzKfrF8O88vqJ2sscxk1NVrd+q2lwTehz7ofL/
	 51TLkK5JqGkrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j0e4v00dTNKl; Mon, 10 Jul 2023 15:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B8AA60F5C;
	Mon, 10 Jul 2023 15:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B8AA60F5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC581BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 06:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1509D408B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 06:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1509D408B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ntorst-A_jmn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 06:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6936408AE
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp4.osuosl.org (Postfix) with SMTP id B6936408AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 06:41:10 +0000 (UTC)
Received: from localhost.localdomain (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id 495CF602A8713;
 Mon, 10 Jul 2023 14:41:07 +0800 (CST)
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Mon, 10 Jul 2023 14:41:05 +0800
Message-Id: <20230710064105.173647-1-suhui@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 Jul 2023 15:22:20 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 06/10] ice: remove unnecessary
 (void*) conversions
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 wuych <yunchuan@nfschina.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: wuych <yunchuan@nfschina.com>

Pointer variables of void * type do not require type cast.

Signed-off-by: wuych <yunchuan@nfschina.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 93979ab18bc1..52af3bd80868 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6242,7 +6242,7 @@ static void ice_tx_dim_work(struct work_struct *work)
 	u16 itr;
 
 	dim = container_of(work, struct dim, work);
-	rc = (struct ice_ring_container *)dim->priv;
+	rc = dim->priv;
 
 	WARN_ON(dim->profile_ix >= ARRAY_SIZE(tx_profile));
 
@@ -6262,7 +6262,7 @@ static void ice_rx_dim_work(struct work_struct *work)
 	u16 itr;
 
 	dim = container_of(work, struct dim, work);
-	rc = (struct ice_ring_container *)dim->priv;
+	rc = dim->priv;
 
 	WARN_ON(dim->profile_ix >= ARRAY_SIZE(rx_profile));
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
