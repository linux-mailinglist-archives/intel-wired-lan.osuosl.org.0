Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AFD4B192F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 00:13:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B7584055D;
	Thu, 10 Feb 2022 23:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvKJKlg4i9lT; Thu, 10 Feb 2022 23:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 144DA4052D;
	Thu, 10 Feb 2022 23:12:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A74A51BF487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A305A40893
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YdFnInS_osjg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 23:11:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F08CE408A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:11:45 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id x5so7142209qtw.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZBdSYHCr3USYo6W485UfRkjDE4guUfBuyMH5Mb4JqDU=;
 b=noirHY6GF4V4i8t+uu5JZQoNb9aCpruRdnEm1zuUkGMxjiGL/QA+2jJvW5q696QSYt
 ArH2xdXNKzx5VAWJf1ZbXj6Kin8p6qbXiG8tHG5RXG6uOggXjgywln0c3VNSq7sLigyy
 z7NvvKNREN8owyh9M01OFt2t8EjXllkRx7rL32xroe+PX7EzcvAgPKIArIqn+8ZjlOOK
 BwiWD5bNNWfkAbLL7OZzG+zIgoGXfWQmbCHioMYE/Hixd6D2RclBD1TwsJtxlKfyxR1a
 3Iql8/K0PmZQ89a+14GQBXllOV38XKrUISn4vaAL9wPTv2tPQ/awzdPhwhPpDuTRlRvK
 fafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZBdSYHCr3USYo6W485UfRkjDE4guUfBuyMH5Mb4JqDU=;
 b=mfzb6eOMlBNluvgD4wBoI4umMuLy92wsm0PNFNprjh7W8y5+4dagXXAR+//EIE07CU
 8bG1sdoVsYuxTb5BMi3LsMhfmcsnZcXgHI6GKfwpSjDHxo9vR7EghIVQXUM1ybVhdnS2
 d+rfCMTgL7J9Dw0zQovl/0MJqwf5nWWMHSQiUNPrsCDy1Fm7POf5NCAZ0m/zzzHiECiu
 IJQwvOl1kFZPBPh9bgqAazjSs74WNMDFOAfuRlzfkCXdvRh7Za6HjAAta3QAq1Gt0YIK
 F0IhKNWFc05fq9UAXZelZIsUMOhiSgq+p2EfhyN724E0s67Knu7h4A/TOwehbgrxaXEH
 rrNQ==
X-Gm-Message-State: AOAM533B2i7g6pInftw4qXoJKdmAJ06IsZNdv1oxi+CsF3MrS7X3iYwJ
 rUqImMAVxH50Z6fYYtQERms=
X-Google-Smtp-Source: ABdhPJyRNHJTVVPj+RR6tyohLG29mySY3xnZq28upNS8nrO1spe/OPmQyWpzHExT/NjogD+tlz2nxw==
X-Received: by 2002:a05:622a:349:: with SMTP id
 r9mr6655005qtw.37.1644534704732; 
 Thu, 10 Feb 2022 15:11:44 -0800 (PST)
Received: from localhost ([12.28.44.171])
 by smtp.gmail.com with ESMTPSA id h5sm11242509qti.95.2022.02.10.15.11.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 15:11:44 -0800 (PST)
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
Date: Thu, 10 Feb 2022 14:48:53 -0800
Message-Id: <20220210224933.379149-10-yury.norov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220210224933.379149-1-yury.norov@gmail.com>
References: <20220210224933.379149-1-yury.norov@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 10 Feb 2022 23:12:51 +0000
Subject: [Intel-wired-lan] [PATCH 09/49] ice: replace bitmap_weight with
 bitmap_empty
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
index 39b80124d282..9a86eeb6e3f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -267,8 +267,8 @@ ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
  */
 static bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
 {
-	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
+	return bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
+		bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
 }
 
 /**
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
