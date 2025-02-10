Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4652AA2F28B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 17:07:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0778818DC;
	Mon, 10 Feb 2025 16:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmMFhJkdvqii; Mon, 10 Feb 2025 16:07:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F06C818B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739203650;
	bh=kca9LEECPrfswrWUPZvyaDxx4NwxuWzzj1p0ey+sgvY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v35czwy6bGTFa9eL4IdEQvm7/7bWvs1RhwBXBo0iI6iq84UInqTXs4hjODIf0AUVP
	 Ddj1WRts2jsvN/KkFCOdoo5Z3EpjDxzceG/ynrp+mwxWXfQwaZOGepH8GVrgA1sC2y
	 rqfvvNKKGen+n4f8SiYK2Uv5wL1k6tprh+ZCO7+Wpyy3f9FAccTCx7Ytzp/voc+lCm
	 i3E2TBPOldCSAW0G1yMUjhKLckjFtlJDVV1FwmeBFFZJ39h/+SImOQGFCsqHZXDDNL
	 paFcin1DlP2FpT4qh06Vs8wf00yWKXShmANJf2nYbuXlqUiHUhygYkN2Y6wudIMtiD
	 1gqp2ypdO6Yrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F06C818B5;
	Mon, 10 Feb 2025 16:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 100FAC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3C734125E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id digYigTxHvs2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 05:07:29 +0000 (UTC)
X-Greylist: delayed 599 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 10 Feb 2025 05:07:28 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CACBF4124F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CACBF4124F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.241.56.151;
 helo=mout-p-101.mailbox.org; envelope-from=ethan@ethancedwards.com;
 receiver=<UNKNOWN> 
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CACBF4124F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:07:28 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:b231:465::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4YrsWb5T15z9sZZ;
 Mon, 10 Feb 2025 05:47:39 +0100 (CET)
From: Ethan Carter Edwards <ethan@ethancedwards.com>
Date: Sun, 09 Feb 2025 23:47:24 -0500
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-e610-self-v1-1-34c6c46ffe11@ethancedwards.com>
X-B4-Tracking: v=1; b=H4sIANuEqWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIwNL3VQzQwPd4tScNF0L09TEZMM0g1RjYwsloPqCotS0zAqwWdGxtbU
 AdXCXNVsAAAA=
X-Change-ID: 20250209-e610-self-85eac1f0e338
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, 
 Simon Horman <horms@kernel.org>, Stefan Wegrzyn <stefan.wegrzyn@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 linux-hardening@vger.kernel.org, 
 Ethan Carter Edwards <ethan@ethancedwards.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1107;
 i=ethan@ethancedwards.com; h=from:subject:message-id;
 bh=1im/VCm5y7Sebw9X8ipwvqIuoQBYm0NNnURuN4wiqX0=;
 b=LS0tLS1CRUdJTiBQR1AgTUVTU0FHRS0tLS0tCgpvd0o0bkp2QXk4ekFKWGJEOXFoNThlVGp6e
 GhQcXlVeHBLOXNlV3JSZHR1eTEzalh4cE4raGJWYjk3ZjhQdWp4CjdQb3QvMW5iLzBzdU1XRlJt
 N0N2bzVTRlFZeUxRVlpNa2VWL2puTGFRODBaQ2p2L3VqVEJ6R0ZsQWhuQ3dNVXAKQUJOaDYyTDR
 wMm4yK1J6SEZENy9NN3JHZWd2VVdnMGlkckV3N3QvZXZYZlRiNDhveFhxeFRFYUcvL2ZPT1ZRRg
 pwZmJVdkxzMXUzek82NHVYVFk3ZHJ0Nlg5RzdxdExpdnQ0dzFPUUdpQjFESgo9dHpzWgotLS0tL
 UVORCBQR1AgTUVTU0FHRS0tLS0tCg==
X-Developer-Key: i=ethan@ethancedwards.com; a=openpgp;
 fpr=2E51F61839D1FA947A7300C234C04305D581DBFE
X-Rspamd-Queue-Id: 4YrsWb5T15z9sZZ
X-Mailman-Approved-At: Mon, 10 Feb 2025 16:07:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ethancedwards.com; 
 s=MBO0001; t=1739162859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=kca9LEECPrfswrWUPZvyaDxx4NwxuWzzj1p0ey+sgvY=;
 b=ZbddG3N/BTYKzAAA5ZktaEM8+SVH33OpkHm44p2UTTstODryRB9z96Ers+JBth2IIRR0nP
 7mpQbwYvLEkKwB5BMLRBNrYbvSMY3Dy1FUn4fxoz+h8BPcXQ47+B+Z9jXivqnLBHCH4CGm
 qjEhLeH/8GrNZJ/jgV02Z4feaIiHftjUH294MAD6s154vQdKmwGoauCS4E5dgTM7EXo7jp
 ktyoHEbmKxUQrTeNUAc1+ZvPsTXGb6sI0+CRRSONTtvIzRQp+xOMR4JUytPjKiGID+N1nZ
 mgCcR8wayDKWGb9q9BYM7/uL3VnmdWPe+TC40meQpj/EtLq6jufkSU5oGkJqhQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ethancedwards.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=ethancedwards.com header.i=@ethancedwards.com
 header.a=rsa-sha256 header.s=MBO0001 header.b=ZbddG3N/
Subject: [Intel-wired-lan] [PATCH] ixgbe: remove self assignment
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

Variable self assignment does not have any effect.

Addresses-Coverity-ID: 1641823 ("Self assignment")
Fixes: 46761fd52a886 ("ixgbe: Add support for E610 FW Admin Command Interface")
Signed-off-by: Ethan Carter Edwards <ethan@ethancedwards.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668672d65535fca3b2fe6f58a9deda1188fa..6b0bce92476c3c5ec3cf7ab79864b394b592c6d4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_SV)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
 		}
 	}
 

---
base-commit: a64dcfb451e254085a7daee5fe51bf22959d52d3
change-id: 20250209-e610-self-85eac1f0e338

Best regards,
-- 
Ethan Carter Edwards <ethan@ethancedwards.com>

