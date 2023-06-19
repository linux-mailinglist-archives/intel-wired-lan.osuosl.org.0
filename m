Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF97735ACC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 17:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C7EF611F2;
	Mon, 19 Jun 2023 15:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C7EF611F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687187254;
	bh=uTOgeFVwStizuOXTtPAHCVediBeF5NufyyVX5KEnxxA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=80O+K7IBVB+QOqnfPOoqzcSig3HQSRKIXfygxLucK1wlnW0hz8FQCkavM51AmSj4C
	 P29q52ajMrxwfrciM7NBfeYl7pfGwivzqd184TO6F2JBDK8Xz1WBHXiHa4gPhd/Mra
	 0Pl8c60iP6Rl1I57rI6PIWARjCTEYqlunND4q7cuMV+pLXMYH7JEZd75U0U9JgcFfJ
	 +BlFMdUEeChJBuZN5ktcCc5Gcl6vNiBNGv6xowtacxUVN5Z5/9+D2fUi2PaUV7Y+n8
	 xvo8h8a3RwtTqp3mNAreyt7wATOos9vFpDKsDLoF9eG6TjZGmQlyJxXJE15lWuSxuU
	 459b/Mrp561Dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gP8OxPPSsQH6; Mon, 19 Jun 2023 15:07:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EFFD611F0;
	Mon, 19 Jun 2023 15:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EFFD611F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 019981BF291
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 15:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8A9382039
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 15:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8A9382039
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 56c8yG6pym65 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 15:07:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A8CC8200C
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A8CC8200C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 15:07:24 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-3f904dcc1e2so24780865e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:07:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687187243; x=1689779243;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bF1I6NOSdp0boAf3cXOANw0nNn9CysmZuzWnMKWJE0I=;
 b=NJQE98JHIlu2FMHlIGTijptBr2ejMNfIqtcoxgV+GywhOuLlEiwae4gyN+b3HLAgUl
 fEhgRfPpW4cDFW/G3WQX/ywNybw2Gvz4ROpe/T/8Ena7R2WAaU2LC8vIA1iRHjekihci
 csv3JscgBCevzXIgNcG/OMNBiMnv6ftiXB99WsgkJBl7ziS1o25s2SdloZqdl4eGQG28
 bkOAGWDs0DNk8VDdKOPz2N/7Ki0j+w70CSzR9bTG7NPT6Oi0gx4RwcovjbJ0Td0Xb7C8
 NEELAdhfRMtfbRFzicsyZjYw+YnU+0elSsr2OTrI6wEkEetkd3DwzgI6DmcuJp0J2L5x
 lVMQ==
X-Gm-Message-State: AC+VfDyy5KrD1ZWfET43VAwGMu7xq0qGd+nYp3IpNsZ9MHqAA8PPXy1w
 JK64MIgy5zKEj/+PCJ77jNi6gA==
X-Google-Smtp-Source: ACHHUZ4QpXrVdOPChzthrRJNQWsZ8TKLv4ekV8Mc6yMvkXImHSiDzCzJNSGfU3pYEHGWIyzBS27jMQ==
X-Received: by 2002:a05:600c:ad9:b0:3f6:2ee:6993 with SMTP id
 c25-20020a05600c0ad900b003f602ee6993mr8284670wmr.4.1687187242946; 
 Mon, 19 Jun 2023 08:07:22 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 h22-20020a1ccc16000000b003f7ed463954sm11023934wmb.25.2023.06.19.08.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jun 2023 08:07:22 -0700 (PDT)
