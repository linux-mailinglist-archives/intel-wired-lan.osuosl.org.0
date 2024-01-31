Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6E1843885
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 09:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BF9D41F0A;
	Wed, 31 Jan 2024 08:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BF9D41F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706688539;
	bh=dAzbfay7tH5ClcidHQcXI2nXZ5PR8svtwfBNceerAXE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c84BT/6gOyytkyTiodUGnxE2zuxsJJwJT6ylCG6Urw6tamV62fGS3UFrSxDy3vIbt
	 f+qZU3upKrzOC2HLg0mRCfAck0d9JcYZVP2XQ11e0nGmpEn2sIWEY+j4UP/s3USlB6
	 amD1aKWAOnAolzS4cKJnn2gbBoJzvs8b6UT72UrzkJok0AeJYh9Qt+Tk43iRhrkQqD
	 aRiwsVq8AIIdmZGbBtrFc1IgHqj9PKxkQGG6FPKTO8kQtJ6yoL2YOVzAa7UOt5sI6C
	 fLF1x4OWgHxQ660RFlqAxWxf3G+nIU5AuEz0eiqg/uOSD7vm1/UlHtmTm3spVU2I6e
	 0nSfm6q/g9Xuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5T8zlsWuk3yV; Wed, 31 Jan 2024 08:08:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A5D44191F;
	Wed, 31 Jan 2024 08:08:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A5D44191F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24C261BF325
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF824813AD
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF824813AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oSf3FHnU_GZ5 for <intel-wired-lan@osuosl.org>;
 Wed, 31 Jan 2024 08:08:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F0B4812B8
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F0B4812B8
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-303-LvIbOO4IPMSV_iObOMXXZA-1; Wed,
 31 Jan 2024 03:08:48 -0500
X-MC-Unique: LvIbOO4IPMSV_iObOMXXZA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E74A3C10141
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:08:48 +0000 (UTC)
Received: from [10.45.225.38] (unknown [10.45.225.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1EF1C8B
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:08:48 +0000 (UTC)
Message-ID: <009c90e8-74ec-45d3-a61f-8701a7f6ffaf@redhat.com>
Date: Wed, 31 Jan 2024 09:08:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@osuosl.org
References: <20230726204351.3808746-1-aleksandr.loktionov@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230726204351.3808746-1-aleksandr.loktionov@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1706688530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dAzbfay7tH5ClcidHQcXI2nXZ5PR8svtwfBNceerAXE=;
 b=FV2rF+YJ89oYkMzerU4VeVguJXEfsGBT6sYdyNByWINrPdp42LUjBV4XplYghi2sWVOfa0
 Gv5Og4b2b5pARFHZpz0IUyW/0+JNOlE0LvbCl8wKKL5jFW8KscgI+CIg6PB6cGA/2aZZTG
 07hA6XxdWegt7zkuEWsRn5qRY/YJDuo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FV2rF+YJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix livelocks in
 i40e_reset_subtask()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 26. 07. 23 22:43, Aleksandr Loktionov wrote:
> Fix livelocks by acquiring rtnl_lock() before any reset related operations.
> Add rtnl_lock()/rtnl_unlock() at top/bottom of i40e_reset_subtask()
> Add check for __I40E_RESET_INTR_RECEIVED bit.
> Add re-entry guard by fast return in case reset is already in progress.
> 
> Fixes: 373149fc99a0 ("i40e: Decrease the scope of rtnl lock")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v3->v4 fix | position in the code
> v2->v3 fix typo in the commit message
> v1->v2 * apply on https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git
> ---
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 39 +++++++++++----------
>   1 file changed, 20 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 7c30abd..164f7c6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10011,42 +10011,44 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
>   {
>   	u32 reset_flags = 0;
>   
> -	if (test_bit(__I40E_REINIT_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_REINIT_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_REINIT_REQUESTED);
> -		clear_bit(__I40E_REINIT_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_PF_RESET_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_PF_RESET_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_PF_RESET_REQUESTED);
> -		clear_bit(__I40E_PF_RESET_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_CORE_RESET_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_CORE_RESET_REQUESTED);
> -		clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_GLOBAL_RESET_REQUESTED);
> -		clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_DOWN_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_DOWN_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_DOWN_REQUESTED);
> -		clear_bit(__I40E_DOWN_REQUESTED, pf->state);
> -	}
> +	if (test_and_clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> +		reset_flags |= BIT(__I40E_RESET_INTR_RECEIVED);
> +
> +	if (!(reset_flags & (BIT(__I40E_PF_RESET_REQUESTED) |
> +			     BIT(__I40E_CORE_RESET_REQUESTED) |
> +			     BIT(__I40E_GLOBAL_RESET_REQUESTED) |
> +			     BIT(__I40E_RESET_INTR_RECEIVED))))
> +		return;
> +
> +	rtnl_lock();
>   
>   	/* If there's a recovery already waiting, it takes
>   	 * precedence before starting a new reset sequence.
>   	 */
> -	if (test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
> +	if (reset_flags & BIT(__I40E_RESET_INTR_RECEIVED)) {
>   		i40e_prep_for_reset(pf);
>   		i40e_reset(pf);
> -		i40e_rebuild(pf, false, false);
> +		i40e_rebuild(pf, false, true);
>   	}
>   
>   	/* If we're already down or resetting, just bail */
>   	if (reset_flags &&
>   	    !test_bit(__I40E_DOWN, pf->state) &&
>   	    !test_bit(__I40E_CONFIG_BUSY, pf->state)) {
> -		i40e_do_reset(pf, reset_flags, false);
> +		i40e_do_reset(pf, reset_flags, true);
>   	}
> +
> +	rtnl_unlock();
>   }
>   
>   /**
> @@ -10694,7 +10696,6 @@ static void i40e_prep_for_reset(struct i40e_pf *pf)
>   	int ret = 0;
>   	u32 v;
>   
> -	clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
>   	if (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
>   		return;
>   	if (i40e_check_asq_alive(&pf->hw))

Tony, why this is marked in IWL patchwork as ChangesRequested? There 
were no comments and the patch disappeared from dev-queue. Are you 
planning to process it?

Thanks,
Ivan

