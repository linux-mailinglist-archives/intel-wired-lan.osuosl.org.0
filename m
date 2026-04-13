Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEUmCV1/3WkyfAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:42:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD5A3F4492
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A143661B40;
	Mon, 13 Apr 2026 23:42:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id heIYFCrHyWW4; Mon, 13 Apr 2026 23:42:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCDD361B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776123737;
	bh=lPMvSSWvA1caS2YOO1vFo6BqpCSZ/LmnEPagHrQF7G8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yd2e4go1g1rUWNOLaNrZOqZUCg6bQp6kQy9EgoUY32LsZROE++60/33NkEuMKd1R/
	 NbDaBx+OAM9RQJuZMgBJInMlR0IlKGFg+b4C4EgB2o5NKkwbbOqJLghRjZYT483AhN
	 A6Xxg96WaMF91EnXlYSMuBlS1gYVtfo2Ph+QKq92AP1EQa1zLDT7+TvD2sbOND8UvX
	 3ADU++3VrgXUKgQMIGy8l+zZTuDtbxdg4y0O7+kUZxEeJo5PSV6zzGPF20WLfv7Mgz
	 6ObTwWOp694L0p99VY8H+kML2fxnq6GRxWm/3xK0PofhfkPq+NtQn2EYz3NpfSYNRl
	 K/yWjTJZRSd3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCDD361B3E;
	Mon, 13 Apr 2026 23:42:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5345375
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 23:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B57F840073
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 23:42:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZp_13q5IwaS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 23:42:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122c; helo=mail-dl1-x122c.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0E7B040028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E7B040028
Received: from mail-dl1-x122c.google.com (mail-dl1-x122c.google.com
 [IPv6:2607:f8b0:4864:20::122c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E7B040028
 for <intel-wired-lan@osuosl.org>; Mon, 13 Apr 2026 23:42:13 +0000 (UTC)
Received: by mail-dl1-x122c.google.com with SMTP id
 a92af1059eb24-12c20010f10so12739591c88.0
 for <intel-wired-lan@osuosl.org>; Mon, 13 Apr 2026 16:42:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776123732; x=1776728532;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lPMvSSWvA1caS2YOO1vFo6BqpCSZ/LmnEPagHrQF7G8=;
 b=oUAZH8yTZfNDcNzik4HPdVmoPIfoOqhrHpOQdpbjmEW9H+EdJCwDBVMOmLeXgUKyR7
 KisOQkYYRKkcOE9IqtTLEh7tbqR4nVbA7q+0IVGU+WVZ5txtPN9IjLEWE+7MUgD1Sc/Q
 jt0JOaMtEclOZ9G22JUcajQBNdP5qWq6QImrROKuRHvvgjQMd63rkvdFTiecxbhPDrrJ
 uEBZBaVTk6QetDTZf+0EGg7PH5grh3SHh95azjbFwRkhvoLwyE2IirQgjK9GH7Gq10c2
 p+S0SgRcX6h9v8Y/ofsWZUJmfaDOrCshjbFi/0Agdro4q7EkKOom7T6RC13LrKNz3pSH
 Is/A==
X-Gm-Message-State: AOJu0YxJf8yieTXtGZbFe9Mj/knmDo0U7QGXjQZaFDqVuRHmUKdquPTu
 7RhsmK5hgHy2d76+vqEbERibbkLTrCmOUCruAOB/UcqzlZvbVFsuSwlQTc8QFOHt35c=
X-Gm-Gg: AeBDietiW6NGWkFh6jaBD1tgp1i/leY39PvWrX7Nsm+/dVU85KnBjqQqGzP05F6KJ3b
 KH/I46gE2ZrcxX8JKTQm9EzZQ1k973pHggEAIchLr3xlvJxMPyE5lSK2ZUBe1gcsSXTCm9gW7d9
 Q2jx+KRx6bBT4ZR2blbJR8HBcexozK1gXC0pwReVITXx1j3e19nlt//6SKkgADVGi4DN0zPpK9Z
 WNWHhpC/2sfL8d/5NHkpbvfkikK6pFQ1jNyBBYL1YbNEdXQSPTMWUSA7kzfivTZqBMBmgfeaL6K
 Pb3HJ3UMr2Uq4mUGqs8TAhcmEwdjp7NJTnU6KgshxU8H22Gsfh0Gztq9L1WcHwCD3xki7kKGNI5
 6ksXqZebkgqqbea1O3dwrKNnkyy26jlZ+ESSrlsZRw6tbU9aeVETzglzXnz1kwgmDuJBC4uk8HG
 4bTQvB965Pvg0J5xTIwnq78wfm
X-Received: by 2002:a05:7022:618e:b0:12a:72af:83d4 with SMTP id
 a92af1059eb24-12c34e6073fmr9336330c88.8.1776123732324; 
 Mon, 13 Apr 2026 16:42:12 -0700 (PDT)
Received: from ?IPV6:2600:6c5c:6b00:ba4::23? ([2600:6c5c:6b00:ba4::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2d562db64c4sm18327569eec.27.2026.04.13.16.42.11
 for <intel-wired-lan@osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2026 16:42:11 -0700 (PDT)
Message-ID: <570d83c2-3450-4e6d-ad80-1380703f766f@gmail.com>
Date: Mon, 13 Apr 2026 19:42:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
References: <99b7e469-24e8-4f1c-ba2e-6c3438ed1aaa@gmail.com>
Content-Language: en-US
In-Reply-To: <99b7e469-24e8-4f1c-ba2e-6c3438ed1aaa@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776123732; x=1776728532; darn=osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lPMvSSWvA1caS2YOO1vFo6BqpCSZ/LmnEPagHrQF7G8=;
 b=i3peCQFE5CyEi8C+m4CDrlj1bTzu4zoXVlvbIr1IOeLwfDXNF/kksr2IJmQ27BPf3A
 JTvzb0YwNunrxUOe1mBZJdQ+/RPW72rOctamQ2lThZFQ9XXWywI+GsehMPVYHs+5V6Sf
 eIxCq4MwgGgvtWbUlzjmAjgehAxAQSrq2l5OTjbL+seS26A7xgiMQiCaIk/oOnvWiphW
 DeK9JI9S2LRbBE55M5nbnZasUjaOpEQaJsYiesiCyZvWeTnWUALyqeo5JFdnD6Nq524G
 F2LU5HwAKDDqhYVyxMeygwqrFueoUGUuqNwzMf3/VkYm630Hi7UQq40KnyXQDo5Sm1J6
 Pbxw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=i3peCQFE
Subject: Re: [Intel-wired-lan] [PATCH net] e1000e: Unroll PTP in probe error
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2BD5A3F4492
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/22/26 22:21, Matt Vollrath wrote:
> If probe fails after registering the PTP clock and its delayed work,
> these resources must be released.
> 
> Fixes: d89777bf0e42 ("e1000e: add support for IEEE-1588 PTP")

This Fixes tag is incorrect. This bug wasn't introduced until
aa524b66c5ef when e1000e_ptp_init() was moved after a jump to
err_register.

I submitted a v2, but this version was not automatically superseded.
Maybe because I also based it on iwl-net instead of net.

