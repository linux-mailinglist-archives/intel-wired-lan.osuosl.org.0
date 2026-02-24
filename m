Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBVzDSo0nmmFUAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 00:28:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33618E25A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 00:28:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7D256148B;
	Tue, 24 Feb 2026 23:28:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hlUhVKfyyNnL; Tue, 24 Feb 2026 23:28:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6D8861489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771975718;
	bh=xJWI/FdW/cHCSkWJY18GYHJEjMobOqf5F+5n03qfkC0=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5l5wsBijRMuMeZJdRSa6lcwJdZ4eeyXOyoz/CpOPxs1tcW0CPiXsYBxtCLH4YQ5H0
	 m5eBucMacpysUXToZWjD3K3VZR+LeNADckU9aunnRBHYCUMfGP96GTbd9E69JNzPBg
	 eIgczLJaWdrdDBR6gGtqnIM1jSm2L4RVAPRdOWgf8aTnAi6qCQJ6SUd/m7Z17nUAoq
	 lp40oW+C2B7lXAPzUUci/IwTok3liuPGWAjWR40mpxUBKa5+PmlBj2hxh3e6hP4Co4
	 nnwOi98bSB+5ADww4hvvr4HJcNJOeGj4KE//iHSHjvBwgfUiL0W/6Ic806xzCkz+vJ
	 n120eIRa2HXdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6D8861489;
	Tue, 24 Feb 2026 23:28:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B881F23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 23:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA411404B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 23:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnYt5GMry3hF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 23:28:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112a; helo=mail-yw1-x112a.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DC791403E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC791403E5
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC791403E5
 for <intel-wired-lan@osuosl.org>; Tue, 24 Feb 2026 23:28:36 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-7984d31b895so24274047b3.1
 for <intel-wired-lan@osuosl.org>; Tue, 24 Feb 2026 15:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771975715; x=1772580515;
 h=content-transfer-encoding:subject:cc:to:from:content-language
 :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xJWI/FdW/cHCSkWJY18GYHJEjMobOqf5F+5n03qfkC0=;
 b=ZKEwx2XrRhuqBn5dEYramIaShmzIhqMzWMcnB84KPytv6nnPN2ERTbS1JEJ18wLnH2
 q8JvbA2MbqY4dv2yd7UFqiMTraWXZrsZrkH7VKQTg643CXwTxr/HQuUY5hictx5cl8qW
 oS2TCWFFoHW7Gduh5Wz6bonkyZsQyuag1jhTfHxUsXlR9Gf+lwzVIod3cGF0tI58E8HG
 PXw8A6fXJaPn4+3GBE1KqFK3EB6VigXIlIt4afVSeviVbsbMgKCeUOvGK3o+/XKv6Ao2
 FroCkW3XecEIkfbxO4IGlyw3KAWvDOUrcgnvtIp4R7mbUuCMUj2b/vejpCE3ukjYPuPw
 ygJA==
X-Gm-Message-State: AOJu0YwbqESMU7tG5XcLm32vKcqfyIR1Xroo7kEg7vRFi2bERHvJU0Kz
 rlqQgWjSuYpopQv8YRc8wGUqs1L24EN4u3E72XtOZEU+bVXMqKMRKiqrbYH4GNno
X-Gm-Gg: ATEYQzwUzaJVN2l/I31N6FcTMktBA80x9B1n9Ua1KABraSKNkplBtD7NjiHbvZipJL4
 Qu/7dm3R49Iz2Y56Gwo5Nxmz+2sccQtUBl8CA4Q16oAU3DQNDvKJO6j/GDnElYwUPoizgjW9cOg
 Idpc2BL2urXC1JBG4fwV1ljF2l2Cpvz+Sukhg7zMmfLpfnQ/I5HIrENYOCCzYEtZuuMY7655+Ke
 ryUJAfFQYhaxpQcgdptyvF7mkNH7srFD2a00Ois0MCi66EZs/tXyt+086z5O8hBc4M0z7i93jNJ
 lqgJXMkDkMRh7txCKkV+GZ4acBVmA/toJz+3fcXfrZodAhOR+S818JLWI7ihQkCNz1t4H9YZn7I
 G7bij5TeAle13yqHP7wkdTStFnIGp1O+NW1SUg20WqSmhcA+IF+Zt4kMUsltE8ZLknLYHg/xguG
 nCKtrhXhxeRjv9H2Ipe5EmV7RvKcOmmjmGKZwAglwVxJEexHpH//uRnv0gCtc0zT+Vti2v0n56x
 FxfEQ==
