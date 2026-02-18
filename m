Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIi6K32blWmsSgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:59:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8938155B9B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:59:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFE0C407F7;
	Wed, 18 Feb 2026 10:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XWqipbMbxZpi; Wed, 18 Feb 2026 10:59:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10BF3407F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771412346;
	bh=t/6M88dbIV7OSKBxBmhf0ljkNz+Mo2OaZj5JzHwSKsI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MEy+49rEi/DzOwqzVFmvCt+90v5SXCvBuLo574+Mo8hlcXOmWNyWLbGs7e2ydp+Wu
	 xjwhf3QkLXTuk9QdQhoHrJ4xNuZVudwKnP8mV5+6K1/IGotIlTFUy/6i9kaiLKxrSa
	 k1jsnVzTndg1YK3T55wnh0eaTwg0GEzPnMAcL3M+15e2oOrwjXQchNh3n86MPI62/U
	 6Xy4ab4mymrejle3sD+TsOvSa3Bkk4LAjtIabw07SV/Dfoyy9AwoaXi7Mzgvf1ckSQ
	 rRLhbdHKSAnMdVZkh6kTxNdH2xi60l2fPtSiwt82sV0lLvD/sxKMMI8rsWfUTYLcmb
	 JC6IKQeBNHDdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10BF3407F9;
	Wed, 18 Feb 2026 10:59:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CABFE1CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B041A810CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:59:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HYJ5DiAkhcO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:59:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AAE9B810CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAE9B810CA
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAE9B810CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:59:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id F00B34359D;
 Wed, 18 Feb 2026 10:59:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7038CC19423;
 Wed, 18 Feb 2026 10:58:54 +0000 (UTC)
Message-ID: <cd3d6e59-c103-4279-8e01-8792a78981c3@kernel.org>
Date: Wed, 18 Feb 2026 11:58:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stanislav Fomichev <stfomichev@gmail.com>,
 Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Arthur Fabre <arthur@arthurfabre.com>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Lorenzo Bianconi
 <lorenzo@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, kernel-team <kernel-team@cloudflare.com>,
 Willem Ferguson <wferguson@cloudflare.com>
