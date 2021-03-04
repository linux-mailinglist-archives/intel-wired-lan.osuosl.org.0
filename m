Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C2032CA96
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 03:56:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 863814313A;
	Thu,  4 Mar 2021 02:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TRPndYNGHaY; Thu,  4 Mar 2021 02:56:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A15C442FBC;
	Thu,  4 Mar 2021 02:56:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1524E1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03E916F4EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34qDnyodmZA8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 02:56:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B748606C2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614826578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FA6BZuyV38c3YF27I/4JJzwcZMi3L5CohRcD+JgR934=;
 b=C7CbfRqfOxOfSMqLhfStq13iSPFjAqshAboDVWlfG74gBDRqeu4boPAdMqubFzaUTEIi1M
 kZLqU++2Z1iawfGS/dJYCJTsIMtGlLBITVgZHKL5JraX0UpSsjeUxIxkNLyDBgzWSfhmH1
 Sp2nyWHEpOC9oCSslHCA6bgi/uXSlRI=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-dGKAjqB7PZWiNDcXDMekQQ-1; Wed, 03 Mar 2021 21:56:16 -0500
X-MC-Unique: dGKAjqB7PZWiNDcXDMekQQ-1
Received: by mail-pj1-f71.google.com with SMTP id w2so6098167pjk.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Mar 2021 18:56:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FA6BZuyV38c3YF27I/4JJzwcZMi3L5CohRcD+JgR934=;
 b=FP3lp4zxEE/ZqjRTRIDQG/JTbMV8h2/SNspmhhhe+Rqch+j8sHseShG3WYVAdqypJV
 Qij/p5G+NR6Ja38t810q0kOCAQr2IW5JNiL/iNOxyR98JDEVnEtUhGf7a7v195jPsCqa
 GL6DhkIiUlRllT01uoR8tVxj/DpACMMIP6ExEPIRR7ffihkLaCDhdEWia736gmiCBmuP
 DpDjkOXAqcu1OmNhzn+1cbyc5lTub8Z1wvP+EocYXdU3C8ggkoGn8e78b9Yw8/uGWXsj
 0zc5mxzAjSGEajsZMK+WkhAAN62rZQFEdylBRjBxi2Zy+HUIJ1ZDCeA3HyJN4wk0P74Z
 Go7Q==
X-Gm-Message-State: AOAM533lpbgEQAJEPqKfPruappjnM00tYzzTZGiafLFEpz7Rejxfdvug
 XISM/QwlJBo548xC1XZRnNpcEsIHMo7eNzBy2h7WN7Me7HaDXEuUmCGLdrJ5oSgwbkUYTM8RFRo
 JvKyGk0MNif1Q4AAS5ot6DBBr/kT0nw==
X-Received: by 2002:a65:5c44:: with SMTP id v4mr1744688pgr.362.1614826575664; 
 Wed, 03 Mar 2021 18:56:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz1bASs2zrVWtBHAHrTSx94w1A1x/eQEswXocM9aF31cnI8Y/v8xm2wnwLv/SjOD2bhlB1lfg==
X-Received: by 2002:a65:5c44:: with SMTP id v4mr1744680pgr.362.1614826575451; 
 Wed, 03 Mar 2021 18:56:15 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id u17sm701808pgl.80.2021.03.03.18.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 18:56:15 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  4 Mar 2021 10:55:41 +0800
Message-Id: <20210304025543.334912-2-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210304025543.334912-1-coxu@redhat.com>
References: <20210304025543.334912-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH v1 1/3] i40e: use minimal tx and rx pairs
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
index 353deae139f9..77bf8c392750 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6,6 +6,7 @@
 #include <linux/pci.h>
 #include <linux/bpf.h>
 #include <generated/utsrelease.h>
+#include <linux/crash_dump.h>
 
 /* Local includes */
 #include "i40e.h"
@@ -15485,6 +15486,14 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
