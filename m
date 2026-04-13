Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIAjJ8eA3WldfAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:48:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A413F44D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B59FD42782;
	Mon, 13 Apr 2026 23:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iK3rOW-F-UTY; Mon, 13 Apr 2026 23:48:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D949542783
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776124100;
	bh=pwuEhADy0804om/OdHEIRZ/J1D9Tqo21sy7eI3dqC5M=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aLav6Ve9H4H7k4X4n6rh7A2Cf8E+jkXxpJGAIF4u0FqZjC6z74qr2qDyjrOik5aw+
	 tvI+3k7v5z89zjYpt7165Zu5oN6IxhriLBfRga+AEbDqxgBYR4rzLt6Uw6KYIm8HT8
	 X2VzOtAIKAOpHkV1ON+y/nu+avo4wPElmaO+gwnrqUvZhg/NHGL2fVynYTznqQLMjt
	 OVNeLaDjd02B0J6eHKzb4WYjyPq4c96Z8R0QLwSZFLXs+i6zkUI8QtPB9VcbRaU7mY
	 a4lCYv9tvR1JAJer55nmMF3yEv6bH14nKIDpubFfwuCSMgXn/bvjr1kbPMWzk/37oJ
	 ycmzvzWk3j0Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D949542783;
	Mon, 13 Apr 2026 23:48:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DECB4196
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 18:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C425260EB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 18:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6y97-n1VzyME for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 18:24:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f33; helo=mail-qv1-xf33.google.com;
 envelope-from=michael.bommarito@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7B8C60A7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7B8C60A7F
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7B8C60A7F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 18:24:49 +0000 (UTC)
Received: by mail-qv1-xf33.google.com with SMTP id
 6a1803df08f44-8a032383008so52919936d6.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776104688; x=1776709488;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pwuEhADy0804om/OdHEIRZ/J1D9Tqo21sy7eI3dqC5M=;
 b=EdKxD2hXVP55sXbw8+xZepdmCESf/+QGITQbbOOWxN9yFzG8X6DUmn0E22PdmNWb3M
 ehMktikGI9VoJF2zHYB8DzuaULzORgY9gp9ACQshAmfanyt+JtUAIl217BxpWNuG7CW5
 8F2VHa8pp0xLNib82tVyKRccq6zAmefrj+6JqpPfPHEVReF3XIZmukCaARyrhAF2GQJT
 EvI6Pfhk8aEqSwrdlvYLTLn5taFCqE7uaDWE1z1SZq83sNpDmJRdbwISaR4LxNuKXVJJ
 MRxNzd/5kWpamfhHjLR2fFlE1Ktq3xfLmSvtRxLIAjeZCLHU8kI0nuXEg1nY/yJwN8KW
 rhgA==
X-Gm-Message-State: AOJu0YzLVbGI49pg9p0ZFk/jmt2aKDOYIxcPt9w/yf3itXM18ZpYHjyF
 +ot0JP4NYPQw/DXsxEp2VaiunD798aVR0zPgZcm7Rx1zq0Yy+rvQsdEJoG6Tqhpw
X-Gm-Gg: AeBDieuYP3PstYA2zt/R52GsWlqbY4wdULK70ebWLlS5exBHNt+q9UQNCusGyAXlhxe
 DwJnqt7uEi0A4fvkoWvCWafSBpHshNHStU5xHEy5kd9w8GyCOA3Kk6cB+t26V6T2raQEKNLWpI8
 WnMx89f6UfjbzsN36o8qY9Ua0/Yw+BnSljUWQWMxrluC2EDPjGSgGWEMz7ZRSLPeVX/AT4n257L
 w3lZI8SLOvMi5Gmsia40camDbZCO1gpQjVP3m/bh8fuOcsY0pIdGTTj8wDlSQWWH0wPjsfQuVKN
 XxZivQLoJ3lT3/KRMuNBLfSMCa8jnfbjhonp9BMLl0XV00kGzjGm7a3WVQl78VxqGfz15VyHLSM
 eWGDJxVMS2cGBQDjEc/gmHQJCXtzGXGY/STUbFcHCg0z8OBNi87zGcbgsKjq9pS+IXnrGtcdAFo
 +pRuN4MrORQTH7gvZkkKAr7t6fKU3CtyRw/6A4znfLXasvFlaMwE2lKNJbrLyqSSO3AIUpFQtYH
 yTfmGRoeRryVkN79Knp
