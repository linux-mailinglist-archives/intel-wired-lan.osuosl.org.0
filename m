Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAwdKwuec2lgxgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 17:12:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A49E87833A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 17:12:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50554608A2;
	Fri, 23 Jan 2026 16:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VtuyKINZsyuA; Fri, 23 Jan 2026 16:12:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2036608A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769184775;
	bh=SmsPbxD4P2U6cfRhimAmDFnoSDOJmyA6gTw2jvjRFQo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rQIERknflM9lw/GgUqQTxhj+VzZ2pNg0X+Ftc4RzAMFNOJH6j6WU9pym7VpU2La46
	 RCUD5niYS0PjE14Ab/yr5LLW3jaaW8er7z8NcWILild/MNSIeDf5Ddrg8kWh591OBI
	 fSk23NCEaKYscaPruhXiEjgrhuL4BxfvtjF0J2EZWzzFyhy2jAMpsR1QzGiYpCueNy
	 1K418rCNT0FkYVPgHLwWAtxPcJkanFbVCrYz8CFsgaBKHzIHfUOZ/Thqzmr88nBo8T
	 +ASXdUiRpMnmnAmohVU28bL1BOfB76MctIzDEGwLXmW4fkyvhyZ5pbBvvFBz2UgKBi
	 LSrjt6QTnTxsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2036608A0;
	Fri, 23 Jan 2026 16:12:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E313E122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 20:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3A4E40A13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 20:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rPq6z4aZJHCY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 20:27:34 +0000 (UTC)
X-Greylist: delayed 343 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 22 Jan 2026 20:27:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 27FD840A0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27FD840A0D
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b4; helo=out-180.mta1.migadu.com;
 envelope-from=martin.lau@linux.dev; receiver=<UNKNOWN> 
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27FD840A0D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 20:27:33 +0000 (UTC)
Message-ID: <ad835a9b-e544-48d3-b6e2-ffe172fcfa6d@linux.dev>
Date: Thu, 22 Jan 2026 12:21:21 -0800
MIME-Version: 1.0
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, kernel-team@cloudflare.com,
 Jakub Kicinski <kuba@kernel.org>, Amery Hung <ameryhung@gmail.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org> <87bjixwv41.fsf@cloudflare.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Martin KaFai Lau <martin.lau@linux.dev>
In-Reply-To: <87bjixwv41.fsf@cloudflare.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Fri, 23 Jan 2026 16:12:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1769113307;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SmsPbxD4P2U6cfRhimAmDFnoSDOJmyA6gTw2jvjRFQo=;
 b=PwXNemkSVY+ky4LEOmfP2pan4B5MDwzZCRi6xu+xEhtfhvYzFZS7qTQxmSfgbVn8p7vAse
 8kz6jbK06oD70NIh5+furf0Dm3ao8i8vlft2osWnUQKB38nwgSp1lE6TquDLMrCmz/M5rm
 4RgcUg9CBFSFRB9bO8oReErZOUz3QeI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=PwXNemkS
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set
 when skb->data points past metadata
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:bpf@vger.kernel.org,m:kernel-team@cloudflare.com,m:kuba@kernel.org,m:ameryhung@gmail.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER(0.00)[martin.lau@linux.dev,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,broadcom.com,lunn.ch,intel.com,nvidia.com,iogearbox.net,gmail.com,fomichev.me,lists.osuosl.org,cloudflare.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.lau@linux.dev,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.562];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A49E87833A
X-Rspamd-Action: no action

On 1/13/26 4:33 AM, Jakub Sitnicki wrote:
> Good point. I'm hoping we don't have to allocate from
> skb_metadata_set(), which does sound prohibitively expensive. Instead
> we'd allocate the extension together with the skb if we know upfront
> that metadata will be used.

[ Sorry for being late. Have been catching up after holidays. ]

For the sk local storage (which was mentioned in other replies as making 
skb metadata to look more like sk local storage), there is a plan (Amery 
has been looking into it) to allocate the storage together with sk for 
performance reason. This means allocating a larger 'struct sock'. The 
extra space will be at the front of sk instead of the end of sk because 
of how the 'struct sock' is embedded in tcp_sock/udp_sock/... If skb is 
going in the same direction, it should be useful to have a similar 
scheme on: upfront allocation and then shared by multiple BPF progs.

The current thinking is to built upon the existing bpf_sk_local_storage 
usage. A boot param decides how much BPF space should be allocated for 
'struct sock'. When a bpf_sk_storage_map is created (with a new 
use_reserve flag), the space will be allocated permanently from the head 
space of every sk for this map. The read (from a BPF prog) will be at 
one stable offset before a sk. If there is no more head space left, the 
map creation will fail. User can decide if it wants to retry without the 
'use_reserve' flag.

