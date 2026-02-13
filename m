Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFneBXkyj2k+MQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 15:17:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FA6137015
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 15:17:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4CFF843D2;
	Fri, 13 Feb 2026 14:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JU3ZUqomXC3g; Fri, 13 Feb 2026 14:17:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3574C8440B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770992246;
	bh=aGM67z7MBG7JNFtGawWZM4e/8S6RBoOC2Sl8x67NLQ8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qtunZT6Fe3Oa+fv+226kIOf1wRoWLH5BM0+C9uhbGg9q5vo0AkagqGOacopoUy6k2
	 2yF7VCcLGNRmTyD7/Lhb+dkPTok8YkGSYYMSdkeuVZ8bMd1Oay1Eov6kA3Um3YSn67
	 qPgCbnqjoCYokO2i424IF+fAOBze8HrqzvZpaf37aozDsFNjILp9YdWwlvWbUfg2IW
	 jjLjccZeiNcpzcDr6lTUAtkTPxZ8/uyDQDwX+N59saBQsjnTikn7gjp/ct8ucJGiUI
	 Zi0aTQH4IMf7zSNDVF0asVmT1U8PffsMuEV1PPyxj5hodbuwYK90LXChO4dsjlLNUP
	 U9GQ0Waai2Wpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3574C8440B;
	Fri, 13 Feb 2026 14:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BFB1C69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 14:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD9D341BF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 14:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6voT3KNArDdY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 14:17:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A0AEA40020
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0AEA40020
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0AEA40020
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 14:17:22 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-121-jZXz3ExRNgOiIfbg2brh-Q-1; Fri,
 13 Feb 2026 09:17:17 -0500
X-MC-Unique: jZXz3ExRNgOiIfbg2brh-Q-1
X-Mimecast-MFC-AGG-ID: jZXz3ExRNgOiIfbg2brh-Q_1770992235
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id ED48C1800367; Fri, 13 Feb 2026 14:17:14 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.45.225.39])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 2E99619560B9; Fri, 13 Feb 2026 14:17:10 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 13 Feb 2026 15:16:51 +0100
Message-ID: <20260213141651.2231124-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: hTmqM2hEIMkFJHDANBXFfB12TLQ5R4I16Tn4vzCiuTY_1770992235
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770992241;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=aGM67z7MBG7JNFtGawWZM4e/8S6RBoOC2Sl8x67NLQ8=;
 b=AxJP2DayUTDBChzMbKaC5J9hlbNzMP0eU/0aEM8GiCSbWETDeA0YhVqe4epSvBKyuFK8iI
 iurd0WIsIiLBH1x7+tPmCiF6SHEzc0hzpbrFhT4CDcLdvgJ0pl1M7tVkO3f9OQnMBClSgr
 zCNe6B+boXIr32j6M4fCTB0qDtC0tec=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AxJP2Day
Subject: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin
 initialization in DPLL subsystem
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
Cc: ivecera@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 19FA6137015
X-Rspamd-Action: no action

The DPLL SMA/U.FL pin redesign introduced ice_dpll_sw_pin_frequency_get()
which gates frequency reporting on the pin's active flag. This flag is
determined by ice_dpll_sw_pins_update() from the PCA9575 GPIO expander
state. Before the redesign, SMA pins were exposed as direct HW
input/output pins and ice_dpll_frequency_get() returned the CGU
frequency unconditionally — the PCA9575 state was never consulted.

The PCA9575 powers on with all outputs high, setting ICE_SMA1_DIR_EN,
ICE_SMA1_TX_EN, ICE_SMA2_DIR_EN and ICE_SMA2_TX_EN. Nothing in the
driver writes the register during initialization, so
ice_dpll_sw_pins_update() sees all pins as inactive and
ice_dpll_sw_pin_frequency_get() permanently returns 0 Hz for every
SW pin.

Fix this by writing a default SMA configuration in
ice_dpll_init_info_sw_pins(): clear all SMA bits, then set SMA1 and
SMA2 as active inputs (DIR_EN=0) with U.FL1 output and U.FL2 input
disabled. Each SMA/U.FL pair shares a physical signal path so only
one pin per pair can be active at a time. U.FL pins still report
frequency 0 after this fix: U.FL1 (output-only) is disabled by
ICE_SMA1_TX_EN which keeps the TX output buffer off, and U.FL2
(input-only) is disabled by ICE_SMA2_UFL2_RX_DIS. They can be
activated by changing the corresponding SMA pin direction via dpll
netlink.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 53b54e395a2ed8..c2ad39bfe177db 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -3545,6 +3545,7 @@ static int ice_dpll_init_info_sw_pins(struct ice_pf *pf)
 	struct ice_dpll_pin *pin;
 	u32 phase_adj_max, caps;
 	int i, ret;
+	u8 data;
 
 	if (pf->hw.device_id == ICE_DEV_ID_E810C_QSFP)
 		input_idx_offset = ICE_E810_RCLK_PINS_NUM;
@@ -3604,6 +3605,22 @@ static int ice_dpll_init_info_sw_pins(struct ice_pf *pf)
 		}
 		ice_dpll_phase_range_set(&pin->prop.phase_range, phase_adj_max);
 	}
+
+	/* Initialize the SMA control register to a known-good default state.
+	 * Without this write the PCA9575 GPIO expander retains its power-on
+	 * default (all outputs high) which makes all SW pins appear inactive.
+	 * Set SMA1 and SMA2 as active inputs, disable U.FL1 output and
+	 * U.FL2 input.
+	 */
+	ret = ice_read_sma_ctrl(&pf->hw, &data);
+	if (ret)
+		return ret;
+	data &= ~ICE_ALL_SMA_MASK;
+	data |= ICE_SMA1_TX_EN | ICE_SMA2_TX_EN | ICE_SMA2_UFL2_RX_DIS;
+	ret = ice_write_sma_ctrl(&pf->hw, data);
+	if (ret)
+		return ret;
+
 	ret = ice_dpll_pin_state_update(pf, pin, ICE_DPLL_PIN_TYPE_SOFTWARE,
 					NULL);
 	if (ret)
-- 
2.52.0

