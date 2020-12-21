Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B10082E02D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 00:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70C2986AE2;
	Mon, 21 Dec 2020 23:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNag-n2029dD; Mon, 21 Dec 2020 23:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF7DB86A5C;
	Mon, 21 Dec 2020 23:15:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A3F51BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 22:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3565086B68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 22:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Po5KPYWP3s0z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 22:25:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4570E86B0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 22:25:45 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id c5so12644454wrp.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 14:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Hgqtg/BM45Gm64DFcm4q1HmsKbajvebg47kADOweA4=;
 b=QgSbLRFwjK/MsfiXMQB75ws0gBS3IxdWi2bJ+/i9JOudGaKfrfE2Mgpz4LoH1+2ZGs
 XnsbW3DUhSHYjCuLc1sYHjWOhde1gz+7nGb+DjBENMrZNgBG5lh9dEPbkzHgH8UDAp5B
 h4pSablc3g1zpjLXEGM5kXk71WHHqNWYdt2q8XReGp+ssouM6qSQQm1sgigk45YK6/7W
 8SIFZkvvRyTM/mrCf6s4ZDYsbfXzWrOKDctqw40CGwSN6V2ZuzCyNllubixTXLcrngZf
 8Gm6gKLOpY171qEMU9FuybZB5ovRBjXSmAMKQLJoegjXAl8cSnHDXBsSw152eFwGzS1H
 NrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Hgqtg/BM45Gm64DFcm4q1HmsKbajvebg47kADOweA4=;
 b=cNweCR4AnkNdnHnqnkUImrqO5l3ZLqPE3d+Cv6ux6NNJeL7oCvOV8HYaScJCCDMXxv
 uGXGuhtstJlYyyd/tWdRcrhqC0CrY2wisf8fgod9FvuSdn0VWsj5sFmwbuSwzRSzgv+z
 1h06wM7T8h6dNUX7G+ZNN2YXbrMXsjkJEiwn3Yw//Rlff415nX/TSyyuI9h6fTbHsP8Y
 5/GtLnXD+oNqPMfchEyZQdUL8ZkBr4F6b6etcpMtGflsns4PPF9LmQNU9TocGGnhxfaw
 EBWecwism42uGHQox3yi69cnGex+hgIG2+BqZ03EUNEm0p4HLW1KBL3p2JKBJok+6iMW
 EKZw==
X-Gm-Message-State: AOAM530PbYHUk6QcRP1IgffBLRuX3jT27BKb2N15DFP8NZAHHBwD5dYB
 qTfGENfnhCHzFwLHs0pouXc=
X-Google-Smtp-Source: ABdhPJyCtXsgCG+Yw6sLJYkIj322kEd26a+QNph35iicN9udxSX2OqVVGoJo2od2Vt73Z7HUYfgTtw==
X-Received: by 2002:adf:f891:: with SMTP id u17mr21073755wrp.253.1608589543623; 
 Mon, 21 Dec 2020 14:25:43 -0800 (PST)
Received: from localhost.localdomain ([137.220.95.74])
 by smtp.googlemail.com with ESMTPSA id z3sm29467961wrn.59.2020.12.21.14.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Dec 2020 14:25:43 -0800 (PST)
From: Nick Lowe <nick.lowe@gmail.com>
To: netdev@vger.kernel.org
Date: Mon, 21 Dec 2020 22:25:02 +0000
Message-Id: <20201221222502.1706-1-nick.lowe@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 21 Dec 2020 23:15:08 +0000
Subject: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 Nick Lowe <nick.lowe@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Intel I211 Ethernet Controller supports 2 Receive Side Scaling (RSS) queues.
It should not be excluded from having this feature enabled.

Via commit c883de9fd787b6f49bf825f3de3601aeb78a7114
E1000_MRQC_ENABLE_RSS_4Q was renamed to E1000_MRQC_ENABLE_RSS_MQ to
indicate that this is a generic bit flag to enable queues and not
a flag that is specific to devices that support 4 queues

The bit flag enables 2, 4 or 8 queues appropriately depending on the part.

Tested with a multicore CPU and frames were then distributed as expected.

This issue appears to have been introduced because of confusion caused
by the prior name.

Signed-off-by: Nick Lowe <nick.lowe@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 03f78fdb0dcd..87ac1d3e25cb 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4482,8 +4482,7 @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
 		else
 			mrqc |= E1000_MRQC_ENABLE_VMDQ;
 	} else {
-		if (hw->mac.type != e1000_i211)
-			mrqc |= E1000_MRQC_ENABLE_RSS_MQ;
+		mrqc |= E1000_MRQC_ENABLE_RSS_MQ;
 	}
 	igb_vmm_control(adapter);
 
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
