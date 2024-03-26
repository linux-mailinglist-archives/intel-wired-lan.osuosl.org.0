Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D3488CA10
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 18:03:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB8A141525;
	Tue, 26 Mar 2024 17:03:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GOtmABc105AT; Tue, 26 Mar 2024 17:03:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E17E4404D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711472618;
	bh=rFF3IEv1pQkVliIlfBa5Tw/0KDEQACYRpeKK2HhiYeY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M+8Yp8rcUt1ejnLixN0yMnJFcI1ZdbxBeFeiNSJI2SjuPYt1kbhTMB4KJRsnNI0MF
	 nXUp1VBa7OV8W+eVJn6T18ofYbrBxHGqNSNt6lbZvtCwQPnz+ULB9HeCLtrl0qQpUx
	 XTPgPguuptXQqceAXkXoLIpXk2iSx3H0HvA1agYg0/yIK1wRPl0qpdI9MqyHbeP3hT
	 4UYpWrbVUETv9YjaCTnmM6bYh3EgA2/G1dR+ZKnilq5xgLUNpIA6EloHNbfPQziduh
	 S8RxKmtxfAAErEw5lvjuiY6rNNyABVXNEUB3QD7RzH7WDnfUt1dXEKrkp8Vwbs9kBi
	 B9KDiod7nEexw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E17E4404D4;
	Tue, 26 Mar 2024 17:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDF701BF487
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6802605B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eUzWScwfS4Cm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 17:03:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.202.169.35;
 helo=omta036.useast.a.cloudfilter.net; envelope-from=gustavo@embeddedor.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BEEAA60594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEEAA60594
Received: from omta036.useast.a.cloudfilter.net
 (omta036.useast.a.cloudfilter.net [44.202.169.35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEEAA60594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:03:33 +0000 (UTC)
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
 by cmsmtp with ESMTPS
 id ocShrtgT8uh6spACyrjz31; Tue, 26 Mar 2024 17:03:32 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id pACbrw2tJeXgGpACbrC32v; Tue, 26 Mar 2024 17:03:10 +0000
X-Authority-Analysis: v=2.4 cv=Q/PU4Z2a c=1 sm=1 tr=0 ts=6602ffce
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=zXgy4KOrraTBHT4+ULisNA==:17
 a=IkcTkHD0fZMA:10 a=K6JAEmCyrfEA:10 a=wYkD_t78qR0A:10 a=cm27Pg_UAAAA:8
 a=QyXUC8HyAAAA:8 a=VwQbUJbxAAAA:8 a=WFmGiULL8WMXhObYpVMA:9 a=QEXdDO2ut3YA:10
 a=xmb-EsYY8bH0VWELuYED:22 a=AjGcO6oz07-iQ99wixmX:22
Received: from [201.172.173.147] (port=44416 helo=[192.168.15.10])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.2)
 (envelope-from <gustavo@embeddedor.com>) id 1rpACR-001bkE-26;
 Tue, 26 Mar 2024 12:02:59 -0500
Message-ID: <8d2c9cb1-6f2e-4ad4-a1b7-25e6ae953a65@embeddedor.com>
Date: Tue, 26 Mar 2024 11:02:57 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
 <20240326164116.645718-2-aleksander.lobakin@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20240326164116.645718-2-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.172.173.147
X-Source-L: No
X-Exim-ID: 1rpACR-001bkE-26
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.10]) [201.172.173.147]:44416
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGQxFH3P38lNyoGvJQlIP2bSfZBSflnHeeHdKsfpHFD6S/9uc4QCmzIJxsczv1vnqu/PupT9B+Nn0ySBU7ZB1iqeiN6IGPKKhkpHO7Yq3jMSia+4biYm
 2yBT3rFxQyEea3b7jKlSIj+KRMf3FDOMXeWw1ojR1joQqqdL1FcX6kkw6uVZhhK6axmbVl8ILYTmq+2pM/csfeVL4kubnJkpIX+jaOZ2/V0vh1pbf0KbuQAC
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rFF3IEv1pQkVliIlfBa5Tw/0KDEQACYRpeKK2HhiYeY=; b=qYEHpAGvILy9Vl9Ea56ZcsQpyp
 5d1O12jQAdIGi1w7Xrqw62FzGswWZxmT2PVF7Csv1Oaic02tq+Dw5jWbGdtwDxpW6AMjzrjMDzdIX
 +6cEfQ/fj0fb5N4QLa1Dr0OF9AjqoO1XtiYRC7tQPvv+ThlFXcX7RYWEJ96NGi9E23LEOQe7HnjCw
 y7f3FAxvRaKtJjlgZjQ9VGjcqg1Xs2BzrBZITc7HE+Z2Gibi25Tk682p5eSQf999TCh1g74rwisUm
 5IQiCmg7p1mPjkPeF5xdwdiVrY4fkoPRbXj2y/mfCPCMglN0D7XXhvQhCdfSISEiJtgHHvPrdZLB+
 dUX4mstA==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=embeddedor.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=qYEHpAGv
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] compiler_types: add
 Endianness-dependent __counted_by_{le, be}
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/26/24 10:41, Alexander Lobakin wrote:
> Some structures contain flexible arrays at the end and the counter for
> them, but the counter has explicit Endianness and thus __counted_by()
> can't be used directly.
> 
> To increase test coverage for potential problems without breaking
> anything, introduce __counted_by_{le,be}() defined depending on
> platform's Endianness to either __counted_by() when applicable or noop
> otherwise.
> Maybe it would be a good idea to introduce such attributes on compiler
> level if possible, but for now let's stop on what we have.
> 
> Acked-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

