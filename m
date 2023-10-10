Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 117F97C7646
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94C8E610F4;
	Thu, 12 Oct 2023 19:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94C8E610F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137635;
	bh=h6pNt0XZqF2+vHmnHLPFoziHYj8gF9S3fN4fnAfcUcA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DcJDdCUMht5oJbakyJT4HpIUPwF2ACR7C8b3TMOMhpZa0ITN8+G4kYwB7a96PV2fg
	 P9ce6oOj4cFN/4+bs+67vEvEolCO4n/gxrrr/xYGNjaD4/uzsM/NoEWmip3pnCBVzJ
	 IGSentCgQijyaBkpM04Bdfkctbkc3xTaE3KmIx8zAzU7wmpc9+46GHuvnfsPZiTX70
	 J9HpqJ0IcRHXW3ksMM0PDGM0bcJCWJtWyEpHj3stkmnqvqIU8a0QgDOr31kNzEbvnK
	 x/koMzyV74jgPFAUKun0LpSLjZtV5yQu6rJm88NHH23u2TS1e+iNrzKXDFs26kxnD1
	 YQhK7SI5mKgIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZWCo-AgytDp; Thu, 12 Oct 2023 19:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 779366105F;
	Thu, 12 Oct 2023 19:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 779366105F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9301BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBB824047B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBB824047B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eN1_XCgadzvs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 21:12:02 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1712F40012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1712F40012
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-59f7d109926so93964987b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 14:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696972321; x=1697577121;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Hw4yLVcWfwcyHBWiL12H1p9pecjvnDh7ltJR9rI3BWk=;
 b=VeicEjXIFL3Hz0BrIW0z/YWSWGSR0ARR3WcxsgL66nn7ac7RSzzY3bAWYYgZYrrCiH
 4P8819LWyvXjDa0+02WVUcQRW0xi7mR+c+ryOHGuFeRr91yDrclUwmIWbadrLqKULF+o
 QNEkLsUXRQj7Dh8yEBA/YTFscZqw/3Dfybi39zM+30ye5PmPQRHGXujSP8hCoThdTuh5
 go6TPd6cyWa4H3bW/JKp/TOTOOL2Kcngl4sqjwfalKzIeruLXesh8vLKqLLs08rVFZ8M
 +p4gZJHDghdEgobarnqh3/t6/4921RPcsdPiUzoXvSX4GoFlCakD4blVoGOOftoAYIWM
 lD2Q==
X-Gm-Message-State: AOJu0YxpqzC9dI2JbKX8wpUQX4bQgFDTwTniDee+9be7FboMoR9cLG3T
 6QV8Jk6WwKn7ncpLdfFJlBUcSkV6dtubZWOuqQ==
X-Google-Smtp-Source: AGHT+IHlIactwvDZJurG0TKMKze9eW1XbBtIBn1Z1/ozRqw8zUN1Z0OKHm1ZUyRro7UtUldo9q2dVqNFfl5FSONE7w==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:690c:2a0f:b0:5a7:aa51:c08e with
 SMTP id ei15-20020a05690c2a0f00b005a7aa51c08emr94672ywb.1.1696972320943; Tue,
 10 Oct 2023 14:12:00 -0700 (PDT)
Date: Tue, 10 Oct 2023 21:12:00 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAB++JWUC/x2N0QrCMBAEf6XcswdJrCD+ivhwJtv2QGK5hKCU/
 rupbzMM7G5UYIpCt2EjQ9Oi79zFnwaKi+QZrKk7BRfO3nnHpVqO65eTaYMVzqiMusAO0FzxYp2
 fbTpCQuPIAhkvo/irhER9dzVM+vl/3h/7/gPAZza6gwAAAA==
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696972320; l=2145;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=oGaWK4GP1PQLCGPw7gir9mj5QFry1WylDMUmi7PoCMI=;
 b=AlIp0TwJFUsw0WGPci9gswgAfJCtFnHNLhXeagjOm+3FqL5bLrOm+uMa5Gg99nXKXa7/Ix9On
 NnZjUs9WY8mCHt2dUpsIxoumeQaXVg1wJ6aTUJb96SAVeKft4Gof5nT
X-Mailer: b4 0.12.3
Message-ID: <20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696972321; x=1697577121; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Hw4yLVcWfwcyHBWiL12H1p9pecjvnDh7ltJR9rI3BWk=;
 b=oRTEiFFhg8/9XQWbRUNcSChPbpPgtOKn080oSmObuRhzHsHfjIpRqP5G8OCY/wLDUJ
 87U93Gkcd0KfEMYkDaG3isiD57/9p/qY4hoHoX0HL060MmWOdCJc6j4slMOkClNeU60r
 qKvFxP8QZnJpDN+2gfaXbDB5hqVRdYXl2qRen++0D4YgXp8/RyW2QqRH8SKYxvZzFBDm
 LuVhuqQTzN+0Yh/qnb3yCQ6Qv1NFGJ6HX50IHJysxF8UxkB8QTc+iANlCrrfR0YueejT
 s38L/mjcPTDhabasF9zyD4eu6eOselgJPaztZxj+2OGQHLsTDQ7ZrmMD2dwm67enlqx9
 xSKg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=oRTEiFFh
Subject: [Intel-wired-lan] [PATCH] igbvf: replace deprecated strncpy with
 strscpy
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
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`strncpy` is deprecated for use on NUL-terminated destination strings
[1] and as such we should prefer more robust and less ambiguous string
interfaces.

We expect netdev->name to be NUL-terminated based on its usage with
`strlen` and format strings:
|       if (strlen(netdev->name) < (IFNAMSIZ - 5)) {
|               sprintf(adapter->tx_ring->name, "%s-tx-0", netdev->name);

Moreover, we do not need NUL-padding as netdev is already
zero-allocated:
|       netdev = alloc_etherdev(sizeof(struct igbvf_adapter));
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
 drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 7ff2752dd763..fd712585af27 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2785,7 +2785,7 @@ static int igbvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	igbvf_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
-	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
+	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
 	adapter->bd_number = cards_found++;
 

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-aea454a18a2d

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
