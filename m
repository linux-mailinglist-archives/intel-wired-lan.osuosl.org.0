Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 186B27C7642
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99E326103B;
	Thu, 12 Oct 2023 19:07:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99E326103B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137621;
	bh=Bs9UJb/jmfPeSkRUQQQ2XJSHZLcWnZrpIuncTIfVhSM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jMyW4QJOPpsQfwHKCbIgjNNNK1vnjOhiozFtlVGg5hzZko1cSIwHbwdvi/QAWcZk0
	 xy6EPavzgMyLHDkTJmQBKvYF9UiF2mE7Aacd3GdsQ2FYUpR3Twzp6/y65eYhgHK3gx
	 v0ANUVO5bckrXkPZfM2yEx76/39ITiqppBnwQcc2Z4Kiz3X6aVTrfC7fALouqmasNK
	 PWrJcRYBoU3myN3lDH7JYF67hX/u32RYsza0HiODSrb5FyGzuJQkRoKlA4f2P+qEnP
	 OYzSPJ3zNSC/Hue9FeYFNVj4FIVkCKUh0EwwxMu8L8mqARqMAbb/xAFGP1Xuv8w9VF
	 C1mU/OZR0P+Dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tAwZshRZvigI; Thu, 12 Oct 2023 19:06:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAF3B6105F;
	Thu, 12 Oct 2023 19:06:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAF3B6105F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13F8E1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 18:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD98740385
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 18:36:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD98740385
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZSPUK6upOeW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 18:36:02 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD86B402F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 18:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD86B402F4
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d99ec34829aso3626958276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:36:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696962961; x=1697567761;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=k901dfXyM6A6d2qq6am+50364PkFHEr+c7kfdKStNUQ=;
 b=ij+p7A8wt+tjL5XjEJIl4rMPHHAxNWAbbNss5NdFyTgmAzVHFF8jchob+tvZqYSepU
 3hAzLwAS+zCW5nO1LhvomFpxzoVleYgVc7xT5W7HVB+XN/yAB1SIyEpP4RXE02GQJ7uD
 rMP7lly9sMRGLPX+yGfR/eoQn2rZR9Ib8KK4+zL/WajsmkZh/wJ1cC78BPq9qfkoKoVW
 tVyZiF5DU28EHYfGxyoHr20+oxLHjv9W4tjpQOEbayDAuUu88EIvnOp+RW1F5oqyL9PG
 7bLUSJgGnRs3v8Z74GZMyiR89tVtp6acpMik8mM74OG8QhjjZpiXuPTWd3GlVyYTQqHw
 RJnw==
X-Gm-Message-State: AOJu0Yy0VhDC7hBGz0BaCqSlxOqVew8d7VLdEGWJWJdxG7zF2ctrx1oy
 xdqrnIaEQ14oApyEfLBXK5jwDxDtL3262BX9aw==
X-Google-Smtp-Source: AGHT+IHRvXP3D2yikYaUvE4s+9nvsVr680udJwA/tB2Qv9aTLY6TMIvkkLg6HQyVoI8EkajRQ+bYP1jPBJ2n/sIb9g==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:fc18:0:b0:d85:ae1e:f696 with SMTP
 id v24-20020a25fc18000000b00d85ae1ef696mr336777ybd.0.1696962960761; Tue, 10
 Oct 2023 11:36:00 -0700 (PDT)
Date: Tue, 10 Oct 2023 18:35:59 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI6ZJWUC/yWNywrCMBBFf6XM2oFJVXz8ioiEzNUOaCyTUJTSf
 zfq5nDP5p6ZCtxQ6NjN5Jis2DM3CauO0hDzDWzanHrp10GCcKme0/hmdZvghTMqow7w77BccWc
 EEfnz8oiWOXHcbFV1f4Dojtr36Lja69c9nZflA5vSlniHAAAA
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696962959; l=2137;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=XyZq4bqOiJO85kzWF8DwIoZ3ewao6X+shiHLyqLJcIY=;
 b=pCu5HtRudfioqViLz3TXwRZEp/DFrJMOIQ2kVRk6uzxbBv73fPuiJSNSllaodomHC/EO4TpVc
 wLOlN0mORyDC692XBwLhgkNojIGyVvU3rLYgwEKmdsQ9KnFfg3RKcJD
X-Mailer: b4 0.12.3
Message-ID: <20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696962961; x=1697567761; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=k901dfXyM6A6d2qq6am+50364PkFHEr+c7kfdKStNUQ=;
 b=cbwwMnm0Gnals/w60JKLwpoPCUQUPokZf439c70hjDiexx8N3iez13QwnRKl5SA7n6
 Kdy1a8yXxk1Xl7PwX5peUjCl8frctz7aXJHnDgQpUR/ngBq+EnJh7XoQ5JudALcFTsOv
 D0vGnHzE0CMsRyf1zd/1EvCfcXhJH9Z3hiRbcVZS9uE52vl5tl8vORdEEUL/Gff06RP8
 /k7LWvZscEt3yik0ipbSPi7kQ/6bNBsUuFkYgZklmU0AJtyk8UgBUMc/KiVia8/GEyN5
 9+429qJfi3pCZ2MKf5VGP/zYHgeahR19L9FO/XOeCCo6EFfwIdaBiHGDR/wGcZiGM+qa
 gIWQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=cbwwMnm0
Subject: [Intel-wired-lan] [PATCH] e1000: replace deprecated strncpy with
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

We can see that netdev->name is expected to be NUL-terminated based on
it's usage with format strings:
|       pr_info("%s NIC Link is Down\n",
|               netdev->name);

A suitable replacement is `strscpy` [2] due to the fact that it
guarantees NUL-termination on the destination buffer without
unnecessarily NUL-padding.

This is in line with other uses of strscpy on netdev->name:
$ rg "strscpy\(netdev\->name.*pci.*"

drivers/net/ethernet/intel/e1000e/netdev.c
7455:   strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
10839:  strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Note: build-tested only.
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index da6e303ad99b..1d1e93686af2 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -1014,7 +1014,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->watchdog_timeo = 5 * HZ;
 	netif_napi_add(netdev, &adapter->napi, e1000_clean);
 
-	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
+	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
 	adapter->bd_number = cards_found;
 

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-a45ddd89e0d7

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