LGTM:

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>   Documentation/conf.py          |  2 ++
>   scripts/kernel-doc             |  1 +
>   include/linux/compiler_types.h | 11 +++++++++++
>   3 files changed, 14 insertions(+)
> 
> diff --git a/Documentation/conf.py b/Documentation/conf.py
> index d148f3e8dd57..0c2205d536b3 100644
> --- a/Documentation/conf.py
> +++ b/Documentation/conf.py
> @@ -75,6 +75,8 @@ if major >= 3:
>               "__rcu",
>               "__user",
>               "__force",
> +            "__counted_by_le",
> +            "__counted_by_be",
>   
>               # include/linux/compiler_attributes.h:
>               "__alias",
> diff --git a/scripts/kernel-doc b/scripts/kernel-doc
> index 967f1abb0edb..1474e95dbe4f 100755
> --- a/scripts/kernel-doc
> +++ b/scripts/kernel-doc
> @@ -1143,6 +1143,7 @@ sub dump_struct($$) {
>           $members =~ s/\s*$attribute/ /gi;
>           $members =~ s/\s*__aligned\s*\([^;]*\)/ /gos;
>           $members =~ s/\s*__counted_by\s*\([^;]*\)/ /gos;
> +        $members =~ s/\s*__counted_by_(le|be)\s*\([^;]*\)/ /gos;
>           $members =~ s/\s*__packed\s*/ /gos;
>           $members =~ s/\s*CRYPTO_MINALIGN_ATTR/ /gos;
>           $members =~ s/\s*____cacheline_aligned_in_smp/ /gos;
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 2abaa3a825a9..a29ba6ef1e27 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -282,6 +282,17 @@ struct ftrace_likely_data {
>   #define __no_sanitize_or_inline __always_inline
>   #endif
>   
> +/*
> + * Apply __counted_by() when the Endianness matches to increase test coverage.
> + */
> +#ifdef __LITTLE_ENDIAN
> +#define __counted_by_le(member)	__counted_by(member)
> +#define __counted_by_be(member)
> +#else
> +#define __counted_by_le(member)
> +#define __counted_by_be(member)	__counted_by(member)
> +#endif
> +
>   /* Do not trap wrapping arithmetic within an annotated function. */
>   #ifdef CONFIG_UBSAN_SIGNED_WRAP
>   # define __signed_wrap __attribute__((no_sanitize("signed-integer-overflow")))
