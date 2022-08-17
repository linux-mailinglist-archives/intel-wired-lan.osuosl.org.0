Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BE1596BC4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Aug 2022 11:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0737F61096;
	Wed, 17 Aug 2022 09:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0737F61096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660727063;
	bh=t8YEkadIVBpz1uezezlxvu8A74RCHEOXMIb6GW2rwyk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h6p2vNbD06QlpT5/C5KvZcYnc3Uk2CV2FJLQnF3qpJN+E/eBoX7G0B5vkDnU8jfS9
	 3Aaz229fXaxAw0ZC34R3KWTr5anMgOBSZSg1uhikwK9bYdSUIh8IPtevhUftswiTQw
	 iNBaEysXfEMNjftj5ymilc63r1r3mzJSULQpe0LhQbJJ0eXw04ixlVX/f/7mqaplqr
	 /cp4seja5CV5EdbHqC1RGHzbURm95f/+AJTfnx1+14GMO0MFyAatUqZdUpPglon5so
	 ieLa5s7hoP5RiEgfq6uac+5Cm0DkwX6zzKg2HpI0ms5Hxt69lFeuNdF1KVYHjL8J0R
	 vmlnF1wSx5haw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-S_oQlYDCvl; Wed, 17 Aug 2022 09:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E990E6108D;
	Wed, 17 Aug 2022 09:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E990E6108D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2551F1BF873
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 09:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F161D60B24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 09:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F161D60B24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkP4j5LCx8aK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Aug 2022 09:04:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 808356108D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 808356108D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 09:04:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275498146"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="275498146"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 02:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667524009"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 17 Aug 2022 02:04:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Aug 2022 10:53:20 +0200
Message-Id: <20220817085320.58968-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660727055; x=1692263055;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GCaUm0MCtfpJPMrWjyVkyYxLvuLn+Zyh/vOI6FtaBnU=;
 b=G4zp6mvAf2BBtY36x/51fvDJAhYvay1ywGj5+hY9plwrGKNqWR1QvGNO
 MI3o9LZYQy6Ks/8Rp9nLsYsP2wO9tz4d5qAYI+WnoZ9fN9a6RqRGtuVjO
 AAzyQcDXYh1WZkZNzubI1eDHWqp8vdRK//WE2icALjkFv9A1kiYeYqENT
 CY9U7t8HpSKCNP7ZHyHe01JGAWG0iouMIBuf3Scw9kq+QuUKUk2KGEGWS
 uoXRpYpwx1EUbQd5iexoe/GsCktxd8+/T9NMUSeJ3DGYWU1+uQgEGxgF6
 ad+J5ZcXvbG7vGcOCiMjWIn543gb9UIQgC5Tuxk5rIMkFp5gqSxn3cM9k
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G4zp6mvA
Subject: [Intel-wired-lan] [PATCH net v1] ice: use bitmap_free instead of
 devm_kfree
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

pf->avail_txqs was allocated using bitmap_zalloc, bitmap_free should be
used to free this memory.

Fixes: 78b5713ac1241 ("ice: Alloc queue management bitmaps and arrays dynamically")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a7f69c961676..001e45bc0d96 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3926,7 +3926,7 @@ static int ice_init_pf(struct ice_pf *pf)
 
 	pf->avail_rxqs = bitmap_zalloc(pf->max_pf_rxqs, GFP_KERNEL);
 	if (!pf->avail_rxqs) {
-		devm_kfree(ice_pf_to_dev(pf), pf->avail_txqs);
+		bitmap_free(pf->avail_txqs);
 		pf->avail_txqs = NULL;
 		return -ENOMEM;
 	}
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
