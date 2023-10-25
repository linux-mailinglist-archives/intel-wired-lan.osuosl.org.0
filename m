Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB147D689B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 12:33:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED8D785086;
	Wed, 25 Oct 2023 10:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED8D785086
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698230017;
	bh=aydqhl2/O1t6JC6AG8wg2tTkaEJau0yQGtUdXQ1zsB4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y0NcAAqm33wevdh6b7FpkuOiCgKEdNBEXvqcOCGYP5Z4HRzJSQBwbfKqA8OdiFuBq
	 ONpXxZEKD/tLv2asHgfT84iYkuOgexKztiMiMkSJ2ek0kfnlNvmNTyUkckkcD7Bj+v
	 I5die9Hu7FZReDOAVDYVY6Vz1mQrxzMRd7v78mgLZcdujuLNfQ4gWwjiMhiq8I6Hgg
	 CBoHV3/10xKsN0cJ8CpWgG514Cf+8R+gGO7epdlOwbXx3PMqX4RDtogN5BY9Szlp1A
	 i4zLGzerf65gCDVwEJxndgzfBbtF6sahwCuKXqkJquJ7tVtJkNhtPpy1S6LNFni6ns
	 9iKaMVlKH9KyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WPs3TXEf038R; Wed, 25 Oct 2023 10:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 860AA84F30;
	Wed, 25 Oct 2023 10:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 860AA84F30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9F91BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D92C4432A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D92C4432A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gru3znuwQd3L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 10:33:25 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B4DD4328E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B4DD4328E
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-n_Cdgp-6NaaVB16wf-rkEg-1; Wed, 25 Oct 2023 06:33:21 -0400
X-MC-Unique: n_Cdgp-6NaaVB16wf-rkEg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C958F811E8E;
 Wed, 25 Oct 2023 10:33:20 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 381391121319;
 Wed, 25 Oct 2023 10:33:19 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Oct 2023 12:33:15 +0200
Message-ID: <20231025103315.1149589-3-ivecera@redhat.com>
In-Reply-To: <20231025103315.1149589-1-ivecera@redhat.com>
References: <20231025103315.1149589-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698230004;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fDDPhLjS2qjyz2nQKfaq0QCWJpoL7NQX+WbUg4S1eIc=;
 b=TKk0KjJ6z+r4RPF3zWwwNbthkBM1ANwkR6EXyAZRIqshPGu8KugHFjN9Gt2EiSGKOY11MM
 hDK1HcfGtvY40sSSveWUqgGPVvmlpcHq9RU7SoF39zgr076ph+9eQiyC2MMPKwhV9bb70i
 krpE5AUHci5VoCL8hT3q3HnE6YJvkxM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TKk0KjJ6
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: Move inline helpers to
 i40e_prototype.h
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move version check helper functions from i40e_type.h to
i40e_prototype.h as per discussion [1].

[1] https://lore.kernel.org/all/cdcd6b97-1138-4cd7-854f-b3faa1f475f8@intel.com/#t

Cc: Wojciech Drewek <wojciech.drewek@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 70 +++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 68 ------------------
 2 files changed, 70 insertions(+), 68 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 001162042050..af4269330581 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -501,4 +501,74 @@ i40e_add_pinfo_to_list(struct i40e_hw *hw,
 /* i40e_ddp */
 int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash);
 
+/* Firmware and AdminQ version check helpers */
+
+/**
+ * i40e_is_aq_api_ver_ge
+ * @hw: pointer to i40e_hw structure
+ * @maj: API major value to compare
+ * @min: API minor value to compare
+ *
+ * Assert whether current HW API version is greater/equal than provided.
+ **/
+static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
+{
+	return (hw->aq.api_maj_ver > maj ||
+		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
+}
+
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
 #endif /* _I40E_PROTOTYPE_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 7eaf8b013125..e3d40630f689 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -586,74 +586,6 @@ struct i40e_hw {
 	char err_str[16];
 };
 
-/**
- * i40e_is_aq_api_ver_ge
- * @hw: pointer to i40e_hw structure
- * @maj: API major value to compare
- * @min: API minor value to compare
- *
- * Assert whether current HW API version is greater/equal than provided.
- **/
-static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
-{
-	return (hw->aq.api_maj_ver > maj ||
-		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
-}
-
-/**
- * i40e_is_aq_api_ver_lt
- * @hw: pointer to i40e_hw structure
- * @maj: API major value to compare
- * @min: API minor value to compare
- *
- * Assert whether current HW API version is less than provided.
- **/
-static inline bool i40e_is_aq_api_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
-{
-	return !i40e_is_aq_api_ver_ge(hw, maj, min);
-}
-
-/**
- * i40e_is_fw_ver_ge
- * @hw: pointer to i40e_hw structure
- * @maj: API major value to compare
- * @min: API minor value to compare
- *
- * Assert whether current firmware version is greater/equal than provided.
- **/
-static inline bool i40e_is_fw_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
-{
-	return (hw->aq.fw_maj_ver > maj ||
-		(hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver >= min));
-}
-
-/**
- * i40e_is_fw_ver_lt
- * @hw: pointer to i40e_hw structure
- * @maj: API major value to compare
- * @min: API minor value to compare
- *
- * Assert whether current firmware version is less than provided.
- **/
-static inline bool i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
-{
-	return !i40e_is_fw_ver_ge(hw, maj, min);
-}
-
-/**
- * i40e_is_fw_ver_eq
- * @hw: pointer to i40e_hw structure
- * @maj: API major value to compare
- * @min: API minor value to compare
- *
- * Assert whether current firmware version is equal to provided.
- **/
-static inline bool i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
-{
-	return (hw->aq.fw_maj_ver > maj ||
-		(hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min));
-}
-
 struct i40e_driver_version {
 	u8 major_version;
 	u8 minor_version;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
