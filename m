Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0531D7C7645
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89A1460F26;
	Thu, 12 Oct 2023 19:07:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89A1460F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137631;
	bh=OYhtGWZ1iBvXWmLZwt/TUm4njCWkIHY2tFBwbq9WoDM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CXQofbgev6j3PBuj2HjSKJoNU3Qa1Du0bgJWayMbU97NrNDiN74CrsItJQvbjYVGm
	 zuWLysCAN8BoH5vc5jQJqADbcOlEgqQoYMt3eNEmW6ROSw/RAUlwJl3BXwfmFrwfmD
	 g7ol61C28ieP8bgHMev5anil7iTPSoEe9TVb51QJkuEV1qWsk7dcnLBbkY9Eu7d17a
	 3EMDQ8y8WG2caIOftqAP0d24zH8g+k11sHf8Y5S55Issd8KyxvsGVDi75IzvcJHyMj
	 dbgJokxwhV2SDSDXvazgPTRaW3t0F3g3JD1s4QGv98CWj21ywL/iMzjGnhZX02eL/g
	 L6pKe6a/t1Q0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5xtsnt8jxAO; Thu, 12 Oct 2023 19:07:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EBBC60BAD;
	Thu, 12 Oct 2023 19:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EBBC60BAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E60061BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7A7560758
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7A7560758
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkSfdB_kGZGK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 21:08:01 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12ED5606EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12ED5606EB
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-5a4f656f751so101180437b3.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 14:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696972080; x=1697576880;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ndlPGfYsR5FrdEZ+vU/Zj3bD+kBDGYy33Ae6WjfGffY=;
 b=TWyfb74/4DoAAbpyxAPpNzfE8T9wujqBaE6KJus2nsLjR0mW2zoYcBsE+9CDTjk0iL
 YGZBvoPE/kPAPy3+R/2Nsz5FcZYhIukA4SvTww6piQ4npGlO5OZQQz0ySYaq3OUke2AL
 kH/CG+CJx5D6K3WOalr85nqpDGFJm4DcbtCwPbkMxy6CuTSQ9XM8d+t1ccgdsSlRKn8/
 sq+oB0BqNCRyNUn3baS5tyGFS+YGJjSZlFycrQVNqLIxB2iaiLS/Zs7wbWxx+REpmRrl
 D704VfmVynAXMz2c8dSaWtXQ/Py+7AqMfS24c16BluSoKG7/9dsfIoyl1jaxgQ0hZVOj
 5avA==
X-Gm-Message-State: AOJu0YzN4qRmyrVs+LTOpzxPagAWOrgv9vmSk6YnUrn/USTvnlMvyQUv
 NX4Sp+v+sydBY95U+qPCC3jt7ovu8Fpei0KZog==
X-Google-Smtp-Source: AGHT+IHj9mcr3yN9cr0pAbeqwrfthhwiz6e+OtQon8JznMOo9KT/dvFu6WV/L5M0mXZjtD1IJkgEjwfrm/dmYR4P9g==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:69d4:0:b0:d9a:58e1:bb52 with SMTP
 id e203-20020a2569d4000000b00d9a58e1bb52mr58171ybc.6.1696972080036; Tue, 10
 Oct 2023 14:08:00 -0700 (PDT)
Date: Tue, 10 Oct 2023 21:07:59 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC69JWUC/x2N0QrCMBAEf6XcswdJimD9FRFpk217oGe5hKKU/
 rupDwM7LzsbZZgg07XZyLBKlrdW8aeG4tzrBJZUnYILrXfecS6mcflyMllhmRWFUWbYMUQLniz
 TcPB49aIceQjnDu0YLl1qqf4uhlE+/+btvu8/fpTvp4MAAAA=
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696972079; l=2221;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=flnqc77MqO1c7xUbgevXQV3iKIfkAbCA1etAFyGMSlA=;
 b=L1o+advtN54cbFa+xXqTVzRfB3SNNlR/1bgBEQXRIdYE2QN+ozFKD/Z7wyvk6nz8JnPbMksY9
 tQcwMCs+e4lBLETRdzxOSlViiob55aevqxlvK6JogW8Evrv/bSkGeKc
X-Mailer: b4 0.12.3
Message-ID: <20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696972080; x=1697576880; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ndlPGfYsR5FrdEZ+vU/Zj3bD+kBDGYy33Ae6WjfGffY=;
 b=pySU59KAsbRIsfQ/dKBtToBkZkwSZnWOeP+nVHoHyKOydn9aim0QVtCOhEgnbMnEjz
 Ylqa0KTjTTEqZ/qEmtkqrlOXDyzJ62mINhNVXAstmWVenZG4+RCfikQPRi8C7AFF8Ihm
 IOSFA7nUwkwTSjgvl9X/dklQNkF8j7/FFQf45/8CQ+O3gok0pwFOmT2ae/Jp67lvO1y9
 0yAUUUcsRd+sjI8reTARN3B1ms81LBk2DOO5cvXB9e9B2MsGobVurojzq8wkaD0Z5kiS
 6tHsXrSf+pisnRy8YrWBc4+jKjWs0Lj8wKuzWa6VaUzKGOdlvFlq5A90pkadmNlyCG5O
 urAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=pySU59KA
Subject: [Intel-wired-lan] [PATCH] igb: replace deprecated strncpy with
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

We see that netdev->name is expected to be NUL-terminated based on its
usage with format strings:
|       sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
|               q_vector->rx.ring->queue_index);

Furthermore, NUL-padding is not required as netdev is already
zero-allocated:
|       netdev = alloc_etherdev_mq(sizeof(struct igb_adapter),
|                                  IGB_MAX_TX_QUEUES);
...
alloc_etherdev_mq() -> alloc_etherdev_mqs() -> alloc_netdev_mqs() ...
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
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 76b34cee1da3..9de103bd3ad3 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3264,7 +3264,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	igb_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 
-	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
+	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
 	netdev->mem_start = pci_resource_start(pdev, 0);
 	netdev->mem_end = pci_resource_end(pdev, 0);

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-b259e3f289d3

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
