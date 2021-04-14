Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D1035F56F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 15:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64F9F843DB;
	Wed, 14 Apr 2021 13:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-qwJbA7L08M; Wed, 14 Apr 2021 13:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B59484349;
	Wed, 14 Apr 2021 13:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DCC41BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 02:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0498C40140
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 02:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpFATAC0qvzr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 02:35:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBF01400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 02:35:18 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id n38so12754434pfv.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 19:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=onJ7uZ3p8s/gKYB2XhKDCCe0q8Rs1VMepIA3BYKB0DU=;
 b=Lf76OYaMA5bhIGPnuA0rAWAsgXyge80EA9BgGy8o+1VXvM8FP6WhN/cHP1e4LZYYBO
 4yF/I0exQMYmvrduW+IXfAbg6/AxUNpT0tcN7gA72Zq2Ba8yfOg87iQN8yHZhLD8hmeB
 qDQfe+ob4c+00ZXCVa7s1Fzu7ZGKXyBOlAh7ldFk/1HpxdXb/0OXdKtEWjE4JBjZhAXx
 7rZ6lorLr6QgTj7yBRtpHDscYhJmS6ISrd9BJM52ZZxMoELQAgC17MW4W9mdXjcSqpox
 Jx08xklBNBVlNS0dlTrGEsEkXPw+Qy+NMblWfiIZ63Ip3cbcdrj+xpwqq2kCHQ4avnzp
 RfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=onJ7uZ3p8s/gKYB2XhKDCCe0q8Rs1VMepIA3BYKB0DU=;
 b=Nir3y0UoUZLGnabMA1oY2iG1s0H1jFi9foJXjGiSzF+eWe1fuHCp3Gn/0PORZ5DhMY
 oMjuPhZ0VrABOuyk2VhuMtjgmjfWtweypTzxoU0lRdPrqXmbsfUfvKztyn42dI03jCAr
 zqhb+/mpss1Gzm2bTUhWajOGhkVCI9xvl+EWDN1Qz5P3Bc0cGmu+e/LVHVRKsy03jzv0
 +ctcwFJE8mKG24T+pdPWbZMMnwhQd7k1NfnSMx6EX/0lwAadc9mQOQ4uun6NBETvfFOr
 Sp66bX/idWDP7e1giAABavYmZ9lMWCH0fVm1ubI7NSjd1GcxMKCMH23lktQPAFWGpfSl
 pW9w==
X-Gm-Message-State: AOAM532atGRyst6n6GmAhoHuF+r2NKrCDTTKt6g17La+VqTNLN2fB4aX
 iCUsajPRcrsQ37CtF2980JU=
X-Google-Smtp-Source: ABdhPJyp6z+TiBTp0H57GdxdQPdnbE3dIbUCkYCnADULGHr44ZkS+S0tCL9NDDiTHv9WgWkI9IQ74w==
X-Received: by 2002:a62:7907:0:b029:23e:9010:3844 with SMTP id
 u7-20020a6279070000b029023e90103844mr32223691pfc.58.1618367718317; 
 Tue, 13 Apr 2021 19:35:18 -0700 (PDT)
Received: from localhost.localdomain ([103.112.79.202])
 by smtp.gmail.com with ESMTPSA id r1sm3403988pjo.26.2021.04.13.19.35.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Apr 2021 19:35:17 -0700 (PDT)
From: kerneljasonxing@gmail.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Date: Wed, 14 Apr 2021 10:34:28 +0800
Message-Id: <20210414023428.10121-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <20210413025011.1251-1-kerneljasonxing@gmail.com>
References: <20210413025011.1251-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Apr 2021 13:51:24 +0000
Subject: [Intel-wired-lan] [PATCH net v3] i40e: fix the panic when running
 bpf in xdpdrv mode
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <xingwanli@kuaishou.com>

Fix this panic by adding more rules to calculate the value of @rss_size_max
which could be used in allocating the queues when bpf is loaded, which,
however, could cause the failure and then trigger the NULL pointer of
vsi->rx_rings. Prio to this fix, the machine doesn't care about how many
cpus are online and then allocates 256 queues on the machine with 32 cpus
online actually.

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

Fixes: 41c445ff0f48 ("i40e: main driver core")
Co-developed-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
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
