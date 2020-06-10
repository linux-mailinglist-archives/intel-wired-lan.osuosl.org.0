Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC60D1F57FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 17:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 51944203DF;
	Wed, 10 Jun 2020 15:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bvgt+Fug2OmH; Wed, 10 Jun 2020 15:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3952E203E3;
	Wed, 10 Jun 2020 15:39:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9F451BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 01:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B55FC87008
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 01:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAz4ZW5rkO3r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 01:58:18 +0000 (UTC)
X-Greylist: delayed 00:08:03 by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E903847F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 01:58:18 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t7so269854pgt.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jun 2020 18:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=Ji4TCSq1luwwD59iAjzvhlqpXXUHZW0S8n/qjFRWtds=;
 b=VqbebF/hIoKIYMSnRIAXVxrJsWmsYY1Q1a6Y5T8v1po+fKjVh3y3tr3RiCtZdSmtVU
 DiNquBe8RsWhB/VPctmZq/x97WsVKOmdP7gNnl9wVSgcTEb2jTo4BhtOVzIkC5PMe0bF
 pYVuB2gjRhsmDovCFix66napGVnDlDwZcbDv4NQcYU+fuJMpMZ13XRB9ncikYG+1sgfk
 p+DmanuMgYEy1UYibt7HoD50vhZjo7R9lP6Jvc2bZzUVywpce1pPKlUcqfrF2b9wN2x8
 hvM+elvhLI4j2TM6lK/JNLPM7qI07CR2ZOjodwp9KjWATnx/dx6i5vtsAyNRLqEbAzxW
 H2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=Ji4TCSq1luwwD59iAjzvhlqpXXUHZW0S8n/qjFRWtds=;
 b=dmdCIuUinMvAifePDt7f/yywE9UZiYdHe/qQOUxinQfx+tizOeHvZ68l10PfEcMuWa
 HrRdhxNq43B6g9Uo2J98EuLP1Ia5TlnHGS5+4Rme/6GJLtwkcOWCPAafvPOVCIXCHL6t
 N7X6Ai2WMZmWX1kEFT9Ye4t3jlLlgLAfXEyDphjjol71BZlTDDxhirVnOSzAXuvJniCs
 E+xLGyVbTMK5sZyXRTmaCPFda3fHAZEgzJ9Q6KdT6RKjWOQrCkCx6Civ7qgidsVeEY5D
 KqPhGKCIZUySP6LwJyNu5EejuSM9rjRT2XH/kp+olpAYu/hxsbNkfouojH5xfED10TIn
 LiEQ==
X-Gm-Message-State: AOAM531+Qxv0QbqiScHCRBfiaWXVnfdcK3UVmhHfTrxK0Lh0QPYUHk3F
 pCI7pwS33nNUkNfRcEKwv8oimrB5fk4b/A==
X-Google-Smtp-Source: ABdhPJw4A+RLG6MFwR9MaBg+WR7M9Uc+Zen7Q0tkAEkS7GFJz3O02Rfe3oJicXzNNubIBXI0OMwbYw==
X-Received: by 2002:a63:2248:: with SMTP id t8mr717470pgm.113.1591753814587;
 Tue, 09 Jun 2020 18:50:14 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id m5sm9320727pga.3.2020.06.09.18.50.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 18:50:13 -0700 (PDT)
Date: Tue,  9 Jun 2020 18:49:07 -0700
Message-Id: <20200610014907.148473-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@dabbelt.com>
To: davem@davemloft.net
X-Mailman-Approved-At: Wed, 10 Jun 2020 15:39:50 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: Squash an unused function warning
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
Cc: netdev@vger.kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Palmer Dabbelt <palmerdabbelt@google.com>

e1000e_check_me is only used under CONFIG_PM_SLEEP but exists
unconditionally, which triggers a warning.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index a279f4fa9962..f7148d1fcba2 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -134,6 +134,7 @@ static const struct e1000e_me_supported me_supported[] = {
 	{0}
 };
 
+#ifdef CONFIG_PM_SLEEP
 static bool e1000e_check_me(u16 device_id)
 {
 	struct e1000e_me_supported *id;
@@ -145,6 +146,7 @@ static bool e1000e_check_me(u16 device_id)
 
 	return false;
 }
+#endif
 
 /**
  * __ew32_prepare - prepare to write to MAC CSR register on certain parts
-- 
2.27.0.278.ge193c7cf3a9-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
