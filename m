Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B2A35E13A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45C3F844CD;
	Tue, 13 Apr 2021 14:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3mnYhUUzaRQy; Tue, 13 Apr 2021 14:18:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 558A5844C8;
	Tue, 13 Apr 2021 14:18:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B595F1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 06:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A99E560690
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 06:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xaSalsY6n8YK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Apr 2021 06:58:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C696660653
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 06:58:14 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id b26so3446477pfr.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 23:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R61KIRW9eJhAauoZ++ww3cJarlsZLJBuOebMWuzeCs8=;
 b=PhRRBRVM13us4+Vnnf8O8QY/seKGZHYKcHE/fmGn3iNXzY7+dyQkfelUrbJdeLHJ3y
 gAYiqylMaDfzvVd2UJhKJ6CnGZrMLW3RA54wCwwZO5caSQodJkxOFN4C/ebVnSRtkdw9
 8FR2Dv7EGlbLsf01Be0tnY9rTlQszP2qDn4tsnR4tXkL0DqQcEw3WMVElKNhhcaV9awS
 1R+I3RvtuvY/4IChSM93U17e6yqlgI2FSQ5qHZjI/dTGoafISCnCn2nRjMsPh53dv8XA
 5gnuZfgxqwYRMndVboB9ir/7ypLJFCPYO5opFKzLvIxNgIyBmNn8i40+PinSy556sL7i
 HuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R61KIRW9eJhAauoZ++ww3cJarlsZLJBuOebMWuzeCs8=;
 b=ShQe2vUm+hW1busVxvKv5zSvuTqRZadUkQ4TJYASizNoqgkO6OrlWspofcojpj4k3Z
 LEFrA3LsRfte69gPq0kvuF/vIQTGyk5j4iCHM/kCvYpqc38Lwd0d7ROx1pu3wegMzYqs
 8mALk7GkrHiS9o3I7MhRfOMyT7GqLZQGFSXP9GVagNINZnh9VHGF8LSOLMu7HVFpAAb/
 lxjnqpIeO2uMnqYv7KwEFffRKm4KZbKBc7yt6PXbRyOrujilG9Tnr6WhS3aYtAZJlP39
 qyQ2e5qMIaqeLu3Gl01Ez81FwywxGPYcZe0TAYdAxi77/SNAp5YCwwF5fABYoLA+W00y
 vgpg==
X-Gm-Message-State: AOAM530CBnAPe1o1O4KmD8HXrYhZP7zRlYw9vPtuZfAZfXXTCiasoG4E
 TYmi7lsRkqnwffRstShNYLk=
X-Google-Smtp-Source: ABdhPJyK4C7wwWmayAbPvEzyPx4pgsKzynqeaIvEX0hhz9GCmhkg6IQlCYZxQsqm7Or77mnPisyOAw==
X-Received: by 2002:a63:5f0c:: with SMTP id t12mr25183838pgb.381.1618210694278; 
 Sun, 11 Apr 2021 23:58:14 -0700 (PDT)
Received: from localhost.localdomain ([103.112.79.203])
 by smtp.gmail.com with ESMTPSA id v135sm10538992pgb.82.2021.04.11.23.58.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 23:58:14 -0700 (PDT)
From: kerneljasonxing@gmail.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Date: Mon, 12 Apr 2021 14:57:59 +0800
Message-Id: <20210412065759.2907-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Apr 2021 14:18:41 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: fix the panic when running bpf in
 xdpdrv mode
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
Cc: Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <xingwanli@kuaishou.com>

Fix this by add more rules to calculate the value of @rss_size_max which
could be used in allocating the queues when bpf is loaded, which, however,
could cause the failure and then triger the NULL pointer of vsi->rx_rings.
Prio to this fix, the machine doesn't care about how many cpus are online
and then allocates 256 queues on the machine with 32 cpus online
actually.

Once the load of bpf begins, the log will go like this "failed to get
tracking for 256 queues for VSI 0 err -12" and this "setup of MAIN VSI
failed".

Thus, I attach the key information of the crash-log here.

BUG: unable to handle kernel NULL pointer dereference at
0000000000000000
RIP: 0010:i40e_xdp+0xdd/0x1b0 [i40e]
Call Trace:
[2160294.717292]  ? i40e_reconfig_rss_queues+0x170/0x170 [i40e]
[2160294.717666]  dev_xdp_install+0x4f/0x70
[2160294.718036]  dev_change_xdp_fd+0x11f/0x230
[2160294.718380]  ? dev_disable_lro+0xe0/0xe0
[2160294.718705]  do_setlink+0xac7/0xe70
[2160294.719035]  ? __nla_parse+0xed/0x120
[2160294.719365]  rtnl_newlink+0x73b/0x860

Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
Signed-off-by: Shujin Li <lishujin@kuaishou.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 521ea9d..4e9a247 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11867,6 +11867,7 @@ static int i40e_sw_init(struct i40e_pf *pf)
 {
 	int err = 0;
 	int size;
+	u16 pow;
 
 	/* Set default capability flags */
 	pf->flags = I40E_FLAG_RX_CSUM_ENABLED |
@@ -11885,6 +11886,11 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	pf->rss_table_size = pf->hw.func_caps.rss_table_size;
 	pf->rss_size_max = min_t(int, pf->rss_size_max,
 				 pf->hw.func_caps.num_tx_qp);
+
+	/* find the next higher power-of-2 of num cpus */
+	pow = roundup_pow_of_two(num_online_cpus());
+	pf->rss_size_max = min_t(int, pf->rss_size_max, pow);
+
 	if (pf->hw.func_caps.rss) {
 		pf->flags |= I40E_FLAG_RSS_ENABLED;
 		pf->alloc_rss_size = min_t(int, pf->rss_size_max,
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