X-Received: by 2002:a05:6214:4c8f:b0:89c:6451:67ac with SMTP id
 6a1803df08f44-8ac8617fc04mr206413246d6.12.1776104687285; 
 Mon, 13 Apr 2026 11:24:47 -0700 (PDT)
Received: from server0 (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8ac84a47a0dsm103210326d6.22.2026.04.13.11.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2026 11:24:46 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: "Tony Nguyen" <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, netdev@vger.kernel.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michael Bommarito <michael.bommarito@gmail.com>
Date: Mon, 13 Apr 2026 14:24:27 -0400
Message-ID: <20260413182427.298513-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Apr 2026 23:48:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776104688; x=1776709488; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=pwuEhADy0804om/OdHEIRZ/J1D9Tqo21sy7eI3dqC5M=;
 b=kOh+aAyvut8Q6ci+h6rMK9+F9/PlMG5Hmp1Rdh+NeM/Xf5XTSe6/Obk7qC58OQhDo6
 gqEOzmGRCQ2zGxpL0mthSDjRqjNRqEx8r/vs51icVbxRT5VnsfBPCCPct3B1uiOZrvas
 WhtlkBx8YRlMPZ+ArpHKrGT38GjpTgQAIfBfMu6gvhTCCd4tcb8ighxBM+72WITXemwq
 dne3oo3YaG1bBHwILgr0+lqm9x759ES6zf4gFM4HqDuEzDebIh55hEbkk4kaFpGgP7gG
 IH5mjZD5PQVrZUwlC9RTxsevL45+ykIEcQMwRomhwJV9FRzINO49pp/pyapFEhBujgdL
 o+7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=kOh+aAyv
Subject: [Intel-wired-lan] [PATCH net] ixgbevf: fix use-after-free in VEPA
 multicast source pruning
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
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[michaelbommarito@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 24A413F44D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ixgbevf_clean_rx_irq() prunes frames whose source MAC matches the VF's
own address (VEPA multicast workaround) by freeing the skb and
continuing to the next descriptor:

    dev_kfree_skb_irq(skb);
    continue;

The skb pointer is declared outside the while loop and persists across
iterations.  Because the continue skips the "skb = NULL" reset at the
bottom of the loop, the next iteration enters the "else if (skb)" path
and calls ixgbevf_add_rx_frag() on the freed skb, dereferencing
skb_shinfo(skb)->nr_frags — a use-after-free in NAPI softirq context.

The sibling driver iavf already handles this correctly by nulling the
pointer before continuing.  Apply the same pattern here.

I do not have ixgbevf hardware; the bug was found by static analysis
(scan_drop_continue_loops.py + semgrep drop_continue_in_loop, multi-tool
corroboration with the highest score in the scan).  The UAF was confirmed
under KASAN by loading a test module that reproduces the exact code
pattern (alloc skb, kfree_skb, then read skb_shinfo(skb)->nr_frags):

  BUG: KASAN: slab-use-after-free in ixgbevf_uaf_test_init+0x100/0x1000
  Read of size 8 at addr 000000006163ae78 by task insmod/30
  freed 208-byte region [000000006163adc0, 000000006163ae90)

QEMU emulates igb (82576) but not ixgbe (82599), and the igbvf VF
driver does not include the VEPA source pruning path, so a full
end-to-end reproduction with emulated hardware was not possible.

Fixes: bad17234ba70 ("ixgbevf: Change receive model to use double buffered page based receives")
Cc: stable@vger.kernel.org
Assisted-by: Claude:claude-opus-4-6
Assisted-by: Codex:gpt-5-4
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 42f89a179a3f..4ba3be961ab6 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1221,6 +1221,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		    ether_addr_equal(rx_ring->netdev->dev_addr,
 				     eth_hdr(skb)->h_source)) {
 			dev_kfree_skb_irq(skb);
+			skb = NULL;
 			continue;
 		}
 
-- 
2.53.0

