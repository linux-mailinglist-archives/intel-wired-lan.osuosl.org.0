Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHUwNHyq4WkywgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 05:35:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D7F416A17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 05:35:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85072605BD;
	Fri, 17 Apr 2026 03:35:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ErlBoA4y7Jw; Fri, 17 Apr 2026 03:35:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0528960A8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776396921;
	bh=hvouVp4w0YbHvQbdpa7mn27k6mvB2sHRdWB4T5BpS3c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MDBV6R2hSuRuGtCJmvbSsC++Nr5hCq8Vpuq+MqBBQEnk4imx9Wm5XbjFfleMHYUPa
	 KLLnJry8OzHKXiI5uSSs60r4Qgrg3EVKMg0sICItd0Nc8tz9vl4r0xi2Qik2rsHv+V
	 5ELnrbFa8VoMSNuHM0pZVOWFBEW+cYf4QVjukFplEiqhm4Ep9AY2E9yymlmRCYFti4
	 DRcARyJma4mvwnekOKiUDnodIGfhJzGdg0wBLe5l0hxKowcypYSUzKzvuNUPyQMrd9
	 P4HHLOf3G16JhMbftQzmQMbkKWQG/fYl8TwGlsBUn2QH/2m2E8cbIw2wayR3p9C+M6
	 K/WTD4XtQiY2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0528960A8C;
	Fri, 17 Apr 2026 03:35:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 057D5259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 03:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF6AF81208
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 03:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nqcMrAolSNhn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 03:35:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1231; helo=mail-dl1-x1231.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3DDDF811F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DDDF811F7
Received: from mail-dl1-x1231.google.com (mail-dl1-x1231.google.com
 [IPv6:2607:f8b0:4864:20::1231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DDDF811F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 03:35:19 +0000 (UTC)
Received: by mail-dl1-x1231.google.com with SMTP id
 a92af1059eb24-12c726c30efso218244c88.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 20:35:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776396918; x=1777001718;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hvouVp4w0YbHvQbdpa7mn27k6mvB2sHRdWB4T5BpS3c=;
 b=AvDI5m6+ALNFydEBWxokTCNojuaQBUPyAbf8ZtMA4GVjAY7z6uMk5TdSobfLLPHUPE
 gm0l6GZZvwF1vWvJNf5qHeOkOli92N5vKFzOT/SLn7quUTwMUlj4Qm+ejuqgRJXdIxAP
 CSNFKpmvI39m/IqHjD6SvjYatQTyeRE7EyfDcW+N5oiB4iOzoSyDTb/eznsBgo2vRVsW
 xZyaeUTj3Ri0+AB7LSfiaoAmjtEpaMIKUCeS+Fi658XS+1mQ8flm6LEEwVZ0SH41cjGB
 tp3V89iFEkrcFE52GzuG9dh2NlskZ/oBa+ypZQQOEme1G2Z7o4/0JP4X786hXMe6uobe
 Aztw==
X-Gm-Message-State: AOJu0Yw8OM1dMD0rhewo/1cz4Rbc1jU2EiQqx2h3/K6V4XxbpKt6/e7p
 fJo+9wcgOVsYTPjSPi7CDqLujEOAuxBfEaR/AU6jnm7fFRc6ZuL2ccaKaBm0lpV9cFs=
X-Gm-Gg: AeBDiesN4yHR4ENTyCZljgkOpAvLY68Fa2pPJ+sp/pMAbqp0sFGmrh8AL15Ga1gPwFq
 P3T2KnQiM0wSYBASxEQwxe6TtZxYCwhcrQKvhxwCPQlJAOSMMTcx5WtUOCXizey6mzNP4RsIraY
 7U6DvpQTc/dfTzZ+LTcA5YILvwJENs1ofvL5A/+DCb9RejIaGKg3DahvgeEnB3tmvwBvlmhnGi7
 rAhlJMN8aySsNlGmKlpUJ6GCuvuXjaS6A99LbPDrk0e4sq5OXTxHg5OhjxmJ80isUuWD3njS/BS
 adNnsPrW6Uws65n6gMBDYt3+k7D28CE6EJGdjfWHac+xwY9lqfr3mB3ehhTurgfaX+POkGX5U3E
 U+DpwMP74wfXaer1sfct/F5SXy19cLTL7IXw6eSvOvnyIR4aIuN84+9IzOIRxYx2WrlNocMx7Sn
 YyMskz+X9+0PMIjAIteRmmo/+A03FXtiKBMK0=
X-Received: by 2002:a05:7022:220f:b0:127:5cd6:fa45 with SMTP id
 a92af1059eb24-12c73f72632mr449412c88.14.1776396917545; 
 Thu, 16 Apr 2026 20:35:17 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:ba4:7419:7bc9:9c2a:7cc2])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12c749c46c8sm511978c88.1.2026.04.16.20.35.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2026 20:35:15 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>,
	stable@vger.kernel.org
Date: Thu, 16 Apr 2026 23:34:52 -0400
Message-ID: <20260417033452.640551-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776396918; x=1777001718; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=hvouVp4w0YbHvQbdpa7mn27k6mvB2sHRdWB4T5BpS3c=;
 b=s8qqftE9LWJmp/JmG8UAcDwRlI5IbObXTOyaJ7jcGI07GLi/hbiCLU7L9h52/kkq8d
 RVrqe2hcqRGYr8caDgzEG2tinTZX2c50sffbYhthOPzQt7HPcIo5j8lMqnf0ElSVEqS1
 BFBXFk20FvySKc8J+UGN3OL9QyFlwnBi0QZ7Zs96o6nPijPfjfRpbpa2kZReeQIUlC5G
 gwe0oYaPn7tVgaY0K6wtpLt98GonSZUAV9J0GPWkG+zMwvCSkUZeNHexh/+wU4x9nq2V
 o8BHDmGbPBDhqb7VzsXDFXeZMdiAHfI454v43ieKu1FoLpzIFd7peTms9OikrHAWQdXg
 mbdw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=s8qqftE9
Subject: [Intel-wired-lan] [PATCH iwl-net] igbvf: Fix leak in TX DMA error
 cleanup
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D4D7F416A17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If an error is encountered while mapping TX buffers, the driver should
unmap any buffers already mapped for that skb.

Because count is incremented before each frag mapping, it will always
match the correct number of unmappings needed when dma_error is reached.
Decrementing count before the while loop in dma_error causes an
off-by-one error. If any mapping was successful before an unsuccessful
mapping, exactly one DMA mapping (the head) would leak.

This bug was introduced by a 2010 fix for an endless loop in dma_error.
All other affected drivers have already been fixed.

Fixes: c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of unsigned in *_tx_map()")
Cc: stable@vger.kernel.org
Assisted-by: Claude:claude-4-7-opus
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index ac57212ab02bd..19b2228e80bae 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2190,8 +2190,6 @@ static inline int igbvf_tx_map_adv(struct igbvf_adapter *adapter,
 	buffer_info->time_stamp = 0;
 	buffer_info->length = 0;
 	buffer_info->mapped_as_page = false;
-	if (count)
-		count--;
 
 	/* clear timestamp and dma mappings for remaining portion of packet */
 	while (count--) {
-- 
2.43.0

