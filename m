Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDE832111E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 08:07:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 961676F526;
	Mon, 22 Feb 2021 07:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-n6rXQF-Wy9; Mon, 22 Feb 2021 07:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 525916F515;
	Mon, 22 Feb 2021 07:07:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44C3C1BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 402C385AA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9eYZRpR6sJw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 07:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ACFED8574B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613977657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VDuXO5zUJ4skk3u4UbGFqeIktbCo8MisQ81CqMl1/44=;
 b=ZfMuBQZ5f4BSmh69k0PT+eQcipqM3pCIsPl/C8vZjJ4x15lnXh5+Xf/LPtvrnYjFbT7IzS
 +C5yVD9MJpaiD7V4q7DhNR203g3sMp8RbM/xLY5skr1I7BG18sYnauj0ZJ2JLMLGynNZXU
 pYQxm75UEVR0LodOBzgF9zUxcR/hP5o=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-CgWlantUOuChGA4Kr9KbRg-1; Mon, 22 Feb 2021 02:07:31 -0500
X-MC-Unique: CgWlantUOuChGA4Kr9KbRg-1
Received: by mail-pl1-f197.google.com with SMTP id d19so7623343plr.9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 23:07:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VDuXO5zUJ4skk3u4UbGFqeIktbCo8MisQ81CqMl1/44=;
 b=MrdGUeNEvJa86484k/kfvyIEV/8M86t7XEkEfTWYLjXRPBLItWqlpZXcCUc+ru0txN
 6yzJuHenIbuADENpKJfmbizGEoUZPkzvmGrk5mGbR2lkkfRcLkdLu85VOfE0lmYj19dO
 Rfn92aw+dvdcpi7kws/pJoVya/jKsB+elFhBZ9AcWIgNXl18mB7yp/KLsBJ+8aQKE24f
 wRMXO+eCbrDv51BgEmmiWTjeYAzMIj24cHqBPAfeFkLTPjr/B4gVNdMD5uGWzWXytY0v
 0SSIrTayaAt65Ei1KuK1y6/bd4AEzQA+AlaDnk2mo7qRiD682CVmB5LDUFPoNopXOpHQ
 Vt6w==
X-Gm-Message-State: AOAM533YoYBCO20XW0CrmVcEeNz0iBcgNB2A8mk4cRU9LpjBYXr8KxdD
 c3/nc837lhvfV1TMmbNw977whEd4T5mtpsbpVKh/DJ+Nig+iqb1kqFyGQN4nWjTiikX2rHZy7VS
 TbRpg4oss+XLMZHQNDIG1LSmxNpfGqQ==
X-Received: by 2002:a17:90a:cd06:: with SMTP id
 d6mr4867754pju.138.1613977650544; 
 Sun, 21 Feb 2021 23:07:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz79OrKbRrtAfiD6Esm6oEGGKH8K+mEKBsf+u12b+o9o8Q4Qyg003s3d36qBlqAERFQrUMlJA==
X-Received: by 2002:a17:90a:cd06:: with SMTP id
 d6mr4867739pju.138.1613977650377; 
 Sun, 21 Feb 2021 23:07:30 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id g65sm16855068pfb.20.2021.02.21.23.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 23:07:29 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 22 Feb 2021 15:06:58 +0800
Message-Id: <20210222070701.16416-2-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210222070701.16416-1-coxu@redhat.com>
References: <20210222070701.16416-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [RFC PATCH 1/4] i40e: use minimal tx and rx pairs
 for kdump
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
Cc: kexec@lists.infradead.org, open list <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set the number of the MSI-X vectors to 1. When MSI-X is enabled,
it's not allowed to use more TC queue pairs than MSI-X vectors
(pf->num_lan_msix) exist. Thus the number of tx and rx pairs
(vsi->num_queue_pairs) will be equal to the number of MSI-X vectors,
i.e., 1.

Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1db482d310c2..069c86e2f69d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6,6 +6,7 @@
 #include <linux/pci.h>
 #include <linux/bpf.h>
 #include <generated/utsrelease.h>
+#include <linux/crash_dump.h>
 
 /* Local includes */
 #include "i40e.h"
@@ -15000,6 +15001,14 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_switch_setup;
 
+	/* Reduce tx and rx pairs for kdump
+	 * When MSI-X is enabled, it's not allowed to use more TC queue
+	 * pairs than MSI-X vectors (pf->num_lan_msix) exist. Thus
+	 * vsi->num_queue_pairs will be equal to pf->num_lan_msix, i.e., 1.
+	 */
+	if (is_kdump_kernel())
+		pf->num_lan_msix = 1;
+
 	pf->udp_tunnel_nic.set_port = i40e_udp_tunnel_set_port;
 	pf->udp_tunnel_nic.unset_port = i40e_udp_tunnel_unset_port;
 	pf->udp_tunnel_nic.flags = UDP_TUNNEL_NIC_INFO_MAY_SLEEP;
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
