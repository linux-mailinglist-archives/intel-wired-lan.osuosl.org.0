Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0157C764D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11B036103E;
	Thu, 12 Oct 2023 19:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11B036103E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137661;
	bh=fNpjQnuPzLjVWdwdCBv9qW++8Oi9ub1/BcMSohKI5rE=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k9jzUjlz3RoTGQWMDKICxF/utzCRr1UNzN/HsnXsWDc/8G3lzr5ohQ4mzKnwMIhkP
	 iaC6Q4YnNsdA8V4lBwYIUOgS2usBbQ98VtVhcJA4PdDk22y0yay1jPfX5+4U4WNAVi
	 afmy84dHmDol2R40ic/ic8sw6k0MovWiHmtNSWan0Te3Atw6oxaUaMSLNXqE+Mkm2O
	 SGUD/MXqq6hDyq9sMjMbHrcdGynQXD5U2P81NrD2OJuuuq6C+sZvMqtfpDhJdg/8mh
	 4ue44vAQpzMBpM2ohjaZYc5NkxwVK3H6LLLRX509I3Tceuy5hSmejgLEQbZW+gg5XP
	 scnTZZhxw2YMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o964N3dniSO5; Thu, 12 Oct 2023 19:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 822186108D;
	Thu, 12 Oct 2023 19:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 822186108D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C593A1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C86541E40
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C86541E40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hD9qhePKXBYY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:09 +0000 (UTC)
Received: from mail-oa1-x49.google.com (mail-oa1-x49.google.com
 [IPv6:2001:4860:4864:20::49])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D72041DD2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D72041DD2
Received: by mail-oa1-x49.google.com with SMTP id
 586e51a60fabf-1e981a23e59so983425fac.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976828; x=1697581628;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pa7deZDH3/y1FuC+NXYPP7L7Yz4eW2ecVvy54MDyytM=;
 b=Kz1j8it5k6y0t9bBF93kBVJWXUbINh7O0greRFI7FO8edxzsF8BoQUoMDeTpbM2k3w
 ttuomg6ytEou5f7pHCndiIdd8ar//ELzWIdqPzar/52J8c2ooyaBu0PLsVYYqKWQU4Vx
 iJzbjGqFaqiRV5eonRntFY8Z7SHnhHrVaUe6sxDRQFLJ6MaqXkVjCOLeYx2t1XDtAfMi
 4VUPov2t307eTrhKxwzo+jNR0WU9cKJHVwBOv4sN/wXKr8XK80PGKVijwPkH6U07DpyJ
 iqnkHWmFZBZepYgTBVnRLX2//keZdJtHt02/vPEbpI9EfPMdtZPHobMYCKoe4J46Krpr
 dhuA==
X-Gm-Message-State: AOJu0YzD1Tkp6f/glbYTriJa+sKAU3hGpB+cIattxALyrsrk9iU0IlYz
 m6wj0B/pJqsJ8QkSrFLOHg08YtUG5loOatXwlw==
X-Google-Smtp-Source: AGHT+IEadZBbjvmTPKL6ZoF9E9/8NzOm+22mrGAZMVtdJWKWPzsgKk+C0ltQCmzXV0c0zTmFQFZqIhheM6Siw0DEMQ==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6870:b7b5:b0:1dd:7381:e05 with
 SMTP id ed53-20020a056870b7b500b001dd73810e05mr8328180oab.3.1696976828369;
 Tue, 10 Oct 2023 15:27:08 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:26:55 +0000
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
Mime-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976824; l=1965;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=rxi6aLNd8v6Nf40hnmQomEOrEb/86fYL7CHbZkLYeOc=;
 b=j6JQnwbowPf3dzuBaUDjGqeCKA2qyFTP3KIo3eNBNMZczwWVdcd3sWaiujAjoY1XHmfpZr4MB
 wYA0z04z+jOBph3+HO6oqCmF+03nCsxlBi/fNo6z+SwJCX6k5QcwpK9
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-2-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976828; x=1697581628; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=pa7deZDH3/y1FuC+NXYPP7L7Yz4eW2ecVvy54MDyytM=;
 b=kgRxQ7AnJujNFQmBHAY7mxv64TFa0tNUTp142sXBjBmGzvf2+jrGpqWtMTgVbjgD7P
 wfVy3YZXnmTZ2JaALqydnKdoAnTlsW79VTWyXj0toQnDGDe4+z99alIJxRVmQe3MusB3
 P2+aHVFZmkvpgUA65t0I4DS8JSpGI3vOfmplL6d2qy1r/YWpkdZNoOZ6nAbGlzKh+RXk
 FyGnSM01BDQlF2K2FcrT8ls35CqJ+NQXyaR8JrGsbVHlSHN/DmKcc0j4F/7o+aSA4OJy
 8xO94DeCWDpaBbwph3L5+H7w6wNGTeJqCJZsQ/z+GoA9Bs9BJxZNv+mJnOGRsIcjUGek
 IPdg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=kgRxQ7An
Subject: [Intel-wired-lan] [PATCH v1 net-next 2/7] e1000: replace deprecated
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
 

-- 
2.42.0.609.gbb76f46606-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
