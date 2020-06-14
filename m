Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE741F8A53
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2020 21:05:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 190C5885D8;
	Sun, 14 Jun 2020 19:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30W-Ce82tbH0; Sun, 14 Jun 2020 19:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B23B885D2;
	Sun, 14 Jun 2020 19:05:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62AD11BF47F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2020 07:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 584218856F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2020 07:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PsE5v+hwm5u6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2020 07:19:54 +0000 (UTC)
X-Greylist: delayed 01:08:24 by SQLgrey-1.7.6
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C33888569
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2020 07:19:54 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id m63so12357907ybc.13
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2020 00:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=oGqf1++ISmFDrH0evkdua75pRZ4Kzg4x3LpxsrrLQ3g=;
 b=BrFABM4ag3AiIkSAHTtzYJj0AVfZShfyt1f0NnrQp455Jd0W0DB6UkLYIIE25QbI5i
 4oQjlZJygOW9OsWUpbYo1FOpfEIcV525+YWblJxIUp9aQCvnP8kHIONSCdLKeF0QrGRC
 kdy0lTibbcyCtdaHFnannbdLfSqoLIkJkzQ1+Zh0f8M6injkicSk1bqvW99lAsN5/Z4c
 TfeVCsnX9LEaV9GoifSVE4TyA734e7k1z05IpAZaoEMaB1ddmnOSemdp2//KLKNqDSnd
 +6Z9ybiyd8pKCkVBFOC5Al7D23LY/9LV92IsE9YVknh5lgDV2R0bT5Qyp0GDPxqorIRH
 e0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=oGqf1++ISmFDrH0evkdua75pRZ4Kzg4x3LpxsrrLQ3g=;
 b=GiIKVGRiA8d9EAoJFmf4yCj9NVgiGzYJsX/ZPsf2donJ2RNv+ztbZR0z2q8MAA8G3R
 aVKnKV0nBvq+cdyu5uLuBmE9EZ+cfW31RjCL6/w+vbOBzgR/bzBbqs4OO8VBzSJrVB1E
 rQQ4y4yQcVSFNDpoSOqdI/WOqpczIb5J9y8Ts0kO4Z6PkIIvcBbA8yEtXGboz8IL2d/r
 6qEuj3d2YZD88edF59fIR1n79EW6k3T3AC1Ab/FckPLu7qWYKf7yPf6syF+01ZJx9O5W
 emKZw+P9Uh3YDSDevMOCT/ZA0AZC8jfMuTwa4AOfwticMfneQD4j86DelEGxEYOvEA1P
 so8A==
X-Gm-Message-State: AOAM531TIjXXeF2j8qUE8ZN3pm7d0fn8osES2UFM0aqzNM2WldmJU3Z4
 VBQXLbSQpqafSenmpUTI07D9+bK3luKB
X-Google-Smtp-Source: ABdhPJxxc0GMogasoSu0mC2tbZOz7tMTybNRR6DrolxuDsgmM7O1Gh44O1ln4xXp0yUDKzvhrDI33/b22P51
X-Received: by 2002:a25:2604:: with SMTP id m4mr33252495ybm.470.1592115089241; 
 Sat, 13 Jun 2020 23:11:29 -0700 (PDT)
Date: Sat, 13 Jun 2020 23:11:22 -0700
Message-Id: <20200614061122.35928-1-gthelen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
From: Greg Thelen <gthelen@google.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>
X-Mailman-Approved-At: Sun, 14 Jun 2020 19:05:25 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: add ifdef to avoid dead code
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Greg Thelen <gthelen@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
systems") added e1000e_check_me() but it's only called from
CONFIG_PM_SLEEP protected code.  Thus builds without CONFIG_PM_SLEEP
see:
  drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning: 'e1000e_check_me' defined but not used [-Wunused-function]

Add CONFIG_PM_SLEEP ifdef guard to avoid dead code.

Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
Signed-off-by: Greg Thelen <gthelen@google.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index a279f4fa9962..165f0aea22c9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -107,6 +107,7 @@ static const struct e1000_reg_info e1000_reg_info_tbl[] = {
 	{0, NULL}
 };
 
+#ifdef CONFIG_PM_SLEEP
 struct e1000e_me_supported {
 	u16 device_id;		/* supported device ID */
 };
@@ -145,6 +146,7 @@ static bool e1000e_check_me(u16 device_id)
 
 	return false;
 }
+#endif /* CONFIG_PM_SLEEP */
 
 /**
  * __ew32_prepare - prepare to write to MAC CSR register on certain parts
-- 
2.27.0.290.gba653c62da-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
