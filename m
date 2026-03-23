Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zVfXF7CjwGkbJgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 03:21:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 530EA2EBE6B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 03:21:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C37FE60730;
	Mon, 23 Mar 2026 02:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QnJKFPnJ6X3Y; Mon, 23 Mar 2026 02:21:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77A016072C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774232489;
	bh=0ARi6AdH8fSZv6Uxf25exUX3Z1sYimbWze9cdgDA1U8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=O+VDtF9/MdJpKWaZMB4psoiHB1LZig7j5Ixtiob/T5YYoeSn8AsjoNj9uHDvsULtG
	 iWlXIzPLl8ra2ju+LcDNNaESLD2FpIL16F/B8w0Ftf8/2MXlOw5vGYdFnJRdPUcfZQ
	 /+PR6AP+TjbVZiS1Xev8muNjlwxqYeW+mPDYHq/ge6udny6DjIlYbMKwnHvIJrL02Q
	 UsG/kWcTXkb82PCCP4MT3OyGKYcKXxAj3d+h1YNDdTEqP4PHrY+Lz2nugoWyVrjMAg
	 Hl6iUUsdI+d8EkSVicSH1kO+ZKj1DK1ChZSWSGeeWvatcdToIxItQxc7oEOko81URF
	 2XD2pCT5KDpFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A016072C;
	Mon, 23 Mar 2026 02:21:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 11CE5353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 02:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3D7E81DE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 02:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FznTRxZUDzWT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 02:21:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132f; helo=mail-dy1-x132f.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 30C8581DE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30C8581DE0
Received: from mail-dy1-x132f.google.com (mail-dy1-x132f.google.com
 [IPv6:2607:f8b0:4864:20::132f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30C8581DE0
 for <intel-wired-lan@osuosl.org>; Mon, 23 Mar 2026 02:21:26 +0000 (UTC)
Received: by mail-dy1-x132f.google.com with SMTP id
 5a478bee46e88-2b6b0500e06so4172483eec.1
 for <intel-wired-lan@osuosl.org>; Sun, 22 Mar 2026 19:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774232485; x=1774837285;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0ARi6AdH8fSZv6Uxf25exUX3Z1sYimbWze9cdgDA1U8=;
 b=VV+Hn8AeRjBVz3a2zPv8valcjofa6nxHv5lETCbFDc4z3YJJkcjhlwR1GsAwjCFrJk
 ud+kotFo8mHKqRZey1pM5YhLaX90e4VJVyjsLRkpz63T1AfkQw2z+Zj5mpnDL4DT+B+S
 icESU+DjcRvZB9Vqxb8AaKXG4TDcEfoxt97AnC2kQ72fiWM8fr/WA/Y6njWOV7g2EC7F
 QvbAL135ne3Iietx8JJxgOJ+xXnU9zcGzaKPKpuhmhoAhNXpK+Qo5XlhBU+ybmOU+TQ/
 2IY6XYU0+fpAFfCJns7GX6kvnyb47LxU5FFjoTtLIX5wtCPyIJlG6i0UVfdCcNmvL87t
 wENw==
X-Gm-Message-State: AOJu0Ywr9wJFMxzr3QzUupiW3+zn5hSJBUhNooLKX7yxJHbA6LnGmJzX
 eyKQHecy7VTQFOoidh0G2Yf6suwerygYvZ5z1k9f0oK1iPor+YKQOclHwnuAuw==
X-Gm-Gg: ATEYQzyUQ+4gtptg9RDJe0bdcnCnhbpnOtKR4rNT86FwRkETyEp02m+q46DDk1k8khf
 JceHUlofO3ii+2RZ4KzRxALF3EG7UAneDzQVcWH+4jg7aPi8Qc/ZyPXHPa2GNyRHlibB5RX6Dus
 DboxjWTT+WgOd6kQYJbzBvNkp9QJ9ur8iSd2KlziURr88C4Enz3QTwZhccLXil5XqmojybJsWeD
 GqWdW55h3ImLjycJ+lEGfWXIsT5NZ5w8orD30tFeoqVAAHScSYRjNIfJQlN7IPVASws/YZpd/IS
 M2cGpEK9LCqWUsehvvTYbzy296cXdbYUmLQOwr2iXTW4qRg7N5M725/mdzWZjpyUujCcmUfeD/g
 8NAhsxduufgZ/L8y2lnuY1irLcP/jlqAievrj0cWml2wueVqmqS+acOIXg7ctd0y/EDXCcvdWfW
 Z1H+wqTN92xKjMMQM6gnxT4Yzd
X-Received: by 2002:a05:7300:3252:b0:2c0:c5b7:e542 with SMTP id
 5a478bee46e88-2c1095fba56mr4364713eec.8.1774232485425; 
 Sun, 22 Mar 2026 19:21:25 -0700 (PDT)
Received: from ?IPV6:2600:6c5c:6b00:62b::23? ([2600:6c5c:6b00:62b::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c10b353fb4sm12366961eec.31.2026.03.22.19.21.24
 for <intel-wired-lan@osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Mar 2026 19:21:24 -0700 (PDT)
Message-ID: <99b7e469-24e8-4f1c-ba2e-6c3438ed1aaa@gmail.com>
Date: Sun, 22 Mar 2026 22:21:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774232485; x=1774837285; darn=osuosl.org;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0ARi6AdH8fSZv6Uxf25exUX3Z1sYimbWze9cdgDA1U8=;
 b=O8b2mJTLRhUyry5hfyKSFfyV8ZW2Mu13/fMHzb9WgXObhyYX8yDCR5ArxSu/wfWRCb
 Kt5h7KIKM5eU7UK9PkdXBUNjipySSppjXGHeH2HH64rwv2b3OMPPRYXYsbUl6mPeVF2v
 nW73qNJhT3LVYC/z8wk/c4xaFIWo3JolIot9Y4TwLgmW6bR5dVYFxQlcLMD2vDviFo7n
 TCJHuZbeVPdbtW0+nCnYk5Gz9MhDd51Tt5GStTsy76w0xABqt4Az0DcRV7QCZAxFMbXO
 H6EgZrjj1yUPfb0HGmb/XMsJHgrrBKnxKTvqNQN7FA2jOrID6wrm/wWg093nQ/3nrl8p
 AmQQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=O8b2mJTL
Subject: [Intel-wired-lan] [PATCH net] e1000e: Unroll PTP in probe error
 handling
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
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
X-Rspamd-Queue-Id: 530EA2EBE6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If probe fails after registering the PTP clock and its delayed work,
these resources must be released.

Fixes: d89777bf0e42 ("e1000e: add support for IEEE-1588 PTP")
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
  drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
  1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6bcb57609d16..0add137c0f20 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7708,6 +7708,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
  err_register:
  	if (!(adapter->flags & FLAG_HAS_AMT))
  		e1000e_release_hw_control(adapter);
+	e1000e_ptp_remove(adapter);
  err_eeprom:
  	if (hw->phy.ops.check_reset_block && !hw->phy.ops.check_reset_block(hw))
  		e1000_phy_hw_reset(&adapter->hw);
-- 
2.43.0
