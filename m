Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E44C321B2A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 16:18:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70DA583A51;
	Mon, 22 Feb 2021 15:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nn3QZfKmkj0u; Mon, 22 Feb 2021 15:18:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3568083A43;
	Mon, 22 Feb 2021 15:18:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAE061BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 04:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A85C36F4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 04:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3aUICmQ1iQ2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 04:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE21E6E56C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 04:00:15 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id s6so10800074otk.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 20:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZXGajvIMM0wquwcf46YTi+rJ0g3JMeDQVGsO6rxPwpE=;
 b=EgJjrq79hanZPNMKHktSzIbh4PCFK77yLaed4Gf0MtWhZbmC73B/SPlh8YbpsMUqbX
 cA0aOYKtJZRjwzo5nyCTN4ucFs/mhKrHtF+uSduzW7xF4b+HK55+ySrV+grYEDEYP/WY
 X6/R8M29/J5QCV26+/dMnfbETlrgwnsyEG1Z3KxMF6PU76Bzip4qsA/EJRJHL92JSf+I
 NjwkaBCPVQMwDscqMwGgIiyxj0SNI2A6gEOgcirp3O26r3TxRA9zIOVJkRokpF3IMqmw
 SFWtMONSQB6tDv8cm0YzQ6Zb7a3oIluGkMKTv986FCmFYGaPyrgYSIIzX4CzcpCHsKAW
 VL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZXGajvIMM0wquwcf46YTi+rJ0g3JMeDQVGsO6rxPwpE=;
 b=tZ6LcUYwDkbZFWr+4+Y0vEw2UBanwKJp10eeiMitkhkA1fmNHaDMqjoc302QUuvJ0S
 Ah3yfQIzy2Ur7o68+5jx97LjD3OKeJBG2AZr9R6hu9jPv//QChgRaHC2nFifShEyvPLI
 nuv9fZSDry8lN9NzCilP8l2YkLAhioN+tYurYiKtB3vjYDn6bOxye8hw/BdQqBML/JXL
 d7MnI2sYH/ZX4/BVLCLDat6B/p9MNZUQqTnNqfmgTgeLQMPTgZoO0bd2Yb23xC+TiO6f
 J8Vmj4g/yMph2V/3TfWWO00TqNtNnHSEdqUbihTJfB1Pc/XEGufB0Ral+6feNj1AeplJ
 kqnw==
X-Gm-Message-State: AOAM532Lmyukdyglyhxi0v6Ct0C7dtEFXOAbqc2NwpKQk2OF3wDNF7cd
 DXAmd4Ap1mDKdhdZ6jegE3E=
X-Google-Smtp-Source: ABdhPJx95UN0Q+v/0sphu/IshsnJJ4lPWQfHcWZtvCrBYNASuKkmN2Zn97qRU81FifcUxt5tyVERAg==
X-Received: by 2002:a05:6830:150c:: with SMTP id
 k12mr416529otp.104.1613966414811; 
 Sun, 21 Feb 2021 20:00:14 -0800 (PST)
Received: from proxmox.local.lan
 (2603-80a0-0e01-cc2f-0226-b9ff-fe41-ba6b.res6.spectrum.com.
 [2603:80a0:e01:cc2f:226:b9ff:fe41:ba6b])
 by smtp.googlemail.com with ESMTPSA id t2sm3518066otj.47.2021.02.21.20.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 20:00:14 -0800 (PST)
From: Tom Seewald <tseewald@gmail.com>
To: netdev@vger.kernel.org
Date: Sun, 21 Feb 2021 22:00:04 -0600
Message-Id: <20210222040005.20126-1-tseewald@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Feb 2021 15:18:09 +0000
Subject: [Intel-wired-lan] [PATCH net 1/2] e1000e: Fix duplicate include
 guard
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
Cc: Auke Kok <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>,
 tseewald@gmail.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The include guard "_E1000_HW_H_" is used by header files in three
different drivers (e1000/e1000_hw.h, e1000e/hw.h, and igb/e1000_hw.h).
Using the same include guard macro in more than one header file may
cause unexpected behavior from the compiler. Fix the duplicate include
guard in the e1000e driver by renaming it.

Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
Signed-off-by: Tom Seewald <tseewald@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/hw.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 69a2329ea463..db79c4e6413e 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright(c) 1999 - 2018 Intel Corporation. */
 
-#ifndef _E1000_HW_H_
-#define _E1000_HW_H_
+#ifndef _E1000E_HW_H_
+#define _E1000E_HW_H_
 
 #include "regs.h"
 #include "defines.h"
@@ -714,4 +714,4 @@ struct e1000_hw {
 #include "80003es2lan.h"
 #include "ich8lan.h"
 
-#endif
+#endif /* _E1000E_HW_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
