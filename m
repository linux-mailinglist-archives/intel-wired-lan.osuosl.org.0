Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 569194BD46A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 04:51:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C528A40892;
	Mon, 21 Feb 2022 03:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pPTmHl0r7VkI; Mon, 21 Feb 2022 03:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A86C14088C;
	Mon, 21 Feb 2022 03:50:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91EBE1BF968
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 03:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88942813B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 03:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 40Tm7x2dJDHG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 03:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB91A813B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645415452;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gYQmEWi8nXi/l/a0I5YdDgKgrME3jkX1ov6Vyk7n/t8=;
 b=Bg8wzg5YQTwhO8KkgwNdmRodfIb1B3E/ANfPPZNwxzVLx9PjIkBsuoFqd5/R47rxE6HRvd
 50w/jvKh4K+QISop5xSW7rsltgkEWx7D0HYYLkZ0n8fQEowWj20yHQ6rProI6cRO98kveS
 mi1+LDIjZqbmEX7U8jVisJmKgtcuA3Q=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-_h9P_Uh8NFePpZtF13My-g-1; Sun, 20 Feb 2022 22:50:51 -0500
X-MC-Unique: _h9P_Uh8NFePpZtF13My-g-1
Received: by mail-qk1-f199.google.com with SMTP id
 bj2-20020a05620a190200b005084968bb24so13128558qkb.23
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 19:50:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=gYQmEWi8nXi/l/a0I5YdDgKgrME3jkX1ov6Vyk7n/t8=;
 b=W6NNmjNrMaZjvLSJ9DEf592XiveLrL4Podf6SOnUK88HtFZLqVh/MxvRgrvRE17lhH
 CTpxXboGLOX+hAxdst3eqt4IlWEDAycWYF4hhE7UlcK/oGU9ZqGayxaE0l2sqcnWHWFr
 IRTBnkGvbx2AdogWvCbcETOzkeYeqmoJy1HvBf1SP+eDC+Rrva3dWDbMnMpOgTi9O5EA
 nLEeyFMlD1nhs6GvoYqtRhqGxNlIoLrBhc0javY7LBqg0XQ7+pMs4LXyqr1cE1pDSvW+
 0e2lX3arJdCndaF3tvVQPhHNHeOi2vrAI3gub41Ew1gU7AKV5MLUfy8OfD3UC3YQK6bQ
 HF2g==
X-Gm-Message-State: AOAM532K0WfU7W6Wb42mWjbp8tFY+hhpDIE5SW+kMRn300+yUIrkfllx
 7tDM/HLPpykX3hmRivQ47TS4zRmfDnegAAjGHJFkTuzBYxpVAMF6LPzcsv3KSbUhWVp2SBIHRh+
 OZupW3BisGpkuiaI7AAKmXU9hcZiUPw==
X-Received: by 2002:a05:6214:c2c:b0:42c:4db9:7bf4 with SMTP id
 a12-20020a0562140c2c00b0042c4db97bf4mr14198410qvd.22.1645415450489; 
 Sun, 20 Feb 2022 19:50:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzj7DIbocQo/Sec02TCD964AymT2HWC/dyyf0nPewoQIb50qqIqET0+lyP3b6mPKimLyjm1ew==
X-Received: by 2002:a05:6214:c2c:b0:42c:4db9:7bf4 with SMTP id
 a12-20020a0562140c2c00b0042c4db97bf4mr14198404qvd.22.1645415450224; 
 Sun, 20 Feb 2022 19:50:50 -0800 (PST)
Received: from [192.168.98.18] ([107.15.110.69])
 by smtp.gmail.com with ESMTPSA id w2sm5189246qts.29.2022.02.20.19.50.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Feb 2022 19:50:49 -0800 (PST)
Message-ID: <6b531cbb-76c0-3c9f-fd20-f0e3b5fd12ed@redhat.com>
Date: Sun, 20 Feb 2022 22:50:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220218190604.1888716-1-david.m.ertman@intel.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <20220218190604.1888716-1-david.m.ertman@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling
 of bonding MTU
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

