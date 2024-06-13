Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2B59079C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 19:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A92E40339;
	Thu, 13 Jun 2024 17:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eAFWg4NMTh3p; Thu, 13 Jun 2024 17:23:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 841174143E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718299404;
	bh=5WFMjgfYhuFvBJ+W1GftQQK25FmgOFYdQVS079V1xmg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZKDjBoNNaVl37pNWZqC4Uzh1XJxVW+5+WQNAQzsWwKgcZ5gCmUn/GiGpj2E+b/3lW
	 q/bipPEkN9pImn1pieX2iY/L+EHYwLn3t3PG1JZN87n17KBFy3oklDENO7InlP21zc
	 eZJ43AqGaOri3ulsllExUilRF39T7c8p626c2XJg5x8CdS9qmsxzS58LvNfTHAg5au
	 UQeOIfWkLOzfcp0RwzCoK17NNZYqu/20UrEEOIbfEgtvRqAckPMsNplSpHmTsY1rgV
	 MtuA0K5YJmXKgBcP0ePxvmbu2duI+fLhp/srSQUHjc+sP1K/2ul9tS0gphuIFqwtCN
	 r4kpM0XHWU7gQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 841174143E;
	Thu, 13 Jun 2024 17:23:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31FA41BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 17:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D81F40946
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 17:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kT85yadi1oxa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 17:23:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08827402AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08827402AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08827402AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 17:23:20 +0000 (UTC)
X-CSE-ConnectionGUID: bMCZxDy7TFS6FY29l45N0A==
X-CSE-MsgGUID: tePmbaBBTyuknlns3+inqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="14872182"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="14872182"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 10:22:36 -0700
X-CSE-ConnectionGUID: hHZs3CiiRqyGTWeE/3mU9w==
X-CSE-MsgGUID: 5kLqhRwWRm6CdGteSgRC1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40078523"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.223.58])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 10:22:35 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
In-Reply-To: <20240613062426.Om5bQpR3@linutronix.de>
References: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
 <87sexi2b7i.fsf@intel.com> <20240613062426.Om5bQpR3@linutronix.de>
Date: Thu, 13 Jun 2024 10:22:35 -0700
Message-ID: <87ikycwyec.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718299401; x=1749835401;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e6rKQpRlmAH1EX8gKCOUsRHowPiyIj3aOyUvXvTlxw8=;
 b=b3mFxOZt50n83fVSG/KnWaySaCmJC6/xMy7D7Jf2ZFp7HRbeHaOxO3xY
 qjx6s7658BStUBz+wBV7xM3CRrwxo8E41P52xrqOn67/JcOYtmwXCcZwS
 JQ8sEEcpwLrCrC7i8IidEQQ6LyRkpMVhZuCK5RqUFynPH8zHQsUS3909P
 99n1LXAGpQ5oQjQjTYYnvFtTmZ4tlyaY0T+gtKEtx6QuAGaSmRvuYbmtM
 rdcV5p1R/9udGds7BnOFUyy4VYHrZ79kzSLWQyrTZp/q8HyuIIofgk9Av
 lmp7vq7qZU/0vIaVyYcKt8tBjX8kHi+2rDb4BqCpX1IZAorqDOSqfufkO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b3mFxOZt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Get rid of spurious
 interrupts
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sebastian Andrzej Siewior <bigeasy@linutronix.de> writes:

> On 2024-06-12 12:49:21 [-0700], Vinicius Costa Gomes wrote:
>> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> > index 305e05294a26..e666739dfac7 100644
>> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> > @@ -5811,11 +5815,23 @@ static void igc_watchdog_task(struct work_struct *work)
>> >  	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
>> >  		u32 eics = 0;
>> >  
>> > -		for (i = 0; i < adapter->num_q_vectors; i++)
>> > -			eics |= adapter->q_vector[i]->eims_value;
>> > -		wr32(IGC_EICS, eics);
>> > +		for (i = 0; i < adapter->num_q_vectors; i++) {
>> > +			struct igc_ring *rx_ring = adapter->rx_ring[i];
>> > +
>> > +			if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
>> 
>> Minor and optional: I guess you can replace test_bit() -> clear_bit()
>> with __test_and_clear_bit() here and below.
>
> That are two steps, first test+clear is merged into one and then __ is
> added. The former is doable but it will always lead to a write operation
> while in the common case the flag isn't set so it will be skipped.
> Adding the __ leads to an unlocked operation and I don't see how this is
> synchronized against the other writes. In fact, nobody else is doing it.
>

I just took a look at the available operations, and thought that this
one could save a few lines of code. But didn't think too deeply about
that. Thanks.


Cheers,
-- 
Vinicius
