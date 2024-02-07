Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A810684CC27
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 14:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4342140342;
	Wed,  7 Feb 2024 13:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VorNzm-SIzXZ; Wed,  7 Feb 2024 13:57:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09A0840320
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707314233;
	bh=SJWbOOPpNp6pIwb5DBnwYalBOWA2pdGW/NlT+/6riTc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NGno9ywIar39JrCF59XsxlhfG8bS7cgYaXbQ4ArMTUlKK3NqnzZYKtNAcjLK3XByC
	 tdZZ/cEvYunTsy1YvDKGl/4HVTmekCLXvO/YX78K7N3PrkwCrd6DTvoyg0oQ6H6l53
	 9D119tT9VU+YQyflzYb+Yeuq9Tw39dmpLNmOWcddb5eW0aTFmCJvryQdldaVbA+aYJ
	 JFrrZgcF51JyqS4jmaLfszBR74mLSmo8jHm2LyelvyafrgdLyUjVhfSXz2YZSA6wWF
	 1zHRpuNRkwWP+VPunHhZDoJVGQC2PctLX9NGjRNQW6PMGxwnJvefWBjqMUmWWxGfB+
	 /6rADfKtity0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09A0840320;
	Wed,  7 Feb 2024 13:57:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 908A51BF289
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 13:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 892FC60A80
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 13:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DF-U8VmsYDsy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 13:57:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CBF9E60035
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBF9E60035
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBF9E60035
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 13:57:09 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-297-PWcOvnFoN2SfCsupwSLdbQ-1; Wed, 07 Feb 2024 08:57:03 -0500
X-MC-Unique: PWcOvnFoN2SfCsupwSLdbQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99BAB84ACA3;
 Wed,  7 Feb 2024 13:57:02 +0000 (UTC)
Received: from [10.45.225.55] (unknown [10.45.225.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B19DA2026D06;
 Wed,  7 Feb 2024 13:57:01 +0000 (UTC)
Message-ID: <0294ada0-b0ae-47ea-8b58-247c916468dd@redhat.com>
Date: Wed, 7 Feb 2024 14:57:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
 <20240206124132.636342-2-maciej.fijalkowski@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20240206124132.636342-2-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1707314228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SJWbOOPpNp6pIwb5DBnwYalBOWA2pdGW/NlT+/6riTc=;
 b=frf8PIrOJ9jj6ECGgVbxVhP08D5UYaGcfL4MTLu/niOupnbAJgjfofNSnACBG0ov4D2t5X
 9213VBLaTrM+5iMQiBJU3nv60Xltkf3dEfX+Qm/3JqJPy1Cbw0D+yum7EnYeBnz5Gg8dCN
 2X8YcovFEnxUE9C6m5qs7cF6QvcfVw0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=frf8PIrO
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] i40e: avoid double
 calling i40e_pf_rxq_wait()
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06. 02. 24 13:41, Maciej Fijalkowski wrote:
> Currently, when interface is being brought down and
> i40e_vsi_stop_rings() is called, i40e_pf_rxq_wait() is called two times,
> which is wrong. To showcase this scenario, simplified call stack looks
> as follows:
> 
> i40e_vsi_stop_rings()
> 	i40e_control wait rx_q()
> 		i40e_control_rx_q()
> 		i40e_pf_rxq_wait()
> 	i40e_vsi_wait_queues_disabled()
> 		i40e_pf_rxq_wait()  // redundant call
> 
> To fix this, let us s/i40e_control_wait_rx_q/i40e_control_rx_q within
> i40e_vsi_stop_rings().
> 
> Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6e7fd473abfd..2c46a5e7d222 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4926,7 +4926,7 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
>   void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
>   {
>   	struct i40e_pf *pf = vsi->back;
> -	int pf_q, err, q_end;
> +	int pf_q, q_end;
>   
>   	/* When port TX is suspended, don't wait */
>   	if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
> @@ -4936,16 +4936,10 @@ void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
>   	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
>   		i40e_pre_tx_queue_cfg(&pf->hw, (u32)pf_q, false);
>   
> -	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++) {
> -		err = i40e_control_wait_rx_q(pf, pf_q, false);
> -		if (err)
> -			dev_info(&pf->pdev->dev,
> -				 "VSI seid %d Rx ring %d disable timeout\n",
> -				 vsi->seid, pf_q);
> -	}
> +	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
> +		i40e_control_rx_q(pf, pf_q, false);
>   
>   	msleep(I40E_DISABLE_TX_GAP_MSEC);
> -	pf_q = vsi->base_queue;
>   	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
>   		wr32(&pf->hw, I40E_QTX_ENA(pf_q), 0);
>   
Reviewed-by: Ivan Vecera <ivecera@redhat.com>

