Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zO8tAd4wRmrZLQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE84F6F552C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=tgcpVNQa;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57BC7407CB;
	Thu,  2 Jul 2026 09:35:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jas_EEfbHBTS; Thu,  2 Jul 2026 09:35:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9F5E4085E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984923;
	bh=6Yy3hfR8snUFT4X9mccszlAC81pIeWMT/T0Rx02KSDo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tgcpVNQaMlEyQtewVe6I62B/lwz5YYcUmrcZuZV9z1w1Hmqi79OP0yubXne4/+xHB
	 4njKqQQ6yEg/NPhySHUsDMjiFFu9YhKbJxPh5Ei+rMHBC1iSp8Kfn4g1/UT5uM1kt9
	 9SLJ7IEjMtjRp992HcEDj4SEimWw7b+YgaBv0LUuXhRPfPQizCuiOJPVmGpH+09mtb
	 ir/xw7wnIOWdArc8hvDjB1Ljw7UatLiquf0f+R7vr2PjS+/EWmV+TGl39+j3ggftLz
	 9ntgIk871aZXqpdhykGIg/pQFTOEP61xn5oXTbGKe016ktDNx95qAFltsNYuUJ4dba
	 oc/BOmpW/qpUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9F5E4085E;
	Thu,  2 Jul 2026 09:35:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C5FFE127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C369C822AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6RWAjBOZk_uC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 61DBE839C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61DBE839C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61DBE839C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:20 +0000 (UTC)
X-CSE-ConnectionGUID: ZIhHlMp1QXO2AD3BAkrO3w==
X-CSE-MsgGUID: /FD8xIY6QFqzT9rQF9qtvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649823"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649823"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:20 -0700
X-CSE-ConnectionGUID: dC6QQ3GTTYeosAnFjlAB2A==
X-CSE-MsgGUID: X5rN/ANmTfavT+FPs02Rog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476433"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:20 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Thu,  2 Jul 2026 11:15:53 +0200
Message-Id: <20260702091553.57112-7-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984920; x=1814520920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Io7Eaz/4tR3x0fiwuKyeOXFsOgPAMXA57TCUl/iwAo=;
 b=jsx1JaVXV0c1GPPZZBDqtBXqj5U/mHjhW9JgaFbdwIWRswgv0f25j51O
 C+hdxn++ZAjDMlaqR8/ysWDdRL23iuPdk7xT8uxczGPC5ALuQFUySBZar
 pRfEAbHyAJ/DC5iZLMQAUQ2aaeVxsVesvMaEvEud1FGZFUI7hTjUowd6a
 B9NNmlaRg3eCEqVYO2gbsSEeDgkFjhNJYHvTCqP5Im5PvJjk6Kv7rr8BF
 rhMQfU/zwKrODd2xmOPoqpkJMKMaes2QvZD8AaLhg9U+EKsOVBVSdTfZ6
 Glz2vjG0949bhnfIDmeYOTGeNWK5/v4dOM8cklCowYqdiBRtrzegDX8Xn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jsx1JaVX
Subject: [Intel-wired-lan] [PATCH iwl-next v1 6/6] ixgbe: take rtnl lock
 before ixgbe_reset() is called
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:email,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE84F6F552C

Previous commit introduced ixgbe_mac_addr_refresh which touches netdev
struct by updating mac addr. It should operate after taking rtnl lock.
One of the callers is ixgbe_reset(). Most of scenarios when ixgbe_reset()
is called met taking lock requirement, but there is a ixgbe_resume() path
which calls ixgbe_reset() -> ixgbe_mac_addr_refresh() without taking
the lock. So there is a risk of race.

Move rtnl_lock() before ixgbe_reset() is called.

Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ce2b1e208c0f..c7261eb0e9b0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7574,11 +7574,11 @@ static int ixgbe_resume(struct device *dev_d)
 
 	device_wakeup_disable(dev_d);
 
+	rtnl_lock();
 	ixgbe_reset(adapter);
 
 	IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
 
-	rtnl_lock();
 	err = ixgbe_init_interrupt_scheme(adapter);
 	if (!err && netif_running(netdev))
 		err = ixgbe_open(netdev);
-- 
2.31.1

