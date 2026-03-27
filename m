Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNfKOjQyxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:31:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B9E3406D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:31:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4FEC825D3;
	Fri, 27 Mar 2026 07:30:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CUkuQD01WymB; Fri, 27 Mar 2026 07:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E26483B46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596656;
	bh=TYENORkKL+1MyfdPNQMJdsvxXDtsODY7/lgbM1HmRd0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VkZFjanIZg0odQLQSC3wpe+fi822qJLT71OR9jCj9VLCabN0zKT+lhTy6+0Ydph5k
	 KFSpEt1kdMljCaA+mqsNWNDUp6HfS9+OAd2NWGWuapJVwWxX/B/xosSCFBR51TK325
	 tpm4jyXNKh6vol7KgwZbhCgo+/UOmLP7noHXGtcO0sCqRBQ1DKoLnaSO4jSAgH3Ab9
	 rsONWWe2B2QBokIx8t3CxDAZoXu6VWMeITVLGzSV/6Ae6kre3MpWacXXt++ThuargK
	 CnF3fGJPtDrz62ws55Uuyk/8lomuFGxy+5fuXMFcfUF/jVzkWXOeubHpRqZWj17V0F
	 y94ATVHc+Q1eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E26483B46;
	Fri, 27 Mar 2026 07:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 99861249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97D02415BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mzp6cL7RIcf7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:30:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A868A41598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A868A41598
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A868A41598
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:53 +0000 (UTC)
X-CSE-ConnectionGUID: 2/0UdATLSG2Oh9rYyMlcCQ==
X-CSE-MsgGUID: 1SfNHvprTweJdY0o7czOIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75734304"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75734304"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:30:53 -0700
X-CSE-ConnectionGUID: qYt7L5tcQa6CZ+Bhdp9cFw==
X-CSE-MsgGUID: XGN6zzyPTyaMtWGSdXzjew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255740371"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:30:52 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 27 Mar 2026 08:30:38 +0100
Message-ID: <20260327073046.134085-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596653; x=1806132653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l+5PB8hG8ASiz0Q+Qy0iNx3ZoIMPNW7rHg47asvNjxA=;
 b=gMH7D3dq3VYnUv6b2ONgP9ehH4NCTB/F4x8aoGpwELbL15zhvpaKpzdB
 U7s+FVViBvAoBn4XJD6fuAW9azKK0jrNaztMnVCwogZ1p/VolAZy3x1Zt
 lHmtPbFhv94xpqZLraxFAmDeQAJpwJuC6s1m4+yE6ARAhLQ2nOPE2AhGv
 Zehi+8Hvw8GN3h5xhzPKxnvbRczjM+/BG+d2EXE4JzCdCtYI8UIFuOeY/
 JtSoU30V5LUAn2Bcw0QsvDmD08b7EqsBVU7KoqXbLg6UYCtSMED5s8uRw
 1bgh83RxeNT7ytCDX4DsZWOZIKhJ9DFDoPmhwec9C5nkoNvivo3OiktOa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gMH7D3dq
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: remove
 ixgbe_ping_all_vfs() from watchdog link-up handler
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74B9E3406D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sebastian Basierski <sebastianx.basierski@intel.com>

When multiple VFs are brought up simultaneously, a VF can receive a
CTS (Clear To Send) mailbox message instead of the expected RESET |
(N)ACK response, because the watchdog is sending a gratuitous ping
right as the VF mailbox transaction is in progress.

Remove the ixgbe_ping_all_vfs() call from ixgbe_watchdog_link_is_up().
Link-state changes are already communicated to VFs through the normal
mailbox protocol; the extra ping here is redundant and races with VF
initialization.

Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1885fe8..52f0cdc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8163,9 +8163,6 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 
 	/* update the default user priority for VFs */
 	ixgbe_update_default_up(adapter);
-
-	/* ping all the active vfs to let them know link has changed */
-	ixgbe_ping_all_vfs(adapter);
 }
 
 /**
-- 
2.52.0

