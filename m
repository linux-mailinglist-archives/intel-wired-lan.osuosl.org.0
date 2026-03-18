Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGLuL3/QummfcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:19:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362B2BF30E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:19:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48DFC40BE9;
	Wed, 18 Mar 2026 16:19:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G9-gvD7VvqO0; Wed, 18 Mar 2026 16:19:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 497A040BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773850748;
	bh=JLN1/djnRyiEfWS/tjavuSdshlWrNC7Mv1TvEiDjg9s=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=988u0uDL6gX6g2pekp11u3FYILJf4/CkE9+BfBMhMf1MNVEm9Uo5FdGC7ya+Cu3sm
	 EE27caCnyJRKhXNs2Hw8qtxcBByD85p3ssjvqy+ihCU4SYv8kvY/8JRQxz3OAxSf/w
	 QC1mUu5Ark3j2gWSC9ZfJDSP9rH7OSaRiMflKLArsN+V1ZE12fCxVauwyEszPWk8R2
	 zX8yLeXOXR2x0/fvnm3wfa1qYSWOPYGR3UrzM4kpKasFGlZOAMp59lsBjXw1xKBkoI
	 PNqO193aljitLH68qL6qOZwYiapwZRjyMSJltSNuwQqeuumPvjLBo4kEhAend2vxe2
	 BAI+u8jAFfW/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 497A040BEC;
	Wed, 18 Mar 2026 16:19:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BE091AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D1B260A93
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OAvxxIhJ08Qg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 16:19:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4A6960A73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4A6960A73
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4A6960A73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:19:03 +0000 (UTC)
Received: from [172.20.10.225] (unknown [24.40.138.251])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 731644C2C37F0A;
 Wed, 18 Mar 2026 17:18:33 +0100 (CET)
Message-ID: <f26d4c73-99c3-4252-a880-f9e8eb57bf04@molgen.mpg.de>
Date: Wed, 18 Mar 2026 17:18:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Guangshuo Li <lgs201920130244@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260318155220.642160-1-lgs201920130244@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260318155220.642160-1-lgs201920130244@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] idpf: fix UAF and double free in
 idpf_plug_core_aux_dev() error path
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lgs201920130244@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mpg.de:email];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0362B2BF30E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Guangshuo,


Thank you for your patch.

Am 18.03.26 um 16:52 schrieb Guangshuo Li:
> If auxiliary_device_add() fails, idpf_plug_core_aux_dev() calls
> auxiliary_device_uninit(adev), whose release callback
> idpf_core_adev_release() frees the containing
> struct iidc_rdma_core_auxiliary_dev.
> 
> The current error path then accesses adev->id and later frees iadev
> again, which may lead to a use-after-free and double free.
> 
> Fix it by storing the allocated auxiliary device id in a local
> variable and avoiding direct freeing of iadev after
> auxiliary_device_uninit().
> 
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_idc.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index 6dad0593f7f2..0fcbf9f1ddbb 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -197,6 +197,7 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
>   	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
>   	struct auxiliary_device *adev;
>   	int ret;
> +	int id;

Name it `adev_id`?

>   
>   	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
>   	if (!iadev)
> @@ -211,12 +212,16 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
>   		pr_err("failed to allocate unique device ID for Auxiliary driver\n");
>   		goto err_ida_alloc;
>   	}
> -	adev->id = ret;
> +	id = ret;
> +	adev->id = id;
>   	adev->dev.release = idpf_core_adev_release;
>   	adev->dev.parent = &cdev_info->pdev->dev;
>   	sprintf(name, "%04x.rdma.core", cdev_info->pdev->vendor);
>   	adev->name = name;
>   
> +	/* iadev is owned by the auxiliary device */
> +	iadev = NULL;
> +
>   	ret = auxiliary_device_init(adev);
>   	if (ret)
>   		goto err_aux_dev_init;
> @@ -230,7 +235,7 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
>   err_aux_dev_add:
>   	auxiliary_device_uninit(adev);
>   err_aux_dev_init:
> -	ida_free(&idpf_idc_ida, adev->id);
> +	ida_free(&idpf_idc_ida, id);
>   err_ida_alloc:
>   	cdev_info->adev = NULL;
>   	kfree(iadev);

Ether way:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
