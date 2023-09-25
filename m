Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF237ADC84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 17:59:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C62328206B;
	Mon, 25 Sep 2023 15:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C62328206B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695657555;
	bh=RJf+DXbIhtm939WFrGLjW0uJAf8ZUZVp1qNYFdmvKjI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KKL9QE2xkEZp2uoNdKAeAs8EMch3dy5XH8IAs02HRNgEiH8Lp5gEsvIHbsofOfgos
	 l5w9CweV/sNsDPzJ3XPM08AvhOQTTyC8h6kI/0gnlCG9tVff1P/1pYA5IneFVYG28n
	 sMU+Rkx4SIWEiniB9iPToGIK8XQ8eyHXauoKIlBa7EqGviVws7oa/xjhnv8FiCP3gi
	 dksJBPHmLFkGF5B7B6i1i1jweUJP6zKVGFxwEeyVAtJcskFU9zcS8CIYT1ZfwkATAi
	 lyOXhXY+oUnuF/+DJNhxA0ifgh1Do5cU7JA41Ru98bJ+JVx62nUS1NTt9eLYcxZ/oT
	 4QhA5AYL67+UQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tlGz82BqcqR6; Mon, 25 Sep 2023 15:59:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBB9A8205E;
	Mon, 25 Sep 2023 15:59:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBB9A8205E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 776661BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 15:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BEC24024A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 15:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BEC24024A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fI7zdSd5mU_o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 15:59:08 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60ACB401B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 15:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60ACB401B4
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2C927CE0F58;
 Mon, 25 Sep 2023 15:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3A7AC433C7;
 Mon, 25 Sep 2023 15:59:01 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Mon, 25 Sep 2023 17:58:44 +0200
Message-Id: <20230925155858.651425-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695657545;
 bh=RrtU4RECwP4yzk+K9XzYnJXLXX3xo09O9R98nMyytTY=;
 h=From:To:Cc:Subject:Date:From;
 b=Adys9/F3M27GS5RkwihTaM+15EOZe0NoXZRfBW44jWh/4iZgMZKGQiwtiLFmEFe4h
 GrYPKAY8ly1lmpAoolOo8ypEQjWeCAqyTqwAB9Q1M9Rqu4MLN1RBSOKAdth7yokiZm
 ZkhqrtOyVcR6oMSvDzV8b6tKxve6HsHRYALXckry1DzFgfSacu/ostOrnGliGiGbZh
 HrNTKf2/FPad5fLLS3VSxkrlG5hbZWNAQplFDuHL5cZr+QFBEpkfMAuK5UNM/LwQJw
 PGTA8bsbRiEdcoJ1XMIrci4AN7UEs9WLkIjNysN+wl4wqlhvqVs/6HbUcCSmNdXpCo
 mYnAGuYGoxwkg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Adys9/F3
Subject: [Intel-wired-lan] [PATCH] idpf: fix building without IPv4
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Willem de Bruijn <willemb@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Phani Burra <phani.r.burra@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

The newly added offload code fails to link when IPv4 networking is disabled:

arm-linux-gnueabi-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o: in function `idpf_vport_splitq_napi_poll':
idpf_txrx.c:(.text+0x7a20): undefined reference to `tcp_gro_complete'

Add complile-time checks for both CONFIG_INET (ipv4) and CONFIG_IPV6
in order to drop the corresponding code when the features are unavailable.
This should also help produce slightly better output for IPv4-only
kernel builds, if anyone still uses those.

Fixes: 3a8845af66edb ("idpf: add RX splitq napi poll support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6fa79898c42c5..140c1ad3e0679 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2770,8 +2770,10 @@ static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
 	if (!(csum_bits->l3l4p))
 		return;
 
-	ipv4 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = IS_ENABLED(CONFIG_INET) &&
+	       IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = IS_ENABLED(CONFIG_IPV6) &&
+	       IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
 
 	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
 		goto checksum_fail;
@@ -2870,8 +2872,10 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
 	if (unlikely(!rsc_seg_len))
 		return -EINVAL;
 
-	ipv4 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = IS_ENABLED(CONFIG_INET) &&
+	       IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = IS_ENABLED(CONFIG_IPV6) &&
+	       IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
 
 	if (unlikely(!(ipv4 ^ ipv6)))
 		return -EINVAL;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
