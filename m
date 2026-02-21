Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JpNOLcVmWl5QQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 03:17:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B60B16BE95
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 03:17:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA12F841B3;
	Sat, 21 Feb 2026 02:17:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Ke32yJYT405; Sat, 21 Feb 2026 02:17:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7EAE841CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771640244;
	bh=yMB802Dm6y6nia1PI8Xo1TEYN8DftfBEDgtLErTni3c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D5hecE7O30L9kMGTmvduCyhOPFZCelI/+aueVUyAYaIf7pJhTDot1K4PjnppPZkad
	 +6NUI9HtkytzHP+x2lgrZNDPBD8QdEZ7LKOErB1Lsd1uj4sTMNNcCXEfe6n4u4Scd8
	 wiewusI2iUHHGjUM9oSJ0v/kOFT5XkIkxN9lAdLSW8vsm/A5sUBZelUCPylBKL0tLk
	 OHax2i/Wf/jPIdJE/o8tFaoT0S4qju9m7Dg/12ot5vkmnNtk+BQSBY6lkSGI5S93IN
	 pyq4lMazm+e22o2SZ6LYE1EdEn/eIxVCO8u16XQAAV5cHpfQQaRxzoxIHqeAhfD7j/
	 SQyBpQL8GXBAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7EAE841CD;
	Sat, 21 Feb 2026 02:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ABCBA206
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 02:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CBC6841C5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 02:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6AOk32EqdKIQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Feb 2026 02:17:21 +0000 (UTC)
X-Greylist: delayed 3159 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 21 Feb 2026 02:17:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6264C841B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6264C841B3
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2607:7c80:54:3::133;
 helo=bombadil.infradead.org; envelope-from=rdunlap@infradead.org;
 receiver=<UNKNOWN> 
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6264C841B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 02:17:21 +0000 (UTC)
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vtbjd-0000000FkKD-19wU; Sat, 21 Feb 2026 01:24:41 +0000
Message-ID: <d8a00dff-38ac-4a7a-b048-ec2f681dd811@infradead.org>
Date: Fri, 20 Feb 2026 17:24:40 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, Kees Cook <kees@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=yMB802Dm6y6nia1PI8Xo1TEYN8DftfBEDgtLErTni3c=; b=JMQYJmqaCWvjI+giNPUjdu7cNg
 Sm7Y71b0I08AHSXP3Y8lMq0/ZoHSzDB0Cm4dIQ33jLuUguDhFTAw8JgPE4HGXcoHl01kNIzQDmhuA
 FYHZaG2Fbpb+6g1mWuk0hjWP+eCdp+Tkr8XN5RrfrEvOLAlECVBjPszlgOK3pi/d7+Yur8GuYnC9B
 5lPtSsixDiPSEKhdcMlo+u0UCo49ZCe6+iAcq+//XR+uHqOnzzrMMf1jBqwacN5EyaS3ElNRM03vM
 1BpgZnCsJDlNUhpKeuhtaDxV+nPUiU1hubyG3BvyI11wtKxLiFTiDOarlo+K7+tQ1YKZ5awM3KzJB
 SRIwzgkg==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JMQYJmqa
Subject: Re: [Intel-wired-lan] [PATCH 00/38] docs: several improvements to
 kernel-doc
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:aleksander.lobakin@intel.com,m:corbet@lwn.net,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,infradead.org:mid];
	FORGED_SENDER(0.00)[rdunlap@infradead.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5B60B16BE95
X-Rspamd-Action: no action



On 2/18/26 2:12 AM, Mauro Carvalho Chehab wrote:
> Hi Jon,
> 
> This series contain several improvements for kernel-doc.
> 
> Most of the patches came from v4 of this series:
> 	https://lore.kernel.org/linux-doc/cover.1769867953.git.mchehab+huawei@kernel.org/
> 

Mauro,
Is this series available as a git tree/branch?

Or what is the base for applying this series?

Thanks.

-- 
~Randy

