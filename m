Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AF93C7199
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 15:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 589E3402F3;
	Tue, 13 Jul 2021 13:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m5LzXEFRC5bf; Tue, 13 Jul 2021 13:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D35440242;
	Tue, 13 Jul 2021 13:57:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C830F1BF857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 12:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B67BC60895
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 12:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KggF4Un0Paax for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jul 2021 12:20:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41701606B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 12:20:43 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id 37so21466618pgq.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 05:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N12Qt0FbX8/A1qRMnGp6XJs1s3QP6zmQUn6Y4fY3u94=;
 b=hfylIuaTT2n81A+A5vS0z3hJLKe3dvZTZw1MoT9Kpifs+cFkL+LOJ9zq0o130wRkqe
 nnp+KeDfqvAkInKZO3PvoCSx5716riVxvltU0TobGnesfnbMUAFW1AExyChi37nacWKK
 OywwrydZum1BJGoqpIU5hjWDX6+XFc9b2T2t+5qkuPJtlaXoeXcjAKFgKie8bZgh9nrI
 I8Q4gIIn5jIS6T4NcUR3+MOqgVaH3zA2j18/gTyjVqaagGUymW4TV7U4uV7ZCXYxHbe1
 BrvS8Sce5SrcltkHn4cuuqSxCL9nncOx7u9/iD9b783lq50K4aDs0ZE6sPge+FHGuLxn
 SkBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N12Qt0FbX8/A1qRMnGp6XJs1s3QP6zmQUn6Y4fY3u94=;
 b=TDS7gWog6iEanypSTM4bLG2evcphHhYndSiSU88INyTp07GdF0+qHvO5Ni1bV1Sdzg
 Mhz5dBZPsIrrPn/geItQiGng0mQ7s29DM+yz1ykGCkM3x9Whk3xtk0Anxhs6+Ux6+Vcr
 My6yspt2F+9pejCc/7gcZvMOu1vCujq2vvot/i1n/ze28yaEOyFaAYw+u6peuK0gtw5k
 J7ES2R6RbVgQArCuDoyov+kX21Dzfuj11KYIX72XQZj7pBvcmrGTDsnRS6V1T6woaAgV
 Gs/ZK5gi6LIWm5Bv4NjOEq2Y1IDmqj6bsDLxJo/Q1w13EvQfq5fjjKCfq7EL3jxwM9Q5
 K3OQ==
X-Gm-Message-State: AOAM533BIHpx9bxS0SYIYfpjM1QO6Q3W1pamr5edednmvOuvqbpOGNcd
 WvTPu7yV1A89MFSo5ndxsY0=
X-Google-Smtp-Source: ABdhPJxPMiF0vYDmisrDv8/T6niOAkHikVbq4qnURKb/AumrClNXbcI7A+KC4w3ocfGZkTX2IrtuXA==
X-Received: by 2002:aa7:90c8:0:b029:32c:935f:de5f with SMTP id
 k8-20020aa790c80000b029032c935fde5fmr4380311pfk.79.1626178842534; 
 Tue, 13 Jul 2021 05:20:42 -0700 (PDT)
Received: from localhost.localdomain ([154.16.166.218])
 by smtp.gmail.com with ESMTPSA id d14sm20248253pfv.171.2021.07.13.05.20.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 05:20:41 -0700 (PDT)
From: Dongliang Mu <mudongliangabcd@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Shannon Nelson <shannon.nelson@intel.com>,
 Catherine Sullivan <catherine.sullivan@intel.com>
Date: Tue, 13 Jul 2021 20:20:27 +0800
Message-Id: <20210713122028.463450-1-mudongliangabcd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Jul 2021 13:57:22 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Fix error handling code of label
 err_set_queues
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
 Dongliang Mu <mudongliangabcd@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If i40e_up_complete fails in i40e_vsi_open, it goes to err_up_complete.
The label err_set_queues has an issue: if the else branch is executed,
there is no need to execute i40e_vsi_request_irq.

Fix this by adding a condition of i40e_vsi_free_irq.

Reported-by: Dongliang Mu (mudongliangabcd@gmail.com)
Fixes: 9c04cfcd4aad ("i40e: Fix error handling in i40e_vsi_open")
Fixes: c22e3c6c7912 ("i40e: prep vsi_open logic for non-netdev cases")
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 861e59a350bd..ae54468c7001 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -8720,7 +8720,8 @@ int i40e_vsi_open(struct i40e_vsi *vsi)
 err_up_complete:
 	i40e_down(vsi);
 err_set_queues:
-	i40e_vsi_free_irq(vsi);
+	if ((vsi->netdev) || (vsi->type == I40E_VSI_FDIR))
+		i40e_vsi_free_irq(vsi);
 err_setup_rx:
 	i40e_vsi_free_rx_resources(vsi);
 err_setup_tx:
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
