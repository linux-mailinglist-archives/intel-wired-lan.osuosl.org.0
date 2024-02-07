Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD5184CC2D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 14:57:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF96E40320;
	Wed,  7 Feb 2024 13:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6kOhIhdU4r9v; Wed,  7 Feb 2024 13:57:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 826D040342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707314249;
	bh=BOYK+82yGzIKU8yYT0XwUz/WbF1TF9+/dmqGrNc2hhE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NnBarPQCygYaJd7xKxg5xMz12uBoVGbRpq3ETsovZtFuNgNtEcoCpbsd1yqqmNHIU
	 Hp62bE/Cioh70rYHh+6LsyxdkcpwOLe+7+LJ3wz26fUr5Y+S2e/08pQIszTq273W/m
	 DzQ4qexKK1DfU1LwlgJNTicL+ZAXueOMQuKRrBbZ7S7pjXGkly7qPC8CqEdYvnn/LC
	 i+cpsOOXGgOKAOHksWO6I9Aei4w/ZG3Tb0E2ALYwJ648Xnk1mZZxaSSXWMDYNgO84q
	 rUjPjSMVPX4UxzoRQeZ3bcfJfGZToktcOMtH4+O0mua7o7i44Ak+yIRYZFvKfv7tl7
	 5Wd+oPJAtUHiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 826D040342;
	Wed,  7 Feb 2024 13:57:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02C3F1BF289
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 13:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0BD3403F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 13:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Bjd2dCl7SO2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 13:57:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 59345400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59345400DC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59345400DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 13:57:23 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-562-SxQE5mJGP3aGiHdmtW_77A-1; Wed, 07 Feb 2024 08:57:16 -0500
X-MC-Unique: SxQE5mJGP3aGiHdmtW_77A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57DCB84ACA0;
 Wed,  7 Feb 2024 13:57:16 +0000 (UTC)
Received: from [10.45.225.55] (unknown [10.45.225.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 191332026D06;
 Wed,  7 Feb 2024 13:57:14 +0000 (UTC)
Message-ID: <63233433-0608-47df-93fc-36487a91148a@redhat.com>
Date: Wed, 7 Feb 2024 14:57:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
 <20240206124132.636342-3-maciej.fijalkowski@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20240206124132.636342-3-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1707314242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BOYK+82yGzIKU8yYT0XwUz/WbF1TF9+/dmqGrNc2hhE=;
 b=RkeAect5GQ118TPQij6J6X6dniFBs01EwX7w/oB94WwteazFBmq/4B2p4z00hbfo9G+mS4
 fPgv9P6r/1uqvSvT5Y9MM/clcsucUdTW7Vasl1wkVwyIEQFlvSTNBSafkHP2mZbdoYsS04
 D1N4RORdlZ/MMEVMIZrpBlzwvQ2LaEY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=RkeAect5
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/2] i40e: take into
 account XDP Tx queues when stopping rings
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
Cc: magnus.karlsson@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Seth Forshee <sforshee@kernel.org>,
 Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06. 02. 24 13:41, Maciej Fijalkowski wrote:
> Seth reported that on his side XDP traffic can not survive a round of
> down/up against i40e interface. Dmesg output was telling us that we were
> not able to disable the very first XDP ring. That was due to the fact
> that in i40e_vsi_stop_rings() in a pre-work that is done before calling
> i40e_vsi_wait_queues_disabled(), XDP Tx queues were not taken into the
> account.
> 
> To fix this, let us distinguish between Rx and Tx queue boundaries and
> take into the account XDP queues for Tx side.
> 
> Reported-by: Seth Forshee <sforshee@kernel.org>
> Closes: https://lore.kernel.org/netdev/ZbkE7Ep1N1Ou17sA@do-x1extreme/
> Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
> Tested-by: Seth Forshee <sforshee@kernel.org>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 14 ++++++++------
>   1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 2c46a5e7d222..bf1b32a15b5e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4926,21 +4926,23 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
>   void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
>   {
>   	struct i40e_pf *pf = vsi->back;
> -	int pf_q, q_end;
> +	u32 pf_q, tx_q_end, rx_q_end;
>   
>   	/* When port TX is suspended, don't wait */
>   	if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
>   		return i40e_vsi_stop_rings_no_wait(vsi);
>   
> -	q_end = vsi->base_queue + vsi->num_queue_pairs;
> -	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
> -		i40e_pre_tx_queue_cfg(&pf->hw, (u32)pf_q, false);
> +	tx_q_end = vsi->base_queue +
> +		vsi->alloc_queue_pairs * (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);
> +	for (pf_q = vsi->base_queue; pf_q < tx_q_end; pf_q++)
> +		i40e_pre_tx_queue_cfg(&pf->hw, pf_q, false);
>   
> -	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
> +	rx_q_end = vsi->base_queue + vsi->num_queue_pairs;
> +	for (pf_q = vsi->base_queue; pf_q < rx_q_end; pf_q++)
>   		i40e_control_rx_q(pf, pf_q, false);
>   
>   	msleep(I40E_DISABLE_TX_GAP_MSEC);
> -	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
> +	for (pf_q = vsi->base_queue; pf_q < tx_q_end; pf_q++)
>   		wr32(&pf->hw, I40E_QTX_ENA(pf_q), 0);
>   
>   	i40e_vsi_wait_queues_disabled(vsi);

Reviewed-by: Ivan Vecera <ivecera@redhat.com>

