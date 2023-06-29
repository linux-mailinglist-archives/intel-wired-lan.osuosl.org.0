Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8687420C2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 09:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3602141581;
	Thu, 29 Jun 2023 07:07:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3602141581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688022474;
	bh=l8b6YTcucr8EEdkrgx8VeQtwARqD0gNvbcFJfQE7Pf8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ip8RMD0hxuBDAERd+OIjfGfj8OMMe9N5V78IJpEDIypWgkp95SGCsLq4UiMCtJWWf
	 qjqDzdbkGCp3sLUoUmyAEQYkYdhDHDdocVCbiLH2ft7hVeG9rtwpxM6EJYtkOV5yk0
	 P8/WHG2jnflgOAcOitqc+5iUL+yqd1EdP3UC7jdUDnEwrX71zggyVWHTC8f7GlpOsK
	 QUb6+7arh3SWUSFlYgK5NizqCGlatUDC7wdRxvATSpXBUmSJL7x3Dtzp00pGceNKO/
	 is7yRw9FgBnhVSTctvGctrVm1dgBHfi13MTgFoBL2eN7VSjnmMQdzR4DFFeQnUaQfK
	 zebCB0OBsXxmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOq0Kii8_4sg; Thu, 29 Jun 2023 07:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 918DB41624;
	Thu, 29 Jun 2023 07:07:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 918DB41624
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7E821BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 07:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCEF781E3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 07:07:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCEF781E3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJ3a5imLoDTm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 07:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 016B681E3F
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 016B681E3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 07:07:43 +0000 (UTC)
Message-ID: <b64dc5c7-600c-66db-d125-2d747a21c1d8@linutronix.de>
Date: Thu, 29 Jun 2023 09:07:40 +0200
MIME-Version: 1.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vedang Patel <vedang.patel@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, Simon Horman <simon.horman@corigine.com>
References: <20230628091148.62256-1-florian.kauer@linutronix.de>
 <87a5wjqnjk.fsf@intel.com>
From: Florian Kauer <florian.kauer@linutronix.de>
In-Reply-To: <87a5wjqnjk.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1688022461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uYKNMkC/e+EOiXeiis2Yv6NPhSLq1jyIWmFHBR4MTyo=;
 b=rCwVstUWg5fN/FdCzmGYqSASXpxhRHT+gCl5DHf9/rhTbngXszmfvJwWfcvL1zrCCc2Ejk
 ZwmVkxUh3PJC0ESM7DWY7IKrcAclzBFMp50cKHsQDF7J53hd4l+fa37ySK71rRuWtBYz2f
 avwejKEusPI5faNbTQN8FqCTdDO6Jm31WmFhG1+7KJeGQxt6oZJPTo12S6KZeJz71giBB/
 eEvAMIi+2vvxFNGEfPlx8Bi0vveNvvE9IQHwp7SZwPnggLf/ahmrY9chZIGFOfWWs5EBYQ
 q6DiQoOribKDkJKtZbf46MAT+c3QYrsWHRByk6ijYsC0irH+CbiRKiD4nWUDqw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1688022461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uYKNMkC/e+EOiXeiis2Yv6NPhSLq1jyIWmFHBR4MTyo=;
 b=+Ot956sT7XnMLaiu4aDJD905nJStIalGNQcLZn7ixdjhgopMiyA1f+LMH57VaK5VGYSaBT
 sXtukp/7Sn7gsSAw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=rCwVstUW; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=+Ot956sT
Subject: Re: [Intel-wired-lan] [PATCH net v2] igc: Prevent garbled TX queue
 with XDP ZEROCOPY
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

On 28.06.23 23:34, Vinicius Costa Gomes wrote:
> Florian Kauer <florian.kauer@linutronix.de> writes:
> 
>> In normal operation, each populated queue item has
>> next_to_watch pointing to the last TX desc of the packet,
>> while each cleaned item has it set to 0. In particular,
>> next_to_use that points to the next (necessarily clean)
>> item to use has next_to_watch set to 0.
>>
>> When the TX queue is used both by an application using
>> AF_XDP with ZEROCOPY as well as a second non-XDP application
>> generating high traffic, the queue pointers can get in
>> an invalid state where next_to_use points to an item
>> where next_to_watch is NOT set to 0.
>>
>> However, the implementation assumes at several places
>> that this is never the case, so if it does hold,
>> bad things happen. In particular, within the loop inside
>> of igc_clean_tx_irq(), next_to_clean can overtake next_to_use.
>> Finally, this prevents any further transmission via
>> this queue and it never gets unblocked or signaled.
>> Secondly, if the queue is in this garbled state,
>> the inner loop of igc_clean_tx_ring() will never terminate,
>> completely hogging a CPU core.
>>
>> The reason is that igc_xdp_xmit_zc() reads next_to_use
>> before acquiring the lock, and writing it back
>> (potentially unmodified) later. If it got modified
>> before locking, the outdated next_to_use is written
>> pointing to an item that was already used elsewhere
>> (and thus next_to_watch got written).
>>
>> Fixes: 9acf59a752d4 ("igc: Enable TX via AF_XDP zero-copy")
>> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
>> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>> Tested-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
> 
> This patch doesn't directly apply because there's a small conflict with
> commit 95b681485563 ("igc: Avoid transmit queue timeout for XDP"),
> but really easy to solve.
> 
> Anyway, good catch:
> 
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

I am sorry, that was bad timing. I prepared the initial patch on Friday and overlooked the merge.
Shall I send a v3 or will someone else take care of the conflict resolution?

Greetings,
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
