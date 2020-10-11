Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9825228AAB2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Oct 2020 23:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1CC6186E08;
	Sun, 11 Oct 2020 21:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUlhbzxwEkjJ; Sun, 11 Oct 2020 21:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FE7686E17;
	Sun, 11 Oct 2020 21:25:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBDD91BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Oct 2020 21:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D447D87273
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Oct 2020 21:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uyn2PdFXdE1e for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Oct 2020 21:25:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 18851871B5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Oct 2020 21:25:29 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f21so15461445wml.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Oct 2020 14:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FNN9OqkWHxkI2/FsUjbbTqtGt1jNhP9w+BKvnMiIIQI=;
 b=s+LGa/kT4lkSTkks6KB0yAW55qco2n1RBE7rjb9RfNzn5g6MQ7tRlgP/xN/qNO94jE
 qsad0x8X1jVeIUGGb9Nd7dg6MTksGtwW13Zqrp9m96R92Re98bkroi1LAq1YJLFjBATh
 hFaRlRFqIAtJezVPS1KPsla9ZONLsImKQQ6rtGJ6H2s+L3x755cOk3+gRwptvml+EckS
 3xO57Wxta5H38FmRXsK97p9EUhVkxX5APREzgGbpFI3Fo1W6umgDOTrLNC1kuCo4GTQh
 okIdRI/ycFYDwZd49CDW/MRlZE33SoggqfMxcrIlHnEpAE8SOJUzMFlqZWLYNmJZQ9UD
 nMqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FNN9OqkWHxkI2/FsUjbbTqtGt1jNhP9w+BKvnMiIIQI=;
 b=sUjeQoddJDfkHIh0JeYCyN8q2aKOZPIbrXJ7Y/ej1WO5eFN/jgB7XjbYJPqGJu1nwM
 kiyiufywwa6OCYX1UsBwlmBY1dOi8BNruMQYGTZgOuMVuXVe76MenJVPMgeKRdtCRPWp
 vN7xnf1BoZXGU6wlqxaWk5Uc5IPG9lritQyC1Rrd3trehWEDZAy8HSZUGZW6bd6R6pyb
 U4Twi/jfuvvN1wc0CgZ6hon2FOgUZZsbH6mdREI3qOc14FZTeuQjTckdmOHtjFT3ESH9
 j1HLE2Z+u3+mkDEz7KLDo0JwYoJJSSU6Z6VfIsbIaZ7RT5OYFp/Ily9l53IjSq9bViru
 hkzg==
X-Gm-Message-State: AOAM533+OWh1zbOntqU2oHW/2fXVKNb6Bmch6uQWCsdVIf4EH6F2yNpF
 erD2gTVZ/FIIijwGy3EzrhM=
X-Google-Smtp-Source: ABdhPJxNEUKo2W9hGeuoPkuyK6LDZibfcvoGmM+X2LpblcY0/MsoiH5sox5Bs66Yf3mxRQU74EO8AQ==
X-Received: by 2002:a1c:2e0d:: with SMTP id u13mr7862095wmu.179.1602451527531; 
 Sun, 11 Oct 2020 14:25:27 -0700 (PDT)
Received: from localhost.localdomain (host-92-5-241-147.as43234.net.
 [92.5.241.147])
 by smtp.gmail.com with ESMTPSA id z17sm8908722wrr.93.2020.10.11.14.25.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Oct 2020 14:25:27 -0700 (PDT)
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sun, 11 Oct 2020 22:23:26 +0100
Message-Id: <20201011212326.2758-1-sudipm.mukherjee@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH] e1000: drop unneeded assignment in
 e1000_set_itr()
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
Cc: netdev@vger.kernel.org, linux-safety@lists.elisa.tech,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable 'current_itr' is assigned to 0 before jumping to
'set_itr_now' but it has not been used after the jump. So, remove the
unneeded assignement.

Signed-off-by: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 5e28cf4fa2cd..042de276e632 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -2632,7 +2632,6 @@ static void e1000_set_itr(struct e1000_adapter *adapter)
 
 	/* for non-gigabit speeds, just fix the interrupt rate at 4000 */
 	if (unlikely(adapter->link_speed != SPEED_1000)) {
-		current_itr = 0;
 		new_itr = 4000;
 		goto set_itr_now;
 	}
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
