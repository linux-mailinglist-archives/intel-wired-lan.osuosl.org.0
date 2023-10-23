Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99BA7D3C82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 18:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34B37417E1;
	Mon, 23 Oct 2023 16:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34B37417E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698078591;
	bh=J3cDNdIt8J67ibLgOiPGfuPdAXl4wDLuOcRAAC3W65E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPkYduCOQVA2tFQHLaCyv6FVYj3pqpbxvbqsxXosfcn2bj1L3z8jiBG5rxg0pbxgj
	 bg9iXWY5fXJbKdhRFBgWl22dlraATRHNMdc60ZdnzkVcI8Bd+AQHXqaCFYWbiVcV+6
	 y2ToSZnAnnEo2wYncKSJzygKZoQDDQZ+mZevH2SjvrvXhRBhh2ch4X3afmyIf1/PyT
	 0i+4z0BhzMILvMK4dC9EM8p2sSEB0/CxrhubwAqw6VvXVJmghwRNL6leGcz11DGryS
	 ld5vPT0LDFZiYMtKSoD5IDYFeFSdFyCd9bM6p90wzpj730dLQdBrLYHPWxOsN/4ut+
	 AcJOku8a5uZ6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBvaXAK2yh8t; Mon, 23 Oct 2023 16:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD2F1417D6;
	Mon, 23 Oct 2023 16:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD2F1417D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91E8C1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 16:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68FCB6128D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 16:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68FCB6128D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grEmstZHU1kx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 16:29:42 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B426061273
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 16:29:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B426061273
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-54-PBYY7xKIOQSo5EZ1aDcToA-1; Mon, 23 Oct 2023 12:29:38 -0400
X-MC-Unique: PBYY7xKIOQSo5EZ1aDcToA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7747D185AD0A;
 Mon, 23 Oct 2023 16:29:36 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 922AC25C0;
 Mon, 23 Oct 2023 16:29:34 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 23 Oct 2023 18:29:27 +0200
Message-ID: <20231023162928.245583-3-ivecera@redhat.com>
In-Reply-To: <20231023162928.245583-1-ivecera@redhat.com>
References: <20231023162928.245583-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698078581;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R3ZRVRPYlzLKSEwVSMpWF6MYksG9m8/cnJFghvaOFDE=;
 b=LjpUOCqkESYv3dWDs6xdAjksCdZcQ2oGGKl4Le/eAzMWzIoMVWjsKu60/S7hZgudsJ0K4i
 JHWUpHY/I1sF0MveoP9CLBCIORaRqA9ypg0D9ydcs/iY3fN6qG3vQNu5PHGaTy8R9gn6f9
 1pl6JT1y9m7S9I77WFOMJVurziAy2vE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=LjpUOCqk
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] i40e: Add other helpers to
 check version of running firmware and AQ API
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
index 050d479aeed3..bb62c14aa3d4 100644
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
+static bool inline i40e_is_fw_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
+{
+        return (hw->aq.fw_maj_ver > maj ||
+                (hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver >= min));
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
+static bool inline i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
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
+static bool inline i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
+{
+        return (hw->aq.fw_maj_ver > maj ||
+                (hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min));
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
