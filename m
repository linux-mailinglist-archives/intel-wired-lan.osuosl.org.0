Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDC09AD2E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 19:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70462608C6;
	Wed, 23 Oct 2024 17:28:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jTp9eUJROEFi; Wed, 23 Oct 2024 17:28:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B84C608D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729704489;
	bh=XDXXNue6psjylQE85p9KLrQo9I2faybviN6SW/hT9xU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wi9aOL5Wexp0udcQG+tOx6LIYjArvMQ5LxjsMyckGGMYTLM4LvSXn1YvkdB2JyQ+T
	 wb5eErVd8dIC8f09w3Lb1dT9Qd5QeLA3OK1ONRI+Wso5b557Lkx55pcQUX+0P0qsy5
	 VAHGn+G+gRQhbLXaFEK8edeMN7bQw8YYbG7ATX01ApU97f3B4GY9VI5YuUnbBBUlxm
	 49hfkEdNBhXqsC5IXaUu75Zhs3UxYVNKdgc/YrdeUSJ8sq9WT8S3kZQbrH11lnIjbW
	 0QsezpI4tpQkvEwMcalSzR/wKa9NkGJXFMndldC9c1UXldbCIOfxudKPBQgt0hMpNz
	 3g0Kbbbb4njIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B84C608D0;
	Wed, 23 Oct 2024 17:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 47BBB2072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 17:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3394040148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 17:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id elMHAXdrWOyM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 17:28:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52c; helo=mail-pg1-x52c.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9886640A49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9886640A49
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9886640A49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 17:28:05 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id
 41be03b00d2f7-7ed67cfc1fcso14105a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729704484; x=1730309284;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XDXXNue6psjylQE85p9KLrQo9I2faybviN6SW/hT9xU=;
 b=Eor/A/CCwQ5AQoRaNIxcABT9ngdGM1i08QASHnyq0IspIVOf77DEkAvP07JR+mXK28
 ct1nvraLkd89EEq2TjcpjtWfrlWMx+WWXPJenPRWrQgeNKtrQTv6FCjvQOAHWtmH4HMf
 qGwS7LvsPI4pFXY+LGKzqSo58prNXq8m/4JVC7wnM3GZpoNl7Z5aB/H8LdtEb2eY3XcN
 OfbQqXV2e5riURRfiatAoUlEp4vCyMx1Bd+0ug1cU/fK/N9D/xt/fSJNYlpWUIaMH2eV
 Fz8Psx05x2I0E0G1qWW40E4ZH3OjrG29tT7T52GuYMta5sWoF8pHsCqDBXXAj80YWI7+
 ucVA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJ5im2O2iX58LzriUglnSjDxfA5Y6q24rzS61Gv8o87SPzW790htbOQ3ZVvhU749dkk+B8IuxGzHOb6wdPkDo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YziBr85/Ydg/OeBN7LGpu8ZZ+uTXCkcZi9yv0sABW/HQ4p3QkwQ
 Atiicnr/tY3993Tq7Ik/mJ2odYZ7n1WMgPt/6kH4EMMss48qF59RPQMSg9q/JnI=
X-Google-Smtp-Source: AGHT+IHXXArha9jNHjLZbUZOKXb2fAUQmfhtIzPjAskZgyUcPyxmLBYIsFCiKKKWKAuVsa/v95cbrA==
X-Received: by 2002:a05:6a21:3942:b0:1d9:17fa:e5d8 with SMTP id
 adf61e73a8af0-1d978b3e396mr3930524637.26.1729704484409; 
 Wed, 23 Oct 2024 10:28:04 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec13355casm6554748b3a.59.2024.10.23.10.28.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2024 10:28:04 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: jacob.e.keller@intel.com, Joe Damato <jdamato@fastly.com>,
 Dmitry Antipov <dmantipov@yandex.ru>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Wed, 23 Oct 2024 17:27:45 +0000
