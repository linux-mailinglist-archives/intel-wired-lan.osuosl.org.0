Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9E67D498F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 10:12:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0A168443A;
	Tue, 24 Oct 2023 08:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0A168443A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698135170;
	bh=BincR6UIMsNAyG4p2x2uvIcWjen+2iZTcyxDAnC0EAE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YCMPG9JRjIAKfnx6+liKaPo62JvF5/3Eah54NeyBeIL3fE+ELcFAkMeqBOJf8VJDv
	 Zdz+/CVi1erqTXiHoqbLPRz10TZZGpteUO4tSoUbv5T26pw9suhCtn0UWYLSnKmRGo
	 Cxh/ygVEOWPDnjQVo4Ovhv+NFmK2Dg7cuAR8hK992tJxeZcwFbNOdWPVuRb07rc3vo
	 67fsBCNYWsU/nfbVTRMZsnyFZW4ypPsvnCBziAXJCvZYbeIiW52rb5amY/yCa7pyWD
	 oxTFKxg7rx8PXzLK72+2ehCiB54Fx9d4hr4KqBPDnNBuKxByvkKdyZFBqJfpG0gPan
	 sQrk1gS+ga/Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aa-rkz6_ZkpA; Tue, 24 Oct 2023 08:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3CB382079;
	Tue, 24 Oct 2023 08:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3CB382079
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90F901BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69BD3439EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69BD3439EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rGp3DUIVaqQQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 08:12:38 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94A024383D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94A024383D
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-315-ESlYHl0uMgm7MW74P4C79g-1; Tue, 24 Oct 2023 04:12:20 -0400
X-MC-Unique: ESlYHl0uMgm7MW74P4C79g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F29211019C83;
 Tue, 24 Oct 2023 08:12:19 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2408B492BFB;
 Tue, 24 Oct 2023 08:12:18 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 10:12:10 +0200
Message-ID: <20231024081211.677502-3-ivecera@redhat.com>
In-Reply-To: <20231024081211.677502-1-ivecera@redhat.com>
References: <20231024081211.677502-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698135157;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tpsby9zpzTG4TH56LFax7a98uMvlYd8Rt0jQ8YwK4Gk=;
 b=JIc7swmcGAMuC8VzmjPQjojYk6kh1RPP/b/rshW5hPFLbwcDVJpboT3rjJUr71FGCx3uYW
 SCOM80Kv3E93Qnq6N4nvSVdKhc1HEWxWwRdD7lxA/TwlJR5hiC1rn+jPwsyjdAwnZRvoDF
 4UfZFrD7dMRASDQdGny0xg/WXI+znPE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JIc7swmc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] i40e: Add other helpers
 to check version of running firmware and AQ API
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
 dacampbe@redhat.com, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add another helper functions that will be used by subsequent
patch to refactor existing open-coded checks whether the version
of running firmware and AdminQ API is recent enough to provide
certain capabilities.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_type.h | 54 +++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index a21cc607c844..9fda0cb6bdbe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -608,6 +608,60 @@ static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
 		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
 }
 
+/**
+ * i40e_is_aq_api_ver_lt
+ * @hw: pointer to i40e_hw structure
+ * @maj: API major value to compare
+ * @min: API minor value to compare
+ *
+ * Assert whether current HW API version is less than provided.
+ **/
+static inline bool i40e_is_aq_api_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
+{
+	return !i40e_is_aq_api_ver_ge(hw, maj, min);
+}
+
+/**
+ * i40e_is_fw_ver_ge
+ * @hw: pointer to i40e_hw structure
+ * @maj: API major value to compare
+ * @min: API minor value to compare
+ *
+ * Assert whether current firmware version is greater/equal than provided.
+ **/
+static inline bool i40e_is_fw_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
+{
+	return (hw->aq.fw_maj_ver > maj ||
+		(hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver >= min));
+}
+
+/**
+ * i40e_is_fw_ver_lt
+ * @hw: pointer to i40e_hw structure
+ * @maj: API major value to compare
+ * @min: API minor value to compare
+ *
+ * Assert whether current firmware version is less than provided.
+ **/
+static inline bool i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
+{
+	return !i40e_is_fw_ver_ge(hw, maj, min);
+}
+
+/**
+ * i40e_is_fw_ver_eq
+ * @hw: pointer to i40e_hw structure
+ * @maj: API major value to compare
+ * @min: API minor value to compare
+ *
+ * Assert whether current firmware version is equal to provided.
+ **/
+static inline bool i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
+{
+	return (hw->aq.fw_maj_ver > maj ||
+		(hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min));
+}
+
 struct i40e_driver_version {
 	u8 major_version;
 	u8 minor_version;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
