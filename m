Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBB75FC6DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 15:56:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B6CA60B9B;
	Wed, 12 Oct 2022 13:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B6CA60B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665583001;
	bh=BUWGbYNQ1eydC8P6WpnEAwQ8DoAuog4BAXIHb2vrX9w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PzOgTtEc1tMzg1n9QLUHeKVQBHKzAh+65WeZEQ3B8jejMkx/XKyB+3d9QduCrta78
	 irEPxxcRcKPinkgdTe00gCtMtkdYxQErdvMTAqu/aSULLYGj2EbHg0oFl59R7yeyw7
	 8xPkAAVmG3mceGhRsfargn2Go4JB9UD9KHLXPHXHXinctDb8dK9AUm77/X6jI9vHKN
	 8I+D5Xl52RXUsunTeeb+HB4UV/4cnB5PoIl542KWUycDTNZyEbyzVdwYPp9YM4Jq4F
	 4RA72Q8RBF0PzMDwE1xiBoVPGk72jS6LY0gHs3a/BmNjEgBcE3+kBYJOEOwBchsrDK
	 WBybAqShcAaUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WT_kEOp5Wfbf; Wed, 12 Oct 2022 13:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11E7E60C0A;
	Wed, 12 Oct 2022 13:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11E7E60C0A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CC7B1BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 11:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5014660D89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 11:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5014660D89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7VuNJKi95y8H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Oct 2022 11:16:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97EF460AC4
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97EF460AC4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 11:16:51 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 t10-20020a17090a4e4a00b0020af4bcae10so12856648pjl.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 04:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=i4WAsnhbo3mj6+qRptDWdWyrS7sjNQ20usVEoY9BN20=;
 b=nhJD+vbKSYh0Z/CueueC/f1hdBIEG/qPXaxmXwdu7lInWrqdtJNiSKJpF9MG2Kg0v6
 fALrsAjKYL5UWRe3wsQFjn052tCcuCQjfx4Nc0vzfqMHjKl1pIpQs3xLOgcRKl79SIgQ
 30Ee9lwXgTmWDRdcHn4z0MVSKU/vPr2C4A1raaj5IwDoKilssCbstzBLBZRnzdAd8yio
 SfgJvUjSauqthJwNP3DsG/7LGIpan97/vopDgGRdLHu/theh0NSOiuj6P7sSVddNSd6G
 yLudZEIO201hm0kRXRDfBy3SJ4H/7L3PeMdrAAMSM9BC0EIN1huFFwi2xeKE47i1SRGB
 dp5g==
X-Gm-Message-State: ACrzQf0YGECZmSIkW6jvdMBvVOuEU1oK9DdawyNmNlpnb+KoinPeHyCs
 bougJgEW1YoB/pMsikSm9IM=
X-Google-Smtp-Source: AMsMyM57ZWctsmlsdd6OOXLvsYniC7b+6zsqhFJ/dmNGqaEKN05YOuL3+RvxwzXFfbiONbkGUWd7GQ==
X-Received: by 2002:a17:90b:3805:b0:20d:4e77:371f with SMTP id
 mq5-20020a17090b380500b0020d4e77371fmr9137587pjb.170.1665487010884; 
 Tue, 11 Oct 2022 04:16:50 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 s4-20020a170902ea0400b0017300ec80b0sm4510907plg.308.2022.10.11.04.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Oct 2022 04:16:49 -0700 (PDT)
From: yexingchen116@gmail.com
X-Google-Original-From: ye.xingchen@zte.com.cn
To: anthony.l.nguyen@intel.com
Date: Tue, 11 Oct 2022 11:16:38 +0000
Message-Id: <20221011111638.324346-1-ye.xingchen@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 Oct 2022 13:56:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=i4WAsnhbo3mj6+qRptDWdWyrS7sjNQ20usVEoY9BN20=;
 b=IK0W1JCopDHO3FpVF9n+RPJadViBF+kTshKxvh136W2VuPTpjvlRMiUxKRsrOixqxa
 5T99NE4XznLUWsd9jV3vCmm1sfSt2hxRtYDLvNbwPFguMyWCsZ9VX2Tk2VjxS2BoBwDv
 LT8VNvWwoD786nbCibPy6Mnho3OWhscs+sO8ngbCFHKWxGWvkfO7KiNfRQ6A59uEdtr+
 QIwegXEPplXIT0Y+7oPME5PGfySTofgnyC3JiRKE65e1b5gGm1tdheBppmQOmsrA4RWW
 nKh/rY9uKHZgBlyb1ghXiVzRjBD4ZWfiCQOko/XgvaihXPv0nFBauQcfogOMQNGfcpog
 bPhA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IK0W1JCo
Subject: [Intel-wired-lan] [PATCH linux-next] iavf: Replace __FUNCTION__
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, ye xingchen <ye.xingchen@zte.com.cn>,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: ye xingchen <ye.xingchen@zte.com.cn>

__FUNCTION__ exists only for backwards compatibility reasons with old
gcc versions. Replace it with __func__.

Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3fc572341781..98ab11972f5c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4820,7 +4820,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
 		iavf_close(netdev);
 
 	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
-		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
+		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __func__);
 	/* Prevent the watchdog from running. */
 	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
