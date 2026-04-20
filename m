Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAjwKyQn5mm6sgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 15:16:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B050742B703
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 15:16:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 527FB6110B;
	Mon, 20 Apr 2026 13:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Qr2o4xIdZ71; Mon, 20 Apr 2026 13:16:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE1B761110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776690977;
	bh=UKfMAYP+YaEBWmLalYQmWxaecTT/vnItuoJhnjdPeuY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AGV8p6jVcMeugzibyFlOf3Tfi9Tlg7d5n7IFg/ac0SlPaUhXXwObc+Ut+e/zKKrgE
	 IeghgC/AeiDDHD+v1Gaxi8dgdczzOClLXxfeXM4qeyMCvNrE/8eq+RL8k4xKtgOn0B
	 sWtfsf5U8oC1v3wXG4+J5LQFBRLNh6g6obci86Rp/EULhMN4/Y+Oph3qfnc3SXWiqr
	 8NhtLpu2Cfu7+h5GARnFBWGkX7qNReHWH9MkJLD4X/6hMMN4MWkEyFiyPhLlDX2cyT
	 XAeRiwtNSEXFaTHIyQ290/MfSF1BD8qnALEOe9Ze5hwNJ0LGhGBrv/i4siwJj1o5vo
	 LB/DPWoaqYzzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE1B761110;
	Mon, 20 Apr 2026 13:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39AE124D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 13:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2AFB640514
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 13:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qe0pIwidaALM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 13:16:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8871E40261
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8871E40261
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8871E40261
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 13:16:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E32F940473;
 Mon, 20 Apr 2026 13:16:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E15A4C2BCC9;
 Mon, 20 Apr 2026 13:16:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Kohei Enju <kohei@enjuk.jp>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 jesse.brandeburg@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 przemyslaw.kitszel@intel.com, sergey.temerkhanov@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 20 Apr 2026 09:08:07 -0400
Message-ID: <20260420131539.986432-21-sashal@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420131539.986432-1-sashal@kernel.org>
References: <20260420131539.986432-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.18.23
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776690975;
 bh=3gnS4H5dN42k38IxAUh5e5CfDoKP9ZQMGb82ft8Sop0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R8Z7jEi4Oq87usBdbuxfM8PhvjI1jIp/duOSrVCYZdkqKHsTcwl6er8tjNZYyaCEh
 fMc7qG0NoiTr32m7JmOZngV60NdG/BnEhUxSQhmwBrtbG2NDEyv/91QS442jdkertZ
 yzcj67jwuTAuR7Re6wFcHSl82KzcH8VHU835Um7VzI4GoCk3+609vVslFlOqH6Pnn6
 3qNxe5DO8L4uPLFpx01AFgz8sn2tPg0Kh3VyiAeZLpwqIwa3yrYv5FVWMOB6pp3+H1
 FwD0v4CekRi8iPpbdYzDApSOCt98pKvEc+FBnctbKpcSIDZUtmCYJJ8HtMzI8O9id2
 xkjWUhwjIOK9w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=R8Z7jEi4
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.18] ice: ptp: don't WARN when
 controlling PF is unavailable
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:patches@lists.linux.dev,m:stable@vger.kernel.org,m:kohei@enjuk.jp,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:sashal@kernel.org,m:jesse.brandeburg@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sashal@kernel.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashal@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B050742B703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Kohei Enju <kohei@enjuk.jp>

[ Upstream commit bb3f21edc7056cdf44a7f7bd7ba65af40741838c ]

In VFIO passthrough setups, it is possible to pass through only a PF
which doesn't own the source timer. In that case the PTP controlling PF
(adapter->ctrl_pf) is never initialized in the VM, so ice_get_ctrl_ptp()
returns NULL and triggers WARN_ON() in ice_ptp_setup_pf().

Since this is an expected behavior in that configuration, replace
WARN_ON() with an informational message and return -EOPNOTSUPP.

Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of auxdev")
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

Error: Failed to generate final synthesis

 drivers/net/ethernet/intel/ice/ice_ptp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index df38345b12d72..02517772fb5f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3041,7 +3041,13 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
 	struct ice_ptp *ptp = &pf->ptp;
 
-	if (WARN_ON(!ctrl_ptp) || pf->hw.mac_type == ICE_MAC_UNKNOWN)
+	if (!ctrl_ptp) {
+		dev_info(ice_pf_to_dev(pf),
+			 "PTP unavailable: no controlling PF\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (pf->hw.mac_type == ICE_MAC_UNKNOWN)
 		return -ENODEV;
 
 	INIT_LIST_HEAD(&ptp->port.list_node);
-- 
2.53.0

