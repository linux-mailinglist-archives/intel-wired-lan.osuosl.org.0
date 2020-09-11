Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C7E265F3A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 14:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C19387491;
	Fri, 11 Sep 2020 12:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VjkarUHSgJiG; Fri, 11 Sep 2020 12:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58A2687852;
	Fri, 11 Sep 2020 12:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 468901BF35D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4079686ADB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fCSOgTnkxhRj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 12:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE5C886865
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:08:38 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id jw11so1614891pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 05:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TqSpkfkr+tMBwaFyw5XAodcnlGsbsIbSn3rKcAsTlj4=;
 b=mOJfnuHGe/MCToZH9wkaVfhM5iXwRb17dVqfFWfoVBYqa6TM6qXYurdkH8Vqe1S8nx
 FY6Ka0JvVKwKFH4H0kcM0GvYZJGzk/eIZb6s2ScwN+CnszfaONVg+2wc6bK+R7Y7JKp5
 TL5+RDKQK/HLc5bsMXfJ8zgBMTJLA5uTmLu7WU9dsD/fpmGmuj+rG3XtRv2vUGY4pb3C
 iJPmPOnzFHd1Q//1DUdsQLhgZ5F93VGEyvaoj7CXi7RYAC9cfAE9nRV2bNJ8fBYt0rjn
 n5PbDnqOJx4bbwKsdJf2ygE5gb2ev2x+45ARg4KGW4NR1Ix26slAzd6TUoK0OF2+xnOA
 YsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TqSpkfkr+tMBwaFyw5XAodcnlGsbsIbSn3rKcAsTlj4=;
 b=Y0MSrH3ONDBWZoJVnHm03g5le9dA4jHN5oZesDhtlkPDDTkvGN+B4nEvev84O3EM2r
 lImlQRQPfoHCDuQSbpPjeHVQBEj+rdBWG5LtxnHlaIq6lVwULVqgi5F+ZXyXwSRgr+u8
 SyXf5cXyJRc0VxHzM4qUSB2/znWHYzIFThMrhVCA4naSt6XI+QlCbJfSuiiYgYaxQiqN
 LWhrLl4RJmPh8mQATtv9zV3YeTbDYQA3zybJQV1XM5mF19H+jQBtVnFhnnD/YjrvRSyM
 qEx87fZTt2Zt8XFfilUyqzgDLmDquQ4GEFMczK6xxPFn5OLh7AAyvpgUl3zf1N57s1yY
 hqng==
X-Gm-Message-State: AOAM532cM11xxE8Dn9cXqNfUMwqU3ANFcGfjPwA9AA+Lgyi3mklSLNvL
 K8vHWkyK2llL7yHiAjdbZqQ=
X-Google-Smtp-Source: ABdhPJxU6Hzk/eEPghef+A/tc7PbZOHogU9xSD8f9jKwHoQAvo8+jcBdodG/eCLN/NWXKsTH3X1QDw==
X-Received: by 2002:a17:90b:70e:: with SMTP id
 s14mr2105179pjz.206.1599826118580; 
 Fri, 11 Sep 2020 05:08:38 -0700 (PDT)
Received: from VM.ger.corp.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id a3sm2239279pfl.213.2020.09.11.05.08.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Sep 2020 05:08:37 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
Date: Fri, 11 Sep 2020 14:08:26 +0200
Message-Id: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 maciejromanfijalkowski@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
reason, we only allowed main VSIs to be used with zero-copy, but
there is now reason to not allow VMDQs also.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 2a1153d..ebe15ca 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -45,7 +45,7 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
 	bool if_running;
 	int err;
 
-	if (vsi->type != I40E_VSI_MAIN)
+	if (!(vsi->type == I40E_VSI_MAIN || vsi->type == I40E_VSI_VMDQ2))
 		return -EINVAL;
 
 	if (qid >= vsi->num_queue_pairs)
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
