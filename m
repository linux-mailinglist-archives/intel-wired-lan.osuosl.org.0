Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD537C7641
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EACB6105A;
	Thu, 12 Oct 2023 19:06:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EACB6105A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137616;
	bh=zUPT5MqDRZDsnDiX1ERmMSGu7mO+WZz+HAC3FmnByGk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kFu4LoYagHwurgik1422/Qn2O/09nV1YlvO3PybHOciV6Hn2Uxpja9j4EJJiytwvh
	 IhJXwNz16rI6Ucg4a0LleIQlm4rFdTBzjtqVvl178r9HJ2v0TntzVlgIpSoG5mk+MY
	 icEJSLKT817OlpIFTUBuIE7Vj/mfGC5jiJ/7XevBhP48iWqPVBd3ax7cH27WthIa53
	 sIKGOCO8bcHldGIwgqXFiA9OAcNaouaYXz7NnkIO2ucDCRV+xjjuaThmf5ujkMTPLL
	 JXJbvTq1n7gY7k+AQDVV/Ciwk4QgwWAWoktxnDOMASoGCrjdNxM681uZyWOjau/4A+
	 2IdfK5E6CHHAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-mnLNDNrtUD; Thu, 12 Oct 2023 19:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C331F60BAD;
	Thu, 12 Oct 2023 19:06:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C331F60BAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00C411BF427
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 23:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CCDFE60E77
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 23:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCDFE60E77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFeEidmwh-ST for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 23:41:03 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDC1B60BD1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 23:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDC1B60BD1
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-59c09bcf078so76346907b3.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Oct 2023 16:41:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696894862; x=1697499662;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=A6Z4evA91RaB6pmH2A/2rhvKNwl4+C0QTWWpQbLxwWQ=;
 b=FnODtoBVyNeHBFwS8rCCK6iqMAPynWqFWd9/krKQQGmK7gTsast4RHOQk2mzm40/0m
 qM+yDPBzdZY0smlJAFahV+xph8+TiTdbjbzxstzfOanHVyYoXK0y91Upf6pJvH1TKjR9
 Bk0pDSERPoYlsApgOD6ekeTg6sCDlbZ9seIu+pil7Z74K6jg2F7gPy5Xu7LzKT9LpqUm
 UbwpuNze1tKfGCYG0uVTEbgnS3P1UeGEXO4MVZ/98FiKEoquEaW8zdNM51Gzi7X5Nqgk
 el4MAhEmjVVeq33eOM5cVgbxYUvwKhaEtTB8YbN6+wO+Nx0IABYLNHjDlNiAlMcZiqUF
 q6Kg==
X-Gm-Message-State: AOJu0YztTcoXX3kydB1VeEO7etd7PcV/69VN8A/kZWFxfdUsFdN/Eqxd
 faNDlAA0sEYZD34mO/xHp7P/DlIE9O8wZQ+9XA==
X-Google-Smtp-Source: AGHT+IGx5bzH8i9gi0scN1ZcZer1Nz83kHCbQMDLy4zOwOK19tSyG5kJ8Zj40xQk1LSh/8UqMGwUUOHA3V/a7HBHtg==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:690c:2c8c:b0:5a7:afd5:1cb1 with
 SMTP id ep12-20020a05690c2c8c00b005a7afd51cb1mr31543ywb.1.1696894861758; Mon,
 09 Oct 2023 16:41:01 -0700 (PDT)
Date: Mon, 09 Oct 2023 23:41:01 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIyPJGUC/x2N0QqDMBAEf0XuuQdJtEj6K6UPJVnrQUnlLohF/
 HfTvs3AsLuTQQVGt24nxSomn9LEXzpK87O8wJKbU3Ch985FtqolLV/OKivUuKAy6gz9gZSKN6O
 FnHi4DqMfY45TSNT2FsUk2//r/jiOExbB7zl7AAAA
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696894860; l=2207;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=XvVTVgj9L3pc35eYMTZ+RVyQ6ZuyIqHrJFw3fZ6pxVo=;
 b=fGuGaHWljs9MXvOhbcaaNDiRGNceZqYhpBDPSUvVWleANuYMUnmCNkLdx8nZcCsE77WqOQfIg
 p/9Sahdrv55DWIKFkxJFDo8Y7ZNIJJkS44FJROIsdggDIJ5wbfN7Rmv
X-Mailer: b4 0.12.3
Message-ID: <20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696894862; x=1697499662; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=A6Z4evA91RaB6pmH2A/2rhvKNwl4+C0QTWWpQbLxwWQ=;
 b=ZSoh5hqeb19YAq6yuPmWqkAYZF2LJW4Qb2YkU8F1izShfDxMjyK6lnXVcP1Vywv8AR
 NOw+soCWGjW8e1/bOYCtioQoKaBhekJJWRy+7GuPlPREEY74GF/5/MGp0cBDnZrnFBxl
 rJKw/n2dI1wtKCga4tPk0QqP3+uOL0XCdlxbUWiIKBRtj5WUt73snyhr7DHKJFfkluc+
 qQ0VqBrRMpcr+hyobKnxJDOSbRNiv+msG3MZIKaVKegJxerYbnaI+D/xQ3NZNgprl8uw
 2CeaDnELxKq4j2jcQl/Fyf0wa1TEVERECRJpqadqB3Yi/j1PvV/hUBqOQfBGFozsGg49
 /4kg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=ZSoh5hqe
Subject: [Intel-wired-lan] [PATCH] e100: replace deprecated strncpy with
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

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231009-strncpy-drivers-net-ethernet-intel-e100-c-4547179d9f2c

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
