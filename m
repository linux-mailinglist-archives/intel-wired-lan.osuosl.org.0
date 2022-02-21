Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 035DE4BDB37
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 18:20:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9123281948;
	Mon, 21 Feb 2022 17:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3JJC7DtzL1F; Mon, 21 Feb 2022 17:19:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD0208145B;
	Mon, 21 Feb 2022 17:19:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0C91BF339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6415E4036A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YA3bVAc0cOTa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 17:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DCE3400A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645463978; x=1676999978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mo135wmiyBV1MyO7OEFoIfk7OQwDjj5fc99hb7inUI0=;
 b=a8tjQcezn10X/9Oxme46lZolOrZEaeHFc/X1z7lF6ZYyAvdygv4AT2sH
 K+jzx2INK1lqUbl6wyJTyUMYtva2I5XOxE3AJQTOkZZqNKKnjVnDPCWlK
 geG8cS+exNqDfAcUoIPdOgCuMloiA11vvS9657Lm5C0pYZOMTOOzL83Il
 cFRNGra14hH9Uf7HLVYEbXijoP28dw7BzS2ZuuJ+Ze1biAyeZpksaRDlY
 MJKasD2ShXEtt4DpDK12tYXc+lhqCs4CFvR4qSAghOsq7XjoaMJQoXi0g
 XuSR6ybZfRc6h6ey0f48qhMu9S5KAGp8cSBighoJ/qmBjIJe2Eae+D/ld w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="337977427"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="337977427"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 09:19:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="778742859"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 21 Feb 2022 09:19:35 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21LHJBnS010069; Mon, 21 Feb 2022 17:19:34 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 21 Feb 2022 11:14:23 +0100
Message-Id: <20220221101425.19776-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v7 5/7] gtp: Add support for
 checking GTP device type
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
Cc: jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Add a function that checks if a net device type is GTP.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Harald Welte <laforge@gnumonks.org>
---
 include/net/gtp.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/net/gtp.h b/include/net/gtp.h
index 23c2aaae8a42..c1d6169df331 100644
--- a/include/net/gtp.h
+++ b/include/net/gtp.h
@@ -63,6 +63,12 @@ struct gtp_pdu_session_info {	/* According to 3GPP TS 38.415. */
 	u8	qfi;
 };
 
+static inline bool netif_is_gtp(const struct net_device *dev)
+{
+	return dev->rtnl_link_ops &&
+		!strcmp(dev->rtnl_link_ops->kind, "gtp");
+}
+
 #define GTP1_F_NPDU	0x01
 #define GTP1_F_SEQ	0x02
 #define GTP1_F_EXTHDR	0x04
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
