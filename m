Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D99A4B53A3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Feb 2022 15:46:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88C1040342;
	Mon, 14 Feb 2022 14:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYqdhjvnULds; Mon, 14 Feb 2022 14:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B26E4017E;
	Mon, 14 Feb 2022 14:46:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B6F61BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 14:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26D504017E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 14:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyc8i05EOxwJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Feb 2022 14:33:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E3BC400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 14:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644849217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oIIRJ21BwIfvNwz0gmLQtZq6j5ywHb6my37zjrdYjEk=;
 b=O75n34Aef/V1fpS4uKiwxVNbpwYzBP+sCMWrd3fnJ0ynFbZAXl/K0o7QrLEVFF4Qo74wSO
 ikkjDpk8uKJ9KN5tKSyWRh7X2wI0nmBA6O2Rs1ER+i9bM1VUAzfsiea5p9eY5CUBgHgfIH
 qIx6bygdzF7Mp1dKuHQ/mqQzXuIz/qM=
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-292-bgCcTKAPN3O7flGGQkySZw-1; Mon, 14 Feb 2022 09:33:35 -0500
X-MC-Unique: bgCcTKAPN3O7flGGQkySZw-1
Received: by mail-oi1-f199.google.com with SMTP id
 s65-20020aca5e44000000b002d38b599a28so3604835oib.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 06:33:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oIIRJ21BwIfvNwz0gmLQtZq6j5ywHb6my37zjrdYjEk=;
 b=UncbQJ7n3xZha4s8RYBCbkCtjEczN8FOtgT2dp7lup9aGVWnS6jls3TdfPBCbC2nxa
 T7liVT2QVaGMCDyPPtmxjXeDXRfLQbvx672WjQRV53McHUugSZD3rr+2MCK+Ocf/mBrk
 L8hX3vjnM7NTZAyTV9Ct5JnWLDmhpBcmtP8FtkVKei2M+sSGBwSeE1KxbfB8o8dFUMvN
 ZMjBikcf+NIvObGpXxzJdIhXqfA/N8etCfYWmhkFK59DwJIn9wl4nerxWTbYfnn6XvMM
 bJ6FcE3SQgypqDfhQDFon5btjjHNybvm6Fl0RkBrHww8mkUHqODdUncOJxz3Iy1nWNoz
 1RkA==
X-Gm-Message-State: AOAM532+N5WVfZO8JZEZXyFJjkrCI8xSZhDExHoPjc62shmaf8IUQFQ0
 KuOfA0XqY+O+5whK+lzToHrU9NC45u09c8ztp2qX13v4YPcpCfgH/nRy1wWDP1Lm9Aekacsfceo
 2//Dr2PpGECzcuwj4E0a5LrLSqCeAaA==
X-Received: by 2002:a05:6870:c095:: with SMTP id
 c21mr2067594oad.245.1644849215023; 
 Mon, 14 Feb 2022 06:33:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxdVQ5IR9sHLZgVPu2QVTSPw4yaT3G8ufJi3cdC6V7G9uaFDWwCWmnk8z6rfOM7YD50C4dtNQ==
X-Received: by 2002:a05:6870:c095:: with SMTP id
 c21mr2067577oad.245.1644849214794; 
 Mon, 14 Feb 2022 06:33:34 -0800 (PST)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113])
 by smtp.gmail.com with ESMTPSA id z4sm12449303ota.7.2022.02.14.06.33.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 06:33:34 -0800 (PST)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, jacob.e.keller@intel.com
Date: Mon, 14 Feb 2022 06:33:27 -0800
Message-Id: <20220214143327.2884183-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 14 Feb 2022 14:46:43 +0000
Subject: [Intel-wired-lan] [PATCH] ice: check the return of
 ice_ptp_gettimex64
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

Clang static analysis reports this issue
time64.h:69:50: warning: The left operand of '+'
  is a garbage value
  set_normalized_timespec64(&ts_delta, lhs.tv_sec + rhs.tv_sec,
                                       ~~~~~~~~~~ ^
In ice_ptp_adjtime_nonatomic(), the timespec64 variable 'now'
is set by ice_ptp_gettimex64().  This function can fail
with -EBUSY, so 'now' can have a gargbage value.
So check the return.

Fixes: 06c16d89d2cb ("ice: register 1588 PTP clock device object for E810 devices")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ae291d442539..000c39d163a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1533,9 +1533,12 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 static int ice_ptp_adjtime_nonatomic(struct ptp_clock_info *info, s64 delta)
 {
 	struct timespec64 now, then;
+	int ret;
 
 	then = ns_to_timespec64(delta);
-	ice_ptp_gettimex64(info, &now, NULL);
+	ret = ice_ptp_gettimex64(info, &now, NULL);
+	if (ret)
+		return ret;
 	now = timespec64_add(now, then);
 
 	return ice_ptp_settime64(info, (const struct timespec64 *)&now);
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
