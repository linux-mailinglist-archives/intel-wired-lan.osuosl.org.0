Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 032EB521F99
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 17:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A385E60F88;
	Tue, 10 May 2022 15:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9s9gF7hvQEkn; Tue, 10 May 2022 15:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9482860F57;
	Tue, 10 May 2022 15:48:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB52A1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 15:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D491E400DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 15:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iL9d2VJlFA_a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 May 2022 15:48:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33E5940022
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 15:48:00 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id p4so13818100qtq.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 08:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8XwVIoqaEjrb3iMSCaJMjNScsN/uhpRfrQ8NarzetBA=;
 b=TRtRj0OV5KH470cMHDPWUxl3cSGx95ngPsN0DC93pj0q8lGKr6CIDI7KqIjvYte1Hq
 DqQZeHliFkhzx++RKygoPz5nE4Aqk2UIQzgMw/6D7YlBFtqCr1XJQeY0aXrD7Z3I7zL8
 vdYXHH5j0T9lwr4UaICLcWXUHX0ik0X+sJnHHfGa8ofweq10xOcV5vZi7VReLlWYtqqn
 nHzBpLgUII9FKyjiNIqU9JJdGkKXpJ8qxoycCK70hC8aBK07eSXmnxo2CnbJXB+wPmRf
 eG+ftCF5WaKR0/SbaXZWXn93wkpkW1VusQ4Xh9LxdA3A1hrUIpyXsC+T7vM12H0qF72o
 ZkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8XwVIoqaEjrb3iMSCaJMjNScsN/uhpRfrQ8NarzetBA=;
 b=f/UtFftS7NgiRVlrvi5bOCsxlXuaiTBwMFtgqyJPbx2BkNYL++SGGVKLBS8Lk5877z
 aqYAzTFvJIOsOW/CLiYV/gDCDbzmMVseb9suWfehx+tYO5gQgaeMhO2CCu2AbyYFbWJA
 erJ4v4k/29i0xkLAavYgEVC3t73Jb6vpYGr0YoWeO6YSlnCQ3BeUxevk7Dn3KzzbHCKg
 B4nz9ePk3m2GadvxkEgiFVYpiwQ7zbS5Gho8oEKRxP+hveWILSzoIlXJWs+M84b54SoQ
 wk7HEf/hlhSbZf+s/eVwnkYkJ9a9p8Iua8HcooQA09sFSXCEfSvuzSzRyMcFiZLkxtd2
 oKGw==
X-Gm-Message-State: AOAM532gol+pHxoozocB3Okg2jIcN/xgWy9r854Px7FEhhyJ6E3oHEqP
 BSwMcTjcpGSnbjCS5NMOkY4=
X-Google-Smtp-Source: ABdhPJx1lvQ2cAFBLJUoEVeXgxIKrxcn5z7aIGeJaHLVOgtu8J7l1okT1ZHyyT7jgo7gM8c1D/jlvA==
X-Received: by 2002:ac8:58ca:0:b0:2f3:da32:ab1 with SMTP id
 u10-20020ac858ca000000b002f3da320ab1mr10163209qta.308.1652197678887; 
 Tue, 10 May 2022 08:47:58 -0700 (PDT)
Received: from localhost ([98.242.65.84]) by smtp.gmail.com with ESMTPSA id
 a123-20020ae9e881000000b0069fc13ce227sm8659793qkg.88.2022.05.10.08.47.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 08:47:58 -0700 (PDT)
From: Yury Norov <yury.norov@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 David Laight <David.Laight@ACULAB.COM>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Nicholas Piggin <npiggin@gmail.com>, Nicolas Palix <nicolas.palix@imag.fr>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Matti Vaittinen <Matti.Vaittinen@fi.rohmeurope.com>,
 linux-kernel@vger.kernel.org
Date: Tue, 10 May 2022 08:47:32 -0700
Message-Id: <20220510154750.212913-5-yury.norov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220510154750.212913-1-yury.norov@gmail.com>
References: <20220510154750.212913-1-yury.norov@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 04/22] ice: use bitmap_empty() in
 ice_vf_has_no_qs_ena()
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
Cc: Yury Norov <yury.norov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

bitmap_empty() is better than bitmap_weight() because it may return
earlier, and improves on readability.

CC: David S. Miller <davem@davemloft.net>
CC: Eric Dumazet <edumazet@google.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>
CC: Paolo Abeni <pabeni@redhat.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: intel-wired-lan@lists.osuosl.org
CC: netdev@vger.kernel.org
CC: linux-kernel@vger.kernel.org
Signed-off-by: Yury Norov <yury.norov@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 6578059d9479..de67ac4075f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -740,8 +740,8 @@ bool ice_is_vf_trusted(struct ice_vf *vf)
  */
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
 {
-	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
+	return bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
+	       bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
 }
 
 /**
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
