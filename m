Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E353E49FC45
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 15:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 788AA40938;
	Fri, 28 Jan 2022 14:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7dPuQQZ-Rq7s; Fri, 28 Jan 2022 14:59:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11AE1409D6;
	Fri, 28 Jan 2022 14:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 583C71BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 14:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 539D38316A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 14:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nx3qtdau3dDw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 14:59:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4715B8302F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 14:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643381966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vf/MpADH50EAnFeFGpweGUAuJ950p0KggncdtaYhEyM=;
 b=AXWTaOtFEZzKvb7lEhZ1kmE3ArqyjdGDamfyuGIp1NlIZpWZCNjps1ruWgOFE9N1wB1ki7
 bx542odrRhF29lMNfoiP27mg4zXhGUCF3pPKAP3roqBZr4eo6Qs1/NIISlt8oIG6uMzYfb
 Sq3WL15ALHYscFrA07Qvwon6qL1ZI3M=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-pYu1PdgoPt2809s_Zrg5jA-1; Fri, 28 Jan 2022 09:59:25 -0500
X-MC-Unique: pYu1PdgoPt2809s_Zrg5jA-1
Received: by mail-qv1-f69.google.com with SMTP id
 3-20020ad45b83000000b00423e8603906so6314774qvp.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 06:59:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vf/MpADH50EAnFeFGpweGUAuJ950p0KggncdtaYhEyM=;
 b=qGNoA/hFAT+S8Ta19jDnQ+zuduuMNNUl77R+W9SURedrnRCJMnc6eycoxN4ZD44nWm
 XJrbe+v8vHvtX8+hFGoiIIbQjT1lArxr8IGPf1fWYVrywmZ4bcuXxwanOzkRoY+9ADJZ
 /rn4BsHQhPNDL8WiQU18VjyoBVOEATya4wMt9aFoPeD0GMP2fNh1RWi3wqafacrL/YlZ
 fz2VQOPziTYk0466t3xp9JSfiIxLVDNqGphAhp619UqQ1j43wzuArjy2h0LFrHrbaRd7
 GMvytIsUHylhCKcHIVTF/YIHxw1s3RneMHkjE8ZNWJjzbvtgig9OVIjkxpitykRJeXJL
 ZMag==
X-Gm-Message-State: AOAM531Xvhgou7Be+g4ibDp6vNnkV6cAJ2v3vjdFhxhiiVyxVMsISVmt
 tQ/p41TODbdnp+ScDHt/bLnlXxek8gk4AJN1RmNSLH3mYwa6JbEjrHDJGkikqtMKc+BEOVSBhU5
 Upy4eSD5J2OVAne+zYTbXkFssmgb8qw==
X-Received: by 2002:a37:270a:: with SMTP id n10mr6054494qkn.422.1643381964419; 
 Fri, 28 Jan 2022 06:59:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5ipdO3AMP+lxBlryU0MTjPIrmx9pn8ZVyHSkpzaZf7Ku/wewhuhXUXCAQ+INttVsuE5e/iQ==
X-Received: by 2002:a37:270a:: with SMTP id n10mr6054483qkn.422.1643381964134; 
 Fri, 28 Jan 2022 06:59:24 -0800 (PST)
Received: from [192.168.98.18] ([107.15.110.69])
 by smtp.gmail.com with ESMTPSA id w10sm1481059qkp.8.2022.01.28.06.59.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Jan 2022 06:59:22 -0800 (PST)
Message-ID: <afdb2b42-84bf-ae5e-abbb-808c4e669f58@redhat.com>
Date: Fri, 28 Jan 2022 09:59:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220121002756.1105566-1-david.m.ertman@intel.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <20220121002756.1105566-1-david.m.ertman@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Avoid RTNL lock when
 re-creating auxiliary device
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/20/22 19:27, Dave Ertman wrote:
> If a call to re-create the auxiliary device happens in a context that has
> already taken the RTNL lock, then the call flow that recreates auxiliary
> device can hang if there is another attempt to claim the RTNL lock by the
> auxiliary driver.
> 
> To avoid this, any call to re-create auxiliary devices that comes from
> an source that is holding the RTNL lock (e.g. netdev notifier when
> interface exits a bond) should execute in a separate thread.  To
> accomplish this, add a flag to the PF that will be evaluated in the
> service task and dealt with there.
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Jonathan Toppins <jtoppins@redhat.com>

---
This looks like it will fix the issue and we tested internally and did 
not see the issue.

> ---
>   drivers/net/ethernet/intel/ice/ice.h      | 3 ++-
>   drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>   2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 4e16d185077d..a9fa701aaa95 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -483,6 +483,7 @@ enum ice_pf_flags {
>   	ICE_FLAG_VF_TRUE_PROMISC_ENA,
>   	ICE_FLAG_MDD_AUTO_RESET_VF,
>   	ICE_FLAG_LINK_LENIENT_MODE_ENA,
> +	ICE_FLAG_PLUG_AUX_DEV,
>   	ICE_PF_FLAGS_NBITS		/* must be last */
>   };
>   
> @@ -887,7 +888,7 @@ static inline void ice_set_rdma_cap(struct ice_pf *pf)
>   	if (pf->hw.func_caps.common_cap.rdma && pf->num_rdma_msix) {
>   		set_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>   		set_bit(ICE_FLAG_AUX_ENA, pf->flags);
> -		ice_plug_aux_dev(pf);
> +		set_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags);
>   	}
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 30814435f779..b948a865f359 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2253,6 +2253,9 @@ static void ice_service_task(struct work_struct *work)
>   		return;
>   	}
>   
> +	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
> +		ice_plug_aux_dev(pf);
> +
>   	ice_clean_adminq_subtask(pf);
>   	ice_check_media_subtask(pf);
>   	ice_check_for_hang_subtask(pf);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
