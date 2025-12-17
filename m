Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CC8CC7C3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 14:11:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7201760B36;
	Wed, 17 Dec 2025 13:11:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ovD_cn9GgvRg; Wed, 17 Dec 2025 13:11:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDE1C61037
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765977081;
	bh=9Z4HSgH6g7AvwtCkEH+wMmW4znl93Jz3EGhls0Goj0M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aguqD7BK1Fv37NPyeNFJa9SvxjfD79RbMNnCl4c22SDqivGsCkf8O3Cp9XiKD4qFC
	 2Au2jNda5NzYQHneBtGgAL8abuMjBFmtySpHUWeYebsy9i/ytMJyzO/AqUaiZN+Idd
	 cbXc7VkKB24GhvF3kpPdtfSTdzdmcdVDF4Rrhi1wWpgvmfXCnMKEigt4oBHVQr5HNx
	 roJsMY15ikWPq6lzsUEQag+zoYeutbL05CKDNBkyuGZCjOpw+RCrIPJ8NfJLT7Rn61
	 4F35sBkZxVBxIidlSZbyr1tUGW30pX+iwWCkxG/G/KNjEvAzP6/NH/ASTLPQMHFx80
	 xn/HJemMj6SIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDE1C61037;
	Wed, 17 Dec 2025 13:11:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 92D1535B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 13:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8555B40E5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 13:11:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JM-eeRPeRmxN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 13:11:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=asml.silence@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9857540E61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9857540E61
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9857540E61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 13:11:18 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4779aa4f928so69070945e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 05:11:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765977076; x=1766581876;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9Z4HSgH6g7AvwtCkEH+wMmW4znl93Jz3EGhls0Goj0M=;
 b=jrM5+jHS6v28akGinA/X+OzDQgGK8GtrZdSu+fdL3L9hqa3VJQAESAAVXq8nCqW/9s
 Nqh/HcAQv7WLIKBI++cH+JBYHXXW+HDJZq1DhqEO7cF5eyCmkXulLu415eZzkVc14aRv
 WY0kB0rOJJh3EWfBgwWAziHPCVMBz0TEunKl4PE8LqA4GaRqjNbEIkSWMJTCgYliBhxF
 IlohKnI1uqdO8CTOj7IOh6zy6cGdO+kWhPP7fRawrclyGkqa5AA9xg5Y2r2IkOjCQdVY
 lhM4AUdMbk6DRns31oWn7WSIdUNHLomHh3yXelS8JD0KWCXfSQmVJ3j4NN8pJXw9JalN
 eQGQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWARebbHh9BsiIgZT+pDiAUssXcdGLOtgV44s0w/TVB1x6J9X2ouHgd8cBFpx3tgVZftmBZKNHiy4jqnlU1cf8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw+KKCmYNuNFvri1p+mNWq85XtWUHwkvSUOMp6bXowXPmasRYmu
 OFfK+p7dSc5f+oJvZf9S2Zp6JA4Eqvp3ITeuj/iSjtzVK4LCajPnGwDJ
X-Gm-Gg: AY/fxX4v0ZYw426HnGh6dcwKz4PgFlr9BK1YBhG1HRRPk9GT2gOoSUQMmG6PaeHcPDb
 IGAK75sEZD5zRjzGFiaPRAtRgyGqD7eemTst7gJXNk8WCUR/Hcu19mJ1M+8SLsWg5un6x30r7Xh
 nTc3O2s8kxuGUB6i3A/gFbBGF1C1OBTMUmP2ayKh81jZ3A+qEDShjfPZnHQvN6kfJ1WSv7+oCKM
 CYTN0D8EO60Zlj7gvqqkgMAA/2sL/S0bCH01ydSG4nlq9ABgA0pgEMVd+lkj0sRpghP8BzoiMHe
 o/0eG+iKakC5ED1QsfkjwWw7DMYguSnKqxX6mwm+Y0if3fe2Zxj1qzJnWCnb8fxQ0Uo0K8ekg6n
 meMycGvkHkIRdygoICNQuwp+1GF2lid4FZAYst9wQquEUwJSiTMlFlmQJsXS5GCakChXUyO7+s2
 nhOnBkhgyctQAKK1qkRpv4i69gjYkDNoiC1gI3EASX2mMtRpk56Bgbo56cYCWpMFICzlrWLyQ/F
 lZIE/KsXHQYjS8z6N8Qs66GpKec3vPo2RPmmfZfxMHbn0DGVt295mbTlLJI/a8L
