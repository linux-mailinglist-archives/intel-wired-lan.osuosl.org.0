Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F1D9C7F27
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 01:14:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6AF6407EE;
	Thu, 14 Nov 2024 00:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HD-roNg-S4lK; Thu, 14 Nov 2024 00:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1725D407E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731543296;
	bh=fXOSHRZ1x8mDicohsRibZK5mydHKV91y1/SYfXmBQMU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yj0SUH0L8MAjGN6xcIeUG6UpZ7jFIbcwO2YJVkbG7Iyb64uHAiaB3V2WaJZrZiylT
	 KULY/qOsGIpo7ZRPpyEiAaISthoiuIDo0jZUHWMD6C+lu1MVLzg5tRYCqDGsjxA1vj
	 /ZbZ1o61p8WryIdh0PckWe/fXHZ3rHGm4hYSqSIouPekDIHHQABY0YygiYwgEKkSbE
	 UB8N/zSQzjWSzPq0sH/FXR4+nFcqKe52JmniUqgxwtZe/i62MP8MBgFC45BiPGbloG
	 wRksNOV3uwM4kMVHvRq2Adv6JqJegWf/CRlMGA3PyVzi3M+I0iczECPJU7SBr20z+Z
	 hlYI1eHZ0xboQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1725D407E6;
	Thu, 14 Nov 2024 00:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D45891ED5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 00:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B393A4102E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 00:01:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9euzwJc39d4U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 00:01:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=jbrandeb@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 72A1440F3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72A1440F3B
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72A1440F3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 00:01:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4983CA41636;
 Wed, 13 Nov 2024 23:59:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 354B1C4CEC3;
 Thu, 14 Nov 2024 00:01:20 +0000 (UTC)
From: jbrandeb@kernel.org
To: netdev@vger.kernel.org
Cc: jbrandeburg@cloudflare.com, Jesse Brandeburg <jbrandeb@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 13 Nov 2024 16:00:56 -0800
Message-Id: <20241114000105.703740-1-jbrandeb@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 14 Nov 2024 00:14:55 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731542481;
 bh=HKamdRiWqWCrVoRSRelcMfN7MdgNyDW0mo0UCMcnhYc=;
 h=From:To:Cc:Subject:Date:From;
 b=KHovBmWiBERwvVU8bpPi+o9nLADpZwYM3uNpyMuZQezNPoO+vw/PRqMSQ85SWxDOQ
 i5iQEsNvVhgSfnkFHNpFmftQg8juxMniRcN2a8anx9cztuqF7/itrVPjOO24OsqMsx
 WkMPdQf43CjjsAjjrlpzZnIsnLuTW0zPjM8toBlXPdjcK1IAlCW873YG6F8D1sOzss
 IMK8FbTvPf9eDdHK9V/Jjj451UZZ51e0mUgJA0+W3WgeBayBnxxKGhcYTvZ7DwKJdc
 NGcL6UcXZYBQdEMdkQQz4nBRW2zKtD5WY2AZOF4E8GZA7WNsORVHYuufKx6i7lXC4X
 +BSmnIfmpRKpw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KHovBmWi
Subject: [Intel-wired-lan] [PATCH net v1] ice: do not reserve resources for
 RDMA when disabled
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

From: Jesse Brandeburg <jbrandeb@kernel.org>

If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
built-in, then don't let the driver reserve resources for RDMA.

Do this by avoiding enabling the capability when scanning hardware
capabilities.

Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
CC: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Jesse Brandeburg <jbrandeb@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..70be07ad2c10 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2174,7 +2174,8 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  caps->nvm_unified_update);
 		break;
 	case ICE_AQC_CAPS_RDMA:
-		caps->rdma = (number == 1);
+		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))
+			caps->rdma = (number == 1);
 		ice_debug(hw, ICE_DBG_INIT, "%s: rdma = %d\n", prefix, caps->rdma);
 		break;
 	case ICE_AQC_CAPS_MAX_MTU:

base-commit: 2d5404caa8c7bb5c4e0435f94b28834ae5456623
-- 
2.39.5

