Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDRfH0Eo62muJAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 10:22:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC6D45B5E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 10:22:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2809142222;
	Fri, 24 Apr 2026 08:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MN0hQghq6JbJ; Fri, 24 Apr 2026 08:22:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8924542211
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777018936;
	bh=VVYPWBuT5bGM5YKfpnkAohTobs9c4+eflfWIYQWLvak=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yc9ITgo7LHyU7q3ILg7DxMtEYNG7taxj5KvqjQfOgCCoLc3JsFjtU+MudN5OeXrAY
	 OyfdbN/gO4duvU5fxuPNjkSv+DED43fR4u+1qP6lO2U1VM5IulfaiIlrvBrXd2Xa6A
	 1+FiUh2H7vCxDJS9ZOn22YlblGzQWwj9SEENCE+npQgyWkXXODogF0/CgUe9uDucoC
	 tIIlCEa2kP4/yYpFbbeCcA5H1qFySv7sgk/JAwEWpmD0j/AtlupYS2LIwyPLs7D73S
	 G0YSAUBor9iyqgeCLFGYixp2QzcW3/tyFp6Ucor/4/Oc9BYMMWIOR7AM+i8k/D1OyC
	 ABDj47o9t2A4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8924542211;
	Fri, 24 Apr 2026 08:22:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1270124D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 08:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E58F3615BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 08:22:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HdlY8aKbH89t for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 08:22:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=khai.wen.tan@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65D88615BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65D88615BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65D88615BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 08:22:09 +0000 (UTC)
X-CSE-ConnectionGUID: H4jNOhXnSrmgxilfNiA9MA==
X-CSE-MsgGUID: qQ6blh3DQ3Cji4lcmM3tiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="89379241"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="89379241"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:22:09 -0700
X-CSE-ConnectionGUID: KA9DsLuUT36JWraU6AZaMQ==
X-CSE-MsgGUID: /vhcOBMyRaiY/wX48777yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228330450"
Received: from unknown (HELO localhost.png.intel.com) ([10.107.255.61])
 by fmviesa006.fm.intel.com with ESMTP; 24 Apr 2026 01:22:05 -0700
From: KhaiWenTan <khai.wen.tan@linux.intel.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, chwee.lin.choong@intel.com,
 vladimir.oltean@nxp.com, vinicius.gomes@intel.com
Cc: faizal.abdul.rahim@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 khai.wen.tan@intel.com, hong.aun.looi@intel.com,
 faizal.abdul.rahim@intel.com, KhaiWenTan <khai.wen.tan@linux.intel.com>
Date: Fri, 24 Apr 2026 15:59:07 +0800
Message-ID: <20260424075907.310456-1-khai.wen.tan@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777018930; x=1808554930;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BP1jtlFzuy/jbBYrDe/iU+3cgpfGhVIi+xBQHeCU6P8=;
 b=nlXR83RbSm+2Fru0p4HzcpVuAYqTE2Uqz7sFMTOmXd2OU9eTNEwVmKaB
 qzPKHGxEKRom1+vPmqqk68EJFIQ04adUfqyPu1dWSUrZvmSjEmunpkRTs
 jv25pr2GuICwdwKMOIV3luBZ1190yYWO6Yuc0Orpyf5Us8r65sRYEOKf4
 eEhQO+vMZaambCt6hqNg5LclUUI0vqllPAELaC35n1W6TCG1oj7q5kb5w
 Ulh1zLlDK/iSkKu9aZYQ1oGolVWqIYOf3Tk+g16pS9CTX8KoZvj2WaK+I
 KKTOHRrb0zuOJ9zVN3dlpDmjjh55Jq4dRfsji8yL/AFkI+RD6iu+0h9xu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nlXR83Rb
Subject: [Intel-wired-lan] [PATCH iwl-net 1/1] igc: skip RX timestamp header
 for frame preemption verification
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
X-Rspamd-Queue-Id: 6CC6D45B5E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:chwee.lin.choong@intel.com,m:vladimir.oltean@nxp.com,m:vinicius.gomes@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:khai.wen.tan@intel.com,m:hong.aun.looi@intel.com,m:faizal.abdul.rahim@intel.com,m:khai.wen.tan@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

When RX hardware timestamping is enabled, a 16-byte inline timestamp header
is added to the start of the packet buffer, causing FPE handshake
verification to fail.

Because an incorrect packet buffer is passed to igc_fpe_handle_mpacket(),
the mem_is_zero() check inspects the timestamp metadata instead of the
actual mPacket payload. As a result, valid Verify/Response mPackets can be
missed when inline RX timestamps are present.

Pass pktbuf + pkt_offset to igc_fpe_handle_mpacket() so it inspects the
actual mPacket payload instead of the timestamp header.

Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
Co-developed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8ac16808023c..c470d2354ce8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2649,7 +2649,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		}
 
 		if (igc_fpe_is_pmac_enabled(adapter) &&
-		    igc_fpe_handle_mpacket(adapter, rx_desc, size, pktbuf)) {
+		    igc_fpe_handle_mpacket(adapter, rx_desc, size, pktbuf + pkt_offset)) {
 			/* Advance the ring next-to-clean */
 			igc_is_non_eop(rx_ring, rx_desc);
 			cleaned_count++;
-- 
2.43.0

