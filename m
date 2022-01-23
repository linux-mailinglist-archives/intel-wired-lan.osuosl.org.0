Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC81497738
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 03:23:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C057740923;
	Mon, 24 Jan 2022 02:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5eW2dOnrAOIc; Mon, 24 Jan 2022 02:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B898F4090C;
	Mon, 24 Jan 2022 02:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBE1E1BF329
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 18:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C898760AD9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 18:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHsJhm87y-As for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Jan 2022 18:40:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47A38600CA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 18:40:14 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id l17so7284342plg.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 10:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=wuCEC1DNMMa7rD1lJm/KbzT4QoZBEAK+Wq0lZsijL0E=;
 b=adBm5C46WHa+SqaVcfg/e7fBkpNQqkpVo+XFem4Slx6gw952BGG6XbNnKPU+0j7a1z
 CV9pkYrmO/yS2n03l5PKu9DuG7U8o+2dLXjMRbayjl4y7ovc6A14u23xvv++vlL2RwZb
 QBOnNfjUAXDNvJ0ils0KPIaveiqyrImHkBU5YO8vJeuD+wXqT7Vd/npI4VLDyp2sIUEh
 9TpvMAiivxyIJvIAKnoVKMnfIRBi+0uh53dq6uCARjaZqdpPQgtBg0+xE8okK8qJUw5x
 GkFNj1C6hy7fktEJHJ4RaFYXgSegQ1d9X2bTja4WR/1sp9o36n4hN/tS1Y2dfuUXihBK
 KLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wuCEC1DNMMa7rD1lJm/KbzT4QoZBEAK+Wq0lZsijL0E=;
 b=e5NQkL9j85EiCmLFrqTJPTUOQBGEhckLdSF3KeFPbCutDYH6arvuCk7RRuSGhHRrtG
 TZkKSIBCeqj0gK8NJKx7Gu4xuBtj5vi1v6bnBr1tvtatNMUKdGpsoGkRYMP46xBpmGh9
 wdMuWYd0nmHnc9sQTHYQh1jOiB0xNIcfLmMSrZFF6aGtC+0BL1Mf55yPsFGVG1+mjVnK
 hekVnx9MDfLO1XY3Nu8eCtDwNYkLLVWDexaoyQQ5G9Rf9GWT/61WwCI2w44kmEOneFcg
 CMf8BXqoR8Qd0Ne4Qo4I94iS0Cm83wuw/xxnSUlSUz+m5PotaJq8CS04KMcxf+RIfg//
 12hA==
X-Gm-Message-State: AOAM5311ve2OMzgd0C0kc4OvSpSf3I0l+3diUmpunxQOTFIkGN2aqpu8
 MGxy2/pg/Yhz0ev+oI4rgYc=
X-Google-Smtp-Source: ABdhPJzACqIpOshcLMvZufgVtTCkTi5/v/UXrPKbyjQvs/zo09oEZyQLbdgvh5reWb2CzD5QERIA/A==
X-Received: by 2002:a17:903:1c5:b0:14b:f87:bf3b with SMTP id
 e5-20020a17090301c500b0014b0f87bf3bmr11650785plh.130.1642963213640; 
 Sun, 23 Jan 2022 10:40:13 -0800 (PST)
Received: from localhost (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id om12sm5089855pjb.48.2022.01.23.10.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 10:40:13 -0800 (PST)
From: Yury Norov <yury.norov@gmail.com>
To: Yury Norov <yury.norov@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 David Laight <David.Laight@aculab.com>, Joe Perches <joe@perches.com>,
 Dennis Zhou <dennis@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Nicholas Piggin <npiggin@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Alexey Klimov <aklimov@redhat.com>, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Sun, 23 Jan 2022 10:38:39 -0800
Message-Id: <20220123183925.1052919-9-yury.norov@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220123183925.1052919-1-yury.norov@gmail.com>
References: <20220123183925.1052919-1-yury.norov@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 24 Jan 2022 02:23:48 +0000
Subject: [Intel-wired-lan] [PATCH 08/54] net: ethernet: replace
 bitmap_weight with bitmap_empty for intel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vf_has_no_qs_ena() calls bitmap_weight() to check if any bit
of a given bitmap is set. It's better to use bitmap_empty() in that
case because bitmap_empty() stops traversing the bitmap as soon as it
finds first set bit, while bitmap_weight() counts all bits
unconditionally.

Signed-off-by: Yury Norov <yury.norov@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 39b80124d282..9dd52aab68cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -267,8 +267,8 @@ ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
  */
 static bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
 {
-	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
+	return (bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
+		bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
 }
 
 /**
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
