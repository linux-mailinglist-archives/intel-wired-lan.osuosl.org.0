Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91A321B2F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 16:18:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CAED83A58;
	Mon, 22 Feb 2021 15:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yBz4qYEni7XQ; Mon, 22 Feb 2021 15:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AA6B83A43;
	Mon, 22 Feb 2021 15:18:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52DD91BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 04:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41C9F6F4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 04:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xnLaZ5d9sBgQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 04:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 616D56E56C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 04:00:23 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id s6so10800375otk.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 20:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C5jIWv0u/h+FrMMOIfXvwXHSiJidvB2uvWg+IEoiJkE=;
 b=M58Px5orX5sa0ekAkac9dTSAS3FDni8kEtoAECfPlUVtOCzAajbxV0DUD8Mw7NiotU
 vDu0/B4I+LsI/uPyS2OskP0RTzpbJeXOenfk9j2lqDBjd+aJeSW4R1C1WLd7ZCZcZjC0
 uKsSX2euKpZnvsgasRRc5L0oLEKprEMjbSiPsavzL0XgRnZR4SNvF4qPfWef+0jwoSig
 69LIXMfmYT83RfVsBGMuybzGeR1+j+3dLMxKlGea+4VSjPrhrq5KgQfgDFgOFlGMKFiV
 AeEMnQ0L6Gb8X/vmc1UBzQd5Zl19QeTRWVDjNYDUPuUrz8BeWT+g3TDST9gGbYXn7osa
 bnuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C5jIWv0u/h+FrMMOIfXvwXHSiJidvB2uvWg+IEoiJkE=;
 b=da+QhH0CYLUma1h57P/Oqznm7ZaKGuO2+3Am+ieF1AJH8LIiA2lOyLFyjTY44rwIvS
 S2TPcDceeQEmA047lzfQUFCznCfVovIdDpsT2o+atgkZMCYDGZEMZX59hFid+76B2M7h
 O3s1rODY0R0eha63hMrNosQQ+KPpfPp+YJjbuR0PsGg9gtqGLbQa/JqngnC6/79bB+Sh
 nM4dN3/P7YH5nWyasEIqwvkIhl6sMJRWphJHDzwiwJ9D+eE7CxAU6jDHvLed3SYAVLTv
 Ka7Z5U7S+L8K3z2e/hlazrN+nehDONGse85mW0vaOiSTLAjcqMCkTPm559Nhwuj/MFeg
 oLrA==
X-Gm-Message-State: AOAM532vZ0fQYZk+a0xoB/536a+uAH1//cmJgUDPysmeXygCAKfVkTmA
 rGyQy39kGl1ImfTjLodtY5M=
X-Google-Smtp-Source: ABdhPJzeYek00EABJJvfObC0rnsof0j4x0xOEp9BTT0GPsxltcyoiuXo9Te9HDLWRN9E1tfkHB7Nbg==
X-Received: by 2002:a9d:8b2:: with SMTP id 47mr7876942otf.24.1613966422518;
 Sun, 21 Feb 2021 20:00:22 -0800 (PST)
Received: from proxmox.local.lan
 (2603-80a0-0e01-cc2f-0226-b9ff-fe41-ba6b.res6.spectrum.com.
 [2603:80a0:e01:cc2f:226:b9ff:fe41:ba6b])
 by smtp.googlemail.com with ESMTPSA id t2sm3518066otj.47.2021.02.21.20.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 20:00:22 -0800 (PST)
From: Tom Seewald <tseewald@gmail.com>
To: netdev@vger.kernel.org
Date: Sun, 21 Feb 2021 22:00:05 -0600
Message-Id: <20210222040005.20126-2-tseewald@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210222040005.20126-1-tseewald@gmail.com>
References: <20210222040005.20126-1-tseewald@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Feb 2021 15:18:09 +0000
Subject: [Intel-wired-lan] [PATCH net 2/2] igb: Fix duplicate include guard
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

The include guard "_E1000_HW_H_" is used by two separate header files in
two different drivers (e1000/e1000_hw.h and igb/e1000_hw.h). Using the
same include guard macro in more than one header file may cause
unexpected behavior from the compiler. Fix this by renaming the
duplicate guard in the igb driver.

Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
Signed-off-by: Tom Seewald <tseewald@gmail.com>
---
 drivers/net/ethernet/intel/igb/e1000_hw.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_hw.h b/drivers/net/ethernet/intel/igb/e1000_hw.h
index 5d87957b2627..44111f65afc7 100644
--- a/drivers/net/ethernet/intel/igb/e1000_hw.h
+++ b/drivers/net/ethernet/intel/igb/e1000_hw.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright(c) 2007 - 2018 Intel Corporation. */
 
-#ifndef _E1000_HW_H_
-#define _E1000_HW_H_
+#ifndef _E1000_IGB_HW_H_
+#define _E1000_IGB_HW_H_
 
 #include <linux/types.h>
 #include <linux/delay.h>
@@ -551,4 +551,4 @@ s32 igb_write_pcie_cap_reg(struct e1000_hw *hw, u32 reg, u16 *value);
 
 void igb_read_pci_cfg(struct e1000_hw *hw, u32 reg, u16 *value);
 void igb_write_pci_cfg(struct e1000_hw *hw, u32 reg, u16 *value);
-#endif /* _E1000_HW_H_ */
+#endif /* _E1000_IGB_HW_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
