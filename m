Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAHCFsHNg2kFugMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 23:52:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7FDED17A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 23:52:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E701960E32;
	Wed,  4 Feb 2026 22:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYebmKtwZ3TZ; Wed,  4 Feb 2026 22:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FAE160DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770245565;
	bh=EJoZknlyXtAyOLBNPLzRyCmW6dHCkdD5Zvl96QPeKQE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JNszHGtGsViFpEUJfa+OF+VSAeSXMThhutJXar7I8ioCLhpSgNDRG2C9KSJ2QfJAB
	 rL3Xjh9Y4NTNJKpWUil9wJLDbUuUrgEhgsdyfVYRch15lk0tfJEjBShOHpo43/TbT7
	 XSlDULMVkNmG/3Pf2peR26/Cmkp91kQ0OTITVXCkmqo7mR/MkD7zFVa3Pn2rSGTEes
	 HbHFJveW1HMPXgR68dGW3zD0QCjcFYhWhJZ7iiQbqfrueZpsQHbCM4yAPZBoTKs4RI
	 Dm4MU9NuM8/t7z0FkcZ+kTzmhzjv3EgqZ7x4d+YCvsf7uIUCXdnGjqWUdUwnBdHJyU
	 iIO95aKjcmepg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FAE160DF9;
	Wed,  4 Feb 2026 22:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D94B4173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 22:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C732E40275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 22:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rNP0Ut_AzBdS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 22:52:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::ae; helo=out-174.mta1.migadu.com;
 envelope-from=martin.lau@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4C5E440D75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C5E440D75
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com
 [IPv6:2001:41d0:203:375::ae])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C5E440D75
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 22:52:40 +0000 (UTC)
Message-ID: <3df436d9-5671-410c-ad0d-67d9fa540330@linux.dev>
Date: Wed, 4 Feb 2026 14:52:19 -0800
MIME-Version: 1.0
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>, =?UTF-8?Q?Ricardo_B=2E_Marli=C3=A8re?=
 <rbm@suse.com>, Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-2-larysa.zaremba@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Martin KaFai Lau <martin.lau@linux.dev>
In-Reply-To: <20260203105417.2302672-2-larysa.zaremba@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1770245551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EJoZknlyXtAyOLBNPLzRyCmW6dHCkdD5Zvl96QPeKQE=;
 b=HtDRI+Qz+/WPhHk0OHCPF1aB7QuWSOfsCq2Bf7mxIuipnkr7S2QqYvlCBTNUb0iu+hoHUt
 /rat+5i/6Wcn6GPCTJXfdG4OWi8GiroFMZUBIyqZVEzvhDncDL+YFzwW54xpdXPJ7W6loT
 VyERfVRddW5EmiuIN3/tBwu/wn6JOGk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=HtDRI+Qz
Subject: Re: [Intel-wired-lan] [PATCH bpf 1/6] xdp: produce a warning when
 calculated tailroom is negative
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
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:bpf@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lu
 nn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER(0.00)[martin.lau@linux.dev,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.lau@linux.dev,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1A7FDED17A
X-Rspamd-Action: no action


On 2/3/26 2:53 AM, Larysa Zaremba wrote:
> The issue can be fixed in all in-tree drivers, but we cannot just trust OOT
> drivers to not do this. Therefore, make tailroom a signed int and produce a
> warning when it is negative to prevent such mistakes in the future.
> 
> Fixes: bf25146a5595 ("bpf: add frags support to the bpf_xdp_adjust_tail() API")
> Reviewed-by: Aleksandr Loktionov<aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba<larysa.zaremba@intel.com>
> ---
>   net/core/filter.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/core/filter.c b/net/core/filter.c
> index 616e0520a0bb..9715d957e3c5 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -4149,12 +4149,13 @@ static int bpf_xdp_frags_increase_tail(struct xdp_buff *xdp, int offset)
>   	struct skb_shared_info *sinfo = xdp_get_shared_info_from_buff(xdp);
>   	skb_frag_t *frag = &sinfo->frags[sinfo->nr_frags - 1];
>   	struct xdp_rxq_info *rxq = xdp->rxq;
> -	unsigned int tailroom;
> +	int tailroom;
>   
>   	if (!rxq->frag_size || rxq->frag_size > xdp->frame_sz)
>   		return -EOPNOTSUPP;
>   
>   	tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> +	WARN_ON_ONCE(tailroom < 0);
>   	if (unlikely(offset > tailroom))
>   		return -EINVAL;

Acked-by: Martin KaFai Lau <martin.lau@kernel.org>
