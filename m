Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D77C764E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF10B611EE;
	Thu, 12 Oct 2023 19:07:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF10B611EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137664;
	bh=oNxmGK1Tev9J+7xzZGg+vw2+0WbWBcU45xXtY8Y5lVM=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xnpfz2rAUuok+Gfg15RtnLhF+2eEW4gu3LmOg2fmUFP19Ta6vSBcGpM+LRib1uLMA
	 pf9Ckqqc+FyNW5u6/WF8CozaOH9U75XCokRJbamKWcoDuZjsmtZhfUILSRgoZexL3J
	 9AxtCUyYsCD54cI2Nu2HJTxyjH40VaaYXouW214V8lSYhNFMePiv+PLn1ukFqm8cOl
	 R9ts0z3P2Lc7pM8n3F2bCbo3n6ptmVElXZzxl6QzmgBjpgXY2Na3Cs6iCH7TBrNVSQ
	 t5JxpkFqjHIqBxYw9vzQXXYX6GtVDRY3MIS1DH/Xy3zjm2oEyGlDVl9glCoqOYqP+I
	 5nHK3Ujazpyvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZL7doet56vbh; Thu, 12 Oct 2023 19:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0EBF60596;
	Thu, 12 Oct 2023 19:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0EBF60596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BFACD1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A59E560EA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A59E560EA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPZCVrQkOe2A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:10 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A190C60E6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A190C60E6D
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d86dac81f8fso8682697276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976829; x=1697581629;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lTnwaqL2jLBaxkmW2WMaRMaHCldHf8+/MXLc/TIFT4c=;
 b=FW21M79vjLJjKBBDuOJcvsDhgivD9SCGqWp1091+nB7DODM9sXJRpniVTCplv80xSP
 BT9K3Q4nEo5tR8xSW6pqpfvZaW8FYKYFM5ZgEpzpSsJjkvcLzp92DtIoxq+E9xTXo9rh
 Jrg8OhUSxwXKzWmufmS8H+Bgu2FBeXxROtUzvbJV2WSV4l9L6THh4RspjPhVQidzvDyx
 UJeRkwPQFkGh5P3d/syqON+xbvrc7AdJquszzbw926QKwUeQpXv5jyBFClDJeDBQq9rT
 O5PFFBsdniQb9ScaTbW2fgAtseTxRPH2vneIdEaNIhgi06Oi676U8ke501AUvYL5aavB
 EzXw==
X-Gm-Message-State: AOJu0Yz79vI4FSjZCMJfzqTy4oPiOlu/3PlXh3Wp9KLrGZjzv6/UyiiU
 eHV5etR+b8Hsk0M80RCaaXDQgssRlwYgvgc2uA==
X-Google-Smtp-Source: AGHT+IEhKRo7Fa50WHzFdWOO31BMGB9F9TmfVk9lGMD83bOfMPCZJRqBjhsWFbscP5Go+W8LBaXKuS+3ektW2jj+vA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:9349:0:b0:d80:12c:d49b with SMTP
 id g9-20020a259349000000b00d80012cd49bmr352222ybo.8.1696976829556; Tue, 10
 Oct 2023 15:27:09 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:26:56 +0000
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
Mime-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976825; l=2155;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=OVZJsM7ldFpBAzherL0f3bvpgvacQBDrwKwi/3HnF5o=;
 b=VAP1FhD196P2wXpYtHTj+oub2FKXyLs035gJ11JD9BWHTobZWE7G6hG6hva6AMypTOMJugLLr
 iU1NTx0gyFVACLLcwaYcZNUqVriQ4UPkUi7BGHg/1QJ/x1taOIyXHl8
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-3-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976829; x=1697581629; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=lTnwaqL2jLBaxkmW2WMaRMaHCldHf8+/MXLc/TIFT4c=;
 b=ONdykWFmqlhd60mb3+lCRitQorKpTVmEbPi+/WaHMwgyeTYbeXNsKAwb19A+20326M
 fXBqBkt0cQz2mxfG4nyFNG8A9btLq7Ypt3A6koqll/Py61aupwnnHNE8syC7rnjCenh9
 ej6Py+5jIl945hQ963rQc19MBCOYBE7z+dblwb1KKq64ItjVxUqGFPqCEf93FyfjCmmg
 fp6zUtWyiz2AYdF69z5ZNzx8TvGcILAPQ751QCRplHWscPCxjiG3b2Ad2phMSqn3CWsm
 o3qa9gvSCN7toWWI6H9ZJ4rcTlqzpjxreP4HPDtFjxIKZRq3VAzJWpN5YJR8rhhSosXH
 ctbg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=ONdykWFm
Subject: [Intel-wired-lan] [PATCH v1 net-next 3/7] fm10k: replace deprecated
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

-- 
2.42.0.609.gbb76f46606-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
