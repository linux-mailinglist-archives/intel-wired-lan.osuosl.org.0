Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D45AAA3CF9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 03:55:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86EF141336;
	Thu, 20 Feb 2025 02:55:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MsM9sB1UpaR5; Thu, 20 Feb 2025 02:55:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2EEF41340
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740020122;
	bh=ZvARz4msMzb2NRpOzCvewFQUaboJtL+7gF1CFI28ndU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n6JMKkzbTcSFZCh5lGXXwjwgEIW4u8DoigJ4iSKauQOr8fJGE1lDECBT4vxAMH1ju
	 xEOOJHE+tiGVOOhUnC/KOMzVSX74jmjaruCcnIu+ZYEJUnDbLCljBeWU/BNolV50wb
	 DwDp4uW4Yqc3/o8u9aeNjhixTxVhnYck69mSBRGp08DiYctshvoKvaVa4N41GkopUm
	 6ONpJTF7QSbtoq2kQ2xb68eXQZ3Bg17XGsVvcf2TF10b/PDChh3uxK9YFn/xUElFon
	 B39mJv9dUl20/Q2CJR1AJR4euSZJegItdSGSjdrm/0uQgN0B8vgwMpFCnzSPXXOaqo
	 BfcTDjPf+GCwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2EEF41340;
	Thu, 20 Feb 2025 02:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A7ABFD92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9758383EDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:55:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 81PtdCFVqbju for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 02:55:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E784983EEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E784983EEF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E784983EEF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:55:19 +0000 (UTC)
X-CSE-ConnectionGUID: CEBQteYaQA+5qqNfDOCFng==
X-CSE-MsgGUID: CJ5uMIC2Rv6u9SVkSwZZlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="41042139"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="41042139"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 18:55:19 -0800
X-CSE-ConnectionGUID: 2yocVogvQxyZNBE7JpuxSQ==
X-CSE-MsgGUID: jS0ktRGYSOug/ZvAyXlb4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="115104566"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa008.fm.intel.com with ESMTP; 19 Feb 2025 18:55:12 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Wed, 19 Feb 2025 21:53:49 -0500
Message-Id: <20250220025349.3007793-10-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740020120; x=1771556120;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uDhO0buD+LbU4a/ZJlAIOO0MmLejKrvfWJSAZJp7WPs=;
 b=Rl7KxLQ4Eyuq3A8GhngQapAXY2yDAnzh3Dh5BCrsjjzCzV1Bj9+pTYzA
 rgtxiJk9AlM0AXqT+gP9GS1MleYLbTT5Qd6orJ8UKRqJm1LPnULzEAD+M
 F3gUyRRsE/5As3ML/fRjNObqYjDugnU1JGKQIJbF09MsNwsBWL6JT6MCY
 GQP/pnOeYk4sUBiQuwzf5MG375chzeZI3HzGY8sGd7LfWTBtriGCpCE8J
 o+CC7YjdT8IFpSjPU0RshTWa/m2nT2leFt9RtFgNDgYZnE34jqVZS5xyd
 7bvetTnCwc0CHoS6loFjWXTgPkkRsabK9+52K56n7xUMUDcPbCnf6PI8Y
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rl7KxLQ4
Subject: [Intel-wired-lan] [PATCH iwl-next v5 9/9] igc: Block setting
 preemptible traffic class in taprio
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since preemptible tc implementation is not ready yet, block it from being
set in taprio. The existing code already blocks it in mqprio.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5a6648a12a53..e6a398dbf09b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6408,6 +6408,10 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (!validate_schedule(adapter, qopt))
 		return -EINVAL;
 
+	/* preemptible isn't supported yet */
+	if (qopt->mqprio.preemptible_tcs)
+		return -EOPNOTSUPP;
+
 	igc_ptp_read(adapter, &now);
 
 	if (igc_tsn_is_taprio_activated_by_user(adapter) &&
-- 
2.34.1

