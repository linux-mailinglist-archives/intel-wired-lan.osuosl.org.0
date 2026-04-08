Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIKQIqPG1mkLIQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:20:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C85663C4042
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4391B60790;
	Wed,  8 Apr 2026 21:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cUO-8KBEl_VL; Wed,  8 Apr 2026 21:20:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4143607EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775683232;
	bh=H5kVGMWj80+QphQVczp12xoX+BKVAGC3CV86I0J4IZU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=djL13DL6e7rvFjk/MMIwKuEJWvtvy16JD8L4nuw9Zft6q+PH/wo2+AZN7R4gVnyAN
	 aDLRgcAgoJv1FSrWG9h5RlBsSzrkjseJYmOEIrciBwAUSb/ynnV4BePjHVVXzz2vqc
	 namWUdtn20ydIytZ2PbfCakCy+5SNr5v2SB7ODKTiAdKdycPcwWUCT5b/lrNqTRLLo
	 aIRwQkKfjdqESqmtmE6WQ7GafBm04dr1xKS7rVikvopda/8UBoNVDdO9uvUUKIfo/E
	 X0H2CMr58+S7Wshs0qaeiWXJixrlO2I2isQEVKSk+h7zC6Wo6I9NqmnCssIXfyvx8e
	 xrTJknzedXWOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4143607EF;
	Wed,  8 Apr 2026 21:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CC681F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 19:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22D384052D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 19:02:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0R8rHDKLCV0e for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 19:02:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42b; helo=mail-wr1-x42b.google.com;
 envelope-from=matt@readmodwrite.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB5B94006F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB5B94006F
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB5B94006F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 19:02:19 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-43d23305225so44879f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Apr 2026 12:02:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775674938; x=1776279738;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H5kVGMWj80+QphQVczp12xoX+BKVAGC3CV86I0J4IZU=;
 b=cmZ8mcJFmrZtoPw78qCggCN2OAtnzrzmJSxGw1NBX+wdp7IlNlkcwWLfb2oLfSn2+R
 7mBnwp+PXvP4wvNXqnmsSq2BevBmoXQgsg2LBnvD2dnf5ozN0gGqeNMNWbnUL7hqUMDh
 ft7Hvg0uRRoTxHBLbwRxhU9iBMlF7yQNOsyORU0oYnIBD93n0gwniHl/2NU88hBCRKpJ
 50+GX0X70uS5cGIJ2SMCcOeS8YDlDFRtMXZQpzbsc7L0WwRJI/AQkwfd0jJ/G2/Km+P5
 vIcdJbupLvhPWgFkKRNNChB0JFqnz7/2nVOF1f7d3kUj9bDEsEKasz0a5zrafyAliEW0
 w2+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhblRKf/V32URZEgCQabMdEo077NQU8BAwkgw9d4iv/h13Vtmn8zgZrVJeEW69V0hTvWRoRoOSCH+dCCMVC4w=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yznml/fll4/msUOiE3wjt237j5gyHqPgojsHk/1+jnUjdbF21SE
 RBosecr6LLf9JF18HAdyNar5qaIxSEecFFqZ0uAkE2G/PqFofU619q2G703E7UvXtVw=
X-Gm-Gg: AeBDietol9Lu6+TWJ7TkLn5CsICwLHDyOV7tLpI/8UilWZsc90IF5fo9u2sAWaF/RkE
 yJGuEmSEcULdZ489jqQ7z9C1s1URzpqbO2WtqU4Ttymsa8wD7+XbdTXXKPVPLJUuu1wKYiVlswB
 /iPzaN+MA0oonAgfynK8tqrMZy8ARjOvA2SJX6zij79JPLV/QxRtNrsGsCq5WAJM3cuRJ4sSeGA
 tPBm+vo/+oDpQmJfkllQue6y/gOmOAqwquulllu61EMA0rbQrx8qbuHf8Im0o+AuGdP7oG1kviE
 kcbt27Q22QTdY9odNSQzwKxjjAl1umm7Rqqq9msNmDL9aPiMsYYsoXMvzVQRRYp8srkBykWmGd2
 hAB+Icu5R4df8PWH4+VMu+mtt+fvbG5qIIn8gHopaZBq9dlzRYqdFYqpWsYlcICT7ezAvOJ5ivx
 mKbn0Vh1M7P8604YIh5dQBfVrvgw==
X-Received: by 2002:a05:6000:400a:b0:43d:4c:229f with SMTP id
 ffacd0b85a97d-43d292e27admr32977247f8f.44.1775674937668; 
 Wed, 08 Apr 2026 12:02:17 -0700 (PDT)
Received: from matt-Precision-5490.. ([2a09:bac6:37a8:ec8::179:1f4])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4f1a99sm64678239f8f.32.2026.04.08.12.02.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 12:02:17 -0700 (PDT)
From: Matt Fleming <matt@readmodwrite.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com, Matt Fleming <mfleming@cloudflare.com>
Date: Wed,  8 Apr 2026 20:02:14 +0100
Message-ID: <20260408190214.1287708-1-matt@readmodwrite.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 08 Apr 2026 21:20:31 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1775674938;
 x=1776279738; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=H5kVGMWj80+QphQVczp12xoX+BKVAGC3CV86I0J4IZU=;
 b=tu1pnDZATOwKLqoNrwFXRxiVM8Wt4rx6X/oMFe7fhD5Vi9mAkmYYrJkiHravgq1hAI
 M1CGDGd/RXIlhx472jYY+BoHcVHUeiiRGB/MA7hbWEj1xXVqMr6RLALDA8XaFpvfFhwt
 ihnsjJQpUawK78bgytkEiMQezToWTquCH3wxazMez0ykD/BwscUQfpdD4X3Xf/sVZy5B
 q21Ff24kqKb5ZEVFcWk4RJ5chezLHfVYj8Tca5ScokPBxn8ud6GROBHusdeB0C+EgFxF
 o2dqppcT5StXZGW2O7mcVhb1TxZ6yWq9o1Oke0fo/UvnkFrXj2yZmXXq2ELJ7U5CvGFT
 tjNg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=readmodwrite.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=readmodwrite-com.20251104.gappssmtp.com
 header.i=@readmodwrite-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=tu1pnDZA
Subject: [Intel-wired-lan] [PATCH net] ice: Fix missing 1's complement
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[readmodwrite.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,readmodwrite.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C85663C4042
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
Signed-off-by: Matt Fleming <mfleming@cloudflare.com>
---
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

