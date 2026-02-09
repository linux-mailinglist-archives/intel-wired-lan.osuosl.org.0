Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJYyFljUiWklCAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 13:34:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DE410EAD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 13:34:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E3A482496;
	Mon,  9 Feb 2026 12:25:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WwDyRe1gyUGn; Mon,  9 Feb 2026 12:25:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE1BF827A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770639917;
	bh=PIrNZzus55bKquXO+5YoeklSWCz4FLC8RX4qxihAbzU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rrFeJJTgEirkBgIMhT5vtybkGb+Jhie9RVdsBPq9pYCpdIAj9YXPAiyWxKwRaJqUb
	 CviiOGeMJRrlcuPa4FOQ1EnrqcazPduTx+5+VAejmW1Vvl8UeQcko/AnCh6X/eHcjN
	 eJyT/wFwLo0hFOhSQ2wvqRwQeCihunXjN4qvv5G82LRjn3BB7IN5gQFfKFPVSFVqAi
	 ljn+FJAw70N5nhWsKgNxoHm2QYtpwDzEkRT/qim5I55hxxPvtYnYkFf+i7Ca4Q/wXw
	 xTuEOH98xvXi44sYbiCAecQgtsQ1VJWi2LOiOpWuCjyepmnaqg7QQMHRtqHcolidMc
	 wNBzCG6+frbBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE1BF827A1;
	Mon,  9 Feb 2026 12:25:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DBDD1A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEBB440A17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xiu-35ZQNYV9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 12:25:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.186;
 helo=out-186.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC54740A16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC54740A16
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com
 [91.218.175.186])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC54740A16
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:25:13 +0000 (UTC)
Message-ID: <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
Date: Mon, 9 Feb 2026 12:24:59 +0000
MIME-Version: 1.0
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Willem de Bruijn <willemb@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
References: <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
 <20260205145104.iWinkXHv@linutronix.de>
 <66925f09-ef9f-4401-baec-7d4c82a68ce3@linux.dev>
 <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20260209114836.GPU-vnnh@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1770639908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PIrNZzus55bKquXO+5YoeklSWCz4FLC8RX4qxihAbzU=;
 b=nuiOAqIX+K7Wf4ItbxoEm23TvJItgvGTpSmmpMtnOEJuXvBs8FEQeBCay943fS11SNJ6Wl
 W6LDiWmjSsI95PPw5uwxV0QXkBMrY+51CteA7DrAreCf3eRruVme0PHRhST04xG7NBqf8k
 CR+DC27Wv2ZbV5qw6p4Yj4xHcTASCFs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=nuiOAqIX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bigeasy@linutronix.de,m:willemdebruijn.kernel@gmail.com,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[vadim.fedorenko@linux.dev,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,redhat.com,davemloft.net,intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,lunn.ch,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vadim.fedorenko@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 51DE410EAD3
X-Rspamd-Action: no action

On 09/02/2026 11:48, Sebastian Andrzej Siewior wrote:
> On 2026-02-09 10:43:55 [+0000], Vadim Fedorenko wrote:
>> On 09/02/2026 09:06, Sebastian Andrzej Siewior wrote:
>>> On 2026-02-08 11:25:40 [-0500], Willem de Bruijn wrote:
>>>>>>> But it's more like a question to maintainers whether it is acceptable
>>>>>>> way of "fixing" drivers or it's no-go solution
>>>>>>
>>>>>> Requiring OPT_TSONLY unless CAP_NET_RAW would break legacy users.
>>>>>
>>>>> Well, they are kinda broken already. Without OPT_TSONLY and CAP_NET_RAW all TX
>>>>> timestamps are silently dropped.
>>>>
>>>> Are you referring to sysctl_tstamp_allow_data?
>>>>
>>>> That is enabled by default.
>>>
>>> Yes. If so, then we don't need the check below which requires
>>> sk_callback_lock.
>>>
>>> Are SIOCSHWTSTAMP the legacy users or the ones which do not set
>>> OPT_TSONLY?
>>>
>>> I would suggest to move the CAP_NET_RAW check to the point where
>>> timestamping is getting enabled.
>>> Also if ndo_hwtstamp_set is the preferred method of getting things done,
>>> I could check how many old ones are can be easily converted…
>>
>> Looks like you are mixing things. SIOCSHWTSTAMP/ndo_hwtstamp_set are HW
>> configuration calls while OPT_TSONLY is socket option, which is setup via
>> setsockopt, you can find points searching for
>> SOF_TIMESTAMPING_OPT_TSONLY in the sources, basically
>> sock_set_timestamping() is the function to check
> 
> Yeah, but what is the legacy user here? If you enable HW-timestamps but
> never set OPT_TSONLY and the sysctl is also 0 then you reply on the
> CAP_NET_RAW later on. Right?

Legacy users here means users of HW TX timestamps expecting full skb to 
be returned back with the TX timestamp. Legacy here means that skb will 
be returned with headers modified by stack, which is kind of exposure of
data, which requires CAP_NET_RAW...

> I just try to justify the CAP_NET_RAW check and if it is required to
> move it earlier (where HW timestamps are enabled). And if the sysctl
> check is enough then maybe it is not needed.

Capabilities should not change during lifetime of the process, should be
fine to move. On the other, sysctl can be changed system-wide which may 
affect users.

>   
>>>>> To receive these timestamps users have to get
>>>>> CAP_NET_RAW permission, and it will work with the updated logic as well...
> 
> Sebastian

