Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD0D9FA1ED
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ED3770A3E;
	Sat, 21 Dec 2024 18:43:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZbNXeGwnfIIZ; Sat, 21 Dec 2024 18:43:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1DE9707E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806600;
	bh=VIOsW7CThUdxqZazplbAYuS4wCenu5gwxB082K8tTE8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5MejNoAo/gcKJswPl5VZsc17ix+Hh1GsoqJpQ3JRqJLgTciuSk0bVF3oMXjYwPKp8
	 jVXAYk+R6x0gH0ynh2QF3Pi8wcpQAyxp4VCE6WxUVpZZ9O/gW8DUN9p1YYrT5XNrBA
	 PYITK3ofE/vBNlrSa6kVel4qnnqlLh9OPN2y9e5aC6WZZR2QROvup/hH57TfxCvwcf
	 QaydXzHMqCrsH/GNLBruiiQ34ke+K2OQ3wY7leBur7t2A+nbkI/UOtsBxPXIMrmj3+
	 X4sViTroUonqpmVKq75MirLxfyIJgEoV8ZCR7tfEYIGfysZxVxvuMlBkF6jEDL0zyh
	 QhIFw88g8Mjzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1DE9707E6;
	Sat, 21 Dec 2024 18:43:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EA2E75A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6B0C70911
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iKe32FUhwkHV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:43:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F2B0A6F61C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2B0A6F61C
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2B0A6F61C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:42:59 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4RB-006hEJ-13;
 Sat, 21 Dec 2024 18:42:53 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:46 +0000
Message-ID: <20241221184247.118752-9-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=VIOsW7CThUdxqZazplbAYuS4wCenu5gwxB082K8tTE8=; b=PF72OuVanmpzzvm/
 0lKPOaUeS6WYnijmVfYz5Y0R9TCaqZZKCMKqIOhIl8Ve28OVnVVaJ8Xc7lD0ohNvz5VnscsYkYWBN
 CCm7Bi/9lapNMWf93RmyAfSMQkJkpJiOHeRxySSZRD0D68mqAwdFY2wbonpin13Mk+drtmQW/4MGL
 wHwW/3zttm9pLvuEon5obfRXN0Hi2430XNK5dyvgyfQjbLIuv1X+xlNEKaEGxP5UoIw/DMbsEf6n+
 sQEaP9qiAVsXbt+2jGBE6gLHna+cCSLQHhWyZjqe4YSVOg0opIiZrP1/UeA6JoWZJvzkiO+3QRPzp
 CWMFLUCuVMNkkgZNfA==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=PF72OuVa
Subject: [Intel-wired-lan] [RFC net-next 8/9] i40e: Remove unused
 i40e_asq_send_command_v2
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Dr. David Alan Gilbert" <linux@treblig.org>

i40e_asq_send_command_v2() was added in 2022 by
commit 74073848b0d7 ("i40e: Add new versions of send ASQ command
functions")
but hasn't been used.

Remove it.

(The _atomic_v2 version of the function is used, so leave it).

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c    | 10 ----------
 drivers/net/ethernet/intel/i40e/i40e_prototype.h |  7 -------
 2 files changed, 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index f73f5930fc58..175c1320c143 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -1016,16 +1016,6 @@ i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
 	return status;
 }
 
-int
-i40e_asq_send_command_v2(struct i40e_hw *hw, struct i40e_aq_desc *desc,
-			 void *buff, /* can be NULL */ u16  buff_size,
-			 struct i40e_asq_cmd_details *cmd_details,
-			 enum i40e_admin_queue_err *aq_status)
-{
-	return i40e_asq_send_command_atomic_v2(hw, desc, buff, buff_size,
-					       cmd_details, true, aq_status);
-}
-
 /**
  *  i40e_fill_default_direct_cmd_desc - AQ descriptor helper function
  *  @desc:     pointer to the temp descriptor (non DMA mem)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index ccb8af472cd7..099bb8ab7d70 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -27,13 +27,6 @@ i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 		      void *buff, /* can be NULL */ u16  buff_size,
 		      struct i40e_asq_cmd_details *cmd_details);
 int
-i40e_asq_send_command_v2(struct i40e_hw *hw,
-			 struct i40e_aq_desc *desc,
-			 void *buff, /* can be NULL */
-			 u16  buff_size,
-			 struct i40e_asq_cmd_details *cmd_details,
-			 enum i40e_admin_queue_err *aq_status);
-int
 i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 			     void *buff, /* can be NULL */ u16  buff_size,
 			     struct i40e_asq_cmd_details *cmd_details,
-- 
2.47.1

