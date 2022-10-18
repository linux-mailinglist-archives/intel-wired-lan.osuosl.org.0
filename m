Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BA76048CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 16:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E06B40CC7;
	Wed, 19 Oct 2022 14:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E06B40CC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666188573;
	bh=imbaat/WLl2Ccf4BZUd6V7qQ9T+DFl3nGLsS8qY54Es=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=faQ3ki8mDcKRNsBZ/Gzcs2uCBgIYfShkOX1BjsOb8F+aRRXoBc00m3SzpkkAUgbPv
	 I0CbTpQHrhEjFf+N81dOOX+RR3w48bMWOaGwA3nAJWf8SKwjxCK/iyctaV4HkVyl6h
	 stIh35MewKcQizFD5Set5Pbgfg/V+MpJRYn0S9ueBS1SsfRvWwmETW72hfFtlN0G0K
	 rZXfD+lOA5Tw0Mz/DYOAh1EUy13EjIplGUu4966228JpHTB530F7of7I/d+lw9j9Ub
	 Yc/8jgNxghUVY4IdXvzNxXTfr97xiRAA7MFe1Zed091BQN925okG1fHagac42iovnN
	 rIM0c2sccN8TA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oK09yrigNcFk; Wed, 19 Oct 2022 14:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A60840CAD;
	Wed, 19 Oct 2022 14:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A60840CAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B18511BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 01:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 831B9404B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 01:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 831B9404B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xssA5qo8uBTm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Oct 2022 01:52:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 630BC400AF
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 630BC400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 01:52:11 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 x31-20020a17090a38a200b0020d2afec803so12631197pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 18:52:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=F3wlL/ajAUZuSQuLqok2LEp7cE4Q1lhw7nG0x3vWvLo=;
 b=GJiyRo4pDzdTFIM0R5kSXVvecEEfhtY0OomHuogF3YKs384PONEZ4adVRGwkJ/dmdg
 uJQ/YySsmLxP6BbP7m2yAD36hU1CC6QX3Kk0m5z1f7uhB0WBCPKrzuq9pfBxMkrdLK7u
 IZY6+q5g1zN2WpF4lOVxlyyWqQrmeE9iFqTi8pbIuPNUjXF7pupA1RiaXfrisEqcL/Ic
 MIEyJY82LZ+/2FgEFt2bPUna1/nV9THIb8gGuYKuOb+7ON3iSzFE8XSDBGmYUnDZAvdi
 t/vc7v6ww+Hkoz8BfzDKW4B/ZyZgGnJH2D5OJHMiiFiMSSaIJV3lZTWrnWGKCmqDnobt
 tFew==
X-Gm-Message-State: ACrzQf0a6OYHIstzlUvegeJrdt9U76Jb5GihKSGAe/NAncaDb70xb1+F
 teGHuSyhd+v/WjX5j8ps6HE=
X-Google-Smtp-Source: AMsMyM74RdouSv91fKy3+4W3vZG8c+FzbiKPyhvlH32MBNCQ2sa8lLEHykHSkg1RXwSPvg6JGldPHA==
X-Received: by 2002:a17:90b:2651:b0:20a:daaf:75f0 with SMTP id
 pa17-20020a17090b265100b0020adaaf75f0mr800721pjb.142.1666057930614; 
 Mon, 17 Oct 2022 18:52:10 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 z22-20020a62d116000000b0055f209690c0sm7771997pfg.50.2022.10.17.18.52.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Oct 2022 18:52:10 -0700 (PDT)
From: yexingchen116@gmail.com
X-Google-Original-From: ye.xingchen@zte.com.cn
To: jesse.brandeburg@intel.com
Date: Tue, 18 Oct 2022 01:52:04 +0000
Message-Id: <20221018015204.371685-1-ye.xingchen@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 19 Oct 2022 14:09:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=F3wlL/ajAUZuSQuLqok2LEp7cE4Q1lhw7nG0x3vWvLo=;
 b=P1SVxKZ2xqPlH9qEWdAyz53sslUpBq9ek4rcAhQBWVpGP9XZXylE7eS1/AUJKnWxnP
 P53s/RSQUeZ2CxZU2gBFXZHCg3/NagaMhm9bVmEt1UnpNZsi195LL8jEJFL6fcpJe03m
 WEKuazMMwZtcLk6UgL7jvusDptk0HGr5MxnJ+9K/NNsccecxQB3DpwrfZ30oYJsDwmUg
 zlD6L3ahG9V2wcClpSxnHOBzYnRyW8CW8YSVgq8uPZX7TO89VBjyqZYp4j0Z19k04K4v
 vPHb6Z0hSY0HfLqLPtWdtmhmIZ4w+7CbDaLDDDzsbQc72xNJZUiLCJmvRcfoaAZZF7oP
 YISw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=P1SVxKZ2
Subject: [Intel-wired-lan] [PATCH linux-next v2] iavf: Replace __FUNCTION__
 with __func__
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 joe@perches.com, edumazet@google.com, ye xingchen <ye.xingchen@zte.com.cn>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: ye xingchen <ye.xingchen@zte.com.cn>

__FUNCTION__ exists only for backwards compatibility reasons with old
gcc versions. Replace it with __func__.

Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v1 -> v2
Fix the message up to use ("message in %s\n", __func__)
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3fc572341781..efa2692af577 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4820,7 +4820,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
 		iavf_close(netdev);
 
 	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
-		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
+		dev_warn(&adapter->pdev->dev, "%s: failed to acquire crit_lock\n", __func__);
 	/* Prevent the watchdog from running. */
 	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
