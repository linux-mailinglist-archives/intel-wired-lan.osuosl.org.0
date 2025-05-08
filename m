Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D907AAFE9A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 17:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90B504050A;
	Thu,  8 May 2025 15:12:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cmGe9l7FxqPz; Thu,  8 May 2025 15:12:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 096364055E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746717156;
	bh=VotcU77DWw4Y1PxH+nM5ixe9fRq+X5xufuqprZuD5/w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9QMsuDVO4znUpeO1syo4TxUmfRrlVHBYdCKZcWp7LyJIaOGeHhBusIUVIG1s65Z69
	 r+16R710fwrkoLCQFIgL8eBZi2ZpSRB4aEZuz/UCvbQ8BV3X375Qs1MCe/1NEkEYxR
	 FZcOmhf/ovVuTByZA6lSEckYSwFvteQ+gsSE+LPbegzPpV3e0mUyX8c9olF2821wh+
	 HX5RA9tN22vcDpvoBn/8ngrhDY8XSSV//6vzNbfEjSM3dfmbbl6bw9YXretEiFhrmS
	 Xi8xvC8TURbqHAU7fHSqD19/Bn+WSVwrFFbcGCcoPg5p8Rb1HeyIju35PqfvVMsOxU
	 S0menDAEXzTpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 096364055E;
	Thu,  8 May 2025 15:12:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CAAC1A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 06:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6DD1420BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 06:14:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qIQ8Acd7rU8H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 06:14:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=jagadeesharm14@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 503E4420BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 503E4420BB
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 503E4420BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 06:14:50 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-740b3a18e26so155246b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 May 2025 23:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746684889; x=1747289689;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VotcU77DWw4Y1PxH+nM5ixe9fRq+X5xufuqprZuD5/w=;
 b=dhjVqOwEXYG6qI4XcoT15xBV1KTdb1iw/7SzZKzb3Fcbe9rPuN1s2wPwVIgz+hYTxF
 ukwcC8y1byJ1CT8zYwMGD5cSN9xG1T5ehyzbnYyS8B9hfGCtrqPUH+4FM7K7QsifJ92f
 tX67IYd+uQKbp/xfewmTipuedco420tqrbR31QscZqFpqFetFL6XyaUcgGWjYjGhnxTo
 3MG2LQNk9Gcvntp7bxp/ZZlNhKqVngEp7tKCzQg9+zkeaXdNZ0KR7l6nd/ytaWMi+q8u
 koRIQw666ua3D2yfq6TwuktYzvb06km1f4b+eSD7LSkV8EcxsUThJmHKpK6NFpu4R3DC
 B3oQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXRZpzStb+Kol+m57O1zyY7rIqVw4V9ezjcVW5jOnBN72YDh/sWr9fHwItr8tCPm7rFJWWv/0P/pLbOx9/x7+w=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwDpLeRkGu4McIDGbj2RSuDgVZbg3FajqSrPMXO4aWwgDk4OX5D
 2vx4gJhKWQ7s6eJ/pIexKLLjuWi+HkT/TXH9U78pjXaoePYt7cYJzoOXRa/qyxM=
X-Gm-Gg: ASbGnctVEish5LDBKRnxqKLkiCYmWikGjnJEEzeqCYRFfvXDQSy4jukgY08gTdO4BbX
 ldWhJn/7Xwju/Z+UwQB7HPioj/BXOhNdRObjn86pyFMuz1dtY5LSPHG5YvRq+3MyCHVsf4FqXPA
 FK22mW6hYet3mvC9G1xMwdVZNpy0UVMFd0O0c3nW156GvzYgIjWpwOhl0WprG/P3vdSLNRoO95y
 EIcTQc7PPPLld+jQItmBs4rwYuMfNcJhCe5wruNXDIACFS1aOZInmG4ZDcbDQr/SxLIISOI1vyi
 sGUDPfj/ovaABoVUCUIq7V26NcZlk4c/gHojtmavWCn2PRgzDMJ515XWkw==
