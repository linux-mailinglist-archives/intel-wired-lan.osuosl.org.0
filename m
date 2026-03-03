Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKQrMsZWp2lsgwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 22:46:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 453EA1F7B86
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 22:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CBBB409CA;
	Tue,  3 Mar 2026 21:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id phQRh-Bsz-0J; Tue,  3 Mar 2026 21:39:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59EF64096B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772573984;
	bh=5tFr+VCU5MgdTJeB8l5sJEL17KHuhraEVD1f4KvyvgA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=guWW8lND1i/WZr+1aVoA7HuH+OPqQSzDiQXDeVqDpRQtT9ImcStvXGKab7/7T6Az2
	 KBBpXPhWqzt8yUT6uKB8GUy+KJixQzAhBtRsklV9DfIW4t9ktMtUiJnT7i+YCnzUX/
	 EzI23CETrixP/AwzxLih8i4dXeHrSb6+KU+Pl6T6kqqGeV+gwCs2jbIFF9nGTULjov
	 RAjt3mH+bQBMBHAThYdFcUFJsEOjU6AtRQnReWry/4gkDxcgzhb+2jtviKru24iLXH
	 NcQ24Vy8zv2hGXaRQ3W/o5+GC9rQASJRuRny8CHvqSpY2wjRvtfGhju9g4Ny34j1Pn
	 wOGIKmJpAIVVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59EF64096B;
	Tue,  3 Mar 2026 21:39:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E33A1EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 21:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E84988188D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 35Wuid5PXYKm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=devnull+maximilianpezzullo.gmail.com@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 514B98188A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 514B98188A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 514B98188A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D758561118;
 Tue,  3 Mar 2026 21:38:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4A5C2BC87;
 Tue,  3 Mar 2026 21:38:40 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCECEDEBF7;
 Tue,  3 Mar 2026 21:38:40 +0000 (UTC)
From: Maximilian Pezzullo via B4 Relay
 <devnull+maximilianpezzullo.gmail.com@kernel.org>
Date: Tue, 03 Mar 2026 22:38:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-master-v1-1-f180b1ad98b5@gmail.com>
References: <20260303-master-v1-0-f180b1ad98b5@gmail.com>
In-Reply-To: <20260303-master-v1-0-f180b1ad98b5@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Maximilian Pezzullo <maximilianpezzullo@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772573919; l=2465;
 i=maximilianpezzullo@gmail.com; s=20260303; h=from:subject:message-id;
 bh=AFngQ6STbyhDDwY5fngMlDBMLtfCdqw2s6bzouZtL2E=;
 b=qscFiBIdFr8gVcycZYKsdxDbGRaYYhZi4k7TpaBmZU7jRhh6Nk2lxZlcIWLxJ7Zpg/q6WksS8
 hzVQxLU3m3aCckvy74Hmcjb2k2p2TNMacZ7ggzkVt5InwkGRXoR1osh
X-Developer-Key: i=maximilianpezzullo@gmail.com; a=ed25519;
 pk=TRTR4c2Vb1IfluQvv5OUDPg7EE+pIzdPBND85UU559w=
X-Endpoint-Received: by B4 Relay for maximilianpezzullo@gmail.com/20260303
 with auth_id=658
X-Original-From: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
X-Mailman-Approved-At: Tue, 03 Mar 2026 21:39:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772573920;
 bh=ncE0CctbXbxGWCznoqU5F/hOD+FPfa97eLIKp7komgg=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=sbnFiomABj/XjQvcSLjqFae8r0RjcI+S8ubExK+QDP4GkOHMIB3OfgSVwJrbM6jSu
 xq5j69eJpOBrBiavGLFlVeOViMxIEKYDWZGjmme5sJlD0iijoSOf8TAziRwY4hPrmw
 9kPg10/nPvlOgpqdgk70IDWPN3JqiA1ykrANz/HW9I3W59ywwniCrkhapDSECNOOfH
 Ps1X23UijDyZms5XXlZRf3Vx3mOm2/M37Oh9HihEPfD8pOdH0cDwaakXB98/YnxdkW
 dZcKNb23a+kaZXDadD5Pta8wpp0qTp3RI1PfRR2wymWH1VYgjCcRgCUGSs3ncReP/s
 S7J39mveIaJiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sbnFiomA
Subject: [Intel-wired-lan] [PATCH 1/2] igb: fix typos in comments
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
Reply-To: maximilianpezzullo@gmail.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 453EA1F7B86
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.29 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[maximilianpezzullo.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:maximilianpezzullo@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[devnull@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[maximilianpezzullo@gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

From: Maximilian Pezzullo <maximilianpezzullo@gmail.com>

Fix spelling errors in code comments:
 - e1000_nvm.c: 'likley' -> 'likely'
 - e1000_mac.c: 'auto-negotitation' -> 'auto-negotiation'
 - e1000_mbx.h: 'exra' -> 'extra'

Signed-off-by: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
---
 drivers/net/ethernet/intel/igb/e1000_mac.c | 2 +-
 drivers/net/ethernet/intel/igb/e1000_mbx.h | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index fa3dfafd2..2bcce6eef 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -1581,7 +1581,7 @@ s32 igb_disable_pcie_master(struct e1000_hw *hw)
  *  igb_validate_mdi_setting - Verify MDI/MDIx settings
  *  @hw: pointer to the HW structure
  *
- *  Verify that when not using auto-negotitation that MDI/MDIx is correctly
+ *  Verify that when not using auto-negotiation that MDI/MDIx is correctly
  *  set, which is forced to MDI mode only.
  **/
 s32 igb_validate_mdi_setting(struct e1000_hw *hw)
diff --git a/drivers/net/ethernet/intel/igb/e1000_mbx.h b/drivers/net/ethernet/intel/igb/e1000_mbx.h
index 178e60ec7..9e44527f5 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mbx.h
+++ b/drivers/net/ethernet/intel/igb/e1000_mbx.h
@@ -30,7 +30,7 @@
 /* Indicates that VF is still clear to send requests */
 #define E1000_VT_MSGTYPE_CTS	0x20000000
 #define E1000_VT_MSGINFO_SHIFT	16
-/* bits 23:16 are used for exra info for certain messages */
+/* bits 23:16 are used for extra info for certain messages */
 #define E1000_VT_MSGINFO_MASK	(0xFF << E1000_VT_MSGINFO_SHIFT)
 
 #define E1000_VF_RESET		0x01 /* VF requests reset */
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index c8638502c..cf4e5d0e9 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -405,7 +405,7 @@ s32 igb_read_nvm_eerd(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
  *  Writes data to EEPROM at offset using SPI interface.
  *
  *  If e1000_update_nvm_checksum is not called after this function , the
- *  EEPROM will most likley contain an invalid checksum.
+ *  EEPROM will most likely contain an invalid checksum.
  **/
 s32 igb_write_nvm_spi(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
 {

-- 
Git-155)


