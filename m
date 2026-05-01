Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDZNBA159GliBgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 11:57:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C98B94AB702
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 11:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6D546F4CA;
	Fri,  1 May 2026 09:57:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b5VArTMQ-qgV; Fri,  1 May 2026 09:57:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE47761CFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777629446;
	bh=1xTN6OsAVuW3jnezW6FjJSAEG6gFeBXpHPEFbG0OKV4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gjjABjBsXLv2b1JF1mLh4UATGPI1dzE9HTGPUicQ+6Wl5NtymEjJLCnKKOwmCxIsC
	 Zdu7qi/c5/+3aFbhln8xrqXNukeevQjQR5zUBN8VekAdO1a+RewoTDVD8UGW0q8GWC
	 rAb2RCRG2mMidfnSKWbZWeL+Bm6GmWXysWAFtQNBB2fF41MjIhrYZZwSsY4ocHiTDO
	 0dXwvqHjoIlf3HtwgJOGyTk00RzuNOonGzKfJJxpGZJEVj/0FuSSaCaFVuRPwHXICv
	 Lg08I3PJhOo7u6ONzqCyTA0omNgwX0fBRR1HP8EE+WGTYuq3IiC9Kpsdg2opZGxyIa
	 CmiDAO8ETXbrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE47761CFB;
	Fri,  1 May 2026 09:57:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A3CC127
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 09:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F6B161B28
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 09:57:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsJ_kV1qoXDz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2026 09:57:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::332; helo=mail-wm1-x332.google.com;
 envelope-from=matt@readmodwrite.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A374561769
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A374561769
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A374561769
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 09:57:23 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-483487335c2so19320335e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 May 2026 02:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777629441; x=1778234241;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1xTN6OsAVuW3jnezW6FjJSAEG6gFeBXpHPEFbG0OKV4=;
 b=T3GOzc4FTZHkBtxAJepXN8wNI5blv6ThmoEA+rBh+BiT7XX2w+JXaAIP2tQMZi9U4v
 4jRrHYr14jwass6VJhaCWrXcVo6f3wxfuaDqhSmAqW+rMHW7ezdcfU5j1wS1UVEBgYWX
 GjDqtqMJA8zAXdkoYOcJIb8yKL5Ax6PqVhZaXo6S0oHnabIgYSHI989vQRCruRc6CSE/
 +ZYrGR9yIxbJI/0/pLuCNi9C4iRgOIz8CaVntjAt/ftwQBvOLBBHZVvEV27hWBXmjUYX
 Pf7ARa5JJUZbF7i/8cIPMFgFtBV0lKbHqyZQRXil+BcKCrq7pk+TNBkLXVGJbP0J8gIG
 pvRw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+h4DZHN9j+dHBkni8ihD4Rh0Qn+UWrnN1SCo/AUP58zo4fv1VLvKieUmxkqq+iS9TCVmNHUCOynusNUGrY45g=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz9wmg2qd+qP1Agmtw/3P2T4q31Xb+uW/KIsOOAh1d/y/IF9ePG
 j+0AjZGOFAYN4wr3BGe8tKaRWAriKKAJqSlJXfY3AF0HHE2DaFhjDHUZyp8SR+oOodM=
X-Gm-Gg: AeBDievzqtyRMfdV3nDmmd/aQ/NySyIhJBMztD4+AGe2lM/bnwVc0KO2NGGudptjEp1
 7bIw1Nt/sDvEIIEPU4vv3z7/obkXH3J6hpxO99NW/aeBzOHbk2jDYitWjYBACDTPhMSBr0EmjA5
 WwjdUu1AV9oof0ObO576qJGQInW6XmwypZ5nyBQw1Grhmwyi036TRXkhhAsQlo6JJXVBWyuz1i3
 DENgavGsllasndWmvLni9zz1wi8Dz1CoHS23qCC2+XIHRw65VDI99MOpyiMw0y6LEZIx+6CZzRn
 RAYKy/7CZpaxlR6X2Bp4WlujuMf7X+K2obqUDqB1Rlnm+ZpR39R7KtLE+KIKhLzjCHrsmElVdds
 1+IqDZ68/fd9mpNJbY6TaapDy+IxfUZCCl7mlkd2yV/IZ6f+boAJafBowUn2YRUnIzHiZJMsSs7
 +2wsj0P3qcXEQOXV7S8FMYf0KZHqKFa3bhLSor