Date: Mon, 19 Jun 2023 17:07:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <ZJBvKVf7Yfh6WpsO@nanopsycho>
References: <20230619105813.369912-1-poros@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230619105813.369912-1-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687187243; x=1689779243; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bF1I6NOSdp0boAf3cXOANw0nNn9CysmZuzWnMKWJE0I=;
 b=SrPWQcAEv7ZEoYcC8y8MMQNNWLHc1GpyA6auFe7qqTmoSTdAG4zGOFlWJMGDKWtS5x
 xWIbPEYVAOeIYpHIyQgMD7aS+RTuzuorwpbw3bHVG1HuI4QbMzrEII71nS/fm1lD2Z+g
 bxLOHKnGz+27eJo0cqJ+Fd3oJ8PTB1syga2KiQeUNG6x9NxpEYYIyPtdW76Gw/dQQn4y
 QyqD/x7KbePA1kfEMKvXitvWgcGsKC+TlB3t+1alItQJ7/liWQERVcVdeVSktrnN2v1H
 Xq97jb7GQjKCqvLSkclRKhfuH4EwWVrgsRPZ7SObpFy02wRLUxgK8sSj7F5N+4NrSWZ5
 7aYA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=SrPWQcAE
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Unregister netdev and
 devlink_port only once
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jun 19, 2023 at 12:58:13PM CEST, poros@redhat.com wrote:
>Since commit 6624e780a577fc ("ice: split ice_vsi_setup into smaller
>functions") ice_vsi_release does things twice. There is unregister
>netdev which is unregistered in ice_deinit_eth also.

You need to describe more relationship between ice_vsi_release() and
ice_deinit_eth(). From a quick look, I don't see that ice_deinit_eth()
is always called before/afeter ice_vsi_release().

Ice init/release flows are very hard to follow :/


>
>It also unregisters the devlink_port twice which is also unregistered
>in ice_deinit_eth(). This double deregistration is hidden because
>devl_port_unregister ignores the return value of xa_erase.

This call for another patch, doesn't it? :)


>
>[   68.642167] Call Trace:
>[   68.650385]  ice_devlink_destroy_pf_port+0xe/0x20 [ice]
>[   68.655656]  ice_vsi_release+0x445/0x690 [ice]
>[   68.660147]  ice_deinit+0x99/0x280 [ice]
>[   68.664117]  ice_remove+0x1b6/0x5c0 [ice]
>
>[  171.103841] Call Trace:
>[  171.109607]  ice_devlink_destroy_pf_port+0xf/0x20 [ice]
>[  171.114841]  ice_remove+0x158/0x270 [ice]
>[  171.118854]  pci_device_remove+0x3b/0xc0
>[  171.122779]  device_release_driver_internal+0xc7/0x170
>[  171.127912]  driver_detach+0x54/0x8c
>[  171.131491]  bus_remove_driver+0x77/0xd1
>[  171.135406]  pci_unregister_driver+0x2d/0xb0
>[  171.139670]  ice_module_exit+0xc/0x55f [ice]
>
>Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
>Signed-off-by: Petr Oros <poros@redhat.com>
>---
>v2: reword subject
>
>v1: https://lore.kernel.org/netdev/20230619084948.360128-1-poros@redhat.com/
>---
> drivers/net/ethernet/intel/ice/ice_lib.c | 27 ------------------------
> 1 file changed, 27 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>index 11ae0e41f518a1..284a1f0bfdb545 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lib.c
>+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>@@ -3272,39 +3272,12 @@ int ice_vsi_release(struct ice_vsi *vsi)
> 		return -ENODEV;
> 	pf = vsi->back;
> 
>-	/* do not unregister while driver is in the reset recovery pending
>-	 * state. Since reset/rebuild happens through PF service task workqueue,
>-	 * it's not a good idea to unregister netdev that is associated to the
>-	 * PF that is running the work queue items currently. This is done to
>-	 * avoid check_flush_dependency() warning on this wq
>-	 */
>-	if (vsi->netdev && !ice_is_reset_in_progress(pf->state) &&
>-	    (test_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state))) {
>-		unregister_netdev(vsi->netdev);
>-		clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>-	}
>-
>-	if (vsi->type == ICE_VSI_PF)
>-		ice_devlink_destroy_pf_port(pf);
>-
> 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
> 		ice_rss_clean(vsi);
> 
> 	ice_vsi_close(vsi);
> 	ice_vsi_decfg(vsi);
> 
>-	if (vsi->netdev) {
>-		if (test_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state)) {
>-			unregister_netdev(vsi->netdev);
>-			clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>-		}
>-		if (test_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state)) {
>-			free_netdev(vsi->netdev);
>-			vsi->netdev = NULL;
>-			clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
>-		}
>-	}
>-
> 	/* retain SW VSI data structure since it is needed to unregister and
> 	 * free VSI netdev when PF is not in reset recovery pending state,\
> 	 * for ex: during rmmod.
>-- 
>2.41.0
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
