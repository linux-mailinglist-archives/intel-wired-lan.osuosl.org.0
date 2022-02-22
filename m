Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9320A4C01A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 19:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E81681BC6;
	Tue, 22 Feb 2022 18:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ML3aPFTdkekJ; Tue, 22 Feb 2022 18:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AE1981B9D;
	Tue, 22 Feb 2022 18:53:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B7521BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 18:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58A9A60EF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 18:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2BebOXy9Ekm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 18:53:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7694760EEF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 18:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645555992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ijeBSHIMh+RHWCSvVnH6w3l49XqjDhOH6DVMUM2J8WM=;
 b=cKoLpCwyZxNhjk2KbwFYOgKQXTU3BF3nIFGzQ2357AQApnrapB9e43yQyZAQK2nyWc/2ij
 cqTMNzh/sZ0Ucxe6v4LDTjUmpjONPPqrFuNjPzItlApsm9l4zFMdPu/b+CS62l7gLzwxuo
 Bpz57FQ4BWH9lNEB2DmaH9B2y7jEEFc=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-345-Qb3KoPuvN1u5o5FfIjD-1Q-1; Tue, 22 Feb 2022 13:53:11 -0500
X-MC-Unique: Qb3KoPuvN1u5o5FfIjD-1Q-1
Received: by mail-qv1-f69.google.com with SMTP id
 jr12-20020a0562142a8c00b0042d7901650cso614862qvb.17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 10:53:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ijeBSHIMh+RHWCSvVnH6w3l49XqjDhOH6DVMUM2J8WM=;
 b=3I3yGKGeFKRPuoWg6cA2dQSR6Khx6J+xhmJCHdRP1tBMliX7/Vj2BcgfCKmT0Fl2x9
 Czrn6oouoAIlxBJu5N0kd3gBbXmz7qeJs1RZG76E/QhNRJ+q6FmGfFnsfvuZhcfnSLBO
 W6v5zKj3dPOu8tiFsTcDf4C4ETqQ8/rqCV79gisO8lezxMlMq1l/PCKumQ4GtM/2aRgy
 eYcS68k2kd96tvS1smBEEeBJkQMFjEAibDmoZcrGhK0oW74c4yd7Ra6pV4q77x82Q0li
 G9O9VmHbVhMSBoHM3rMPeTfX/mTXRYzSDIIDoPy7T8xeK3zJoD7rFebIL7mLixKQzyDy
 7D5w==
X-Gm-Message-State: AOAM531QZjzRBnyJbezOkgDEn1RRlexScs64gz5cmfBeZrY3nlKUhcr/
 uYrpcwjzPUuIo6zew1PHri0ZdkTHDQigqceizan7MQWtRKDdePLO7ZdGWN4hVUl5wmMJrjK+SKQ
 reiSMEnOt8iRmgIabZkHjz2D58M8z+Q==
X-Received: by 2002:a05:6214:e6e:b0:42c:47ae:3fc6 with SMTP id
 jz14-20020a0562140e6e00b0042c47ae3fc6mr20471671qvb.17.1645555990500; 
 Tue, 22 Feb 2022 10:53:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzD7Vy/63OlWTUQtWu541hqsNqVP+hLI0QDHsk3RFZCRL9Antb192fmGYCCfERhDYrSqNU2/A==
X-Received: by 2002:a05:6214:e6e:b0:42c:47ae:3fc6 with SMTP id
 jz14-20020a0562140e6e00b0042c47ae3fc6mr20471657qvb.17.1645555990215; 
 Tue, 22 Feb 2022 10:53:10 -0800 (PST)
Received: from [192.168.98.18] ([107.15.110.69])
 by smtp.gmail.com with ESMTPSA id y15sm237249qki.15.2022.02.22.10.53.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Feb 2022 10:53:09 -0800 (PST)
Message-ID: <02eb2ff7-5e59-7aa8-cb4a-b3efa36a4a7d@redhat.com>
Date: Tue, 22 Feb 2022 13:53:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220218203925.1890573-1-david.m.ertman@intel.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <20220218203925.1890573-1-david.m.ertman@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix error with handling
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

On 2/18/22 15:39, Dave Ertman wrote:
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
> 
> Fixes: 348048e724a0e ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

I no longer see the process hang with this patch applied.

Tested-by: Jonathan Toppins <jtoppins@redhat.com>

> ---
> v2: target change from net-next to net
> ---
>   drivers/net/ethernet/intel/ice/ice.h      |  1 +
>   drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++------------
>   2 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index a9fa701aaa95..058334db37a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -484,6 +484,7 @@ enum ice_pf_flags {
>   	ICE_FLAG_MDD_AUTO_RESET_VF,
>   	ICE_FLAG_LINK_LENIENT_MODE_ENA,
>   	ICE_FLAG_PLUG_AUX_DEV,
> +	ICE_FLAG_MTU_CHANGED,
>   	ICE_PF_FLAGS_NBITS		/* must be last */
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 17a9bb461dc3..d47d00c5b456 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2256,6 +2256,17 @@ static void ice_service_task(struct work_struct *work)
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
> @@ -6820,7 +6831,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
>   	struct ice_netdev_priv *np = netdev_priv(netdev);
>   	struct ice_vsi *vsi = np->vsi;
>   	struct ice_pf *pf = vsi->back;
> -	struct iidc_event *event;
>   	u8 count = 0;
>   	int err = 0;
>   
> @@ -6855,14 +6865,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
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
> @@ -6870,21 +6872,18 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
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