X-Received: by 2002:a05:600c:154d:b0:485:39b2:a47c with SMTP id
 5b1f17b1804b1-48a8452db0fmr108898045e9.25.1777629441256; 
 Fri, 01 May 2026 02:57:21 -0700 (PDT)
Received: from matt-Precision-5490.. ([2a09:bac6:37a8:26d2::3de:68])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a8eb3427fsm73837315e9.0.2026.05.01.02.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2026 02:57:20 -0700 (PDT)
From: Matt Fleming <matt@readmodwrite.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 kernel-team@cloudflare.com, Matt Fleming <mfleming@cloudflare.com>,
 stable@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Eric Joyner <eric.joyner@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  1 May 2026 10:57:17 +0100
Message-ID: <20260501095717.1032151-1-matt@readmodwrite.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1777629441;
 x=1778234241; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1xTN6OsAVuW3jnezW6FjJSAEG6gFeBXpHPEFbG0OKV4=;
 b=HxRtlYZJqF+BgSgNXo4plj7uNnwuQ6ORUvYuLiI25R38OLd6rJ5YGabrUV3XtT9kCP
 d5b/uryap/MrSIfs96YFpJkkIp9x/fTPlOrC3sA9riqVPtOdtBJC0kS2/Ej/MfjaBDxg
 Qre4m42VqihqKJL4k9Q+uPd+SwRKQZx+gXAkNqhoduVIbVQyKFpmpFh70oHdw9OSHF9M
 8b+Io/6M3kaq/SuaHsT6J1LhdIACRcGzXROSwmFUjbZVwg9pxhh51mHSU83V0iwVmU/T
 XpyQNQ/RFzYbXVZMsCd9ZYJWpAEXxpev6uZhf7ewuSevkhmxVkpWfIB+GBhKvMaY2HVA
 gp3g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=readmodwrite.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=readmodwrite-com.20251104.gappssmtp.com
 header.i=@readmodwrite-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=HxRtlYZJ
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix missing 1's complement
 negation in GCS raw checksum
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
X-Rspamd-Queue-Id: C98B94AB702
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DMARC_NA(0.00)[readmodwrite.com];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:stable@vger.kernel.org,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:eric.joyner@intel.com,m:paul.greenwalt@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,readmodwrite.com:mid];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Matt Fleming <mfleming@cloudflare.com>

Commit 905d1a220e8d ("ice: Add E830 checksum offload support") added
Generic Checksum (GCS) support for E830 NICs but omitted the 1's
complement negation (~) when converting the hardware raw_csum to
skb->csum for CHECKSUM_COMPLETE.

Without the negation, every CHECKSUM_COMPLETE packet fails the
fast-path validation in nf_ip_checksum() and falls through to software
checksumming via __skb_checksum_complete(), which triggers the
rate-limited "hw csum failure" warning. Packets are still accepted
(the software recheck passes) but hardware checksum offload is
effectively disabled and the warning floods dmesg on systems running
nf_conntrack on VLAN sub-interfaces.

Multiple other drivers (idpf, ehea, iwlwifi, cassini, sunhme, enetc)
also apply ~ for CHECKSUM_COMPLETE. The ice driver was the only in-tree
user of csum_unfold() for CHECKSUM_COMPLETE that omitted it.

Fixes: 905d1a220e8d ("ice: Add E830 checksum offload support")
Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Matt Fleming <mfleming@cloudflare.com>
---
v2:
  - Add Cc: stable@vger.kernel.org (Aleksandr)
  - Pick up Reviewed-by tags from Aleksandr and Simon
  - No code changes
v1: https://lore.kernel.org/netdev/20260408190214.1287708-1-matt@readmodwrite.com/

 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index e695a664e53d..c177579e0114 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -92,7 +92,7 @@ static void ice_rx_gcs(struct sk_buff *skb,
 	desc = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
 	skb->ip_summed = CHECKSUM_COMPLETE;
 	csum = (__force u16)desc->raw_csum;
-	skb->csum = csum_unfold((__force __sum16)swab16(csum));
+	skb->csum = csum_unfold((__force __sum16)~swab16(csum));
 }
 
 /**
-- 
2.43.0