On 2/18/22 14:06, Dave Ertman wrote:
> When a bonded interface is destroyed, .ndo_change_mtu can be called
> during the tear-down process while the RTNL lock is held.  This is a
> problem since the auxiliary driver linked to the LAN driver needs to be
> notified of the MTU change, and this requires grabbing a device_lock on
> the auxiliary_device's dev.  Currently this is being attempted in the
> same execution context as the call to .ndo_change_mtu which is causing a
> dead-lock.
> 
> Move the notification of the changed MTU to a separate execution context
> (watchdog service task) and eliminate the "before" notification.

It would seem all net notifiers for the aux driver could suffer from 
this architectural design. Is there any effort to look at the design and 
move all notifications to a delayed work queue to avoid this recursive 
lock problem? I do not think ndo_change_mtu is the only net device 
operation that takes or expects RTNL to be held. Additionally what 
requirements does the auxiliary driver have that require the 
notification to be immediately processed?

Just trying to think of how to avoid this class of bugs all together 
instead of finding them one-by-one.

Regards,
-Jon

> 
> Fixes: 348048e724a0e ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h      |  1 +
>   drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++------------
>   2 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 8f40f6f9b8eb..219b7c9d230e 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -487,6 +487,7 @@ enum ice_pf_flags {
>   	ICE_FLAG_VF_VLAN_PRUNING,
>   	ICE_FLAG_LINK_LENIENT_MODE_ENA,
>   	ICE_FLAG_PLUG_AUX_DEV,
> +	ICE_FLAG_MTU_CHANGED,
>   	ICE_PF_FLAGS_NBITS		/* must be last */
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index cff476f735ef..f81b4732b8b2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2259,6 +2259,17 @@ static void ice_service_task(struct work_struct *work)
>   	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
>   		ice_plug_aux_dev(pf);
>   
> +	if (test_and_clear_bit(ICE_FLAG_MTU_CHANGED, pf->flags)) {
> +		struct iidc_event *event;
> +
> +		event = kzalloc(sizeof(*event), GFP_KERNEL);
> +		if (event) {
> +			set_bit(IIDC_EVENT_AFTER_MTU_CHANGE, event->type);
> +			ice_send_event_to_aux(pf, event);
> +			kfree(event);
> +		}
> +	}
> +
>   	ice_clean_adminq_subtask(pf);
>   	ice_check_media_subtask(pf);
>   	ice_check_for_hang_subtask(pf);
> @@ -7016,7 +7027,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
>   	struct ice_netdev_priv *np = netdev_priv(netdev);
>   	struct ice_vsi *vsi = np->vsi;
>   	struct ice_pf *pf = vsi->back;
> -	struct iidc_event *event;
>   	u8 count = 0;
>   	int err = 0;
>   
> @@ -7051,14 +7061,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
>   		return -EBUSY;
>   	}
>   
> -	event = kzalloc(sizeof(*event), GFP_KERNEL);
> -	if (!event)
> -		return -ENOMEM;
> -
> -	set_bit(IIDC_EVENT_BEFORE_MTU_CHANGE, event->type);
> -	ice_send_event_to_aux(pf, event);
> -	clear_bit(IIDC_EVENT_BEFORE_MTU_CHANGE, event->type);
> -
>   	netdev->mtu = (unsigned int)new_mtu;
>   
>   	/* if VSI is up, bring it down and then back up */
> @@ -7066,21 +7068,18 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
>   		err = ice_down(vsi);
>   		if (err) {
>   			netdev_err(netdev, "change MTU if_down err %d\n", err);
> -			goto event_after;
> +			return err;
>   		}
>   
>   		err = ice_up(vsi);
>   		if (err) {
>   			netdev_err(netdev, "change MTU if_up err %d\n", err);
> -			goto event_after;
> +			return err;
>   		}
>   	}
>   
>   	netdev_dbg(netdev, "changed MTU to %d\n", new_mtu);
> -event_after:
> -	set_bit(IIDC_EVENT_AFTER_MTU_CHANGE, event->type);
> -	ice_send_event_to_aux(pf, event);
> -	kfree(event);
> +	set_bit(ICE_FLAG_MTU_CHANGED, pf->flags);
>   
>   	return err;
>   }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
