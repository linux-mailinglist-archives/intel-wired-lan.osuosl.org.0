Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BE69A0D16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 16:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D306811F7;
	Wed, 16 Oct 2024 14:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BiYkTR0GSE8L; Wed, 16 Oct 2024 14:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79135811F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729089870;
	bh=/gievmNSp6gcEhgMsU62ZBHjqoa5a15h27lVU/uD/8U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PdkoLhpL8lAF2wY3QgDmRKfdTEeuVF9ZRtPm1vymB5vm7ZOI9x+rpQrvzBtc95otH
	 5MU6J3YC/WhyCoi5RNolWwi52Qr1PpsGMf4FDrHj7HMREqnKIVrRYUmFx1qGEeyNKW
	 sRBu4JG2yPhUGZqQCfhZlbpR11SQvAspwAD8t0JlCwd9OjRb/RxcO0T3jJnUagch9v
	 5nYa7t4ZM3aO8ihnJp6k9wZRaj4CXnOX0CRQ8yHkzJCTj8n+c59gcBO42x4QYKcA0W
	 VP8J8V5spLj/33C3wWkbYNqo9Um6gTdcLZUI+quTjRK5874gua+//Ki+WHaWaCjV3/
	 Dc54S/C994yFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79135811F9;
	Wed, 16 Oct 2024 14:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BED127E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 14:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0663240491
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 14:44:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UJUiBTpVnyNy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 14:44:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172;
 helo=foss.arm.com; envelope-from=ryan.roberts@arm.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D4C5740201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4C5740201
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4C5740201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 14:44:26 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E13BF1007;
 Wed, 16 Oct 2024 07:44:55 -0700 (PDT)
Received: from [10.1.28.177] (XHFQ2J9959.cambridge.arm.com [10.1.28.177])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84AB63F71E;
 Wed, 16 Oct 2024 07:44:22 -0700 (PDT)
Message-ID: <6463a9f9-76ee-48bc-9173-75b220fcb3ac@arm.com>
Date: Wed, 16 Oct 2024 15:44:20 +0100
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
 <20241014105912.3207374-28-ryan.roberts@arm.com>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <20241014105912.3207374-28-ryan.roberts@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arm.com
Subject: Re: [Intel-wired-lan] [RFC PATCH v1 28/57] net: igbvf: Remove
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
>  drivers/net/ethernet/intel/igbvf/netdev.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 925d7286a8ee4..2e11d999168de 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c
> @@ -2419,12 +2419,10 @@ static int igbvf_change_mtu(struct net_device *netdev, int new_mtu)
>  		adapter->rx_buffer_len = 1024;
>  	else if (max_frame <= 2048)
>  		adapter->rx_buffer_len = 2048;
> -	else
> -#if (PAGE_SIZE / 2) > 16384
> +	else if ((PAGE_SIZE / 2) > 16384)
>  		adapter->rx_buffer_len = 16384;
> -#else
> +	else
>  		adapter->rx_buffer_len = PAGE_SIZE / 2;
> -#endif
>  
>  	/* adjust allocation if LPE protects us, and we aren't using SBP */
>  	if ((max_frame == ETH_FRAME_LEN + ETH_FCS_LEN) ||

