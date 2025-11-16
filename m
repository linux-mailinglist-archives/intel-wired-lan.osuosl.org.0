Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12518C617DE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Nov 2025 16:57:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 536A440A6C;
	Sun, 16 Nov 2025 15:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N8r81U8rRNZN; Sun, 16 Nov 2025 15:57:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F3904099B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763308633;
	bh=I1gxk1DsHCEeyciyJk4Gm3Xoh1TUbmw4WS4h5BWbH44=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zpaf+LQ2PBwvPLhuYJ8OtG7GBvfIqEHN+bpgHdW2E17nZ3kGbcKiqq+9dAy59ZYBZ
	 FaPr3snH+nAk1jkyV7GPUr21PH2CSRRC6UqEEIyrpvAF8F/S3RSE8i9M+/CyWSGox1
	 wCAUxLLyHn4d9/bHs0vheqqy/nfnw2G0yNmWcIQINMBtQDlAfnmNuiXotIV5zdp0/0
	 gDc8fmG8l8SmzBQYlp/9aaKDCMQ35c+E1yXR5ULil09x7743pBZQJi040s2Qdks3uv
	 MVeg3hbK4iOvtZcuP27ItuQMYRibKOwLzK6pPyn6ObUPAt1uME3Thphbw4wqPGoCbn
	 kHy962aS6B6Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F3904099B;
	Sun, 16 Nov 2025 15:57:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 341D6D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A144405B1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2k4wT_dVgcba for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Nov 2025 15:57:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3CF0E40394
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CF0E40394
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CF0E40394
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:11 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-7aad4823079so3080753b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 07:57:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763308630; x=1763913430;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=I1gxk1DsHCEeyciyJk4Gm3Xoh1TUbmw4WS4h5BWbH44=;
 b=DlNXEsO8YYrzHLmR5yFKtmKbxECaSD73aW6LI++6vzPwE35J2SDIkQTayhr8cjsXaa
 xVttT4sVLRqxo0/t2Ag2KM0555xfsszIJ0gtcURdXL1Y3sbWB8wc65JliNoKOQR+DWZ5
 AJ+ybjB+/4F2G6TWNTgsnlsCK6ePUxIZO6mJFpv7NEX5lSMt4u+AtJLjMXZ6GWmNDt90
 niyWCcikSqM8ZYcylvzRfeSZcy5dQ8Go7Anq+zt6lTr2KsM+Q4TI3kd5+YjYTj21QBPy
 bkEO0mqm3xuxv5I1oNURvX2XzsssjPnvLi3MH2PnGqwEBBgizX2FM3nmd4JxQu1j1k4g
 VOug==
X-Gm-Message-State: AOJu0YxQWdAam2W23RQ/Z+0xs1Spi9gU4c16qbolfpJcN5z1pkNsZ4kM
 NNruYbJCbmEHbUbGBSV9bA9L8+7+rSPoOsJ4X2xnj5yuI5akvs1/6D2O
X-Gm-Gg: ASbGncvaQuWew5/HOJLzyxM/ajEqKEF6PWwSP3LlBN8kcX6tAlNXdwjMQqNWUg6aQEm
 awmN7JTitvvfSwW+lvXY135fNgwXuK4jrZ74uuk1LscAUZhInaowazNvKCoE3LyzjzSdmWSwxWZ
 l8cTsrmHYvn0IgRGPxlCprKd2ub/bnKNQvhWL6IRdxpXMNh4S1ECQz4JwbEbCCxm2c//xtyQgUC
 fqy3Y8skiQkG+fkGxtLfyKslQ8M6WKxXmgzHSyV+8brhRzzOF8VA16ZuaObEK1ePb1bcCQ3xMhk
 qOcNHqxJbEwUt6bgLtlKTWBs4dk/CbB1lMljjLY14PxJdxM8+IaQbnYJCCJcOPB/LmCBWRt98q6
 0mzm7+CGHbv9gKfKwgqg7Nvbhcqt/XITxtDfubUsQ6OnwTKnr/N9/aFJeZY7ZBKlTTAWbDI4CbB
 EoxCfS4gss
X-Google-Smtp-Source: AGHT+IFqBdx4R6YTOp0JDgvcZZT5ZiiWX5oMnR2HQmFdpl5m0+SbCTbe9kbJBhTtWt3ynBIXX091MQ==
X-Received: by 2002:a05:6a00:a95:b0:7b9:df65:93a9 with SMTP id
 d2e1a72fcca58-7ba3ce6b3a7mr11792143b3a.32.1763308630509; 
 Sun, 16 Nov 2025 07:57:10 -0800 (PST)
