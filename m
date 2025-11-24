Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 303A9C7F39C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 08:41:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6BFD60835;
	Mon, 24 Nov 2025 07:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9PF2O3sH-2jy; Mon, 24 Nov 2025 07:41:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 056946084C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763970065;
	bh=I1gxk1DsHCEeyciyJk4Gm3Xoh1TUbmw4WS4h5BWbH44=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KHBrSBeGtGqZdi5OkAzsJEQuyNr3t1b4x7zk12nVTYohIXPVUwH7VBmcftadBX9tY
	 QM6/6/5g3UbD/Qw3q7Uq2kfFNA+gUM7gspndn0tXwuMuzl92Sa6GkqxSrRZZAsm9yQ
	 2V0FS+zeMWCTk5woOxa9W3A2ZwzopQdoxd9/CBBPl7HGNXjRSQgZH2cepOxWX/1kXP
	 PfaNbLqJSIMYm9+FvtK1rJJ2fU9+GjhkcVnrAzsHElznEh5Mj9xek8Mv6lPTkqWZi6
	 AxnfbjRucHZWMMrWBF0hKzUmLBH9t6rlVM3oEqv+tDeWn57p+X0EsIlZkTuqTza6nq
	 C6ErZnIE/fx1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 056946084C;
	Mon, 24 Nov 2025 07:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A0F64E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C79F400CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eLINeEnwL0-a for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 07:41:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7813D4002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7813D4002D
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7813D4002D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:41:00 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-7aab061e7cbso4664262b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 23:41:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763970060; x=1764574860;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=I1gxk1DsHCEeyciyJk4Gm3Xoh1TUbmw4WS4h5BWbH44=;
 b=mYMMUsQ32Hk8VhgkavtQ65LYXLSO3SGOZspqhT0mnF0uhTdxIaVRSgOuKLO1RK57V/
 sEAbo4AyKT7nts6D47nEFPN7zew22xUDsiEPoTHx8XHUpolz8G2EGhIQhRGllBP3osf1
 uFFUDVRcEDIayWUQJGmd7qqmOiVwN87u0Cyj5Wqg+Y+KB/B7zWlY9mSKuiZarvBdq/L6
 3ri/0RAKagySpB9k6REScjiUJOSAm5IQI55Ys0urbGo/EhxQTA+RGO9VPhuq5iOYzDDk
 CVROkn14vfksBtQzb4nFCA/apouckgQTSU+6fS/3U+Zfz3NkO7a7+pE6/ve7v3Pd1yjM
 q0fw==
X-Gm-Message-State: AOJu0YwQrnydjzNTskjv517E1JQWtbdzUea4zwbQUfkoY6cijYBzmcge
 gmeFzU2O8x/DvlgUwuWis5iEI0Unz6GHgjSqtNr8XsEqde5npDjqIhye
X-Gm-Gg: ASbGncvviFBmEJspklRvuXuQrh/1piAZaNqM9kiZhP8mihQIxYUI6Oon0+IVfcSXabw
 IpP705Ridkrsyfw7plKm8Ormd3WZGQoB6TZEQOzFCetw1eJGFIYta0Zs/AqnyMVguwFM8pzjhSO
 m0ttBtD2uMbeyiBRd/R4j5ywk01rJZx12zNV7qm8wRFYUqvQHuZ6P9i0ufIWt2/JG1Sf0EwSdY7
 lfjQLZgNkg2/8LZE3MglTnHLtIR9smUC4pXaYQcByuY0ny+h5qcomeKZH62Wa7HAUBqqwaMaUgG
 I+eRSLgBC9c3AlazjchOVekQWJREOSSnFteK1nLeXDs2nQTpBsHBG7h//7YFLgh25TCTZHpWGw7
 RQ+RDnEZHkBnETfbl/oW5qybxlGnvPx7KQ+YoRFdxN707nYYgUoBBOpmYvxEg2f5k0ZUNNJwtDn
 o6mg4qr99w
X-Google-Smtp-Source: AGHT+IHfmjaPhmxevuKoc2EwOR5VBTWwkzOxUx7y1W2AyW7Z2BnA/hIC6PVmsv9rbVMC2nmz9/O3bg==
X-Received: by 2002:a05:6a00:9286:b0:782:5ca1:e1c with SMTP id
 d2e1a72fcca58-7c58e112b18mr11801430b3a.21.1763970059740; 
 Sun, 23 Nov 2025 23:40:59 -0800 (PST)
Received: from aheev.home ([2401:4900:8fce:eb65:99e9:53c:32e6:4996])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7c3f024b4aesm13410818b3a.33.2025.11.23.23.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Nov 2025 23:40:59 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Mon, 24 Nov 2025 13:10:42 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-2-a03fcd1937c0@gmail.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
In-Reply-To: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
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
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDJVuP9Y31rts6Yue0fpcp8Xt5s52FwP73Fh43N8EaW1s
 dWgyFyto5SFQYyLQVZMkYVRVMpPb5PUhLjDSd9g5rAygQxh4OIUgIlo5zMy/FEUvO7e3Pxs86K9
 RfaGpfPvTAqO+MZd3tn72qxlLY/MB4b/SX+vKAcsEPTaNJ2H95DAts1Nuleqr6c0XA2vXWmrlbq
 XCQA=
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763970060; x=1764574860; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=I1gxk1DsHCEeyciyJk4Gm3Xoh1TUbmw4WS4h5BWbH44=;
 b=KYJ5DMsDH9hWZL6dvPPwtC+W+f65sALsgcCrHj0mb7+9D76ZjxlKFS5z9tIh2jwC4e
 YcqSJ+wBpaQWVft9+cUZCx0xzYm1bIIQJnYcsUSuuLHKsSh/BbpMTW3sVwxQA2KWq31Y
 aIySG2Urbw5oX0sAKba/98/lyQZfutNyJFkWWLztpuBWkp3wOElZvEn/FImtPqw6x+Tb
 VE8gjjCsTXVT3SeDPBiPHi24nlD+CSMseP8XkllW3HIibwowRDhAavYDdPv4YMcS9uxT
 vnJ5owDSOfSHlgSx6343P9Zz3vjqKhs9wRCzFHv9v/9u39OBf/nMoDtszaMTzh27OhHh
 t3Yg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KYJ5DMsD
Subject: [Intel-wired-lan] [PATCH RESEND RFT net-next 2/2] idpf: remove
 __free usage in idpf_virtchnl
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

