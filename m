Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 735C738CFC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 23:21:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73E6D41887;
	Fri, 21 May 2021 21:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJyzgDcqldQK; Fri, 21 May 2021 21:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B50C4145E;
	Fri, 21 May 2021 21:21:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CACE81C11B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 19:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B90CC605CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 19:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G2N5kZM7lALn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 19:50:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88481605B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 19:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621626626;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=GPfnJGzP4OqGD0+wu1euBp+ahcfCCZpRemrfs0fPKWg=;
 b=U7WHP1UlZgNaK0qIaiUVVA3HsRXD2FPVfLW1J2DRAOe4yNCVBBw1JJ/tGQClhnvIRqENmV
 I7udR9RJXPvyfvwN2j3qNFB7NPlBdb4iROFW9/Et8GK8sNE7tCW8JLn+1GTPavbXuKrTOI
 OWwUrEG+PDsbJtYS68tj1V6Wn8LrqSk=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-469-eRXyykB6MoqfOA0uesr_Zg-1; Fri, 21 May 2021 15:50:24 -0400
X-MC-Unique: eRXyykB6MoqfOA0uesr_Zg-1
Received: by mail-oi1-f198.google.com with SMTP id
 s3-20020a0568080083b02901eee88a8f42so2829949oic.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 12:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GPfnJGzP4OqGD0+wu1euBp+ahcfCCZpRemrfs0fPKWg=;
 b=YdXhayn5gsT7OofSi4hGg5GJl4tzGlIJYNU9tL/8X/n7BYkFFvOrB/WRfuv0hk85ty
 Ks21knAM3lyC74dDnIkqGTYbiW2z5Zhtx9RTiVCAqPha9G0fT57xi40ljyuO+qz5c8I2
 Qhh0BBSMFnN+juEaFwFw2UXXzLsunta2hNbxZPudyhNWiujbkIOpamnnK6OV7DRhCau8
 T+bRD70JErj+Z4p0yLoLcFL1OjU8CEqutBMkdoCrnhyF02SSrc23jry0wfeOZdlYEV2k
 +wkEmr3WSdFZ6Ai+A5Fe61efYL2uSg+HZV8DXI8PqM6n98/CWLOFd/IYCsBBOsbMm4kK
 UGlQ==
X-Gm-Message-State: AOAM531esKnVxITk6lmg172X4kFyZRGv58vaokqViir6CAXvy2QPPVm6
 8+r3sicfc2CSWhydfkuWmWk9xG/2guVoarlyqz1mtu3ckS5BhyUYv3OXq2Bwd4TI8DcS4HPRFJO
 GPLdUl60G6OPnmNOAmvtgeU0CljvUdA==
X-Received: by 2002:a9d:69c2:: with SMTP id v2mr9675703oto.186.1621626624007; 
 Fri, 21 May 2021 12:50:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyrhDz8hYcbq+CC3R6HOECEW0ZHmOtKTJgEQEzXiMKV0b8sWqr7I+euvwLLW/m5M5RWdTM3Rg==
X-Received: by 2002:a9d:69c2:: with SMTP id v2mr9675685oto.186.1621626623820; 
 Fri, 21 May 2021 12:50:23 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id w4sm1549740otl.21.2021.05.21.12.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 12:50:23 -0700 (PDT)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, jeffrey.t.kirsher@intel.com,
 sasha.neftin@intel.com
Date: Fri, 21 May 2021 12:50:19 -0700
Message-Id: <20210521195019.2078661-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 21 May 2021 21:21:38 +0000
Subject: [Intel-wired-lan] [PATCH] igc: change default return of
 igc_read_phy_reg()
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

Static analysis reports this problem

igc_main.c:4944:20: warning: The left operand of '&'
  is a garbage value
    if (!(phy_data & SR_1000T_REMOTE_RX_STATUS) &&
          ~~~~~~~~ ^

pyy_data is set by the call to igc_read_phy_reg() only if
there is a read_reg() op, else it is unset and a 0 is
returned.  Change the return to -EOPNOTSUPP.

Fixes: 208983f099d9 ("igc: Add watchdog")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b6d3277c6f520..71100ee7afbee 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -577,7 +577,7 @@ static inline s32 igc_read_phy_reg(struct igc_hw *hw, u32 offset, u16 *data)
 	if (hw->phy.ops.read_reg)
 		return hw->phy.ops.read_reg(hw, offset, data);
 
-	return 0;
+	return -EOPNOTSUPP;
 }
 
 void igc_reinit_locked(struct igc_adapter *);
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
