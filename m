Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLqyG1PMoWnbwQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 17:54:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA411BB0F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 17:54:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA03040BB3;
	Fri, 27 Feb 2026 16:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oqDeUhSs8YTE; Fri, 27 Feb 2026 16:54:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBE4040BB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772211276;
	bh=C05Mn9JMafI99EWEgRgLLPj/E+g1PjLcWaGlhM4Kvtg=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=FaOQZq5bouynDUVpyjdy67Qk6AQgQA6BigLR41EujzEl2ggaNbJZ91CdgDI5zlzLO
	 zQZD/gKM7x/N9U08VAdfqtWPjFKF+wxfD680QV9lSMrw1xRShGcERyqFsGHxDdiz8X
	 a2fqgJSXo+Ezk/Ft15J4xy+odHzbUQ+//YrpeihPI2N1HR4T5XYYmE7mtvkedGeicO
	 QdS1kxF0JqMI73aBWrCQ3P2NDFJsARTKsbIHLjmeF1fgBalUae37v3k7Dhdh0Kc7Uc
	 zdr8CNGXwuVLeqYifY01zIwYAOXy03ecMUBXmltj9RTq/u0dkfPl/m8jAKk7KmAo4X
	 Rh5niCUIJn0DQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBE4040BB9;
	Fri, 27 Feb 2026 16:54:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E654B1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 02:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8FF9403D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 02:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tsSga7aHoqnb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 02:59:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3qqihaqskajiedgf30d1adz2aa270.ya8@flex--srutherford.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2105B403D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2105B403D6
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2105B403D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 02:59:54 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2bdc0bb5ea0so1314999eec.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 18:59:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772161194; x=1772765994;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=C05Mn9JMafI99EWEgRgLLPj/E+g1PjLcWaGlhM4Kvtg=;
 b=OazIXeHk2QoHBCvupUkjaTBbCTFoVu9Lm4Z1+46Hm8ilHsduc+9IjQENHLYytidbtt
 Qa2hxUp6xfoJkjdpujX4qMiWCf5vIOdpMfTHxpj9yi9vFJIEQDgdjnDobyMw7pBYjDWu
 mwBYlZbt+h//lWqwnOE8ivfUWjwnufZYThnoM7iKcI2fXM2HxSyD5Ze4hjXDRcSm3U1b
 xSfddMaWsz4t5nd/gFgmHM7ELWgGxrS+X0YzZXo8IJi40ii4hsCaGBk2IgSdtevq4lzE
 lgFrSc0tELe1NzOnWb09+VSE7HycgQnhzl/COpZK3s6FGQ0EjcrruyYedjGK53Qmv5NG
 /fSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiqukh4LLpc1bTfsUQl7jdRrw4fBHCoP3owo1PGQdp0XJhkWx8qLHU4XkVIaOSMr2HnDNc2fr4u7Swgn51mBM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YznDbg1NUFx0XyUnkZx3cJd7JsweGNWKYevLCFzZ84XmsUKO2lr
 zUa22s/MTOybQKFVjBCVRXZOjkfTAcejBctuem2CDGS8d6kxFO1sjTFfXMrMrKfS2g7DiK3SW3h
 oT0klxSNou6QVKypETx53Y++MPw==
X-Received: from dlbcy24.prod.google.com ([2002:a05:7022:b98:b0:127:1b87:b031])
 (user=srutherford job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:6289:b0:124:a610:62f6 with SMTP id
 a92af1059eb24-1278fd340a7mr448355c88.44.1772161193541; 
 Thu, 26 Feb 2026 18:59:53 -0800 (PST)
Date: Fri, 27 Feb 2026 02:59:49 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.53.0.473.g4a7958ca14-goog
Message-ID: <20260227025950.174755-1-srutherford@google.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 aleksander.lobakin@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Steve Rutherford <srutherford@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 27 Feb 2026 16:54:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772161194; x=1772765994; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=C05Mn9JMafI99EWEgRgLLPj/E+g1PjLcWaGlhM4Kvtg=;
 b=CVAO8te0oYnVH5AKG8/cc4Y5jrNqG6Nj+mr8sFhG3m9L3BS963e7mZoA9zUYIr39hG
 s9ccMuM/20gOn+z+5bnSugd05uwigT/zs70Czz2Syn9D47sRxyzVfvS/A4L2yWnulFmi
 S7vXrBxgDx6lboJNkRmV0dDYnhB61HZl0eGi2vxUofZ/vMTK0iA3YjhEPpuTOfmZ//OI
 TUXGQiRkNN1hNM7PyoSGcBZpFEJNgUvvp9GTwooGel9bWgtKHCDw0pk/+mAxSs/e6s22
 qZxWPR90m45fs2kHGrJ5eJ20vweZ+bEVifikTBWjbDU4KhljMOuitXQS+yL8d2qd3NCw
 MkVw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=CVAO8te0
Subject: [Intel-wired-lan] [RFC PATCH 0/1] IDPF + SWIOTLB Bug
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
From: Steve Rutherford via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Steve Rutherford <srutherford@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:srutherford@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	HAS_REPLYTO(0.00)[srutherford@google.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: DAA411BB0F3
X-Rspamd-Action: no action

Found an issue with the IDPF driver when SWIOTLB is enabled. The issue
results in empty headers for packets that hit the split queue workaround
path. It's caused by a spurious sync in that path. The header is synced
from the SWIOTLB even when the header was shoved into the payload.

I cooked up a sample patch, but I'm not an expert in this driver, so I have
no idea if it's the right solution. It did allow my QEMU VM to boot with a
superficially functional passed-through IDPF NIC and SWIOTLB=force.

The patch was written against COS's 6.12, so I assume that it will not
apply cleanly elsewhere, but I figured a wrong sample patch was better than
a long paragraph describing the same thing. My read of more recent kernels
is that this problem is still present, but could be mistaken.

Steve Rutherford (1):
  Fix header clobber in IDPF with SWIOTLB enabled

 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.53.0.473.g4a7958ca14-goog