X-Google-Smtp-Source: AGHT+IH4M27L0GnkKa5YZjgEGFIEggORP144TJzRSbqK2PgPBt0czr5vNAg03Rt65ew76snUH/SXqg==
X-Received: by 2002:a05:6000:2083:b0:431:16d:63a3 with SMTP id
 ffacd0b85a97d-431016d695fmr10732866f8f.46.1765977076158; 
 Wed, 17 Dec 2025 05:11:16 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c?
 ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4310adeee0esm4849071f8f.29.2025.12.17.05.11.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Dec 2025 05:11:15 -0800 (PST)
Message-ID: <37b642bd-9f26-477e-9fca-1e3c931c0efb@gmail.com>
Date: Wed, 17 Dec 2025 13:11:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Pavel Begunkov <asml.silence@gmail.com>
To: Matthew Wilcox <willy@infradead.org>, Byungchul Park <byungchul@sk.com>
Cc: netdev@vger.kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org,
 kernel_team@skhynix.com, harry.yoo@oracle.com, david@redhat.com,
 toke@redhat.com, almasrymina@google.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
References: <20251216040723.10545-1-byungchul@sk.com>
 <aUDd9lLy76sBejrP@casper.infradead.org>
Content-Language: en-US
In-Reply-To: <aUDd9lLy76sBejrP@casper.infradead.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765977076; x=1766581876; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9Z4HSgH6g7AvwtCkEH+wMmW4znl93Jz3EGhls0Goj0M=;
 b=fCcPmdnBdmWJqZ7WLXn7x/QyS9HQ9hvFUq/EKNNOZ0NB6Wvzx9JF9RRHNecryBZSm3
 vC9nhrHytmb4tzb9nk9s4OXasOyV1JP4neND95ZUswXwpCy5LlihcoSwcgXDoWaJ0z4t
 SOF4dZdnD+o8piuuKqd0XTSMEXmmelPzn2UbWtV3ncSDv7vkrVNxTgfxPfxehsYUBecm
 mRA1LJ1xwxV4GmdzwMGJNtu5OF3YQhEYTCBE71yS/Z6Gi6E3WUuPrTNougr46RlPVo+O
 p0zLo9TyPR9jLDz0scxHgoB8YagrH/kUe2IVla9UGbvhZhVJmrXkkrKcOPLmwd5DxAV3
 MMzQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=fCcPmdnB
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

On 12/16/25 04:20, Matthew Wilcox wrote:
> On Tue, Dec 16, 2025 at 01:07:23PM +0900, Byungchul Park wrote:
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
>>   		rx_buf = &rx_ring->rx_fqes[i];
>>   		page = __netmem_to_page(rx_buf->netmem);
>>   		received_buf = page_address(page) + rx_buf->offset +
>> -			       page->pp->p.offset;
>> +			       pp_page_to_nmdesc(page)->pp->p.offset;
> 
> Shouldn't we rather use:
> 
> 		nmdesc = __netmem_to_nmdesc(rx_buf->netmem);
> 		received_buf = nmdesc_address(nmdesc) + rx_buf->offset +
> 				nmdesc->pp->p_offset;
> 
> (also. i think we're missing a nmdesc_address() function in our API).

It wouldn't make sense as net_iov backed nmdescs don't have/expose
host addresses (only dma addresses). nmdesc_address() would still
need to rely on the caller knowing that it's a page. An explicit
cast with *netmem_to_page() should be better.

-- 
Pavel Begunkov