Message-Id: <20241023172745.181265-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729704484; x=1730309284; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=XDXXNue6psjylQE85p9KLrQo9I2faybviN6SW/hT9xU=;
 b=ZD7XlAp+x+E3ngEFcLDX9a1xdQxt4hh2c3J38L4sNVsMBMRV/GQCAlUbsmdXbNcB/D
 sFpeJ2TF3dr/1JSfcZISugkK3XczCItYD/g7+x0uUMhQE/IMIlvnZfc2EJgasoIeIXWO
 wmSCsketo8i4K4+2V8NOrDxMgPNz2DP8STnYA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=ZD7XlAp+
Subject: [Intel-wired-lan] [iwl-net v2] e1000: Hold RTNL when e1000_down can
 be called
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

e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.

There are a few paths for e1000_down to be called in e1000 where RTNL is
not currently being held:
  - e1000_shutdown (pci shutdown)
  - e1000_suspend (power management)
  - e1000_reinit_locked (via e1000_reset_task delayed work)
  - e1000_io_error_detected (via pci error handler)

Hold RTNL in three places to fix this issue:
  - e1000_reset_task: igc, igb, and e100e all hold rtnl in this path.
  - e1000_io_error_detected (pci error handler): e1000e and ixgbe hold
    rtnl in this path. A patch has been posted for igc to do the same
    [1].
  - __e1000_shutdown (which is called from both e1000_shutdown and
    e1000_suspend): igb, ixgbe, and e1000e all hold rtnl in the same
    path.

The other paths which call e1000_down seemingly hold RTNL and are OK:
  - e1000_close (ndo_stop)
  - e1000_change_mtu (ndo_change_mtu)

Based on the above analysis and mailing list discussion [2], I believe
adding rtnl in the three places mentioned above is correct.

Fixes: 8f7ff18a5ec7 ("e1000: Link NAPI instances to queues and IRQs")
Reported-by: Dmitry Antipov <dmantipov@yandex.ru>
Closes: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
Link: https://lore.kernel.org/netdev/20241022215246.307821-3-jdamato@fastly.com/ [1]
Link: https://lore.kernel.org/netdev/ZxgVRX7Ne-lTjwiJ@LQ3V64L9R2/ [2]
Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 v2:
   - No longer an RFC
   - Include an rtnl_lock/rtnl_unlock in e1000_io_error_detected
     inspired by ixgbe's implementation of the same

 drivers/net/ethernet/intel/e1000/e1000_main.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 4de9b156b2be..3f089c3d47b2 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3509,7 +3509,9 @@ static void e1000_reset_task(struct work_struct *work)
 		container_of(work, struct e1000_adapter, reset_task);
 
 	e_err(drv, "Reset adapter\n");
+	rtnl_lock();
 	e1000_reinit_locked(adapter);
+	rtnl_unlock();
 }
 
 /**
@@ -5074,7 +5076,9 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 			usleep_range(10000, 20000);
 
 		WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
+		rtnl_lock();
 		e1000_down(adapter);
+		rtnl_unlock();
 	}
 
 	status = er32(STATUS);
@@ -5235,16 +5239,20 @@ static pci_ers_result_t e1000_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
+	rtnl_lock();
 	netif_device_detach(netdev);
 
-	if (state == pci_channel_io_perm_failure)
+	if (state == pci_channel_io_perm_failure) {
+		rtnl_unlock();
 		return PCI_ERS_RESULT_DISCONNECT;
+	}
 
 	if (netif_running(netdev))
 		e1000_down(adapter);
 
 	if (!test_and_set_bit(__E1000_DISABLED, &adapter->flags))
 		pci_disable_device(pdev);
+	rtnl_unlock();
 
 	/* Request a slot reset. */
 	return PCI_ERS_RESULT_NEED_RESET;

base-commit: d05596f248578be943015c1237120574a8d845dd
-- 
2.25.1

