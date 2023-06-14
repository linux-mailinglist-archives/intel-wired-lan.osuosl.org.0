Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D252C72F913
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 11:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70064611F4;
	Wed, 14 Jun 2023 09:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70064611F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686734869;
	bh=YVPQ7T9iKt924LufRaPIxs3Nwv0fpMi9+F5gv5Ggv50=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QtGEmUB7iI5kWkrL0n+p9qyUdW72tYY+OBfBz4Ht7zV7g/50Y03u9HUF3cXFQJv/z
	 MD/hPWnhD3Bo0s+wxvBCzInrtYyO5Imv92ajAGpNr2hzcCcmOg9Gyg0mnO/pVGQDsy
	 YDT2mpyeGl5GDvDimvkOwMyY5YQlrtf56eSHk1xEqrBx32L9S4xoDoWBrH2Ub9/+Yr
	 CWn+2B1Z+UY+6ASu+fAGXcZVAcBIAL5EeAfs2fc8KGUr2toOZU5J51kcpDb/+gticC
	 nPmB7U92cutpbFkrxSzt9zzfPwG9ey5UUuDJF4RUSnJi0oXMs7u2Pbp3HuMGM99bZk
	 NrCed0ikBUuAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VCce0J_wwPia; Wed, 14 Jun 2023 09:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 283F7611EB;
	Wed, 14 Jun 2023 09:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 283F7611EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9D111BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9A4C611EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:27:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9A4C611EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZWuJufgHkhk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 09:27:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50A6C611DE
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50A6C611DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:27:38 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-3f8c5d0b216so4182825e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 02:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686734849; x=1689326849;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HtefXDjYklud7abCsC+WgTuAbpHOK06ISGHObSNNODA=;
 b=bgXkJw0/uSJDBQt6vjVXGXcGYtG3BROhq9aF97RrBgi1qMGZ1vFXYzhsBzFlGqU/Cq
 /Kmv4TDjWDxlLKiCKtXvNbWmUWHC2jyWkzXPNHYT757lgHgE35CDVcBytuxet3n4icaX
 +ULcrOiOVRMa550Ao43FaWaQwV71So3Kyequ0tZGrbZGw0DW7kGwtG3q1cHMuXdXblRY
 d9Rnpp2m7Ye1SHKUfKsq11b/z3lJMBziH6q1kNba4Gh3Ihq2MEalBFMGCVBLS1fULzGP
 BJODqQ7k7FyYtmSXUCYkqC5ySWteFLIZh2LwQ/7HUyQQaLlLyk256bt8hMTiC1g8iGYQ
 CEpA==
X-Gm-Message-State: AC+VfDwLM4yUvGNI9WAZzDVpLwdBom11QkHMUVjAQTWDNT6rPo3T6rk/
 4vfAo/v8nf/GmD+HZxB08HwX7g==
X-Google-Smtp-Source: ACHHUZ7GlBUfe4DA2qBjSg64mcltE0M9LgJWODvo3Av0ztoxCP/DZKdZxYp0GD/Cv/+mNbbxd4YpFg==
X-Received: by 2002:adf:e54c:0:b0:30f:bd48:6828 with SMTP id
 z12-20020adfe54c000000b0030fbd486828mr7876719wrm.31.1686734849068; 
 Wed, 14 Jun 2023 02:27:29 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 s14-20020adfeb0e000000b0030ae53550f5sm17681103wrn.51.2023.06.14.02.27.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jun 2023 02:27:28 -0700 (PDT)
Date: Wed, 14 Jun 2023 11:27:27 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZImH/6GzGdydC3U3@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <20230612154329.7bd2d52f@kernel.org> <ZIg8/0UJB9Lbyx2D@nanopsycho>
 <20230613093801.735cd341@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230613093801.735cd341@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686734849; x=1689326849; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HtefXDjYklud7abCsC+WgTuAbpHOK06ISGHObSNNODA=;
 b=yrfI34Q6GvN+FjN0tBMhRhIOeZ+VqlZlmPBIeLwUQwYA9symwc6XeIfHRDvjxLjG6V
 mWI92FC7g4Iy+mbS+/EKtIv6gpw4bdc2QDKWvI32GRRv8eRIejwNFcMqxmc54nmtzfOS
 vf3+qYecBp+aVBHQXycTqZiXDwW3Cs5cTChM//GSlmbcUKVdqWeA+3LPSuydIIMrsEB+
 q1rV5ytMHmwhHX17niRkrt4lA0p7by3+yJTr4CpUmls7/tfRMGt4+9e4kjWUuWR080Qf
 P3ot1hflAhk4tZAoWorHdR08BCgd3svaC365uWcMicY8oIDQ/xlHHpPBO6Z0nBwgzCNt
 WmZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=yrfI34Q6
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Jun 13, 2023 at 06:38:01PM CEST, kuba@kernel.org wrote:
>On Tue, 13 Jun 2023 11:55:11 +0200 Jiri Pirko wrote:
>> >> +``'pin': [{
>> >> + {'clock-id': 282574471561216,
>> >> +  'module-name': 'ice',
>> >> +  'pin-dpll-caps': 4,
>> >> +  'pin-id': 13,
>> >> +  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
>> >> +                 {'pin-id': 3, 'pin-state': 'disconnected'},
>> >> +                 {'id': 0, 'pin-direction': 'input'},
>> >> +                 {'id': 1, 'pin-direction': 'input'}],
>> >> +  'pin-type': 'synce-eth-port'}
>> >> +}]``  
>> >
>> >It seems like pin-parent is overloaded, can we split it into two
>> >different nests?  
>> 
>> Yeah, we had it as two and converged to this one. The thing is, the rest
>> of the attrs are the same for both parent pin and parent device. I link
>> it this way a bit better. No strong feeling.
>
>Do you mean the same attribute enum / "space" / "set"?

Yeah, that is my understanding. Arkadiusz, could you please clarify?


>In the example above the attributes present don't seem to overlap.
>For user space its an extra if to sift thru the objects under
>pin-parent.
>
>> >Also sounds like setting pin attrs and pin-parent attrs should be
>> >different commands.  
>> 
>> Could be, but what't the benefit? Also, you are not configuring
>> pin-parent. You are configuring pin:pin-parent tuple. Basically the pin
>> configuration as a child. So this is mainly config of the pin itsest
>> Therefore does not really make sense to me to split to two comments.
>
>Clarity of the API. If muxing everything thru few calls was the goal
>we should also have very few members in struct dpll_pin_ops, and we
>don't.

How the the internal kernel api related to the uapi? I mean, it's quite
common to have 1:N relationsip between cmd and op. I have to be missing
your point. Could you be more specific please?

Current code presents PIN_SET command with accepts structured set of
attribute to be set. The core-driver api is pretty clear. Squashing to
a single op would be disaster. Having one command per attr looks like an
overkill without any real benefit. How exactly do you propose to change
this?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
