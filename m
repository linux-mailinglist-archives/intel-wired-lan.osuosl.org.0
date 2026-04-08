Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uACpNMhp1mnIEwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 16:44:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D63BDD0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 16:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC0F140DDE;
	Wed,  8 Apr 2026 14:44:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a__wkZ4ShF57; Wed,  8 Apr 2026 14:44:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58DE140F3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775659462;
	bh=pezfrKC7eYGJMuBaqOOteFy8MQajQLtYRWeC0Y5aebs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3Ztba7MulRE0OAmwDQHBUmfIU/oN7CdbTz5kY8FFX5UFGINQSPwvDFaoPcGNf3/yW
	 QFpTrFrD0pslLk9pnuL1HcExDE0ihgTwzvlqB055vsviD//eUMH1ahRRu2JeJgTEdP
	 v0m+0JsxsI1c4CZ05Wfi4VfX5y6J95utQJB2xgsAdsT2g4QFTzzZF2fVw/a2rBHl2r
	 vhe55K5QQuRm3yjASDuueQilb+QlUlSPSb21SvUhvaCWarw90ESSoDdIuebVk+SjqU
	 Qs/DwzT9uM3TwB4d2WryB6NIg1E6qkZzcKeEiMN3A3ZJ225RYx/mBoX7gPTofsIOPM
	 aSSurJXmMYgnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58DE140F3A;
	Wed,  8 Apr 2026 14:44:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DF0451F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C50AC82238
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9lFuHYdGQYAp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 14:44:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B581082486
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B581082486
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B581082486
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:44:19 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-599-bGI4YazvPj-7TKN8dBjCDw-1; Wed, 08 Apr 2026 10:44:15 -0400
X-MC-Unique: bGI4YazvPj-7TKN8dBjCDw-1
X-Mimecast-MFC-AGG-ID: bGI4YazvPj-7TKN8dBjCDw_1775659455
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-43d1bfbd219so5016867f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Apr 2026 07:44:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775659455; x=1776264255;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pezfrKC7eYGJMuBaqOOteFy8MQajQLtYRWeC0Y5aebs=;
 b=cGN2prqOk5D+tq33hAVxbzeyNfrPpp/ayuTo8fYTVP9VCCaKbziYPpRZjYXDKndIQm
 DUVrUy3mQcI/Mrd9qyZEwwJBzHxWT3XE5dBpqrIe0FKDuMCGVZ9ctMh8ajDnZaomhsF/
 pPAc/zsKdF3oyKcQu1Pd3U1PJp9FATrxdPH2CGgZvrYbVWB7+e6mkw2V4baS9z+ZdBFT
 0F3FpFSte7dpP6SClM4Lto+FP3F0nAZ6la/pq4j50UD4bMOeqj+Rd5A4F5Gf4rC83jjw
 i8dPA/si4To9nxqjiEejZrMpCmuHUoJfFZboeH5LhIBLS9VVorQ52NCCiy3GOlMedIYt
 CoEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXg7z/Ijv7TudTPbf/rcInmPXCvTPoRQp7pARuERf8OgFurUY/HPLQdKcNkGgCq7y7GHFjkTmJj6Z8eQcQ0xwg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxUusAQkjhrAeZqvODkJSII+WrbW+ETgj2t7PgC0uaGyaYS1O2j
 ZImpbaN4/kDWh3dsnDfShQViKNm6L4jZg6xXEAbOMHuABkRy27BEBIPZVrho/X/SBttduYqoyaS
 86IlEpU4zQWI5AViIkUt7R60ydmXrGUAuJcA3bjiqxt9RQXB3dGUEr/bjO7zrjVQuGDTtHwU=
X-Gm-Gg: AeBDietvoWxbXV31qzbQnE0oWLCf5yA9LNRXm8V7pWwvluqKh1AwlYemI4Zv/iiV3Io
 hCI4wp2CTN9eacWPYwQMwYbuyjoBc4NJCNYPCjgO3uaFObEY35J3imAJIE7Nt10bhb5Y96d9sYW
 YGS3jcSawheBoTGrHh9cJze+j0cIg8XXiAfS8q+9oZRt6MZoZ854rfygEOSY0rfXdR8sorzYzD5
 2/C/EdMOrbeIb4laovkNNWQDjGqvWN1Ml9YMbB7yaCWVEdjNP7UGHRy716liiJUq+KqFRGkHjnY
 57CuRtd4LWAZpsPy+rfS9QE0l5fP3B1BjqKSa/679jbZCwqgIAZ2g/3tjyLkkz7flWFOzbgriSD
 6fmKnvmQqHzgrqUb/4Bes2fE6+VQTNZgqngaPL+PCtplRXDp1/0R1B7gExg==
