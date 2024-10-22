Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 849279AB4E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 19:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6AB080EEE;
	Tue, 22 Oct 2024 17:22:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BESo4IX2Cw-p; Tue, 22 Oct 2024 17:22:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBC4180ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729617729;
	bh=D/yu90JKxIvYVAES8/y9aMQqFtx/G5adkU7FKzvOKDI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JB83HV0+9ydmpMRCzcJuDrQ2lb7lHBgoPOYhCKyx9OyNmSirXyGvMzancvBmHJh6J
	 Lp63t3CCSFUoY4m9aDjcYD4TPsYl4Y27ad7COrUKLnxI6/LkQv/o/oLMgD+AErlcrl
	 gjKZX53IEmD9siMCkJNfT94zZhkGGSUUmFFQPknS++9rdUDhhKO+aEX8qVj2xFMfQG
	 oV5at2UDvhneFO3HWIrmAfz2m/uEEOdBQ7oCQRplyN/i5RWtv7oToZLC9bceyxSKmr
	 joy5TpBoCZv7DXl+ZAiT8pvhiVUbUFXypXXqj/p1GRqrMP7/gtj18Bpbfce/NUEUsa
	 tivIhUW/I864g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBC4180ED5;
	Tue, 22 Oct 2024 17:22:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 218982072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01FE0405C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:22:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vhaHf8XhzqFi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 17:22:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3D40405BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3D40405BD
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3D40405BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:22:05 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-7db908c9c83so3773282a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 10:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729617725; x=1730222525;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=D/yu90JKxIvYVAES8/y9aMQqFtx/G5adkU7FKzvOKDI=;
 b=j16SLADrY+A8EeCPipUWHvGkOp++88P/uIO3fAwiDPqc/iywWhDA5LTUwnPOvILxGe
 a16uL+ASiAlaFfvxkvZVuEmZQDnQaOhH0ANCvMmOpQ3fnbdruA6A0ZcwSr11F7punL/o
 GGMtE0c9peONw535Ow0kMhYiA7D/b82Jmlo5YUus6qRCXwYWVgaXsEGylm9GhdTEJBg2
 BUn+y9/cT2agxKvZb0Xh/oL/UD5Oh74hU93KhMyntUD9j8SpdqI/o9JMIM8t9o73RxqK
 35ylwtTN8LaMhwMMdCRqO6Qz0WCO+w1hGvGyC9Fzb9CPwTSLpzGJoVCkANgHKplxxFPu
 3uLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3Xgz6/u0xkGuJkpRWDvvV7jxVYTByrqk4jaYZiX9p8M6WSObHCFYG9gg9IZnr/m74lTJAzOLA8ETGW2DdgRc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwPEEdzTr/x9Vh63o1Qpli6YxpfmzeKrLBFtwcxa8VExksu96Li
 5ZSpoV0914dACdBc85Wi9X6uSF3jGuL3lxqiwcdK0xzc1vpmTwCUGXMtiCL7iGM=
X-Google-Smtp-Source: AGHT+IFoscgRZXyWJoFNIakBUIwR0JZ7fFN+IsSWlUCwVl6IWGkO6L9ICGQVPDsONQX1Dqx4Xkvvlw==
X-Received: by 2002:a05:6a20:e687:b0:1d9:1d2b:f1e with SMTP id
 adf61e73a8af0-1d9775d0a49mr343690637.14.1729617724690; 
 Tue, 22 Oct 2024 10:22:04 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec13128c2sm5017974b3a.33.2024.10.22.10.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 10:22:04 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: dmantipov@yandex.ru, Joe Damato <jdamato@fastly.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Tue, 22 Oct 2024 17:21:53 +0000
Message-Id: <20241022172153.217890-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729617725; x=1730222525; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=D/yu90JKxIvYVAES8/y9aMQqFtx/G5adkU7FKzvOKDI=;
 b=RW5UUAklDyosn5FUajg0qV6mbn9mAOIKukDVmkNRWaxwwxh/e0IJkEH6f1WuB5XANt
 nmNlDs7S5uofl9JHSbtSc9Dnno6GaHpD0ULl4YMAgsqkjvRRdJlDANI+bMt8aSFj9YLA
 T1FSJ4vxtzJ8zP2w3Ju1xb7Ds++WVtj4WqDBA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=RW5UUAkl
Subject: [Intel-wired-lan] [RFC iwl-net] e1000: Hold RTNL when e1000_down
 can be called
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

Hold RTNL in two places to fix this issue:
  - e1000_reset_task
  - __e1000_shutdown (which is called from both e1000_shutdown and
    e1000_suspend).

The other paths which call e1000_down seemingly hold RTNL and are OK:
  - e1000_close (ndo_stop)
  - e1000_change_mtu (ndo_change_mtu)

I'm submitting this is as an RFC because:
  - the e1000_reinit_locked issue appears very similar to commit
    21f857f0321d ("e1000e: add rtnl_lock() to e1000_reset_task"), which
    fixes a similar issue in e1000e

however

  - adding rtnl to e1000_reinit_locked seemingly conflicts with an
    earlier e1000 commit b2f963bfaeba ("e1000: fix lockdep warning in
    e1000_reset_task").

Hopefully Intel can weigh in and shed some light on the correct way to
go.

Fixes: 8f7ff18a5ec7 ("e1000: Link NAPI instances to queues and IRQs")
Reported-by: Dmitry Antipov <dmantipov@yandex.ru>
Closes: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 4de9b156b2be..9ed99c75d59e 100644
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

base-commit: d811ac148f0afd2f3f7e1cd7f54de8da973ec5e3
-- 
2.25.1