Received: from aheev.home ([106.215.173.137]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7b924ae6943sm10677038b3a.6.2025.11.16.07.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Nov 2025 07:57:10 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Sun, 16 Nov 2025 21:26:49 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-2-0ddc81be6a4c@gmail.com>
References: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-0ddc81be6a4c@gmail.com>
In-Reply-To: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-0ddc81be6a4c@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ally Heev <allyheev@gmail.com>, 
 Simon Horman <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2680; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=Usqx83ivKY4w0KNMbSY7X0Z+d+La037+pNfmug8W6AY=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDIlv7jmnYv3fraqfI7mvJ7YxevY13mlb7vk3NBbuq3tv
 cqLjFO5HaUsDGJcDLJiiiyMolJ+epukJsQdTvoGM4eVCWQIAxenAEyk7SXDH44Jk9c4TXmmyRQY
 2fS1qcYz4M4bR/t5J77N2vFm8n3GuAyGv9JqC4K+3/BbHjM1+scGjinaW0XXVbn+WteXqrXTMev
 9Jm4A
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763308630; x=1763913430; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=I1gxk1DsHCEeyciyJk4Gm3Xoh1TUbmw4WS4h5BWbH44=;
 b=WWboYsX5gyQgFvkBTqDqZeYc0WBwPwft53EdXSBhNSXqxgf/j/xgHlZnSV9PBaCvEp
 Q2/yA6BYUbM5piCjF76pbvUPMd2iV21Hohn2nDOxzrWiP3ZXPGBa/Ot5KzP7HWyO46HC
 aU9Zn8KzcUgOEQ5QjnWsl68ks9FnCgc6/ZeXEtaLraKOOMLsyoRbHmBnZm8vC7IHh4Y1
 805CqGqbqnONWwBDK646deudwvUCfAF2wjgkuqI/PzRsEuhuWRQjw6VGSio5GC7sfvSB
 /HxrOCd1Jub/47+CZ3xl4XDcA8173LXpo8GlolPu/TVyGzor4S1a6a5KzGzdiVEeYQmc
 jh7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=WWboYsX5
Subject: [Intel-wired-lan] [PATCH RFT net-next 2/2] idpf: remove __free
 usage in idpf_virtchnl
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

usage of cleanup attributes is discouraged in net [1], achieve cleanup
using goto. In this patch though, only uninitialized pointers with __free
attribute are cleaned as they can cause undefined behavior when they
go out of scope

Suggested-by: Simon Horman <horms@kernel.org>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/aPiG_F5EBQUjZqsl@stanley.mountain/
Signed-off-by: Ally Heev <allyheev@gmail.com>

[1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs

Signed-off-by: Ally Heev <allyheev@gmail.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 28 +++++++++++++++++--------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index cbb5fa30f5a0ec778c1ee30470da3ca21cc1af24..5b2bf8c3205bc1ea0746f78afa2a24f3f8ad2a8c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1012,7 +1012,7 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
  */
 static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 {
-	struct virtchnl2_get_lan_memory_regions *rcvd_regions __free(kfree);
+	struct virtchnl2_get_lan_memory_regions *rcvd_regions = NULL;
 	struct idpf_vc_xn_params xn_params = {
 		.vc_op = VIRTCHNL2_OP_GET_LAN_MEMORY_REGIONS,
 		.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN,
@@ -1029,21 +1029,29 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 
 	xn_params.recv_buf.iov_base = rcvd_regions;
 	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
+	if (reply_sz < 0) {
+		err = reply_sz;
+		goto out;
+	}
 
 	num_regions = le16_to_cpu(rcvd_regions->num_memory_regions);
 	size = struct_size(rcvd_regions, mem_reg, num_regions);
-	if (reply_sz < size)
-		return -EIO;
+	if (reply_sz < size) {
+		err = -EIO;
+		goto out;
+	}
 
-	if (size > IDPF_CTLQ_MAX_BUF_LEN)
-		return -EINVAL;
+	if (size > IDPF_CTLQ_MAX_BUF_LEN) {
+		err = -EINVAL;
+		goto out;
+	}
 
 	hw = &adapter->hw;
 	hw->lan_regs = kcalloc(num_regions, sizeof(*hw->lan_regs), GFP_KERNEL);
-	if (!hw->lan_regs)
-		return -ENOMEM;
+	if (!hw->lan_regs) {
+		err = -ENOMEM;
+		goto out;
+	}
 
 	for (int i = 0; i < num_regions; i++) {
 		hw->lan_regs[i].addr_len =
@@ -1053,6 +1061,8 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 	}
 	hw->num_lan_regs = num_regions;
 
+out:
+	kfree(rcvd_regions);
 	return err;
 }
 

-- 
2.47.3

