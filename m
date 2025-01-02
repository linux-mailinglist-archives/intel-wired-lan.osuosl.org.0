Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE169FFCCA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:37:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8AF76069E;
	Thu,  2 Jan 2025 17:37:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R7rkDtazTBQk; Thu,  2 Jan 2025 17:37:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37FA9606B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839455;
	bh=VIOsW7CThUdxqZazplbAYuS4wCenu5gwxB082K8tTE8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W5UouD+X5JIVuo2LM90EDM4CHz+MK5r9xLWOh7TTIQ+Qa3IOS14/v69wr5zv+wJhj
	 fEYk4+y6Z7tl6MawYOG+j9ceu+nuJbCXLQ7Z/XyLoNbJMVdarD0Ut6J4F0wEUmSY9k
	 yyjnBSwl7x5lFgUzTFoKLWaMjKiEMS6yiB2pK3BjDP8G9i0n+vJYkDfBeWyPMIItNb
	 8vB4D23bswj/3yJq6Zed4IT+MturLMTvEOhPCvym0+q2xgJfqVam7z5JqVTVFI37zO
	 F5NsAsK+EoNyg+uxWutIeUipyUEpKhz5JXTteRmK+okAjBJwXUkNrzmWu3/ccYzyQ3
	 0K8oxL/VnUl5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37FA9606B0;
	Thu,  2 Jan 2025 17:37:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 707F2F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CD9D80499
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id amBtZhRH5HLO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:37:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7E459804F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E459804F3
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E459804F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:32 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTP8P-007tod-0F;
 Thu, 02 Jan 2025 17:37:25 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu,  2 Jan 2025 17:37:16 +0000
Message-ID: <20250102173717.200359-9-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250102173717.200359-1-linux@treblig.org>
References: <20250102173717.200359-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=VIOsW7CThUdxqZazplbAYuS4wCenu5gwxB082K8tTE8=; b=cjgLBWE+AQGwouVE
 S5vDwc9ZaGxooRFqKMUjY4+++UEKig701HZLmcI8O0QBQP2TlKUi8bYtelzl7KlmcXWFHhVX2JBP0
 6oHlvI7kl0W2fti64GLzmrIxv8POg0xcbNaibJ967G8tuySRt45SaMGbzYoc7UbrD9XHrnMCyPD/n
 hgdg/bxJ3qnE++npjxllU0FEG4YB5QjMLHR/nJJslEUx1GDViPuH+AbFA9s2B4OPuAf8YdybLk+L3
 L3lvR39p44H/rH81uF2TenLyc8VRhif9ppBTzEB7glsxbo1Kqf2ClLCnmAFIU9XK0obcywgDbkNUc
 UdIzLCC0hkgnVhjSsw==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=cjgLBWE+
Subject: [Intel-wired-lan] [PATCH net-next 8/9] i40e: Remove unused
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

