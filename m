Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC9E3A2451
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 08:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90E748322A;
	Thu, 10 Jun 2021 06:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7t1rZbYw1lj; Thu, 10 Jun 2021 06:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93F4E82E3B;
	Thu, 10 Jun 2021 06:14:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EB431BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 06:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F14C740106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 06:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KclHmD5UcmXw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 06:14:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C9D1400E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 06:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623305669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Lv4Eaejcew4W8Qkm3ITMcJV8oD1jcgCbRz9ntqC+YlM=;
 b=VpSmF+QSPahfPm92B4/8O3LM8Y3nonr0FgeA+5CrI++Og/cLH8bAPGWoD3LTc99lQesuyI
 8TLDyvmf7F6X9JRA9zfF6T7lHNN7G8sp84MrP/laamgiw4nMeCe6DzFZARrJRGJkG9129t
 e8FPk07KlpWUbaBmLoe8BQHTOv4pXUE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-78MVlWPyOUes3PJZ1om-vw-1; Thu, 10 Jun 2021 02:14:25 -0400
X-MC-Unique: 78MVlWPyOUes3PJZ1om-vw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 529608049C5;
 Thu, 10 Jun 2021 06:14:24 +0000 (UTC)
Received: from p50 (ovpn-112-23.ams2.redhat.com [10.36.112.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 66E2E10016F4;
 Thu, 10 Jun 2021 06:14:23 +0000 (UTC)
Date: Thu, 10 Jun 2021 08:14:21 +0200
From: Stefan Assmann <sassmann@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20210610061421.ztmmqwnoybprgyut@p50>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-5-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
In-Reply-To: <20210604165335.33329-5-anthony.l.nguyen@intel.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/15] iavf: untangle any
 pending iavf_open() operations from iavf_close()
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-06-04 09:53, Tony Nguyen wrote:
> From: Nicholas Nunley <nicholas.d.nunley@intel.com>
> 
> When the iavf interface is opened some of the steps necessary to
> configure the hardware require communication with the PF driver. Since
> these operations involve waiting for a response from the PF driver they can
> be time-consuming, so the iavf driver schedules them for later and
> proceeds with the remaining configuration. If the interface is closed
> immediately after it is opened then some of these operations may still be
> pending, although the iavf_close() routine assumes they have all
> completed. In rare cases this can lead to iavf_open() configuration
> operations completing after iavf_close(), which can mean the device
> interrupts and/or DMA engine are active on a disabled interface.
> 
> To fix this:
> 1. In iavf_close() any pending unsent operations from iavf_open() are
> canceled.
> 2. If the operation was already sent by the time iavf_close() is called,
> but the driver is still awaiting the response back from the PF driver, then
> ignore the response if it is received when the interface is down instead of
> handling it in the usual manner.
> 3. Place a lock around the handling of all PF driver responses to ensure
> that these can't conflict with concurrent processing of iavf_open() and
> iavf_close(), or the other configuration tasks. In essence change (2)
> above protects against unexpected responses received after iavf_close(),
> and this change protects against responses received during iavf_close().
> 
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 10 ++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  3 ++-
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 91818ba7c8a3..eda8ebb8e7b8 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1025,6 +1025,12 @@ void iavf_down(struct iavf_adapter *adapter)
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> +		/* In case the queue configure or enable operations are still
> +		 * pending from when the interface was opened, make sure
> +		 * they're canceled here.
> +		 */
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_ENABLE_QUEUES;
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES;
>  	}
>  
>  	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
> @@ -2325,8 +2331,12 @@ static void iavf_adminq_task(struct work_struct *work)
>  		if (ret || !v_op)
>  			break; /* No event to process or error cleaning ARQ */
>  
> +		while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
> +					&adapter->crit_section))
> +			usleep_range(500, 1000);
>  		iavf_virtchnl_completion(adapter, v_op, v_ret, event.msg_buf,
>  					 event.msg_len);
> +		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);

This has potential to cause a deadlock. Please see my patch from about 3
months ago [1] which fixes the locking here and elsewhere. Also adds
a timeout and prints a warning just in case.
I'm glad you recognized the problem so I'd say it's finally time to give
that 3 months old patch the attention it deserves.

  Stefan

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20210316100141.53551-1-sassmann@kpanic.de/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
