Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4E599DA0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 01:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD13B811D0;
	Mon, 14 Oct 2024 23:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id spn_Qq2v95Pb; Mon, 14 Oct 2024 23:17:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09147811C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728947838;
	bh=K2B0FW8ZH5nWjEg/AXzAlnKbTbSdi9xuM3Vgwwr8KQQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dOk7KLnhdd+9FAMHdOpZh3/vb+colDBkvjhZCUAUecIibmFTa9DipzIYlQ1x3ifua
	 vfJIDbD/D2d37b5bgJ2xvSFGOPspf1vG+39aJUeR+XQGbHpdcJhUujrlHs7YvX608N
	 5TAwo8vOHwmGWyfXW43Six7wv3CSWmR7NB0fHE+3M7KBc/pgcAzsGXybsvaywauxbH
	 NjUGi07h1w469QWhtUXThk1ZCyf3J33aLv3KKoFJp5B6/uzsPL6/b8b8/vsUyZU0ad
	 cB5xN83SLD/VEvhDfG1EGMZcGIWu0slZIWBENIIukuU/8keOp0tObezSdDwU+PpU2A
	 GckGOaYtDonug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09147811C9;
	Mon, 14 Oct 2024 23:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2081BF30B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 23:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78643811AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 23:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RAj_6F-JtO6C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 23:16:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15BCC811B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15BCC811B7
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15BCC811B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 23:16:31 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-71e4e481692so2324260b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 16:16:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728947791; x=1729552591;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K2B0FW8ZH5nWjEg/AXzAlnKbTbSdi9xuM3Vgwwr8KQQ=;
 b=hbb0/Mo99B0FpzwzOt5+GX+U4Kt4M+RQLI5dpO+Z3LjRk+FuZwzUv9EvXzoilXnbBQ
 fv+SY5JE6KFSfPy95yKkAo0PO2XCAixEK5KgyXpEdMoVULirMzyUhn9dXTKz9hPY5I+f
 T8cwJ5ny9+7mzxlS8JgLqZXmIBBNF0K0Ai23KAwUqtTco2RlgIufqGVTUhF7IOMTEVtF
 puFCHDOZlhU81ay04x9oYDYFw472zZTLHUri43uvlq4pgFQ/i+6T7xQKIff9jVIJJnM1
 a/rZ3Z18FD+Pji8yZap6obbD+Xk1Imj3T7+wogC/u2uhEWy0KP1NByHbOpN8s3Ka6qP6
 MDAA==
X-Gm-Message-State: AOJu0Yy8Agy5g3Gj8x9606cpmvQXBmVtykrs/5hDIMAq6Qede5JU0ikE
 5/1HM2ey09Dq/c4+aNh9YzVyWduz4dbqD2s4ADyBi3TsHBXzxMag
X-Google-Smtp-Source: AGHT+IGIPxJJ9r2kB4BtcvYdvYR1x/+1ppYNz4QAE9m866VfOGdYSYuQYWDJmxVzEMp3VVIrPaFjEg==
X-Received: by 2002:a05:6a00:a93:b0:71e:b8:1930 with SMTP id
 d2e1a72fcca58-71e4c17bb0dmr16083237b3a.16.1728947790938; 
 Mon, 14 Oct 2024 16:16:30 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:f281:80d8:4268:4a6])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7ea9c6c1948sm82872a12.27.2024.10.14.16.16.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2024 16:16:30 -0700 (PDT)
Date: Mon, 14 Oct 2024 17:16:29 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Message-ID: <Zw2mTeDYEkWnh36A@Fantasy-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 14 Oct 2024 23:17:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728947791; x=1729552591; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=K2B0FW8ZH5nWjEg/AXzAlnKbTbSdi9xuM3Vgwwr8KQQ=;
 b=QacNZ3N60JOflU+5lIi0IZdywLMyM1Fh81JpurinMtWQmGl7naJD8aWH9OJmxS8GzC
 5JUJQArMF8Kiq33BlBBIA+dfuPUyGlAMYoF28wpTGGq4qZRMRHlzgwPmRVogniBH8mxB
 GHSRHHjeALmFbEGgyTdKFg0wYF8xt6tSadRRkF8DsmiYJiaUlTgQVZVcNMcRaM9VPN9q
 tYT7P4KSW2NW4T+qzHyUO2LEyYid4fXHIYtmtO0yynH8Xdm15dHEWsLevcMSM/vvXzQ+
 2Ln9EnJgNb3q36ELC6wKOAYjsia9xeDNV4Soad4SM7wqEolqEEBOsOSaDKO1kuHrVF+b
 6TBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QacNZ3N6
Subject: [Intel-wired-lan] [PATCH] igb: Fix styling in enable/disable SR-IOV
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch fixes the checks and warnings for igb_enable_sriov and
igb_disable_sriov function reported by checkpatch.pl

Signed-off-by: Johnny Park <pjohnny0508@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ef4cb871452..5a3b10b81848 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3703,10 +3703,10 @@ static int igb_disable_sriov(struct pci_dev *pdev, bool reinit)
 			dev_warn(&pdev->dev,
 				 "Cannot deallocate SR-IOV virtual functions while they are assigned - VFs will not be deallocated\n");
 			return -EPERM;
-		} else {
-			pci_disable_sriov(pdev);
-			msleep(500);
 		}
+
+		pci_disable_sriov(pdev);
+		msleep(500);
 		spin_lock_irqsave(&adapter->vfs_lock, flags);
 		kfree(adapter->vf_mac_list);
 		adapter->vf_mac_list = NULL;
@@ -3739,6 +3739,7 @@ static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs, bool reinit)
 		err = -EPERM;
 		goto out;
 	}
+
 	if (!num_vfs)
 		goto out;
 
@@ -3746,11 +3747,13 @@ static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs, bool reinit)
 		dev_info(&pdev->dev, "%d pre-allocated VFs found - override max_vfs setting of %d\n",
 			 old_vfs, max_vfs);
 		adapter->vfs_allocated_count = old_vfs;
-	} else
+	} else {
 		adapter->vfs_allocated_count = num_vfs;
+	}
 
 	adapter->vf_data = kcalloc(adapter->vfs_allocated_count,
-				sizeof(struct vf_data_storage), GFP_KERNEL);
+				   sizeof(struct vf_data_storage),
+				   GFP_KERNEL);
 
 	/* if allocation failed then we do not support SR-IOV */
 	if (!adapter->vf_data) {
-- 
2.43.0

