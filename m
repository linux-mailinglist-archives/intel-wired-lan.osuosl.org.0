Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FEE7F9CDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 10:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D91C60D94;
	Mon, 27 Nov 2023 09:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D91C60D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701078084;
	bh=RQG+DaPFpviLmBoqzgHIax8wReOjFmK3v3pJgO644Eg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q9femW3X+YxQ0+bu9CjUDVI6Mm3lz5HthiAfk5qz1uVyIaRtnwwAz2ORg24xHrd12
	 GNfXAjXHHs30TX9oL68SwE/QuR5hCUYE5IEHvK1d0oG9qSb7JdYezzhhV4+ukCyogf
	 7e/1XQOli9lX9NWYRI2psFOdEpvpRHnLuOW4trLjudAOCLYiOClXlbJdFQN4zEMQQm
	 AbIt9O6U9rL9FZhlTJJ6xOpLU52/SVLJ/zCeUpguiX8Sk8u14/ORpGqznIUMukMa/K
	 GBBUmh/fYDL2P/yg1kQe2rTKpxEiKiMFvfUDt274d+917X79l2Re+ryX4Wv4aq8xOW
	 rwbLAHCex851Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59fh3f4vraKG; Mon, 27 Nov 2023 09:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39ACC60DC6;
	Mon, 27 Nov 2023 09:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39ACC60DC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 41A761BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D93C60A88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D93C60A88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDDp0Ed1JVog for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 09:41:16 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B389E60A5C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B389E60A5C
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-5441305cbd1so5247284a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 01:41:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701078073; x=1701682873;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vUCQNPnxA0WhE9IVSXozKQomqPo1RPr5tq7lygXHnZw=;
 b=YWIvzUoYGV5Qi9Y7BzyHBED8ahfD7GgieQdPxAEOIT79pOoFGtnnSZhByUVZbK3xCQ
 QYqsmeDrx3hLQWj3o7Q5K62B5lzRfK4EhXoJMB4k9Da4CHjC/3mp7yrSBTNDeJux2vGy
 j7gQVgl5/oHzORzAnSaMtRLVRzYKlCSpXHW1V1RsP8LMMvHiRTMfGM0ui3n4vF0Cmjzo
 yu0P5udziYuKDgv13Yb7TIqoXTVYEUZVs6inpPp2eC6I9gtY7UC6mVJShrkIcZ0fPm4X
 fmjpmMmnd4emobOu7Ho7SRteWvkAh819OwBu+xafHnfZ1ljpryPPdOwAfboLb0468PJ4
 I4xQ==
X-Gm-Message-State: AOJu0Yx2kJs1ZuK6IouaB7qVlaUSedhUdBZCprdugfTLKSqLZJyRzrAs
 ziGxliPj5n4Nf/Yc7SC6SPbadA==
X-Google-Smtp-Source: AGHT+IGeUdvZVC5a7Ar3svAcCBK16pGi6SCrexZsSH+Aonc7To6tkU/2mL2ZItVW0+Ph42jB8baJFA==
X-Received: by 2002:a50:9e0f:0:b0:547:b96:1172 with SMTP id
 z15-20020a509e0f000000b005470b961172mr7473450ede.28.1701078073323; 
 Mon, 27 Nov 2023 01:41:13 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 m11-20020a056402050b00b00548a2d1737bsm5053723edv.35.2023.11.27.01.41.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Nov 2023 01:41:12 -0800 (PST)
Date: Mon, 27 Nov 2023 10:41:11 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Sachin Bahadur <sachin.bahadur@intel.com>
Message-ID: <ZWRkN12fhENyN4PY@nanopsycho>
References: <20231127060512.1283336-1-sachin.bahadur@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231127060512.1283336-1-sachin.bahadur@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1701078073; x=1701682873;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vUCQNPnxA0WhE9IVSXozKQomqPo1RPr5tq7lygXHnZw=;
 b=ZjPB2vjAPN4W3b5lI9jorLs6rlBxm5/5a24abnOiPqN8Ao3wtQRgZQNtsLD/r9WDnV
 NHyFqgHFXeFqubrJaJ7pNBTa13PHZIklpaPYfoFIVaxX5gwW9nmco9aAAixh1ReOJQl+
 2j21DqZGAAYQhrylX3vY0rIFPYET/2NaiwF6D2BeBJb5ssxBaGcU5GdwoZnnUzzJYFEM
 ul6ro0RV7cKRG+Q+jIa9h60bX8SxRRBe3R9WBw+JmVTjSTOaC/F+TKxGvybeC+xvVs/1
 D1FIvd8LSL83agZXMESZiKGRlj1TgayGyb2NNIqi1MVDgdywerPXj5iiUNPKKNQN+4tu
 EqbA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ZjPB2vjA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: Block PF reinit if
 attached to bond
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Nov 27, 2023 at 07:05:12AM CET, sachin.bahadur@intel.com wrote:
>PF interface part of Bond should not allow driver reinit via devlink. Bond
>config will be lost due to PF reinit. PF needs to be re-added to Bond
>after PF reinit. ice_devlink_reload_down is called before PF driver reinit.
>If PF is attached to bond, ice_devlink_reload_down returns error.
>
>Fixes: trailer
>Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index f4e24d11ebd0..5fe88e949b09 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
> 					   "Remove all VFs before doing reinit\n");
> 			return -EOPNOTSUPP;
> 		}
>+		if (pf->lag && pf->lag->bonded) {
>+			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit");

Nack. Remove the netdev during re-init, that would solve your issue.
Looks like some checks are needed to be added in devlink code to make
sure drivers behave properly. I'm on in.



>+			return -EBUSY;
>+		}
> 		ice_unload(pf);
> 		return 0;
> 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>--
>2.25.1
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
