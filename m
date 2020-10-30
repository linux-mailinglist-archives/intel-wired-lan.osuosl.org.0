Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B312A07D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 15:28:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C15552050D;
	Fri, 30 Oct 2020 14:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V+jP2wvyDmmK; Fri, 30 Oct 2020 14:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ACACD230FB;
	Fri, 30 Oct 2020 14:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 388981BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 07:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC94B20468
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 07:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxukjMKwLKIC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Oct 2020 07:38:03 +0000 (UTC)
X-Greylist: delayed 00:17:41 by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by silver.osuosl.org (Postfix) with ESMTPS id B0C7920385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 07:38:03 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id x203so5771421oia.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sslab.ics.keio.ac.jp; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Nn37IfTCXj7OmHgyU0P/qf2aXP/R5yi/4Un5UCinwUE=;
 b=MJ4AKEXn7TirRPKSoWVdZOqbNugwSZWnOJSKdKoZwBvgJ2HvloooFF8TK6++IkvgR/
 LG3qbXpz+St1TZ8+d/VnMmvoAStv2CDgczOGUs2r11P8ViMcwHmgfRpj/wLW7hlo+TwC
 I+EuRT6mAu0aLtMGFtMtMoxEfM8ODh7OnnIb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Nn37IfTCXj7OmHgyU0P/qf2aXP/R5yi/4Un5UCinwUE=;
 b=ech7BRZSWIER2IUYNhhTQ4GXYEU4m9KRQj18r4ZYjxGahPgRaWhI7EPMfYlIpapcRA
 LE/2vKBNp3qEVnCwCl+sgIqrXlPctPLC7UqcG47vEV/nBdRCg9TYboBRlZNzhfWzF/E6
 l3/d+p+SP5X+PzmhpDlC9E5r/IDv12+Fr0CqKY/aIu57tXHZWivDgFCHtVyW6XDD3Lzx
 OFTVR6I7Pnw8QKQP+VSUWC9MaA92Ta2zYnpJjIHk6ZkC9LuGTzrpknO2sAakmTUPMvrl
 S3VKqIsEpjkeK87fC4h6cqporjN8riRaLgV0tzsg4fhec0+x9Ytna/2aGYur7SV1TpF7
 UlEw==
X-Gm-Message-State: AOAM532gW7nau2gKM9tuix0UyFLFScCcFpsnH+72rYiOCQmRD9MG1udr
 4uGXlJGJhy+GOD1NgBvz0aR7Wf14dJzwduq5FKQ=
X-Google-Smtp-Source: ABdhPJyM76ixBnDtfwwg71qY1GdE0SSR1uXigQAvZciL/lMm6nMzKuHOPOTW2EhMHzsyMoq95V1IpA==
X-Received: by 2002:a17:90a:73c9:: with SMTP id
 n9mr1231337pjk.90.1604042085301; 
 Fri, 30 Oct 2020 00:14:45 -0700 (PDT)
Received: from brooklyn.i.sslab.ics.keio.ac.jp (sslab-relay.ics.keio.ac.jp.
 [131.113.126.173])
 by smtp.googlemail.com with ESMTPSA id y203sm4996152pfb.70.2020.10.30.00.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 00:14:44 -0700 (PDT)
From: Keita Suzuki <keitasuzuki.park@sslab.ics.keio.ac.jp>
To: 
Date: Fri, 30 Oct 2020 07:14:30 +0000
Message-Id: <20201030071431.10488-1-keitasuzuki.park@sslab.ics.keio.ac.jp>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 30 Oct 2020 14:28:40 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Fix memory leak in i40e_probe
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
Cc: takafumi@sslab.ics.keio.ac.jp, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 keitasuzuki.park@sslab.ics.keio.ac.jp
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Struct i40e_veb is allocated in function i40e_setup_pf_switch, and
stored to an array field veb inside struct i40e_pf. However when
i40e_setup_misc_vector fails, this memory leaks.

Fix this by calling exit and teardown functions.

Signed-off-by: Keita Suzuki <keitasuzuki.park@sslab.ics.keio.ac.jp>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4f8a2154b93f..428964c4ade1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15104,6 +15104,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		if (err) {
 			dev_info(&pdev->dev,
 				 "setup of misc vector failed: %d\n", err);
+			i40e_cloud_filter_exit(pf);
+			i40e_fdir_teardown(pf);
 			goto err_vsis;
 		}
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
