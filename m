Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECDF899B1F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 12:44:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D36EA81F7E;
	Fri,  5 Apr 2024 10:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4vpBrOhfY9v; Fri,  5 Apr 2024 10:44:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A1CA81F82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712313874;
	bh=ujKJNakC2lY1afOYTNxjDOu1u3voQsxq+lDvp53sD9I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EsPbdPMOmZTgmH69ubRQPLuOjWoGNjo2rYECEIzApHOAKE7JQYbtiMifq7nZFMZlY
	 JFCV4bp/pAwRaP5SljMp5VKoh8Hvrw63wCMyfoYHloz8dddVLYtMFWKgT4JDojzIn9
	 7dZzmXkmgHXvT/+XMPf4nJmerBdhfNE2gNc/DBTLBrw+w2gw1/P38Ycjws5gwwcu7U
	 yqnpyS5/4XP8MKdQf66G0Rp97YBl58+MQYMh3p43AR++d8j03hMbhqC/TIGygSapcd
	 L0rVVJM/ISie4KeBQZhikmXjNluREcYz9/nemFD1jJLQuQa6hxXUIfTLa69GLOPHkp
	 vQZNSbi3u1w9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A1CA81F82;
	Fri,  5 Apr 2024 10:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D188D1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9B766086D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rhkY3CkOpJrS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 10:44:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=195.135.223.130;
 helo=smtp-out1.suse.de; envelope-from=vbabka@suse.cz; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC57E6066C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC57E6066C
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC57E6066C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:44:25 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 9BEFB21A34;
 Fri,  5 Apr 2024 10:44:22 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 6BEA0139E8;
 Fri,  5 Apr 2024 10:44:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap2.dmz-prg2.suse.org with ESMTPSA id Ndv/GQbWD2bpcgAAn2gu4w
 (envelope-from <vbabka@suse.cz>); Fri, 05 Apr 2024 10:44:22 +0000
Message-ID: <e62d9465-7056-4714-9a4e-4645a457774e@suse.cz>
Date: Fri, 5 Apr 2024 12:44:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-5-aleksander.lobakin@intel.com>
From: Vlastimil Babka <vbabka@suse.cz>
Autocrypt: addr=vbabka@suse.cz; keydata=
 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
 EP+ylKVEKb0Q2A==
In-Reply-To: <20240404154402.3581254-5-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-4.50 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 XM_UA_NO_VERSION(0.01)[]; MX_GOOD(-0.01)[];
 RCPT_COUNT_TWELVE(0.00)[18]; MIME_TRACE(0.00)[0:+];
 RCVD_VIA_SMTP_AUTH(0.00)[]; MID_RHS_MATCH_FROM(0.00)[];
 ARC_NA(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCVD_TLS_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:dkim];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_TRACE(0.00)[suse.cz:+]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 9BEFB21A34
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1712313862; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ujKJNakC2lY1afOYTNxjDOu1u3voQsxq+lDvp53sD9I=;
 b=j4++e9W9r8Pl33/JlVK9iLxWXn00q9gdZDwnI9mK7jlrFQkK7wQTbQeOZwe55COg8MDoqP
 /jvWm/klVqw6x4eCZf6MUvq/3r6tdMjAHeMpm9Jp4QCVjjX/621qDnn/t9YRG7+fT5urSc
 AgFmEkUg+shBQRvFzn/JJBcqefjVVE4=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1712313862;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ujKJNakC2lY1afOYTNxjDOu1u3voQsxq+lDvp53sD9I=;
 b=FtpHEAcpdpP5lMTQI3E5MKG4VlaV95PKQiTPtGKvu6NetWZjVJ9AkZLpnMXvSthH838MDA
 LfDNDkWeg4rlUgDg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1712313862; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ujKJNakC2lY1afOYTNxjDOu1u3voQsxq+lDvp53sD9I=;
 b=j4++e9W9r8Pl33/JlVK9iLxWXn00q9gdZDwnI9mK7jlrFQkK7wQTbQeOZwe55COg8MDoqP
 /jvWm/klVqw6x4eCZf6MUvq/3r6tdMjAHeMpm9Jp4QCVjjX/621qDnn/t9YRG7+fT5urSc
 AgFmEkUg+shBQRvFzn/JJBcqefjVVE4=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1712313862;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ujKJNakC2lY1afOYTNxjDOu1u3voQsxq+lDvp53sD9I=;
 b=FtpHEAcpdpP5lMTQI3E5MKG4VlaV95PKQiTPtGKvu6NetWZjVJ9AkZLpnMXvSthH838MDA
 LfDNDkWeg4rlUgDg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=suse.cz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=j4++e9W9; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=FtpHEAcp; 
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=j4++e9W9; 
 dkim=neutral header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=FtpHEAcp
X-Mailman-Original-Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=j4++e9W9;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=FtpHEAcp
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/9] slab: introduce
 kvmalloc_array_node() and kvcalloc_node()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Kent Overstreet <kent.overstreet@linux.dev>,
 Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Suren Baghdasaryan <surenb@google.com>,
 Andrew Morton <akpm@linux-foundation.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/4/24 5:43 PM, Alexander Lobakin wrote:
> Add NUMA-aware counterparts for kvmalloc_array() and kvcalloc() to be
> able to flexibly allocate arrays for a particular node.
> Rewrite kvmalloc_array() to kvmalloc_array_node(NUMA_NO_NODE) call.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Acked-by: Vlastimil Babka <vbabka@suse>

This will however cause some conflicts with alloc tagging series with mm
tree in next and the new wrappers will have to be adjusted.

> ---
>  include/linux/slab.h | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index e53cbfa18325..d1d1fa5e7983 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -774,14 +774,27 @@ static inline __alloc_size(1) void *kvzalloc(size_t size, gfp_t flags)
>  	return kvmalloc(size, flags | __GFP_ZERO);
>  }
>  
> -static inline __alloc_size(1, 2) void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
> +static inline __alloc_size(1, 2) void *
> +kvmalloc_array_node(size_t n, size_t size, gfp_t flags, int node)
>  {
>  	size_t bytes;
>  
>  	if (unlikely(check_mul_overflow(n, size, &bytes)))
>  		return NULL;
>  
> -	return kvmalloc(bytes, flags);
> +	return kvmalloc_node(bytes, flags, node);
> +}
> +
> +static inline __alloc_size(1, 2) void *
> +kvmalloc_array(size_t n, size_t size, gfp_t flags)
> +{
> +	return kvmalloc_array_node(n, size, flags, NUMA_NO_NODE);
> +}
> +
> +static inline __alloc_size(1, 2) void *
> +kvcalloc_node(size_t n, size_t size, gfp_t flags, int node)
> +{
> +	return kvmalloc_array_node(n, size, flags | __GFP_ZERO, node);
>  }
>  
>  static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t flags)

