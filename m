Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C44C2CC055
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 16:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F7222E26F;
	Wed,  2 Dec 2020 15:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avD9K+DbahNY; Wed,  2 Dec 2020 15:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEF1D2E269;
	Wed,  2 Dec 2020 15:07:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 644C01BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5CA942E261
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0I+NRIkJvOWg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 15:07:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id EFA7A2E26D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:42 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id hk16so1127280pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 07:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D686hSiICwbI3KAxIZ+IHOTQOCH5FGtz5n2ONqK1CCI=;
 b=icskpsMgacpPpGanJiD9g39ACv0k53x49q4iDbl+CC1kVFvPKV4hsAa2Okas6HnW2s
 Ijy2IPvgRjZfWQJZ81YhvXS5Y23gL/CWuDTfNtiW0Apt0/lZy4Ibsyci/pjIZe0tdFO1
 VHR1D0KFd07ruaZxwh4Xl525ChrSckjmV1JkfMilc1eik5udgPKlCdfa06vKiJcCFAlg
 xnllZCh7f8ZM4nbeT6aRERzIj8FJ7W/xrxzUVwGJ3YRn30TGYS3wI30XgCUNfvpaDP/R
 l8IRhCbVqzJXtDO2IE1P1mWOHKLkc/A2wNPeCmDAOQlKeLvwSrFzisGQ8hhzlvXIhjKy
 +4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D686hSiICwbI3KAxIZ+IHOTQOCH5FGtz5n2ONqK1CCI=;
 b=OWoBy2xs70YtXaZuiMZklDckwLkXixCzM4zLp+aKoSQI6i5qkHMwGV3npd7LPdyzdW
 jYiwPWKwsNBsVJxMEmsnhLuVz56KyQ8A7NfIekWQ/HjxsMU/tVz8HzwFfNFS794XlyhJ
 4UeoiypNiXa2nU/mlZAuUOXq2Ick2up7aR1AdKmjxBfVfMGdBysEM/tRkbBAkyctSWOM
 r3KFaag3gNLXv9ANWks5xNNyyjnf291cPGzz//hEdVpLbQroZXXyT0KKt+7UObA0mZQS
 h3A2RUwfm70aojvq1SyUfW7aBeJNvb2hhCaGqBsxDcCzMr8MMnOi+GTkNVDyyFtwg0vr
 SXzQ==
X-Gm-Message-State: AOAM532s4eXRdfWrxNsLd5p+yY89VCfC8coOAj5+M+L2pEw3m9AbgPvD
 5DQrKQa2hydmUbe/cRYxuRY=
X-Google-Smtp-Source: ABdhPJxHIVLfr1VpNqQzLD/yEFI0hz/fSIAdQgOpKPK4ZJjBGPbz7kr3m+/sKrUSZLc4JdSLEBmJeg==
X-Received: by 2002:a17:902:7606:b029:da:246c:5bd8 with SMTP id
 k6-20020a1709027606b02900da246c5bd8mr3075082pll.27.1606921662592; 
 Wed, 02 Dec 2020 07:07:42 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id p21sm148537pfn.87.2020.12.02.07.07.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Dec 2020 07:07:42 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Date: Wed,  2 Dec 2020 16:07:23 +0100
Message-Id: <20201202150724.31439-3-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201202150724.31439-1-magnus.karlsson@gmail.com>
References: <20201202150724.31439-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ixgbe: optimize for
 XDP_REDIRECT in xsk path
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
Cc: netdev@vger.kernel.org, maciejromanfijalkowski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Optimize ixgbe_run_xdp_zc() for the XDP program verdict being
XDP_REDIRECT in the zsk zero-copy path. This path is only used when
having AF_XDP zero-copy on and in that case most packets will be
directed to user space. This provides a little under 100k extra
packets in throughput on my server when running l2fwd in xdpsock.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 3771857cf887..91ad5b902673 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -104,6 +104,13 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 
+	if (likely(act == XDP_REDIRECT)) {
+		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
+		result = !err ? IXGBE_XDP_REDIR : IXGBE_XDP_CONSUMED;
+		rcu_read_unlock();
+		return result;
+	}
+
 	switch (act) {
 	case XDP_PASS:
 		break;
@@ -115,10 +122,6 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 		}
 		result = ixgbe_xmit_xdp_ring(adapter, xdpf);
 		break;
-	case XDP_REDIRECT:
-		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? IXGBE_XDP_REDIR : IXGBE_XDP_CONSUMED;
-		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
