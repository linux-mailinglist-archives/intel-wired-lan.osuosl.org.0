Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEatFCg31mlZBwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:08:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 332693BB15A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 856DD822B8;
	Wed,  8 Apr 2026 11:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3whq3_vQAC5a; Wed,  8 Apr 2026 11:08:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9098822BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775646500;
	bh=eHfeMlveuGcx7hW6Gtzk+PwguxJpEiOHLrc6d7D9JwM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=groWG50KEIcvbsbKNId8dyvrmHI5lezqKj2HoE6cAg95OvGlxrCN5B9RtchTDt9jO
	 sIZaoWetsgZdjpUOCqltHK/Z2DSEmNbq1rjwld547bOqR7bwJDUxa3UtUmt/A/pXev
	 Jod7shrXZNACiu4SgQgKxTC09TQcQBomJmWaWdURzDhInHZ+ao1MTE3wTkaVt694B/
	 sLXmUrXx7r2iJ2Tkza9RU2bwqacxGYI+SBplraOU1J/qFpC7t8SrpYZyT+z9qOc1P3
	 YziPCKSZYvqhzn0fSVsM+XNUKFtDt60Wt/yKdJgZSrj8b6aG3IHSwZRd3+iVPR1JKC
	 yJ3CotEolB+mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9098822BA;
	Wed,  8 Apr 2026 11:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BBA842C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A518660810
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ftkfoVnzA4Z8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 11:08:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8435460805
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8435460805
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8435460805
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:08:16 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-29-uv3yoqhQMdeNODp07RMQCA-1; Wed,
 08 Apr 2026 07:08:12 -0400
X-MC-Unique: uv3yoqhQMdeNODp07RMQCA-1
X-Mimecast-MFC-AGG-ID: uv3yoqhQMdeNODp07RMQCA_1775646490
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 36615195605C; Wed,  8 Apr 2026 11:08:10 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.48.174])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 45FF81955D84; Wed,  8 Apr 2026 11:08:05 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 13:05:04 +0200
Message-ID: <20260408110504.1032879-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: CyXuwUGAUm7iQKrd14TAgiQDVgGqVYmXtA_TWJU2zcs_1775646490
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775646495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eHfeMlveuGcx7hW6Gtzk+PwguxJpEiOHLrc6d7D9JwM=;
 b=UMQ/GYsyF5AeYZfIwjpHLRnBbzsvoslLkO3LR1rX3l+yDXgge1L4zoJ+dMMmKTrdBpM1PJ
 XCp3wFeiCzlbF9DGo5yFoil0ujbMhbLW9UknBGoAHp/q0hswmEvXxjUK0DDNYQ+dSMZaod
 UiJn95SIRygPdg2GAgLEFXkkv+F9cuE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=UMQ/GYsy
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix SMA and U.FL pin
 state changes affecting paired pin
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 332693BB15A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SMA and U.FL pins share physical signal paths in pairs (SMA1/U.FL1 and
SMA2/U.FL2) controlled by the PCA9575 GPIO expander.  Each pair can
only have one active pin at a time: SMA1 output and U.FL1 output share
the same CGU output, SMA2 input and U.FL2 input share the same CGU
input.  The PCA9575 register bits determine which connector in each
pair owns the signal path.

The driver does not account for this pairing in two places:

ice_dpll_ufl_pin_state_set() modifies PCA9575 bits and disables the
backing CGU pin without checking whether the U.FL pin is currently
active.  Disconnecting an already inactive U.FL pin flips bits that
the paired SMA pin relies on, breaking its connection.

ice_dpll_sma_direction_set() does not propagate direction changes to
the paired U.FL pin.  For SMA2/U.FL2 the ICE_SMA2_UFL2_RX_DIS bit is
never managed, so U.FL2 stays disconnected after SMA2 switches to
output.  For both pairs the backing CGU pin of the U.FL side is never
enabled when a direction change activates it, so userspace sees the
pin as disconnected even though the routing is correct.

