Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DD72B370E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Nov 2020 18:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B750687228;
	Sun, 15 Nov 2020 17:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QbBI8-5BM+N8; Sun, 15 Nov 2020 17:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABB528722E;
	Sun, 15 Nov 2020 17:24:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC1971BF39C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 14:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A78C386C2B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 14:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQeTnbLLw5O4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Nov 2020 14:55:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C56C86227
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 14:55:50 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id y22so5909574plr.6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 06:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mgJIHW42nsS/z1sx4fpJMJA9O5TioT77D/sOkRQHJ6I=;
 b=eM6/M3MtrZoK/j86rf2ujJ0wFEdmBqQlzia+W3Afmbgl2xZdotx8I46PWtKPM71gRh
 j7iyaXuREmKlED7M8o35n2eyqTMUPQe34SeH3ur42rqIBANhrorxIhkYLlpau0eFgA1O
 1lh3D8Obfjd+4N1EGGNLaL8/TmXgjHjLAnfD8KUF+k6iDXFWh5iEj9P5m8V2K/v9kteW
 jQWZRDAileAXs43EM1I8hR4Pea2HvmfQByajr3e0RFgV8e2TvdtmyvW4pDI4SccBtZzm
 7jssxa2rdNLznSF/2mlD0vR7FhWZDDNPB7uDglRctEduTp/81xdEMZGkoiNDFGcJ4UPV
 mjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mgJIHW42nsS/z1sx4fpJMJA9O5TioT77D/sOkRQHJ6I=;
 b=HgaMs5dgwZSmpzirydXzQDcsK4o6y/l4j9kJ/W94hL1sC6wzSSprmp+61l7imNgIgT
 arqfWystEPrg6tIzkG5RNUBUxTit8J7lsCV2x38K+Weeo42AJ4ToT8ZV8t1npcLKLo4L
 uZNx4UJxr6Mm5dAP9+JkJQg0Rcfk5ii+uIaPUBh/YOeIfj8k+8dTTOXF27d+/Bmkc4AB
 oSa+4shJ/ZfZetAzoPErAC8rtP0AiywfyMi7OSjj/ownTgKR1BBI9lY7RJ+c5PH9erzl
 wAlDVFGjkxp0ZxHxupoY9oa7PUdxl4j8fRTmrU01NVdQte6bdyNbKtzK6gWigDX4pwQd
 0Gmg==
X-Gm-Message-State: AOAM533+rXmZ4NpzK7/BfLltYOqQwr/dD/N7BBfQnCgl0LOItRMHwGTL
 /nFd10p2amvM+I7XtD8LMQ==
X-Google-Smtp-Source: ABdhPJxt82qXTu1pgZeffQyBTbkYCfV2KjvHuUI8000CDfN07Y29L3+AV6GGO9VotwUzvRSQAdDG4w==
X-Received: by 2002:a17:90b:1496:: with SMTP id
 js22mr2213683pjb.140.1605365749965; 
 Sat, 14 Nov 2020 06:55:49 -0800 (PST)
Received: from he-cluster.localdomain (67.216.221.250.16clouds.com.
 [67.216.221.250])
 by smtp.gmail.com with ESMTPSA id v191sm12753669pfc.19.2020.11.14.06.55.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Nov 2020 06:55:48 -0800 (PST)
From: xiakaixu1987@gmail.com
X-Google-Original-From: kaixuxia@tencent.com
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Sat, 14 Nov 2020 22:55:39 +0800
Message-Id: <1605365739-11642-1-git-send-email-kaixuxia@tencent.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Sun, 15 Nov 2020 17:24:29 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: remove the useless value assignment
 in i40e_clean_adminq_subtask
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
Cc: Kaixu Xia <kaixuxia@tencent.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kaixu Xia <kaixuxia@tencent.com>

The variable ret is overwritten by the following call
i40e_clean_arq_element() and the assignment is useless, so remove it.

Reported-by: Tosk Robot <tencent_os_robot@tencent.com>
Signed-off-by: Kaixu Xia <kaixuxia@tencent.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4f8a2154b93f..7d59fc2eded6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -9356,7 +9356,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 			dev_dbg(&pf->pdev->dev, "ARQ: Update LLDP MIB event received\n");
 #ifdef CONFIG_I40E_DCB
 			rtnl_lock();
-			ret = i40e_handle_lldp_event(pf, &event);
+			i40e_handle_lldp_event(pf, &event);
 			rtnl_unlock();
 #endif /* CONFIG_I40E_DCB */
 			break;
-- 
2.20.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
