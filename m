Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D08467C764C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DC00612B2;
	Thu, 12 Oct 2023 19:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC00612B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137656;
	bh=3lNBKGJUSyc9tIvHi0pgaZqf71Hn/2o3dAcBeNjLKDc=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nPDy5azzioNF0r2X6uWg9pLdCoj9zi7eJZhnRJxfxeFl4ypfrMs8G4AxSqbjgbFSM
	 hqdvRhYhlJWD4pIn86jQkw9aWKnQs1iVdtNmxYlEFkBrbPp5X9k+FnSa1AI0YfmZq0
	 gh3H4FOQYEZk2ZHbUJ5dbwKk7j66TJEz4N1YqHy8iu11c/BPZBHUl42EtpJF1htmEl
	 QDqu3qHjQC7giZFwReVUZb22HsisURCsZo2+MXOhQckB241dAnn6/bi37oNihVcSnd
	 iWq16DnmuIJeriYA2GLdY4jr6jOOWPHiqTtBK50GWu1NZnJhRoH18mTlhPe8g3seKE
	 vrJa9h9YXHIgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ol4Tj9YDQEoI; Thu, 12 Oct 2023 19:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39FCC6103E;
	Thu, 12 Oct 2023 19:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39FCC6103E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 885951BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61A0A4044D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61A0A4044D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHHb3i2E03tE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:08 +0000 (UTC)
Received: from mail-oo1-xc4a.google.com (mail-oo1-xc4a.google.com
 [IPv6:2607:f8b0:4864:20::c4a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1956D40012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1956D40012
Received: by mail-oo1-xc4a.google.com with SMTP id
 006d021491bc7-57b78a20341so7466307eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976827; x=1697581627;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oRxxfOpYGYsMYGCPD0LU0Gx9K2SMiFZ6T4X3/eq+2Jo=;
 b=Qupo9i4BT4Tsie/irslCz5Uo/DFS84ygsPLxZT3q4TQpecJpp1q2bzEdJzl3U9SQtZ
 Qk2DLaziw3eNupcZQhKMgaaWxeg3g2RaRcUlTvFh+yF0QFOPUGp1AV0JkuV2/tXrPRLN
 VFLcEasd8+75AHtsZOpokdpLH4h6W1s8iMZ6mm1OVsSlH20VOxBQ4uAzA1VpesRf7L3a
 LgIwWQLJ7KqTOfNngCroxwahpTY3rQJicJlmR7SAp6J9jyFOk99A2/Xol/8mM2A1e/6I
 mQK5iQpMYe7ShbrfHr6+ovUHnAOC3+/rMNdtE5nnIWjikvs7+8mUi2cvGWV4SZp+vOtK
 xSEQ==
X-Gm-Message-State: AOJu0YwseG31QZvkZTEdAmREbHY8+uFAJVr2WtOgqbYLaxREPnx+DoQX
 7SgF/PEsAzS+XinFOwPBLQtCn1RKG4Gcjv/lww==
X-Google-Smtp-Source: AGHT+IF7Z0F3Kme/HBMNT7IsdnfUyQ7lDRY4xVZb2ZtGQ3g2V9x0IBedcSSdWdeMcYlxHd4de/rHK0jPUa+aQGw4QA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6870:9891:b0:1d6:5e45:3bc7 with
 SMTP id eg17-20020a056870989100b001d65e453bc7mr8002308oab.5.1696976826877;
 Tue, 10 Oct 2023 15:27:06 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:26:54 +0000
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
Mime-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976824; l=2047;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=OWWhQIBafVgfDlqmMd0xlq6kW1ggHRaXB3P7V35piho=;
 b=VuwZhA1UAIYHpGKXaFjSv1uwbivUM+rFKhtVdtifrMMZE3YsgHH/o4bhCiH0jMRbuplw/zZ5l
 Sq50xVfC9K1BbFHqYK+Q9zMPrzpmcn1bglNfo7vqJwP60dNdZLWRsiu
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-1-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976827; x=1697581627; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=oRxxfOpYGYsMYGCPD0LU0Gx9K2SMiFZ6T4X3/eq+2Jo=;
 b=JhNm2rTTSpaNv0e1z9g9MFpwSK2b49Skm5DDHEEsk5ngkLPL2ZiRTKKsy2rz4jIN+q
 yVP8XAH6/mpdKgnDWVJjiskUqXI4esxxYQUx76Im5U43uxuYuc76ByRPyZEoW8Ii3nzs
 bxI/X7/xcPFtorNPjFKfb674KyHBVgJD9vO+Tk7aTSVgX8CrkfK5BsK7ZsQs4kv+zGPp
 zPiZYQICem5NdUhTGkCp2vU7HxCL1uLLeO+84pxd15Fmg6F+ifm1lu5/j9O6sZXHHu7a
 5BofUiQEot5RbYv8z36WMjziFBVWVyJgTp1w/xw/CBt/Jffzxim0aOk36Ho7aIhmN2Vn
 8/KA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=JhNm2rTT
Subject: [Intel-wired-lan] [PATCH v1 net-next 1/7] e100: replace deprecated
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

The "...-1" pattern makes it evident that netdev->name is expected to be
NUL-terminated.

Meanwhile, it seems NUL-padding is not required due to alloc_etherdev
zero-allocating the buffer.

Considering the above, a suitable replacement is `strscpy` [2] due to
the fact that it guarantees NUL-termination on the destination buffer
without unnecessarily NUL-padding.

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
 drivers/net/ethernet/intel/e100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index d3fdc290937f..01f0f12035ca 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -2841,7 +2841,7 @@ static int e100_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->netdev_ops = &e100_netdev_ops;
 	netdev->ethtool_ops = &e100_ethtool_ops;
 	netdev->watchdog_timeo = E100_WATCHDOG_PERIOD;
-	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
+	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
 	nic = netdev_priv(netdev);
 	netif_napi_add_weight(netdev, &nic->napi, e100_poll, E100_NAPI_WEIGHT);

-- 
2.42.0.609.gbb76f46606-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