X-Received: by 2002:a5d:64e4:0:b0:43b:8fa4:194d with SMTP id
 ffacd0b85a97d-43d292855famr30342523f8f.6.1775659454565; 
 Wed, 08 Apr 2026 07:44:14 -0700 (PDT)
X-Received: by 2002:a5d:64e4:0:b0:43b:8fa4:194d with SMTP id
 ffacd0b85a97d-43d292855famr30342478f8f.6.1775659453959; 
 Wed, 08 Apr 2026 07:44:13 -0700 (PDT)
Received: from [192.168.88.32] ([212.105.153.231])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e2a7223sm55239228f8f.5.2026.04.08.07.44.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2026 07:44:13 -0700 (PDT)
Message-ID: <2bae0dc2-4035-4fe2-a87e-dc5dae6c7df5@redhat.com>
Date: Wed, 8 Apr 2026 16:44:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <cover.1775648513.git.pabeni@redhat.com>
 <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
 <IA3PR11MB89864FAAC7BCD8459A2BCD15E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <IA3PR11MB89864FAAC7BCD8459A2BCD15E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yn6kLBnmnT5qMzKbP8XyZBRG9kCdr5gRugwEuZp5krw_1775659455
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775659458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pezfrKC7eYGJMuBaqOOteFy8MQajQLtYRWeC0Y5aebs=;
 b=apP1WAvtLZcmzr66ubZhS4undbd7I8FUATRf7mEhBy/Ii6/EFD+sqlGOQA0tECMFLOjOVK
 blQBqY5EPTX4/APEI/CuTtcVHY+TDMIfHxHgd07R8JhiwkVl3EFA5ZvKX9jT3hm+lrjJP0
 6YuJ67DqItvRsmMxOm3/XOH4FeYuKo4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=apP1WAvt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
 per-queue stats
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 4B9D63BDD0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/26 2:07 PM, Loktionov, Aleksandr wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Paolo Abeni
>> Sent: Wednesday, April 8, 2026 1:44 PM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
>> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
>> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
>> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
>> <sdf@fomichev.me>; netdev@vger.kernel.org
>> Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
>> per-queue stats
>>
>> Only expose the counters currently available (bytes, packets); add
>> account for base stats to deal with ring clear.
>>
>> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e.h      |   7 ++
>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 133
>> ++++++++++++++++++++
>>  2 files changed, 140 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
>> b/drivers/net/ethernet/intel/i40e/i40e.h
>> index dcb50c2e1aa2..fe642c464e9c 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -836,16 +836,23 @@ struct i40e_vsi {
>>  	struct i40e_eth_stats eth_stats;
>>  	struct i40e_eth_stats eth_stats_offsets;
>>  	u64 tx_restart;
> 
> ...
> 
>> +static void i40e_zero_tx_ring_stats(struct netdev_queue_stats_tx *tx)
>> {
>> +	tx->bytes = 0;
>> +	tx->packets = 0;
>> +	tx->stop = 0;
>> +	tx->wake = 0;
>> +	tx->hw_drops = 0;
>> +}
>> +
>> +static void i40e_add_tx_ring_stats(struct i40e_ring *tx_ring,
>> +				   struct netdev_queue_stats_tx *tx) {
>> +	u64 bytes, packets;
>> +	unsigned int start;
>> +
>> +	do {
>> +		start = u64_stats_fetch_begin(&tx_ring->syncp);
>> +		bytes = tx_ring->stats.bytes;
>> +		packets = tx_ring->stats.packets;
>> +	} while (u64_stats_fetch_retry(&tx_ring->syncp, start));
>> +
>> +	tx->bytes += bytes;
>> +	tx->packets += packets;
>> +
>> +	tx->stop += tx_ring->tx_stats.tx_stopped;
>> +	tx->wake += tx_ring->tx_stats.restart_queue;
>> +	tx->hw_drops += tx_ring->tx_stats.tx_busy; }
> Why the reads are outside the seqlock region? 
> On 32-bit kernels, unprotected u64 reads can tear IMHO

Currently there is no seqlock on the write side; to keep the series
small I preferred avoid fixing the pre-existing issue. In any case I
think moving stop, wake, hw_drops (and others) under seqlock protection
is an orthogonal change.

/P

