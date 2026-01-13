Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1188DD1ACBC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 19:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39C6E60A69;
	Tue, 13 Jan 2026 18:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6vS9xaAIvBKD; Tue, 13 Jan 2026 18:08:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A0F560A6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768327721;
	bh=AE+Q0BZCGWjcLPwZwRKe+d7B+gAquL9rQnPuGo4VtL8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DT3/XXl9PASpNYCNucUIdTEffi9Zcq6JK/G/QVndoPl9ufc1rtO7adXweYgtbvO5J
	 fjs9qkJu8AILPXVrxFJAaED+N5fzZ9cllOMuf7Ii7qAQzDbpggTwE1Mp8fou669YmD
	 vfYNWHRiCOcDkAv6N71spGMtWiaM9v6U+EDqbbXsAnOG/+qBlLRZYduLiM7mq6jdnt
	 HD5XaUX9nfZtYTkduV8A2btD6ofHOaLRcCy1avLHNKupEz9sIO7/bqEHq4i6KBbGxn
	 QhdvZ54swTQvsEhE8QqSPefDJFra7V13cnop8fpk3+o9I/f0zm4zv/1b1WDKvi/GZ1
	 +IaSP9dFdnQYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A0F560A6D;
	Tue, 13 Jan 2026 18:08:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16B0F1C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 18:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E717940232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 18:08:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z7u838jTVP0a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 18:08:38 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 13 Jan 2026 18:08:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB198400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB198400C7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB198400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 18:08:37 +0000 (UTC)
X-CSE-ConnectionGUID: 3WL0vYEXTfuaw/NXpsTL0w==
X-CSE-MsgGUID: F6lIBRkES5+Dibi7TR69jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69603400"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69603400"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 10:01:28 -0800
X-CSE-ConnectionGUID: gzRybBr/RRKFjHdsBDp/9A==
X-CSE-MsgGUID: IxdieCaESjKbzSp+CSYvkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204472276"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa007.jf.intel.com with ESMTP; 13 Jan 2026 10:01:28 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 13 Jan 2026 12:01:13 -0600
Message-Id: <20260113180113.2478622-1-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768327718; x=1799863718;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C7/h/yMHwzAFrC90V61WazgaAYBmCRbi7WqmJYLsack=;
 b=I2wd0lpPaK6S+Qkz7zV9c66EucuYCF+AvcAqCsSZ2EwBClkv/mqLM+wk
 vAWQRO5ZoP7cycpcdGaelrOdSvJO2vPIbmHOas8DVL4LLNet6OlYnFN7R
 XoQRYRbL9umOizElNeQlCVSh3WiiAJ+SKVWDtgpEFFKp21NssorNksNKI
 oF0USraX3Crr1trJfDocatIkkEoMa/LVVKZLd5mSaYUW8RMvGbpBR5dn/
 FeY4iatd/teMJWsxqyYdJ1+5+NT1lbme8pTR/09bp5BlV15yVesS4ioCd
 KWygx6AmFV51g22taAcwWCGJiVjKMT5mxc0zrYigWNMJw5KpK9sPOSl/j
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I2wd0lpP
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: Fix flow rule delete
 failure due to invalid validation
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

When deleting a flow rule using "ethtool -N <dev> delete <location>",
idpf_sideband_action_ena() incorrectly validates fsp->ring_cookie even
though ethtool doesn't populate this field for delete operations. The
uninitialized ring_cookie may randomly match RX_CLS_FLOW_DISC or
RX_CLS_FLOW_WAKE, causing validation to fail and preventing legitimate
rule deletions. Remove the unnecessary sideband action enable check and
ring_cookie validation during delete operations since action validation
is not required when removing existing rules.

Fixes: ada3e24b84a0 ("idpf: add flow steering support")
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 2efa3c08aba5..49cefb973f4d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -307,9 +307,6 @@ static int idpf_del_flow_steer(struct net_device *netdev,
 	vport_config = vport->adapter->vport_config[np->vport_idx];
 	user_config = &vport_config->user_config;
 
-	if (!idpf_sideband_action_ena(vport, fsp))
-		return -EOPNOTSUPP;
-
 	rule = kzalloc(struct_size(rule, rule_info, 1), GFP_KERNEL);
 	if (!rule)
 		return -ENOMEM;
-- 
2.25.1

