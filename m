Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E41CBA3093
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 11:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04CE242124;
	Fri, 26 Sep 2025 09:00:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nWIkNVYNxhZD; Fri, 26 Sep 2025 09:00:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13B6542122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758877205;
	bh=v4K2IkRtNToNOHoYRUov3VxVnZRWDvuO0Nf1FfXDGro=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RUwqiw+L5VorIxSuYUlDjFe5xgGZMQ0BCPKGRRWit9cSWHCpXW8WzT7bjvZay+ZyL
	 lhtAezzgKtviBIfA9ie8wPOA0Yk2sHjOyr2pT04UbcMRi70ti7e9cRc9k3ss0TE0ij
	 clOAJPvMig5CQqVXeZx5u6Rz5pOfbkE4WIsDGoczUKjYKaZY7xEhcntoz7mqERKJsJ
	 0KJ/1M9mJ+IHv/U0g7gDCrfFgVRLZV7vqG36Aa0wjDidgEeH7w2JTlJLxbBJxn53BA
	 5hcKkdLms7DF8OCV4lhpXunjVDtOSAs/rRvjabaqv0fZWmo62wsJyrZZG3fgssDd1e
	 Nnv/VkOjZbXbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13B6542122;
	Fri, 26 Sep 2025 09:00:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A4D8312D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:00:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E46C41D5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:00:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7jkFLeMt1Iz9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 09:00:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9041A400A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9041A400A4
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9041A400A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:00:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 08848615A2;
 Fri, 26 Sep 2025 09:00:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CFC2C4CEF5;
 Fri, 26 Sep 2025 08:59:53 +0000 (UTC)
Message-ID: <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
Date: Fri, 26 Sep 2025 10:59:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stanislav Fomichev <stfomichev@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <aNYUqdaIJV1cvFCb@mini-arch>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <aNYUqdaIJV1cvFCb@mini-arch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758877199;
 bh=L0oABFhpwRrsTJJhUFzKMLEuhir4Lfkj64YL/jUGDeU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=R/RKfhzKCAHUUHOUZQQWDSgUR4W9XLp4aoZd/Afp2edAjWaep1kDpOlJX2gReYj2A
 jKLIeyPDMVYtUt74x3sHfkfe4kqaSnD5spOFAIO0nG5UbVS9gtfc+apHJioZ/lv6s3
 otvv4LEC9cu1rolLxcTo1LCKrUGNMvPwD10gBAGJ+wNRJDKkRMqu+xtphkGmB2lxrr
 CFHNGXW+d37fQVoc+j+rvHWaYjntwimBQ0vKZViCqawTt1pUu+0lwg/php8jyujIeu
 rrqzPzV8NrRogP/53UvNcGN+1SbnoIyM2u3EPKUafk7ZTG0uc2cUz/AGqreYfF+FLp
 MdMhUzVHxolUw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=R/RKfhzK
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 1/5] netlink: specs:
 Add XDP RX checksum capability to XDP metadata specs
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



On 26/09/2025 06.20, Stanislav Fomichev wrote:
> On 09/25, Lorenzo Bianconi wrote:
>> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
>> checksum will be use by devices capable of exposing receive checksum
>> result via bpf_xdp_metadata_rx_checksum().
>> Moreover, introduce xmo_rx_checksum netdev callback in order allow the
>> eBPF program bounded to the device to retrieve the RX checksum result
>> computed by the hw NIC.
>>
>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>> ---
>>   Documentation/netlink/specs/netdev.yaml |  5 +++++
>>   include/net/xdp.h                       | 14 ++++++++++++++
>>   net/core/xdp.c                          | 29 +++++++++++++++++++++++++++++
>>   3 files changed, 48 insertions(+)
>>
>> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
>> index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
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
>> index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b70618a9d4f32544d8b9a30b63 100644
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
>> @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
>>   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
>>   };
>>   
>> +enum xdp_checksum {
>> +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
>> +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
>> +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
>> +	XDP_CHECKSUM_PARTIAL		= CHECKSUM_PARTIAL,
>> +};
> 
> Btw, might be worth mentioning, awhile ago we had settled on a smaller set of
> exposed types:
> 
> https://lore.kernel.org/netdev/20230811161509.19722-13-larysa.zaremba@intel.com/
> 
> Maybe go through the previous postings and check if the arguments are
> still relevant? (or explain why we want more checksum now)

IHMO the linked proposal reduced the types too much.

I think Lorenzo's suggested types are much better. One argument is of-
cause that the types corresponds directly to the (time proven) types
used by the SKB.

I could argue, that we are lacking a type that indicate hardware
"failed" to do the checksum, but that is indirectly covered by
CHECKSUM_NONE case.  And having BPF-developers deal with both
CHECKSUM_NONE and CHECKSUM_FAIL correctly is a recipe for bugs.

I will explain in another email, why we need to document what
CHECKSUM_NONE actually means.

--Jesper






