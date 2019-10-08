Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28760D02AE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 23:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA6C922849;
	Tue,  8 Oct 2019 21:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7NvrOAOpSg9; Tue,  8 Oct 2019 21:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD0A8228CA;
	Tue,  8 Oct 2019 21:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B11C21BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A892B864AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MwvMjcTATrrx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 21:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 84CED862D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:34 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id c3so7549592plo.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 14:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=ym7Po/ipIr5qsZP6Wss4YgBN/Fdm72GjN294jAaAbXM=;
 b=BtKrJlf9z/iIQeSybJI790Nc8Ch0XBlYX7hUUYU2k5P1NSzuCbhvLuQ9Fasj8c/RLV
 7T9QSQgP592on+stFymuyY7HFtJYHHmaQUld1uHY4mDzn9QBKe5aNWMNF3+4DT8w1kc9
 oq2QFLB9RxUoq7mkv+UsOinrHBJVOoDETFv/nMlzdP9AWvscwIStfHxPOcf16FYFRrkf
 i/IMHnflmMNpPgwv19O3DHEJEGpmCbrEad859AEJVEOzmrQBr4UvxvV2eWEp8u0isxTD
 pOorsK0jbEjry86XHen7qyBzn9t1ValfktI0AxGsnD5jHia/qvfYeWWlbLOgDqjUOfzj
 loOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=ym7Po/ipIr5qsZP6Wss4YgBN/Fdm72GjN294jAaAbXM=;
 b=fcSiZqYlwLhjWj5zKskq3FbWs3aKlprl34ubCJW2Z4q40J6+y2XSx/M3BgauFuHdl5
 h86d7cHYaYEA3+JT2ipfMhPexexQwywNj5jL8UZKwjg+8B4GspsQ6GvkCJd65uwlA+21
 jZJO+gNOfSIQbikLxHzzpHZxIsbbcplYGyiq1Fi3bOk/Y5lA2F5hC4979eDlKd2K59kZ
 AzyvtoYIB3QRxWa13GlbUAN4tCH4AQq9tu9/vL/adqqE5MSg9uAQFBxFLbfDkwNdRS/j
 m1KP+wVVcrIp3KzCfn5m2F8j5bFjSjojwYu997chr2Hd5RUZ6CC+wMApyYf5B7N09alQ
 nFUA==
X-Gm-Message-State: APjAAAVllCZjCd43WT0l3TjNp2QHC86yJLz8rYknjG5cikel1zhH+hxr
 uY+9QQTRF3why2MW3wDMFc0=
X-Google-Smtp-Source: APXvYqwOsqx/h8V4j7TZDE3vB8YZXnJjOfzNJPlCEl5sUI5/OhZG4vNUhrhz/+y7QMNteEibu8WPhA==
X-Received: by 2002:a17:902:aa07:: with SMTP id
 be7mr6106318plb.172.1570569393783; 
 Tue, 08 Oct 2019 14:16:33 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id l24sm55274pff.151.2019.10.08.14.16.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 14:16:33 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.h.duyck@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Tue, 08 Oct 2019 14:16:32 -0700
Message-ID: <20191008210639.4575.44144.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH 0/2] Address IRQ related crash
 seen due to io_perm_failure
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
Cc: netdev@vger.kernel.org, zdai@us.ibm.com, zdai@linux.vnet.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

David Dai had submitted a patch[1] to address a reported issue with e1000e
calling pci_disable_msi without first freeing the interrupts. Looking over
the issue it seems the problem was the fact that e1000e_down was being
called in e1000_io_error_detected without calling e1000_free_irq, and this
was resulting in e1000e_close skipping over the call to e1000e_down and
e1000_free_irq.

The use of the __E1000_DOWN flag for the close test seems to have come from
the runtime power management changes that were made some time ago. From
what I can tell in the close path we should be disabling runtime power
management via a call to pm_runtime_get_sync. As such we can remove the
test for the __E1000_DOWN bit. However in comparing this with other drivers
we do need to avoid freeing the IRQs more than once. So in order to address
that I have copied the approach taken in igb and taken it a bit further so
that we will always detach the interface and if the interface is up we will
bring it down and free the IRQs. In addition we are able to reuse some of
the power management code so I have taken the opportunity to merge those
bits.

[1]: https://lore.kernel.org/lkml/1570121672-12172-1-git-send-email-zdai@linux.vnet.ibm.com/

---

Alexander Duyck (2):
      e1000e: Use rtnl_lock to prevent race conditions between net and pci/pm
      e1000e: Drop unnecessary __E1000_DOWN bit twiddling


 drivers/net/ethernet/intel/e1000e/netdev.c |   47 +++++++++++++---------------
 1 file changed, 22 insertions(+), 25 deletions(-)

--
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
