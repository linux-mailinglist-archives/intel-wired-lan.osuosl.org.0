Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C9786B5EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 18:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C683541756;
	Wed, 28 Feb 2024 17:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IIMlc6F1zMzX; Wed, 28 Feb 2024 17:26:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFF1A4174E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709141182;
	bh=YgXfPN35ycGcFyeX+4qkDfjzG1MG71vQIh7801xexLs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sHQm1zaMt6F8xoZkHgE3/o3uB0raGMbFZP2///whS1sqFlHz0iMSw8IX1zxIn0+FL
	 g8R8LjNRv5nIdN/ZFJujf0fl+vRIiKyd7CjdzAvTugE8zHnAZdyMWg0SYZkEC6dsZi
	 ladZmRX5SP5jFq7BDapM2P10GAtL100bAKWK+GmgLIQObeU7o1NroHgkcHuzHkj8gD
	 8UbqKq3ySA9bLvNvkPc2c/iRLXPum3243lmnMOfQiMQxbFpY9YxcYDUc2tRdFSqVSg
	 fHLFMZb26TO/T0wCcLF3+lDaKgBZj45x/SMGUAz9OOT1btsaGFRkGizsvOYSOKjONC
	 0BSDwzrH+/oPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFF1A4174E;
	Wed, 28 Feb 2024 17:26:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 671531BF841
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5318F60A9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DcQvRins3KFP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 17:26:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F5B660A79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F5B660A79
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F5B660A79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:26:18 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-326-g0jyi1mVM6CIheHSWRPE6g-1; Wed, 28 Feb 2024 12:26:11 -0500
X-MC-Unique: g0jyi1mVM6CIheHSWRPE6g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E29183B827;
 Wed, 28 Feb 2024 17:26:06 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.225.188])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A4A67401CB78;
 Wed, 28 Feb 2024 17:26:04 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 28 Feb 2024 18:26:03 +0100
Message-ID: <20240228172603.29177-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709141175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=YgXfPN35ycGcFyeX+4qkDfjzG1MG71vQIh7801xexLs=;
 b=YYV8QAPHqCxoy7BWidsTgwiVh+bU6dk5WplHCywBNu0VWcPl7OnOB3Au5yhBRryOHTX3Ys
 4EybJvyzoup1+2yCUtFHUnPHrDUadowfJZydPUzQ6S01f4yOk3KabXZs3jJ2Y2EXhN+jvO
 E/Y7DpWKYExqKdAI8g88SrThWYjIliQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YYV8QAPH
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix firmware version comparison
 function
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Helper i40e_is_fw_ver_eq() compares incorrectly given firmware version
as it returns true when the major version of running firmware is
greater than the given major version that is wrong and results in
failure during getting of DCB configuration where this helper is used.
Fix the check and return true only if the running FW version is exactly
equals to the given version.

Reproducer:
1. Load i40e driver
2. Check dmesg output

[root@host ~]# modprobe i40e
[root@host ~]# dmesg | grep 'i40e.*DCB'
[   74.750642] i40e 0000:02:00.0: Query for DCB configuration failed, err -EIO aq_err I40E_AQ_RC_EINVAL
[   74.759770] i40e 0000:02:00.0: DCB init failed -5, disabled
[   74.966550] i40e 0000:02:00.1: Query for DCB configuration failed, err -EIO aq_err I40E_AQ_RC_EINVAL
[   74.975683] i40e 0000:02:00.1: DCB init failed -5, disabled

Fixes: cf488e13221f ("i40e: Add other helpers to check version of running firmware and AQ API")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_prototype.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index af4269330581..ce1f11b8ad65 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -567,8 +567,7 @@ static inline bool i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
  **/
 static inline bool i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
 {
-	return (hw->aq.fw_maj_ver > maj ||
-		(hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min));
+	return (hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min);
 }
 
 #endif /* _I40E_PROTOTYPE_H_ */
-- 
2.43.0