Fix by guarding the U.FL disconnect path against inactive pins and by
updating the paired U.FL pin fully on SMA direction changes: manage
ICE_SMA2_UFL2_RX_DIS for the SMA2/U.FL2 pair and enable the backing
CGU pin whenever the peer becomes active.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Signed-off-by: Petr Oros <poros@redhat.com>
---
v2:
 - fix ice_dpll_sma_direction_set() to manage ICE_SMA2_UFL2_RX_DIS
   when SMA2 direction changes
 - enable paired U.FL backing CGU pin when direction change makes
   it active, so it reports as connected immediately
 - (both reported by Intel test on the SMA init and notification
   patch threads)
v1: https://lore.kernel.org/all/20260325151050.2081977-1-poros@redhat.com/
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 50 ++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 498ec2c045f384..3f8cd5b8298b57 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1171,6 +1171,8 @@ static int ice_dpll_sma_direction_set(struct ice_dpll_pin *p,
 				      enum dpll_pin_direction direction,
 				      struct netlink_ext_ack *extack)
 {
+	struct ice_dplls *d = &p->pf->dplls;
+	struct ice_dpll_pin *peer;
 	u8 data;
 	int ret;
 
@@ -1189,8 +1191,9 @@ static int ice_dpll_sma_direction_set(struct ice_dpll_pin *p,
 	case ICE_DPLL_PIN_SW_2_IDX:
 		if (direction == DPLL_PIN_DIRECTION_INPUT) {
 			data &= ~ICE_SMA2_DIR_EN;
+			data |= ICE_SMA2_UFL2_RX_DIS;
 		} else {
-			data &= ~ICE_SMA2_TX_EN;
+			data &= ~(ICE_SMA2_TX_EN | ICE_SMA2_UFL2_RX_DIS);
 			data |= ICE_SMA2_DIR_EN;
 		}
 		break;
@@ -1202,6 +1205,34 @@ static int ice_dpll_sma_direction_set(struct ice_dpll_pin *p,
 		ret = ice_dpll_pin_state_update(p->pf, p,
 						ICE_DPLL_PIN_TYPE_SOFTWARE,
 						extack);
+	if (ret)
+		return ret;
+
+	/* When a direction change activates the paired U.FL pin, enable
+	 * its backing CGU pin so the pin reports as connected. Without
+	 * this the U.FL routing is correct but the CGU pin stays disabled
+	 * and userspace sees the pin as disconnected.  Do not disable the
+	 * backing pin when U.FL becomes inactive because the SMA pin may
+	 * still be using it.
+	 */
+	peer = &d->ufl[p->idx];
+	if (peer->active) {
+		struct ice_dpll_pin *target;
+		enum ice_dpll_pin_type type;
+
+		if (peer->output) {
+			target = peer->output;
+			type = ICE_DPLL_PIN_TYPE_OUTPUT;
+		} else {
+			target = peer->input;
+			type = ICE_DPLL_PIN_TYPE_INPUT;
+		}
+		ret = ice_dpll_pin_enable(&p->pf->hw, target,
+					  d->eec.dpll_idx, type, extack);
+		if (!ret)
+			ret = ice_dpll_pin_state_update(p->pf, target,
+							type, extack);
+	}
 
 	return ret;
 }
@@ -1253,6 +1284,14 @@ ice_dpll_ufl_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
 			data &= ~ICE_SMA1_MASK;
 			enable = true;
 		} else if (state == DPLL_PIN_STATE_DISCONNECTED) {
+			/* Skip if U.FL1 is not active, setting TX_EN
+			 * while DIR_EN is set would also deactivate
+			 * the paired SMA1 output.
+			 */
+			if (data & (ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)) {
+				ret = 0;
+				goto unlock;
+			}
 			data |= ICE_SMA1_TX_EN;
 			enable = false;
 		} else {
@@ -1267,6 +1306,15 @@ ice_dpll_ufl_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
 			data &= ~ICE_SMA2_UFL2_RX_DIS;
 			enable = true;
 		} else if (state == DPLL_PIN_STATE_DISCONNECTED) {
+			/* Skip if U.FL2 is not active, setting
+			 * UFL2_RX_DIS could also disable the paired
+			 * SMA2 input.
+			 */
+			if (!(data & ICE_SMA2_DIR_EN) ||
+			    (data & ICE_SMA2_UFL2_RX_DIS)) {
+				ret = 0;
+				goto unlock;
+			}
 			data |= ICE_SMA2_UFL2_RX_DIS;
 			enable = false;
 		} else {
-- 
2.52.0

