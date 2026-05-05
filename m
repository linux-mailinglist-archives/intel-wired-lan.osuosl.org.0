Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKjYONLn+WmdFAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 14:51:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEB44CDF3C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 14:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CECB60849;
	Tue,  5 May 2026 12:51:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HOwxc-GKZHup; Tue,  5 May 2026 12:51:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B1A360843
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777985487;
	bh=5gCXSEYEFFiXV2aitnRBv60G+WOwVgrtKEBYklKh8rs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XJU3pmbaASx3BdW1nl/IkelCi1aYduj6ZIvd3AbvZESuRfrzMNa09e2H7gYBQ/Wb8
	 ycHC4OrOF5hcXmcGx7p38EE5cXAfLAUXkTW0CpJmIiytp3GqSibYzs7NUO4zQ1kalw
	 LTI4sMvgl5EWZjyzCQKUTsWfjvl54gX9Z8HURi9rI7VqwSTvY/jQ3z97JjA+fThRYZ
	 qumyi0TmloTniROXou7VWwTNy46QQfAt5lwZUvBUv/C8NGIe4dp6LaXbA5H2s38xK9
	 brIvLOPD6+k5Gjg0V7Q99N/d9NRsAnsZpaAR9GOd5OXwYSuQS0d/FfkKqfBuprtups
	 VybA9HFcz+HvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B1A360843;
	Tue,  5 May 2026 12:51:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 15D352A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 12:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFD348134F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 12:51:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ErpeMj237lSj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 12:51:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E88268132A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E88268132A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E88268132A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 12:51:23 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-255-TLuPElacP1GjBmZ2M8C3eQ-1; Tue,
 05 May 2026 08:51:18 -0400
X-MC-Unique: TLuPElacP1GjBmZ2M8C3eQ-1
X-Mimecast-MFC-AGG-ID: TLuPElacP1GjBmZ2M8C3eQ_1777985476
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 63FA51800347; Tue,  5 May 2026 12:51:16 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.49.137])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C161030001A1; Tue,  5 May 2026 12:51:11 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Tue,  5 May 2026 14:51:08 +0200
Message-ID: <20260505125108.2019998-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: jge8j4HkMhwek5eqigQg7ojyK6_6zJ1Xy5hXXLuev4w_1777985476
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777985482;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5gCXSEYEFFiXV2aitnRBv60G+WOwVgrtKEBYklKh8rs=;
 b=NLnkFYHcNCpFAxOz9T0ocDYWtU5WbXMIPXh5r6Yp6kkxUt2CZqTneRc+eIt1rZ5ufgx9++
 g1L7NCsSwmgn7SfR/Wlk7pRiQll3QD8cAa/nRbnB+bGgI3VzKkIajik+B/LS+3vNrTV+S3
 clSsRnrvWCLF17qKYK3yBcrSj7ZySjk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NLnkFYHc
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing priority
 callbacks for U.FL DPLL pins
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: BCEB44CDF3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mpg.de:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]

The U.FL2 input pin advertises DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE
in its capability mask, but ice_dpll_pin_ufl_ops does not provide
.prio_get and .prio_set callbacks. As a result the DPLL subsystem
cannot report or accept priority for U.FL pins: pin-get omits the prio
field on U.FL2 and pin-set with prio is rejected as invalid, even
though the capability is present. This prevents user space from using
priority to select or disable U.FL2 as a DPLL input source.

Reproducer with iproute2 (dpll command):

  # dpll pin show board-label U.FL2
  pin id 16:
    module-name ice
    board-label U.FL2
    type ext
    capabilities priority-can-change|state-can-change
    parent-device:
      id 0 direction input state selectable phase-offset 0
    /* note: no "prio" between "direction" and "state",
       even though priority-can-change is advertised */

  # dpll pin set id 16 parent-device 0 prio 5
  RTNETLINK answers: Operation not supported

After the fix the prio field is reported by pin show and pin set with
prio is accepted on U.FL2.

Add the missing .prio_get and .prio_set callbacks to
ice_dpll_pin_ufl_ops, reusing ice_dpll_sw_input_prio_{get,set}. The
same ops struct is shared by U.FL1 and U.FL2: U.FL2 (input) delegates
to the backing hardware input pin, while U.FL1 (output) does not
advertise DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE so the dpll core
capability gate never invokes prio_set for it, and prio_get reports
the OUTPUT sentinel (ICE_DPLL_PIN_PRIO_OUTPUT) on the output side
exactly like the SMA path does today.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Petr Oros <poros@redhat.com>
---
v2:
- describe the userspace reproducer (dpll pin show / dpll pin set)
  in the commit message, suggested by Paul Menzel
- collect Reviewed-by tags from v1

v1: https://lore.kernel.org/all/20260504121603.1702674-1-poros@redhat.com/
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 27b460926baced..be72a076f7a15c 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2628,6 +2628,8 @@ static const struct dpll_pin_ops ice_dpll_pin_ufl_ops = {
 	.state_on_dpll_set = ice_dpll_ufl_pin_state_set,
 	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
 	.direction_get = ice_dpll_pin_sw_direction_get,
+	.prio_get = ice_dpll_sw_input_prio_get,
+	.prio_set = ice_dpll_sw_input_prio_set,
 	.frequency_get = ice_dpll_sw_pin_frequency_get,
 	.frequency_set = ice_dpll_sw_pin_frequency_set,
 	.esync_set = ice_dpll_sw_esync_set,
-- 
2.53.0