References: <20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org>
 <20260217-bpf-xdp-meta-rxcksum-v3-1-30024c50ba71@kernel.org>
 <aZUPUwYMRNXSg-eI@mini-arch>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <aZUPUwYMRNXSg-eI@mini-arch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771412341;
 bh=ExYM4GllfmADUjEjQoM2UYVUP6BlZRRL6bd+IQoD24U=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=oZpUFL7UbeSg9oxx+5ocBW10Hez4rK8Ywn1GTIJvuvO1VAfuPqKCtELpHKDIxBncs
 KJ4vtX2edWTa0l5u7iBN93TrkRXf6dVi4M1aAAmJnDiBDDV/QPWh/5YrDIHwGGYx2r
 aF5bVrkGvkBprxjVeOIVYmgcqx/6TafGUQPuVHur18V6fBZGyu1f6djmo9C2MlaUfv
 oTZQDU1HbZIQ3syH4WHyc+pQHNJIZu0X/gUbwVmj61uun+juAMQcirK2NsKP4R7B16
 /BaCu41DMGuoBBTKJk5s3lRe60sThdtIeJJBB1p1XVErSA0FAMGwCIwWqFhihIKxh1
 E8R3wRzIaiePg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oZpUFL7U
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 1/5] netlink: specs: Add
 XDP RX checksum capability to XDP metadata specs
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,cloudflare.com,arthurfabre.com];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:jbrandeburg@cloudflare.com,m:arthur@arthurfabre.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:lorenzo@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:kernel-team@cloudflare.com,m:wferguson@cloudflare.com,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[hawk@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hawk@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B8938155B9B
X-Rspamd-Action: no action



On 18/02/2026 02.01, Stanislav Fomichev wrote:
> On 02/17, Lorenzo Bianconi wrote:
>> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
>> checksum will be use by devices capable of exposing receive checksum
>> result via bpf_xdp_metadata_rx_checksum().
>> Moreover, introduce xmo_rx_checksum netdev callback in order to allow
>> the eBPF program bound to the device to retrieve the RX checksum result
>> computed by the hw NIC.
>>
>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>> ---
>>   Documentation/netlink/specs/netdev.yaml |  5 +++++
>>   include/net/xdp.h                       | 13 +++++++++++++
>>   include/uapi/linux/netdev.h             |  3 +++
>>   net/core/xdp.c                          | 28 ++++++++++++++++++++++++++++
>>   tools/include/uapi/linux/netdev.h       |  3 +++
>>   5 files changed, 52 insertions(+)
>>
>> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
>> index 596c306ce52b8303b20680ff0cd34d4fd9db0e48..58eda634668a07860447a65d9fc2284839af6244 100644
>> --- a/Documentation/netlink/specs/netdev.yaml
>> +++ b/Documentation/netlink/specs/netdev.yaml
>> @@ -61,6 +61,11 @@ definitions:
>>           doc: |
>>             Device is capable of exposing receive packet VLAN tag via
>>             bpf_xdp_metadata_rx_vlan_tag().
>> +      -
>> +        name: checksum
>> +        doc: |
>> +          Device is capable of exposing receive checksum result via
>> +          bpf_xdp_metadata_rx_checksum().
>>     -
>>       type: flags
>>       name: xsk-flags
>> diff --git a/include/net/xdp.h b/include/net/xdp.h
>> index aa742f413c358575396530879af4570dc3fc18de..00abb2e1e85514b4080d0e4e6e3b8f5f67f73b61 100644
>> --- a/include/net/xdp.h
>> +++ b/include/net/xdp.h
>> @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
>>   			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
>>   			   bpf_xdp_metadata_rx_vlan_tag, \
>>   			   xmo_rx_vlan_tag) \
>> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
>> +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
>> +			   bpf_xdp_metadata_rx_checksum, \
>> +			   xmo_rx_checksum)
>>   
>>   enum xdp_rx_metadata {
>>   #define XDP_METADATA_KFUNC(name, _, __, ___) name,
>> @@ -643,12 +647,21 @@ enum xdp_rss_hash_type {
>>   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
>>   };
>>   
>> +enum xdp_checksum {
>> +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
>> +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
>> +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
>> +};
>> +
>>   struct xdp_metadata_ops {
>>   	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
>>   	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
>>   			       enum xdp_rss_hash_type *rss_type);
>>   	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16 *vlan_proto,
>>   				   u16 *vlan_tci);
>> +	int	(*xmo_rx_checksum)(const struct xdp_md *ctx,
>> +				   enum xdp_checksum *ip_summed,
>> +				   u32 *cksum_meta);
>>   };
>>   
>>   #ifdef CONFIG_NET
>> diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
>> index e0b579a1df4f2126acec6c44c299e97bbbefe640..d20da430cfd57bc26b5ea2f406c27b48d8a81693 100644
>> --- a/include/uapi/linux/netdev.h
>> +++ b/include/uapi/linux/netdev.h
>> @@ -47,11 +47,14 @@ enum netdev_xdp_act {
>>    *   hash via bpf_xdp_metadata_rx_hash().
>>    * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing receive
>>    *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
>> + * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing receive
>> + *   checksum result via bpf_xdp_metadata_rx_checksum().
>>    */
>>   enum netdev_xdp_rx_metadata {
>>   	NETDEV_XDP_RX_METADATA_TIMESTAMP = 1,
>>   	NETDEV_XDP_RX_METADATA_HASH = 2,
>>   	NETDEV_XDP_RX_METADATA_VLAN_TAG = 4,
>> +	NETDEV_XDP_RX_METADATA_CHECKSUM = 8,
>>   };
>>   
>>   /**
>> diff --git a/net/core/xdp.c b/net/core/xdp.c
>> index fee6d080ee85fc2d278bfdddfd1365633058ec06..7d1e08d8ab4151ab42c91203def2afafc66d3149 100644
>> --- a/net/core/xdp.c
>> +++ b/net/core/xdp.c
>> @@ -961,6 +961,34 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
>>   	return -EOPNOTSUPP;
>>   }
>>   
>> +/**
>> + * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
>> + * @ctx: XDP context pointer.
>> + * @ip_summed: Return value pointer indicating checksum result.
>> + * @cksum_meta: Return value pointer indicating checksum result metadata.
>> + *
>> + * In case of success, ``ip_summed`` is set to the RX checksum result. Possible
>> + * values are:
>> + * ``XDP_CHECKSUM_NONE``
>> + * ``XDP_CHECKSUM_UNNECESSARY``
>> + * ``XDP_CHECKSUM_COMPLETE``
>> + *
>> + * In case of success, ``cksum_meta`` contains the hw computed checksum value
>> + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
>> + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NONE``
> 
> The only thing I'm still not sure about is the csum_level and whether
> we need to export it or just start with csum_level=0 and extend later
> when needed. The rest looks good.
> 
> Jesper, Lorenzo mentioned that you might need it? Can you clarify?

At Cloudflare our load-balancer Unimog[1] does GUE (Generic UDP
Encapsulation) when XDP_TX'ing packets to neighboring servers.
Thus, I assume we want to know the csum_level, as this is for
encapsulated packets, right?

Cc Jesse, as he knows more about the hardware and csum_level. To Jesse,
we need to test how hardware handles our GUE packet format (which is
slightly modified).

Cc Arthur + Willem, as they knows the details around how Unimog
currently have to recalc packet checksums in software.  Hopefully this
patchset can help us avoid doing this in some cases.

--Jesper

  [1] 
https://blog.cloudflare.com/unimog-cloudflares-edge-load-balancer/#encapsulation
  [Patch-0/5] 
https://lore.kernel.org/all/20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org/