X-Google-Smtp-Source: AGHT+IGcccthny4wgO9JLnTYbSSOdkpYbJbM2k0A2F+LqBuKt3G8cPMktOYUDmjfyDgWjOu6qpKiCA==
X-Received: by 2002:a05:6a20:7d9d:b0:1f5:81bc:c72e with SMTP id
 adf61e73a8af0-2159b04f390mr2858643637.33.1746684889489; 
 Wed, 07 May 2025 23:14:49 -0700 (PDT)
Received: from ubuntu.. ([103.149.59.114]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-740590a489asm12771438b3a.170.2025.05.07.23.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 May 2025 23:14:48 -0700 (PDT)
From: Jagadeesh Yalapalli <jagadeesharm14@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jagadeesh <jagadeesh.yalapalli@einfochips.com>
Date: Thu,  8 May 2025 06:14:25 +0000
Message-ID: <20250508061439.8900-1-jagadeesharm14@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 08 May 2025 15:12:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1746684889; x=1747289689; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=VotcU77DWw4Y1PxH+nM5ixe9fRq+X5xufuqprZuD5/w=;
 b=i7Vj94hlvPvhj7VvvJ6EFACO6uojsayg+bcN3IOxdC0PFxbYpCurrEm6uTStOdGsan
 5udQ7BYahPL9MXNvtVxdTGl7+zgSw2eV5HWsS7A8/W7UH9c0iebPv00n+OMHD2tfLwII
 t9nIcUmA6Z0TQ6JVCuBriYh9+ZhT2s6+8tbYbFvcN6uMrfCphheizAhCxXPFYai2PkKu
 zZuNvZ9Zga3uMls6ZFRjE+zuGhxg1pY8XJI6aqha8q/4msFTPOkZ+9fcE1cf2jSgJvQc
 LSlD/dHqed9F774DYLVfPherj7BIE/CnuDWLP/kdg6LKuVAd6cfa4RV/VfX0rVYh/u76
 eGig==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=i7Vj94hl
Subject: [Intel-wired-lan] [PATCH v1] e1000e: Replace schedule_work with
 delayed workqueue for watchdog.
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

From: Jagadeesh <jagadeesh.yalapalli@einfochips.com>

    Replace direct schedule_work() usage with queue_delayed_work() to allow
    better timing control for the watchdog task. This resolves potential
    race conditions during interface reset operations.

    - Added watchdog_wq workqueue_struct and watchdog_dq delayed_work
    - Updated e1000_watchdog() to use queue_delayed_work()
    - Removed obsolete TODO comment about delayed workqueue

    Tested in Qemu :
    / # for i in {1..1000}; do
    >     echo 1 > /sys/class/net/eth0/device/reset
    >     sleep 0.1
    > done
    [  726.357499] e1000e 0000:00:02.0: resetting
    [  726.390737] e1000e 0000:00:02.0: reset done

Signed-off-by: Jagadeesh <jagadeesh.yalapalli@einfochips.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h  | 2 ++
 drivers/net/ethernet/intel/e1000e/netdev.c | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba9c19e6994c..1e7b365c4f31 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -194,6 +194,8 @@ struct e1000_adapter {
 	struct timer_list blink_timer;
 
 	struct work_struct reset_task;
+	struct workqueue_struct *watchdog_wq;
+	struct delayed_work watchdog_dq;
 	struct work_struct watchdog_task;
 
 	const struct e1000_info *ei;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 8ebcb6a7d608..87a915d09f4e 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5178,9 +5178,8 @@ static void e1000_watchdog(struct timer_list *t)
 	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
 
 	/* Do the rest outside of interrupt context */
-	schedule_work(&adapter->watchdog_task);
+	queue_delayed_work(adapter->watchdog_wq, &adapter->watchdog_dq, 0);
 
-	/* TODO: make this use queue_delayed_work() */
 }
 
 static void e1000_watchdog_task(struct work_struct *work)
-- 
2.43.0