X-Received: by 2002:a05:690c:12:b0:794:8d58:cac0 with SMTP id
 00721157ae682-798681107b3mr3824457b3.16.1771975714979; 
 Tue, 24 Feb 2026 15:28:34 -0800 (PST)
Received: from ?IPV6:2600:6c5c:6b00:bf4:4216:7eff:fea9:90ad?
 ([2600:6c5c:6b00:bf4:4216:7eff:fea9:90ad])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-79862083774sm6497867b3.14.2026.02.24.15.28.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Feb 2026 15:28:34 -0800 (PST)
Message-ID: <a38f6d7f-d970-4e22-bf76-b65f34911324@gmail.com>
Date: Tue, 24 Feb 2026 18:28:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771975715; x=1772580515; darn=osuosl.org;
 h=content-transfer-encoding:subject:cc:to:from:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xJWI/FdW/cHCSkWJY18GYHJEjMobOqf5F+5n03qfkC0=;
 b=MDGxjJ7GOrUkH3dIY3X8+4QXKor682vTPEhpq+TuJl0jri8IQ4fk1XJhkXT8w/YQcr
 PORwBNcp9RNp5dgf00NSipEQZxZODrrZI2JDkXKe/RllFVSpPoJ6EJ0p2cdQ1tvhy3ln
 uscBia8JZluqOsU/wiWZtdRAKQr2x7ZBEcUXxPggncVEgMda86WpTvusNkKSYDfSB0qi
 Xdc2xD+m8utXQb/8dhn0i7i+jaucVfpG8Lm1S5cPTkoW7KEtiWLDJVzf1DZaQcTiNGB8
 06ZMbDf7gBQe+E9GH8WwPnitmUu5i61zhOPpSk2ITZWv4cgvHNbHKDXjzB2bVoLyBUCd
 bRiQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MDGxjJ7G
Subject: [Intel-wired-lan] [PATCH v2 net] e1000/e1000e: Fix leak in DMA
 error cleanup
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2B33618E25A
X-Rspamd-Action: no action

If an error is encountered while mapping TX buffers, the driver should
unmap any buffers already mapped for that skb.

Because count is incremented after a successful mapping, it will always
match the correct number of unmappings needed when dma_error is reached.
Decrementing count before the while loop in dma_error causes an
off-by-one error. If any mapping was successful before an unsuccessful
mapping, exactly one DMA mapping would leak.

In these commits, a faulty while condition caused an infinite loop in
dma_error:
Commit 03b1320dfcee ("e1000e: remove use of skb_dma_map from e1000e
driver")
Commit 602c0554d7b0 ("e1000: remove use of skb_dma_map from e1000 driver")

Commit c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of
unsigned in *_tx_map()") fixed the infinite loop, but introduced the
off-by-one error.

This issue may still exist in the igbvf driver, but I did not address it
in this patch.

Fixes: c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of 
unsigned in *_tx_map()")
Assisted-by: Claude:claude-4.6-opus
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
  drivers/net/ethernet/intel/e1000/e1000_main.c | 2 --
  drivers/net/ethernet/intel/e1000e/netdev.c    | 2 --
  2 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c 
b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 7f078ec9c14c..15160427c8b3 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -2952,8 +2952,6 @@ static int e1000_tx_map(struct e1000_adapter *adapter,
  dma_error:
  	dev_err(&pdev->dev, "TX DMA map failed\n");
  	buffer_info->dma = 0;
-	if (count)
-		count--;

  	while (count--) {
  		if (i == 0)
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
b/drivers/net/ethernet/intel/e1000e/netdev.c
index ddbe2f7d8112..6bcb57609d16 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5654,8 +5654,6 @@ static int e1000_tx_map(struct e1000_ring 
*tx_ring, struct sk_buff *skb,
  dma_error:
  	dev_err(&pdev->dev, "Tx DMA map failed\n");
  	buffer_info->dma = 0;
-	if (count)
-		count--;

  	while (count--) {
  		if (i == 0)
-- 
2.43.0

