Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 644FB7D6899
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 12:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71F4884FBA;
	Wed, 25 Oct 2023 10:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71F4884FBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698230011;
	bh=soJ3rzlZaB7G4VbHA7y/mIOHx9njuxtVbN+HoFBqDsM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rJNu4QVAAyLaLA7yhcd5NyFt3JmIkRaaxIAd9HCmFA26dQAIEik9b3q8nWxi03dWk
	 4htrRGl56D/X+A6+4NHmDPJry8lsPf4/+C0w0cMUJfclxFG2DR5GSbN1VQ+2TE7uKN
	 d8ZKWE/EFAU5W3SNJobm+Kb2jwLBblb8YSCJwPpqiasU8zhRDulkpNWL2vYoiyACjW
	 6R3m/MCmNj4Hlmr/CN8+DmLU/5cc0HuAoZTp2cTMMRLT+5qPzuuoMDIEAEg/E+rMAg
	 l28ylWJNf2+cEbnwnMTOswKQii3865qDwEcJBAsugvGfnRfXnNhm/Il+9h6wtlif40
	 8DoD8AnACYl6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZhIoZAW8UMop; Wed, 25 Oct 2023 10:33:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C61E84F30;
	Wed, 25 Oct 2023 10:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C61E84F30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5AC101BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E3354328E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E3354328E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBSE3hU4G89q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 10:33:24 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 308E4432A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 308E4432A5
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-400-orxzERDcMC2y-zJWoJvrbA-1; Wed, 25 Oct 2023 06:33:19 -0400
X-MC-Unique: orxzERDcMC2y-zJWoJvrbA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03BE9857CE9;
 Wed, 25 Oct 2023 10:33:19 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 825B11121319;
 Wed, 25 Oct 2023 10:33:17 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Oct 2023 12:33:14 +0200
Message-ID: <20231025103315.1149589-2-ivecera@redhat.com>
In-Reply-To: <20231025103315.1149589-1-ivecera@redhat.com>
References: <20231025103315.1149589-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698230002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2obM353U2q7nBxBXksZTD973gP47Z5kgDxArhlBI2WA=;
 b=BJ5PR5Or566xDcyuBVme/JWWW5KUCoT4QbZifoaBli5ph6hL4NzQEqIUEABIbpH6Lpe0Vg
 FE5YEg/gawIZU4ZyuqSCJiEUGnm8Hz72ECbtgcYH+A3ygevicmEd40UPBncjGsm4j++2LI
 EuYjHtL0X0KQgawXcCyFPManVxTueiM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BJ5PR5Or
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: Remove VF MAC types
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i40e_hw.mac.type cannot to be equal to I40E_MAC_VF or
I40E_MAC_X722_VF so remove helper i40e_is_vf(), simplify
i40e_adminq_init_regs() and remove enums for these VF MAC types.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 ++++++-------------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  8 -----
 2 files changed, 10 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 29fc46abf690..896c43905309 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -17,29 +17,16 @@ static void i40e_resume_aq(struct i40e_hw *hw);
 static void i40e_adminq_init_regs(struct i40e_hw *hw)
 {
 	/* set head and tail registers in our local struct */
-	if (i40e_is_vf(hw)) {
-		hw->aq.asq.tail = I40E_VF_ATQT1;
-		hw->aq.asq.head = I40E_VF_ATQH1;
-		hw->aq.asq.len  = I40E_VF_ATQLEN1;
-		hw->aq.asq.bal  = I40E_VF_ATQBAL1;
-		hw->aq.asq.bah  = I40E_VF_ATQBAH1;
-		hw->aq.arq.tail = I40E_VF_ARQT1;
-		hw->aq.arq.head = I40E_VF_ARQH1;
-		hw->aq.arq.len  = I40E_VF_ARQLEN1;
-		hw->aq.arq.bal  = I40E_VF_ARQBAL1;
-		hw->aq.arq.bah  = I40E_VF_ARQBAH1;
-	} else {
-		hw->aq.asq.tail = I40E_PF_ATQT;
-		hw->aq.asq.head = I40E_PF_ATQH;
-		hw->aq.asq.len  = I40E_PF_ATQLEN;
-		hw->aq.asq.bal  = I40E_PF_ATQBAL;
-		hw->aq.asq.bah  = I40E_PF_ATQBAH;
-		hw->aq.arq.tail = I40E_PF_ARQT;
-		hw->aq.arq.head = I40E_PF_ARQH;
-		hw->aq.arq.len  = I40E_PF_ARQLEN;
-		hw->aq.arq.bal  = I40E_PF_ARQBAL;
-		hw->aq.arq.bah  = I40E_PF_ARQBAH;
-	}
+	hw->aq.asq.tail = I40E_PF_ATQT;
+	hw->aq.asq.head = I40E_PF_ATQH;
+	hw->aq.asq.len  = I40E_PF_ATQLEN;
+	hw->aq.asq.bal  = I40E_PF_ATQBAL;
+	hw->aq.asq.bah  = I40E_PF_ATQBAH;
+	hw->aq.arq.tail = I40E_PF_ARQT;
+	hw->aq.arq.head = I40E_PF_ARQH;
+	hw->aq.arq.len  = I40E_PF_ARQLEN;
+	hw->aq.arq.bal  = I40E_PF_ARQBAL;
+	hw->aq.arq.bah  = I40E_PF_ARQBAH;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 9fda0cb6bdbe..7eaf8b013125 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -64,9 +64,7 @@ typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct i40e_aq_desc *);
 enum i40e_mac_type {
 	I40E_MAC_UNKNOWN = 0,
 	I40E_MAC_XL710,
-	I40E_MAC_VF,
 	I40E_MAC_X722,
-	I40E_MAC_X722_VF,
 	I40E_MAC_GENERIC,
 };
 
@@ -588,12 +586,6 @@ struct i40e_hw {
 	char err_str[16];
 };
 
-static inline bool i40e_is_vf(struct i40e_hw *hw)
-{
-	return (hw->mac.type == I40E_MAC_VF ||
-		hw->mac.type == I40E_MAC_X722_VF);
-}
-
 /**
  * i40e_is_aq_api_ver_ge
  * @hw: pointer to i40e_hw structure
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
