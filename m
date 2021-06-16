Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD43AA4B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jun 2021 21:53:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD1A3608B7;
	Wed, 16 Jun 2021 19:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3rzM6hGNSiDB; Wed, 16 Jun 2021 19:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E06146082A;
	Wed, 16 Jun 2021 19:53:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0C601BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 19:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D92054149A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 19:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MejCgeCH6ekD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jun 2021 19:53:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A241406B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 19:53:22 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 mj8-20020a17090b3688b029016ee34fc1b3so2452461pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 12:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XgFaDgHxLA9EExjjiit960bbSMsHOuuAVtNPxuyfwdc=;
 b=VJ17cvu7qPDG1WK4ovVTB49QXegtO6/LKg7uPK5B9ll+1f+xrPu44t3v47LPVMfcv2
 0KmItzik4m+x2VTmTlVSnOpinxV24ZTm8aCjXa3H9S4bT/klp3hDewcjcatfRpsLCgZe
 sc+9OyzRK5D4I7H5C3pjWnE13Allb25xq+4Lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XgFaDgHxLA9EExjjiit960bbSMsHOuuAVtNPxuyfwdc=;
 b=j+icK6I25nK2WFuAxwl3W2iiKM7v/WF1VhQ7bPoagAZceVIGPZ/dee2o7SQY/rPw7b
 dAvwdx5Spr8UHkP11Ub0SNiXc5w6kBEtJ3SbbWuZ6AKq48PBLiCAsQ2ULvbrULk19/N5
 NNM79RizFXMjWktB7bNm4tQgUvVtrDwx9av6+f9j9vI1TJmujKQszVnAU9wVEWutzMIE
 Nkiqo56PlnhRvdnku22BZc/jy5l2e90RP2SnndSNa5L0OjK7fiNuUWyXLTtgp+bDln4u
 tAzybqtSRS7oNnGkH8SIFJHgJAUdhVy994qTKPLdMVDU8lcenV1gBoqCpQ7/kOGTxxYb
 WUGw==
X-Gm-Message-State: AOAM532fUkFYvwKLjqrawrSAel1bWmnSmxBzHu9+jKVrB6oOVpUktx7l
 cVOzBimlRCqnvZuLanb9Z9ib/Q==
X-Google-Smtp-Source: ABdhPJw6aKAned0HD+bPhbj4vTM78zjpxifXigeJgyJTC/meWWhO/mIZDtYOVcOs6j3nTwZw/ql6Tw==
X-Received: by 2002:a17:90a:7025:: with SMTP id
 f34mr11406884pjk.95.1623873201649; 
 Wed, 16 Jun 2021 12:53:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q21sm3044465pfn.81.2021.06.16.12.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 12:53:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: netdev@vger.kernel.org
Date: Wed, 16 Jun 2021 12:53:19 -0700
Message-Id: <20210616195319.1231564-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=18e7700f86d329d66c5e9ddd31188ce7bbdbf71f;
 i=GQ68Ss1LnWXsMUWpKq38qzZWmC3gw7+5/MXnZQpVpd8=;
 m=CF57NG64wUjRAJMr07rJpYR31VG7hNQuEGsWk+kxwfo=;
 p=t+sk7BBpXQAg1WlzpO1YLmSqLjWrBlygJr4SlvC/hrM=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026;
 b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmDKVq4ACgkQiXL039xtwCYEQA/9Gnt
 HvtC1Xc6/V8ZXiMORBlOP/vHXePkr+giLtNGghose0IbOmt1tRgziOFj/BM5p0WyMREw3boDhgE2+
 dQTmESd8sW84S6xrM71LLoa3+4hVxrkiOMLJGkcR72doje8x7sjajebb/l8NEn8qarfAmiey9j/TH
 npvW6TrQ7jcrNe5AvG+BM+vbsshvn57W54HeJJRh7JNrQRzChdgUMUBd/4eHVA9j7XpW3iwIN3v4r
 9ze5JVtk2jlE7A11KLDVqmuXFVykB+EB4sqA80BBMZHUY8oixvlUw8JM6b10RZk+hiKTt6j3jsaXD
 aQCemzWurwF2nSPcut6l4yslqqp8yFBwFXLClRsRw1BS3Iq8Ks3m+yujsiCHP/JC2FJilbNSJgLAH
 oqVSaMQ3wH35GUenp1ZF4FhWnRtA/9q48LacfjL3hixikR/UE0DE1NNFm6cs1oNJ/KvbzcOEdmaWL
 U5Su1psqlgrxdlRa/Piz7izFEWwqRLZFYkP9huCKPZvzlWsqnmUSGrjJgV0lJjULBwBEwGXtjml8j
 ZBsaQ04jSjL3y1DnM6+IFE5HEPjY013NzEHgkF0xXRmcuFrQTyBSCTIeOvaacJVtoTrkOPXqrhpd9
 BAiWrTMmCJy7uxy0zoauO7oF0TINargIQibSU8SkFoq5b0V7Y3F/kFk91DVOs6Ts=
Subject: [Intel-wired-lan] [PATCH] igb: Avoid memcpy() over-reading of
 ETH_SS_STATS
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
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally reading across neighboring array fields.

The memcpy() is copying the entire structure, not just the first array.
Adjust the source argument so the compiler can do appropriate bounds
checking.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 636a1b1fb7e1..17f5c003c3df 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2343,8 +2343,7 @@ static void igb_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, *igb_gstrings_test,
-			IGB_TEST_LEN*ETH_GSTRING_LEN);
+		memcpy(data, igb_gstrings_test, sizeof(igb_gstrings_test));
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < IGB_GLOBAL_STATS_LEN; i++)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
