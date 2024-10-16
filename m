Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E84B29A0D12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 16:44:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8566C811F9;
	Wed, 16 Oct 2024 14:44:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HqyidcXXFXew; Wed, 16 Oct 2024 14:44:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DECF811F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729089840;
	bh=Ap8TCtVQtKAEaWVGknPYcFTq1ovJiv5/gXWJd3wztFw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p2v0lTEQZUAoz246uahE+EPFjAFrI0vcu0lcA0CQEG+k/UJd5BgzrAwq6iH7J+taj
	 R3+9I2CQZJmA6ipRejqCBUcWtxCzv4Raraxn3/37wpae8zrPNs4rAdcIEskh4Q/srq
	 4gdqmmhfkJyGoP8Lg7MZ/1T/U3Ni5GNNCpVeyUckevFbyuY/aH5tdDbcry16VkixAP
	 8J5E4JmeX9b1Etc0oqrg5htnXyynfbEc77DjOKsecBQRZqLr0kizUMQOGQcbLwAlLC
	 y3vMDKER8sZEbp1+xHtpIkYzbxdot3D63Te0YQv3gDYh4+CFwDxeEnuybbTslibI2q
	 KSss9CsNSd/oQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DECF811F3;
	Wed, 16 Oct 2024 14:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 886B627F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 14:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7521F40491
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 14:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u5avP9KtyyBN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 14:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172;
 helo=foss.arm.com; envelope-from=ryan.roberts@arm.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45C0C40201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45C0C40201
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45C0C40201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 14:43:56 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FD381007;
 Wed, 16 Oct 2024 07:44:25 -0700 (PDT)
Received: from [10.1.28.177] (XHFQ2J9959.cambridge.arm.com [10.1.28.177])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5FBD3F71E;
 Wed, 16 Oct 2024 07:43:51 -0700 (PDT)
Message-ID: <456ea437-fe6c-474f-bd9f-583c6fce9151@arm.com>
Date: Wed, 16 Oct 2024 15:43:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "David S. Miller" <davem@davemloft.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 David Hildenbrand <david@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Greg Marsden <greg.marsden@oracle.com>, Ivan Ivanov <ivan.ivanov@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Kalesh Singh <kaleshsingh@google.com>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <mbrugger@suse.com>, Miroslav Benes <mbenes@suse.cz>,
 Paolo Abeni <pabeni@redhat.com>, Will Deacon <will@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org
References: <20241014105514.3206191-1-ryan.roberts@arm.com>
 <20241014105912.3207374-1-ryan.roberts@arm.com>
 <20241014105912.3207374-27-ryan.roberts@arm.com>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <20241014105912.3207374-27-ryan.roberts@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arm.com
Subject: Re: [Intel-wired-lan] [RFC PATCH v1 27/57] net: e1000: Remove
 PAGE_SIZE compile-time constant assumption
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

+ Przemek Kitszel, Tony Nguyen

This was a rather tricky series to get the recipients correct for and my script
did not realize that "supporter" was a pseudonym for "maintainer" so you were
missed off the original post. Appologies!

More context in cover letter:
https://lore.kernel.org/all/20241014105514.3206191-1-ryan.roberts@arm.com/


On 14/10/2024 11:58, Ryan Roberts wrote:
> To prepare for supporting boot-time page size selection, refactor code
> to remove assumptions about PAGE_SIZE being compile-time constant. Code
> intended to be equivalent when compile-time page size is active.
> 
> Convert CPP conditionals to C conditionals. The compiler will dead code
> strip when doing a compile-time page size build, for the same end
> effect. But this will also work with boot-time page size builds.
> 
> Signed-off-by: Ryan Roberts <ryan.roberts@arm.com>
> ---
> 
> ***NOTE***
> Any confused maintainers may want to read the cover note here for context:
> https://lore.kernel.org/all/20241014105514.3206191-1-ryan.roberts@arm.com/
> 
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index ab7ae418d2948..cc14788f5bb04 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -3553,12 +3553,10 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
>  
>  	if (max_frame <= E1000_RXBUFFER_2048)
>  		adapter->rx_buffer_len = E1000_RXBUFFER_2048;
> -	else
> -#if (PAGE_SIZE >= E1000_RXBUFFER_16384)
> +	else if (PAGE_SIZE >= E1000_RXBUFFER_16384)
>  		adapter->rx_buffer_len = E1000_RXBUFFER_16384;
> -#elif (PAGE_SIZE >= E1000_RXBUFFER_4096)
> +	else if (PAGE_SIZE >= E1000_RXBUFFER_4096)
>  		adapter->rx_buffer_len = PAGE_SIZE;
> -#endif
>  
>  	/* adjust allocation if LPE protects us, and we aren't using SBP */
>  	if (!hw->tbi_compatibility_on &&

