Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE7E7414A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 17:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5D0B41B7F;
	Wed, 28 Jun 2023 15:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5D0B41B7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687965158;
	bh=Hu43p7vMs+s6qT1aw1ONH/ggRiKxScTiHDlCKPp84FE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=p80cIx+ORGNFbc3YcTIRddHzKORPt55j+k7iIMbVWvlfoaT+2DgFVHhVvXtGxrOb+
	 kqHUr9MPiDoOWGruB95eTityo9pSMll3HDNYZ6bxJgOTWdYL4wQDeCg4ULOOsMXD5M
	 OplKRY8qAg79deKFYxPllfOcLBASN19TwpvSnyuDpbe4stJo8rfMUhbq/RQq8imT6h
	 nso+Y8dmHYMMl7PI4sGpKRD2TgsFPYUzC9OcGUuA6fPVJ1vQJNNGWOS8DuDaEANqcP
	 fnFHgVEgBzl92k1VfoWCa4ZARcDbSh38ESZry5SlLU25f6v4jWrLikPFv/IjKbGMCV
	 8gY/dWvCARx7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UBBZExq3lh10; Wed, 28 Jun 2023 15:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 773DD40907;
	Wed, 28 Jun 2023 15:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 773DD40907
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 019B61BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8CEC41993
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8CEC41993
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tTfxb34BwFlY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 02:52:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC27041960
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp4.osuosl.org (Postfix) with SMTP id AC27041960
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:52:49 +0000 (UTC)
Received: from localhost.localdomain (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id 1E428604D9369;
 Wed, 28 Jun 2023 10:44:40 +0800 (CST)
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: wuych <yunchuan@nfschina.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 28 Jun 2023 10:44:38 +0800
Message-Id: <20230628024438.1440226-1-yunchuan@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 28 Jun 2023 15:12:26 +0000
Subject: [Intel-wired-lan] [PATCH net-next 04/10] ice: Remove unnecessary
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

Pointer variables of void * type do not require type cast.

Signed-off-by: wuych <yunchuan@nfschina.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 42c318ceff61..dbd70545d05e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6459,7 +6459,7 @@ static void ice_tx_dim_work(struct work_struct *work)
 	u16 itr;
 
 	dim = container_of(work, struct dim, work);
-	rc = (struct ice_ring_container *)dim->priv;
+	rc = dim->priv;
 
 	WARN_ON(dim->profile_ix >= ARRAY_SIZE(tx_profile));
 
@@ -6479,7 +6479,7 @@ static void ice_rx_dim_work(struct work_struct *work)
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
