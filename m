Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 216923F9D9D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Aug 2021 19:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B748E427C0;
	Fri, 27 Aug 2021 17:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0e8fuKp7F56l; Fri, 27 Aug 2021 17:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB419427AB;
	Fri, 27 Aug 2021 17:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94D3D1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 17:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82E7B61538
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 17:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dU3u9wLxF_iT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Aug 2021 17:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D333D61531
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 17:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630084534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=9Gafj8sxsDqc97Bfoh5OIubdmjwxbqAMG/Cf5EW4CHA=;
 b=QEcGXsvE/nLQ1/bOJKKI73ep35BJUe0dq00k8RJKKgTXJJMu6wm1auYsFf3Gb/OYdICTbI
 JQ2NHyDYTJ9M4616zi6rQNiOYq/EXr67059W1vpxG0Yckvg9BysQIChBN8vfsetNqkPB2M
 MGbVRsj6Uzf4+8WcXPDVflEYE1M9EgA=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-fz6_NOlPNyOVO1tYZ96k4g-1; Fri, 27 Aug 2021 13:15:31 -0400
X-MC-Unique: fz6_NOlPNyOVO1tYZ96k4g-1
Received: by mail-qk1-f197.google.com with SMTP id
 s206-20020a3745d70000b02903b9207abc7bso4344474qka.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 10:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Gafj8sxsDqc97Bfoh5OIubdmjwxbqAMG/Cf5EW4CHA=;
 b=HZ6dmF+ehPoM1UrvHmgbSzsOnLWRi3i23b7F346x/bcXeZ6yiDB8HfkwGqdqVvUhPX
 QVSCxv7FP32SScF2DHegb2T1h+6TC6RydCGDw8WJIRh8JrcHrJRS6GC28gN1URR0/RJ2
 02J758KHkUhga+5YmLc6i+Dphy5Zzn8N6ih1cvF0cN/eGMoBIMHtZqaTofvA1AnVRAmZ
 ajCMVjy5RrExyuZW/bb94c+/yYUkNlTqxcFNN8v4irWr9lv4ykzvY1yQW+Gx5LVdrJob
 VunUwbQesBHPaA/E+WN9aOmH0Omsfy93uVlac7PwuoQERfBl/hSYipoNgyhy3ZF1PwPp
 FCOA==
X-Gm-Message-State: AOAM533LiVCcnbCJSpCp0x+XWrx90aOeZ3PmuZdueBhzIdMp+Q7/2DmC
 C15xBRqxw/fdmuebLu2+vbwzIWLIy0BVxiXivC1vkIPqE3D1pSlYv10+p+sjd+ZLKrM5cgwY9OG
 mm78lFwHTYaRJ6kLb3tcm+BainTBGeA==
X-Received: by 2002:a05:622a:650:: with SMTP id
 a16mr9368933qtb.157.1630084530828; 
 Fri, 27 Aug 2021 10:15:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+mGVdS88FWRCD11ZTp8zbd10l92FiowGcA/FEWX67lzhyonxWS4Z0phgbqe+R7LCZiA3JOA==
X-Received: by 2002:a05:622a:650:: with SMTP id
 a16mr9368915qtb.157.1630084530614; 
 Fri, 27 Aug 2021 10:15:30 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id q14sm5119552qkl.44.2021.08.27.10.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Aug 2021 10:15:30 -0700 (PDT)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Fri, 27 Aug 2021 10:15:15 -0700
Message-Id: <20210827171515.2518713-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 27 Aug 2021 17:22:11 +0000
Subject: [Intel-wired-lan] [PATCH] igc: optimize igc_ptp_systim_to_hwtstamp()
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
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

Static analysis reports this representative problem
igc_ptp.c:676:3: warning: The left operand of '+' is a garbage value
                ktime_add_ns(shhwtstamps.hwtstamp, adjust);
                ^            ~~~~~~~~~~~~~~~~~~~~

The issue is flagged because the setting of shhwtstamps is
in igc_ptp_systim_to_hwtstamp() it is set only in one path through
this switch.

	switch (adapter->hw.mac.type) {
	case igc_i225:
		memset(hwtstamps, 0, sizeof(*hwtstamps));
		/* Upper 32 bits contain s, lower 32 bits contain ns. */
		hwtstamps->hwtstamp = ktime_set(systim >> 32,
						systim & 0xFFFFFFFF);
		break;
	default:
		break;
	}

Changing the memset the a caller initialization is a small optimization
and will resolve uninitialized use issue.

A switch statement with one case is overkill, convert to an if statement.

This function is small and only called once, change to inline for an
expected small runtime and size improvement.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 0f021909b430a0..1443a2da246e22 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -417,20 +417,14 @@ static int igc_ptp_verify_pin(struct ptp_clock_info *ptp, unsigned int pin,
  * We need to convert the system time value stored in the RX/TXSTMP registers
  * into a hwtstamp which can be used by the upper level timestamping functions.
  **/
-static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
-				       struct skb_shared_hwtstamps *hwtstamps,
-				       u64 systim)
+static inline void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
+					      struct skb_shared_hwtstamps *hwtstamps,
+					      u64 systim)
 {
-	switch (adapter->hw.mac.type) {
-	case igc_i225:
-		memset(hwtstamps, 0, sizeof(*hwtstamps));
-		/* Upper 32 bits contain s, lower 32 bits contain ns. */
+	/* Upper 32 bits contain s, lower 32 bits contain ns. */
+	if (adapter->hw.mac.type == igc_i225)
 		hwtstamps->hwtstamp = ktime_set(systim >> 32,
 						systim & 0xFFFFFFFF);
-		break;
-	default:
-		break;
-	}
 }
 
 /**
@@ -645,7 +639,7 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
 static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 {
 	struct sk_buff *skb = adapter->ptp_tx_skb;
-	struct skb_shared_hwtstamps shhwtstamps;
+	struct skb_shared_hwtstamps shhwtstamps = { 0 };
 	struct igc_hw *hw = &adapter->hw;
 	int adjust = 0;
 	u64 regval;
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
