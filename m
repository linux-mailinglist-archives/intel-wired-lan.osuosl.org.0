Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5522D7C7643
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A5FB610A7;
	Thu, 12 Oct 2023 19:07:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A5FB610A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137623;
	bh=Hmjg//Lq1wzhld8sK6noicEIkbimGYR1RPKkkRVBCE0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rXjlRU7aeeZCrZQQudgPZ1w0gIKDnUHacwtFIH5LfIOiLf5y5JEPrujuMa+lzaBRQ
	 ux4NVMm47ID8LgrvpzVoHN4GWNiANZt9gVbQUN4f4SkjTNr/0n5p7iVQPfGMydLaEk
	 76XMvqLAjU2abqbWZcNa+ll0q0G+3Dtkc6M/PuIOCfLKiYtLl/VDJVGxUFe+9iKnPU
	 xte9uh4T+/3OTge/8uuM4AUrFuXsLnjIsLkT+lmRYdToXV1PAfMIQsYgTYrhAjKM3s
	 XgKElD0hIFX867SgkR9iNhzAXYy3jXNpMR4npsvbuJjQE70w2m+/IQEedDtZLwkBfQ
	 SRERrI2pPNGyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pf24-p6jnqdl; Thu, 12 Oct 2023 19:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07B3F6103E;
	Thu, 12 Oct 2023 19:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07B3F6103E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 995941BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 19:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DC0860F1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 19:53:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DC0860F1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkOao4mF5JUE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 19:53:34 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A1AF60F05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 19:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A1AF60F05
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d9a581346c4so1550017276.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 12:53:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696967613; x=1697572413;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=w5E9MxIyYhKzMBpNRM6CeDwnSabl1YmaOv2YrvO7ZwA=;
 b=nV2sFlbqjieXF5tseL75dS+gmiEF1QvytAY44YTZcmr8VIczEmQ0xntmTbiBom18T8
 0CSLXpHJcl2TtgUNyRuTVhSl3cYYV6xJRBuhNPwDn6/07gMhiJbtUEKSYkENW2H+fMlK
 ygUHycliyD5BFspG7jkDv3BcOUoDdAFggIpNzzHMfeqSHo42odLqw05MpgA6wzcCF7Iz
 osbu1ZPsXiaxorZCywrDV1D5bZgxh3imq6kuLStX9Mst4JcI3Ui8ySaqJjvX2/oLTlnt
 3AexbJdI11Om0wGwbdCRBfOngFd8bVTHA5PtJCEGmTGbS03nGxxXxZBpM9y6oLHM7W/g
 6HAA==
X-Gm-Message-State: AOJu0YxCpURtleW6NEqH+0nemF+Meq+7s9IPq37e9E6QFeHn+Lb00iRT
 3mmyT3Xd84AoxNmMXOhDV3rfWzUHrH1AqvfA+A==
X-Google-Smtp-Source: AGHT+IFf+EcNSed1EvzahNf05j6H+bR8LMoGehNG9vtR75/usZMZPFVfBU6LyeUKu8sWdgNzGSviQJZCAAOpdfkScA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6902:85:b0:d86:5644:5d12 with SMTP
 id h5-20020a056902008500b00d8656445d12mr357348ybs.4.1696967613332; Tue, 10
 Oct 2023 12:53:33 -0700 (PDT)
Date: Tue, 10 Oct 2023 19:53:32 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALurJWUC/yWNUQrCMBBEr1L224VsFRu8ikgp6cYu1qTshqKU3
 t2oP8M8HsxsYKzCBpdmA+VVTHKqQIcGwjSkO6OMlaF17ZEcObSiKSxvHFVWVsPEBblMrN8iqfC
 M8Unu8c++qpLzjAE9+RMPXefPFKHOL8pRXr/r623fP2N/8+eKAAAA
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696967612; l=2330;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=Kd8rwBEMi1NtM8y4ozGswyeCAqmu3EbqiQJnq7rYFR0=;
 b=OC+eT0HLH7q5dOLGigWF8Rx7ymgW1poduMQ2TkjiGHXmUxXOMiXpMWi9S1WtDr2E1QqE/23iD
 A1dqQ8QKh0RBofrRZ+itXkeKDgltYr22tc53NO8eW+Zm9I7v62Xp+fW
X-Mailer: b4 0.12.3
Message-ID: <20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696967613; x=1697572413; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=w5E9MxIyYhKzMBpNRM6CeDwnSabl1YmaOv2YrvO7ZwA=;
 b=NLk6IHWV00amA+rvZ30f5toYoyX3/oNhE/YJZBkTuBC5T1oixpUXRnFDQeKY0vbWKU
 u6h93Iir4d3QMfD2zBnRtpenDb7DjKfTunQ7N+pswLMcU2u868i/J+mML6Y5TDJB9vHw
 yyTkgCCJN77bwUihYOIpqAMXoNT3GYuTBJm1u9M1XneENhmknsbhrzBpcLTtnwbOhovw
 LXWISwacDGyzqv2lLCAyCzATrhUQP3iUd1orY0FoDQswvIMtVEjLjWp4H5k31OEEZfsn
 015gxHQFyhdfyRgjVn8Dg8AO3KCBCSzo6q4oMKeCYi4furoEXR+EAblLdO0Pxjq0Hq91
 5wzA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=NLk6IHWV
Subject: [Intel-wired-lan] [PATCH] fm10k: replace deprecated strncpy with
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

A suitable replacement is `strscpy` [2] due to the fact that it
guarantees NUL-termination on the destination buffer without
unnecessarily NUL-padding.

Other implementations of .*get_drvinfo also use strscpy so this patch
brings fm10k_get_drvinfo in line as well:

igb/igb_ethtool.c +851
static void igb_get_drvinfo(struct net_device *netdev,

igbvf/ethtool.c
167:static void igbvf_get_drvinfo(struct net_device *netdev,

i40e/i40e_ethtool.c
1999:static void i40e_get_drvinfo(struct net_device *netdev,

e1000/e1000_ethtool.c
529:static void e1000_get_drvinfo(struct net_device *netdev,

ixgbevf/ethtool.c
211:static void ixgbevf_get_drvinfo(struct net_device *netdev,

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Note: build-tested only.
---
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index d53369e30040..13a05604dcc0 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -448,10 +448,10 @@ static void fm10k_get_drvinfo(struct net_device *dev,
 {
 	struct fm10k_intfc *interface = netdev_priv(dev);
 
-	strncpy(info->driver, fm10k_driver_name,
-		sizeof(info->driver) - 1);
-	strncpy(info->bus_info, pci_name(interface->pdev),
-		sizeof(info->bus_info) - 1);
+	strscpy(info->driver, fm10k_driver_name,
+		sizeof(info->driver));
+	strscpy(info->bus_info, pci_name(interface->pdev),
+		sizeof(info->bus_info));
 }
 
 static void fm10k_get_pauseparam(struct net_device *dev,

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-8184ea77861f

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
