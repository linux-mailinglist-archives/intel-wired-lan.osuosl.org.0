Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAFCB25BC7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 08:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83570819F6;
	Thu, 14 Aug 2025 06:29:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fxtwgqxIVFM3; Thu, 14 Aug 2025 06:29:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E766E81D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755152967;
	bh=hKu5XXyF/dfdLIM4Ogjcml2uVcfXD9FWPNqfzJ7PYvo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1UahXZJ7b9HK6PXI+M/sWPBhdyp61NhWrp18V4KABGPtRxH7SHhI66uZcQxAgFwIP
	 8nLAbsebTjss+XtvVE6pPj8T/xqYw9ft2+uQieyvTcfCOcg2NbBROrv6eKMZQ5s1ZO
	 +CTWDUhMmU3YaWRXqyXrWXfYJAx18s7aALxp3o7vFDrd9/as1bNWFrdxe0vQYPaD47
	 DFSsDu+q06MFh9Jc/T6/Cvw6rDQw4vKwrD+c/Y8YQW0V2ByCrIOyLFpP48UeFv4nQe
	 fDxy6epMkhzpB8ZYQi1wmz3r5KZEySHAfjCITawkHKFCSPCfyXq+g5q+a3S72b9zdM
	 GbuIwBAaMuY6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E766E81D65;
	Thu, 14 Aug 2025 06:29:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06B961B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB4D740EF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:29:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CDbalEvRudrC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 06:29:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D58BE40ECC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D58BE40ECC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D58BE40ECC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:29:22 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7f5.dynamic.kabel-deutschland.de
 [95.90.247.245])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E494561E647BA;
 Thu, 14 Aug 2025 08:28:42 +0200 (CEST)
Message-ID: <2ec36cd7-7378-4e44-894a-93008348a96a@molgen.mpg.de>
Date: Thu, 14 Aug 2025 08:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Qianfeng Rong <rongqianfeng@vivo.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 bpf@vger.kernel.org
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
 <20250812133226.258318-2-rongqianfeng@vivo.com>
 <af057e48-f428-4c34-8991-99959edbabd2@molgen.mpg.de>
 <abc66ec5-85a4-47e1-9759-2f60ab111971@vivo.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <abc66ec5-85a4-47e1-9759-2f60ab111971@vivo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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

Dear Quianfeng,


Thank you very much for your reply.

Am 14.08.25 um 06:05 schrieb Qianfeng Rong:
> 
> 在 2025/8/13 0:34, Paul Menzel 写道:

[…]

>> Am 12.08.25 um 15:32 schrieb Qianfeng Rong:
>>> Remove array_size() calls and replace vmalloc() with vmalloc_array() to
>>> simplify the code and maintain consistency with existing kmalloc_array()
>>> usage.
>>
>> You could build it without and with your patch and look if the assembler
>> code changes.
> 
> Very good point, the following experiment was done:
> //before apply patch:
> objdump -dSl --prefix-addresses fm10k_ethtool.o > original.dis
> 
> //after apply patch:
> objdump -dSl --prefix-addresses fm10k_ethtool.o > patched.dis
> 
> diff -u original.dis patched.dis | diffstat
> patched.dis | 1578 ... 1 file changed, 785 insertions(+), 793 deletions(-)
> 
> From the above results, we can see that the assembly instructions are
> reduced after applying the patch.
> 
> 
> #define array_size(a, b)    size_mul(a, b)
> 
> static inline size_t __must_check size_mul(size_t factor1, size_t factor2)
> {
>      size_t bytes;
> 
>      if (check_mul_overflow(factor1, factor2, &bytes))
>          return SIZE_MAX;
> 
>      return bytes;
> }
> 
> void *__vmalloc_array_noprof(size_t n, size_t size, gfp_t flags)
> {
>      size_t bytes;
> 
>      if (unlikely(check_mul_overflow(n, size, &bytes)))
>          return NULL;
>      return __vmalloc_noprof(bytes, flags);
> }
> 
> And from the code, array_size() will return SIZE_MAX after detecting
> overflow.  SIZE_MAX is passed to vmalloc for available memory
> verification before exiting and returning NULL. vmalloc_array()
> will directly return NULL after detecting overflow.

Awesome! Thank you for digging that up. Maybe something to add to the 
commit message. Maybe something like:

`vmalloc_array()` is also optimized better, resulting in less 
instructions being used, which can be verified with:

objdump -dSl --prefix-addresses <changed module>.o

>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
