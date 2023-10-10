Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F1E7C7653
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90FA7612FC;
	Thu, 12 Oct 2023 19:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90FA7612FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137681;
	bh=B+w3ioGTY78cx+jfLG7QrjNtyULebmtKvOKFJNl4xzE=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=66bwYrpcNo2+Hs1XGIu2CR6P45fpEl8KvyAyJtJHeNBJpHDuIzpxCI0NRp01fEkqX
	 WnBHPHapZvUchqra6oQIbUZsGCxnSSljAd7v9G4qBAZclrZ0Mt8ZDr7X1GOhvjH6al
	 WLr23G7iKml7gaqrpNrtazB48Fmh2RCW883K/WJKKHnrJ+owFQpDtQVefhhdY6L1Et
	 Hg33ZGv1LcJy3Q+Kg3JeytKWPmIascGDqmUUU5fYrv+CsPrfJeQRO19DsxLo/GqoLT
	 z+qB4x+SfT4Ojg3cEXQakw+HbI3DAoQ7qSpf3OwYKLLZ0Nodrf20hwXZL1iCyTd7Tq
	 EAPNYrl1VhNRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLk09_fsyD_e; Thu, 12 Oct 2023 19:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C0E606DC;
	Thu, 12 Oct 2023 19:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69C0E606DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB241BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED2EB4044D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED2EB4044D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E_9dlxzN_nxb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:16 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C48B40012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C48B40012
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d85fc108f0eso8309439276.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976835; x=1697581635;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TlakbgGWTqcDQ2xuVKeK3nhNuDzBfPQq0/+GRmlX5C8=;
 b=cV4DUrSnw/oNaFtfFFWsWBS5Tp5KpRDFWe11l1hUQH/BPB5MXbUDxWHKo9lFN2yjHb
 dOGTwtapgbvxucM8WC/f4vaar6oFxxvDzvYrhVaPpq5NNpsRm8y0SWxPFHF+f67fIUs/
 DYRT1YWkLIaOC2RvD+cr9jHHsTkDOgQu3V26x6YT6f7gry8cKM22ygLGxALNGzoUR0N0
 5Lk+1vUeRQOTO3aN9XCkqhtqrrwLDu6W5eqS8u9cOGhdr2v5yu6xvmkLzktjrlflfDnp
 xWKZajiozWdnU3F3HPf69Iptd93ndMfOYUY/ZWxb2GyT0T77ymKuj42UkWa6nDGLs+/8
 Hw5A==
X-Gm-Message-State: AOJu0Yz0eBRnGVXjKZH7NjnY3IHpov68yX8jCabizM56kUhX7p6Y7EWz
 Jrr+KsF0B9rHE9REMmgsr5nrpfjOJMx3jG8Qng==
X-Google-Smtp-Source: AGHT+IGzYEq54Il7W2YEgs1cfyYc8gNX6HEw1AL6yXL3SCPfuWpHyotzmuT619yMLidQOlA9hNzRlpWN7L1xRgRrQA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:a162:0:b0:d85:ad61:1591 with SMTP
 id z89-20020a25a162000000b00d85ad611591mr315298ybh.11.1696976835057; Tue, 10
 Oct 2023 15:27:15 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:27:00 +0000
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
Mime-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976825; l=1942;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=6jGMK+cCOOSLNNUn0TBt6IBLIOJaTfgy8BwlGd7P468=;
 b=35oBACPXlL3wg2v3AbE8axFEM9yJJX/Bfv5dcLDCY+rrP7a8HRLOAFEg/ZA8gNWEWwSfT6QVK
 J4O6EmvMtglD6nXKST7OY8ieVbM+DsbZ81c8dF/wyiqDDJWJ1HsPtah
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-7-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976835; x=1697581635; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=TlakbgGWTqcDQ2xuVKeK3nhNuDzBfPQq0/+GRmlX5C8=;
 b=N0cuKKNORpHLC6glYvyrOeO9GsC041g6RHfVAT1ST6OdUOjkxI66edZsUm9zcMpeww
 YX5HBjm7kDRUyZjOkR1a0PLLKu3Qv7ybBEloTVedmW6FA0UpP/oWH84perb7+4zKo9fM
 ViUgurKOSKlyV0UbBXbB+mv7KX8Uubpx/9JgeVVJc4QjcfsBsIGSnGyq7QU2Pw8dywt1
 SzIBPUM6w28n6RkyFXu+X0nndPUcCyarqUs9kfrpf9WBqG6zLbv4aq3+XbY1ruml95Qi
 wW0dZ4urlFklZHTq5nbIlBRz03a8I3TbzL3+oinjPVB8kXg/a/nDb2vUvraG0stHxqFW
 vl/w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=N0cuKKNO
Subject: [Intel-wired-lan] [PATCH v1 net-next 7/7] igc: replace deprecated
 strncpy with strscpy
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
Cc: netdev@vger.kernel.org, Justin Stitt <justinstitt@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`strncpy` is deprecated for use on NUL-terminated destination strings
[1] and as such we should prefer more robust and less ambiguous string
interfaces.

We expect netdev->name to be NUL-terminated based on its use with format
strings:
|       if (q_vector->rx.ring && q_vector->tx.ring)
|               sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,

Furthermore, we do not need NUL-padding as netdev is already
zero-allocated:
|       netdev = alloc_etherdev_mq(sizeof(struct igc_adapter),
|                                  IGC_MAX_TX_QUEUES);
...
alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
alloc_netdev_mqs() ...
|       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);

Considering the above, a suitable replacement is `strscpy` [2] due to
the fact that it guarantees NUL-termination on the destination buffer
without unnecessarily NUL-padding.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>

---
Note: build-tested only.
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 98de34d0ce07..e9bb403bbacf 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6935,7 +6935,7 @@ static int igc_probe(struct pci_dev *pdev,
 	 */
 	igc_get_hw_control(adapter);
 
-	strncpy(netdev->name, "eth%d", IFNAMSIZ);
+	strscpy(netdev->name, "eth%d", sizeof(netdev->name));
 	err = register_netdev(netdev);
 	if (err)
 		goto err_register;

-- 
2.42.0.609.gbb76f46606-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
