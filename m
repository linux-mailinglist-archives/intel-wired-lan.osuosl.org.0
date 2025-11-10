Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4CAC4956F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 21:58:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8489C60AD0;
	Mon, 10 Nov 2025 20:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1B_iqLNDy92; Mon, 10 Nov 2025 20:58:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08DC060ACC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762808332;
	bh=XTDq9jeaQo0wOalgK/xieMtHrhoMAPHOMHOfOMk3yEo=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6Wd4Fm/sEc1Czp12Ar6R/ErP1ShllxBIuVR7+yoc9DFSl5VidZYqBXWrOZOc5rbRi
	 4VRUW1lY50PqzV14chwCTtCKBSLfK79QnrZ7SaPJMMJQf/zc+kwmPdepSVN3ZX7Mzj
	 86JqKZnV0gEvzu0pHfyr2H1puyD3D5HEjsTH/9UATCPokamajXdcI2LcMYA5nFI806
	 qz33vj21WMkst6vf/M6da7jTCylnhPsrsFC51jarRhL8tFONPWUCJMJ0V2H36ohr2g
	 I+TiAmAV+MUGjezpsLaFGmcjyXrkmmUZkjWuNY3b0Y4/VmPX3QlfdaJJYzkMCPRGTw
	 0Sk9C8tQmqUEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08DC060ACC;
	Mon, 10 Nov 2025 20:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DADB325D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 20:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C10CB4086C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 20:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UncfLBAg9e0R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 20:58:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::104a; helo=mail-pj1-x104a.google.com;
 envelope-from=3cvisaqckd0yjzqiv33owwotm.kwuqv1mt-4qzml-tivtq010.w02w0t.wzo@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26F494078D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26F494078D
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26F494078D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 20:58:50 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 98e67ed59e1d1-3407734d98bso4515832a91.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 12:58:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762808329; x=1763413129;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XTDq9jeaQo0wOalgK/xieMtHrhoMAPHOMHOfOMk3yEo=;
 b=TZEYbG7/QG5EwBJo0cvslo4RVwCI1NAdRGDPmaAU/aoZIcaniX+SU5odylnFqaiYpf
 B0WTbQPs0fiK+OEgah2Wnzc52eQUdMRdQ2J+U5zcYFsKKHUfsCCzd6+kAg9CqmU9ZRr+
 /fLeokbcgFZm5BqR9IXw3ke46w+7U1FYX6xS9h1NEIP5isbXtl/N7itwUGFAJHi1wDnU
 dxLwVHWzN/lkp3pUajcoYj9YW80lNCkPcrmcE0Mech6hM92rYOqGkHNvdF3xx7MJxA9p
 0dI1ZnuPcFtCok3RbL3xTvEAfXv9zLgYVvF3shaS1qIl25Efmublk+uyiZ8AS+8ixV2V
 arlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOJxtddCjWjLfbCuyp9jmBeWQ7P7m93Co9ttAw+SYOYUzZfMLoeCoqFyNVCRB+IhZRaqlvxFWHum4MYCv5240=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyMmYcOHvigD5zOhJ9UBOGB6w7/Dzpbdoc2h3P5QlJzJhp0efVt
 AuXQlXngkf6reF0Krz0luyqyRITXVjDB1uLPkVd8KcRIQTK+wvumVTk1QebxGEqb0xbZuNSJ5VT
 PQXD7TdLAOg==
X-Google-Smtp-Source: AGHT+IHvzBtOuQaT0QbtsDDe5GbIuvBIJRBAx2LgnXxO3WuRHCzu/LTGZ6OKcVN0BcGwSzLApG60io4lmv5I
X-Received: from pjbsc8.prod.google.com ([2002:a17:90b:5108:b0:343:8627:1010])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:5588:b0:340:be44:dd11
 with SMTP id 98e67ed59e1d1-3436ccfe211mr9734686a91.27.1762808329392; Mon, 10
 Nov 2025 12:58:49 -0800 (PST)
Date: Mon, 10 Nov 2025 20:58:37 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
Message-ID: <20251110205837.3140385-1-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, emil.s.tantilov@intel.com, 
 Brian Vazquez <brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762808329; x=1763413129; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=XTDq9jeaQo0wOalgK/xieMtHrhoMAPHOMHOfOMk3yEo=;
 b=RTLhaJZY64WeE0izSfQSu+dVh3bZlQxp3ygyRUxDwDbFRnNJlVC7Ix50wadU1dqJYn
 t1oJkGXKeFPlNKbVRPM2QsVEhWZiyauAhuutnbxgRilXgFSaTZMwxNiyMLKa1foJALux
 BYQ67rR6JdQIQlr2jIi/ijLg8WEsjVc13rWIkU2bAhlkxAGl7MFsZESEVePztoARo4Nc
 xiBNdShhpGkyL18n6wJ1sZEPobRJKyEqDTxKrm3L7OJJF2wjcpwq7VnzgLmd8EHsv7+4
 Tt1HeMQ9JSRM2LM+kdANR5ZASpsuZT8/EtZaTXmzDZ5Kemah57ZE9neoRe9IFBfJZngv
 MkEw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=RTLhaJZY
Subject: [Intel-wired-lan] [iwl-net PATCH] idpf: reduce mbx_task schedule
 delay to 300us
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

During the IDPF init phase, the mailbox runs in poll mode until it is
configured to properly handle interrupts. The previous delay of 300ms is
excessively long for the mailbox polling mechanism, which causes a slow
initialization of ~2s:

echo 0000:06:12.4 > /sys/bus/pci/drivers/idpf/bind

[   52.444239] idpf 0000:06:12.4: enabling device (0000 -> 0002)
[   52.485005] idpf 0000:06:12.4: Device HW Reset initiated
[   54.177181] idpf 0000:06:12.4: PTP init failed, err=-EOPNOTSUPP
[   54.206177] idpf 0000:06:12.4: Minimum RX descriptor support not provided, using the default
[   54.206182] idpf 0000:06:12.4: Minimum TX descriptor support not provided, using the default

Changing the delay to 300us avoids the delays during the initial mailbox
transactions, making the init phase much faster:

[   83.342590] idpf 0000:06:12.4: enabling device (0000 -> 0002)
[   83.384402] idpf 0000:06:12.4: Device HW Reset initiated
[   83.518323] idpf 0000:06:12.4: PTP init failed, err=-EOPNOTSUPP
[   83.547430] idpf 0000:06:12.4: Minimum RX descriptor support not provided, using the default
[   83.547435] idpf 0000:06:12.4: Minimum TX descriptor support not provided, using the default

Signed-off-by: Brian Vazquez <brianvv@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 52fe45b42095..44fbffab9737 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1313,7 +1313,7 @@ void idpf_mbx_task(struct work_struct *work)
 		idpf_mb_irq_enable(adapter);
 	else
 		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
-				   msecs_to_jiffies(300));
+				   usecs_to_jiffies(300));
 
 	idpf_recv_mb_msg(adapter, adapter->hw.arq);
 }
-- 
2.51.2.1041.gc1ab5b90ca-goog

