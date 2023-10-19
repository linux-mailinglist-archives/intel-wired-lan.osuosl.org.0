Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D027CF22F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 10:15:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFDCC6FB03;
	Thu, 19 Oct 2023 08:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFDCC6FB03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697703324;
	bh=Jw1DkMAyMzg1QntlemvI3CZGfiaLit1hUygZsFnxKCE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LO1nDbPZmZcfQA2rq2pygf1uEzFD7P/JGz9hMee4luZWdY/tGdPZMGhTC39zHtfuN
	 l59RiUMuXQHTlAcneU1SXKIM/BFXHjRM3XlZzUR4JXth+jFBpf4j+xYK3fn735ms6b
	 QOtai8CvmQRzYgFj/iEmJwEcisW2251Lriq1DDs2vl8gR8596PtV4F6p+4v7GTWaJo
	 TuAFkLP66MvPs3KBfrgp/UipOtWuJwu6h6I0yXqCj1kFHZx8r5znhWwOKXCUGXSWZq
	 /JJJq80adXqdyqIQs3q6R+T8MC+V8UG9popid8s1ctedfSjYnLraoIQYfWas1+0xJ3
	 9ORQqDaphStBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WhzfPtHeeE37; Thu, 19 Oct 2023 08:15:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E9246FB01;
	Thu, 19 Oct 2023 08:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E9246FB01
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76CAB1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 08:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E42A6FB01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 08:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E42A6FB01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JU7o-ZTydOKf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 08:15:16 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C90360B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 08:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C90360B8C
Received: from [10.0.101.84] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CD71A61E5FE01;
 Thu, 19 Oct 2023 10:14:52 +0200 (CEST)
Message-ID: <5fe36894-5554-4861-8119-e013b80583b9@molgen.mpg.de>
Date: Thu, 19 Oct 2023 10:14:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>
References: <20231019071346.55949-1-mschmidt@redhat.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231019071346.55949-1-mschmidt@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: initialize waitqueues
 before starting watchdog_task
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Michal,


Am 19.10.23 um 09:13 schrieb Michal Schmidt:
> It is not safe to initialize the waitqueues after queueing the
> watchdog_task. It will be using them.
> 
> The chance of this causing a real problem is very small, because
> there will be some sleeping before any of the waitqueues get used.
> I got a crash only after inserting an artificial sleep in iavf_probe.
> 
> Queue the watchdog_task as the last step in iavf_probe. Add a comment to
> prevent repeating the mistake.
> 
> Fixes: fe2647ab0c99 ("i40evf: prevent VF close returning before state transitions to DOWN")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6a2e6d64bc3a..5b5c0525aa13 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4982,8 +4982,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	INIT_WORK(&adapter->finish_config, iavf_finish_config);
>   	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
>   	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
> -	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
> -			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
>   
>   	/* Setup the wait queue for indicating transition to down status */
>   	init_waitqueue_head(&adapter->down_waitqueue);
> @@ -4994,6 +4992,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* Setup the wait queue for indicating virtchannel events */
>   	init_waitqueue_head(&adapter->vc_waitqueue);
>   
> +	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
> +			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
> +	/* Initialization goes on in the work. Do not add more of it below. */
>   	return 0;
>   
>   err_ioremap:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
