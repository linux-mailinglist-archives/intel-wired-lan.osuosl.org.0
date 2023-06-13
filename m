Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F078B72DE52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 11:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18027404DF;
	Tue, 13 Jun 2023 09:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18027404DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686650125;
	bh=R6vyAUmnZ56XHUqeuibLk6+RSDsA0QeDipTEM4KUuX0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C9NfWTYLydnYwISQV0dYkV9J1maIJyO0GnaqGbzh3XF9Te4V3jkFPvTQeKjkTm7Ru
	 wJwIcEKW7drjt+O1yjfo/p2+T7n1BSwp68IEGDtQUxvRAWRiFJKdIcWrA57yLnPtee
	 n7s/92lgmnZ8ceWF4b9nx42b1aGDnK5KiBhLT1YtQY3jhF+M3g7TbWTGbqx1rgg/YA
	 KE2tnqKckwqBWAyEUszJHJ/f6y3vZ+4HdFDm0WEBE9n5NjfPuxKN96N/el+/S/T0vp
	 oAXArGBxqTl8QBXgdY2JExalFdzRAutwarSo4BB2pPzrrWPHHJkh0JH/+O/pqr7j+z
	 JnhdDXqPPo1KA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmLlb2U2kcp7; Tue, 13 Jun 2023 09:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E821D403E0;
	Tue, 13 Jun 2023 09:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E821D403E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB1931BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 09:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEF7160B2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 09:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEF7160B2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6jyQ9heeVkp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 09:55:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B211A60A81
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B211A60A81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 09:55:16 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-30aea656e36so3706225f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 02:55:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686650114; x=1689242114;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RqNvggRPyNB9Hehd7xfWxJNAOn1bnmQJXJE17DkVdBU=;
 b=bKSFO1wkuF9Au96F2cCnMkHaEerID3nGKop3v7B5kb9X93tcJBCWDNw7CidDmAsVp3
 cOeekY6wpfT70ZYPdwPU7Oghc1oYuRkz/WRPYgQ4TQ/Xlyg2QG8GhwaFW6s+d7JQv/5q
 VG9PpTYaAk6ZIK3QzAjILSQPRyfnQnE2A3SwbhK8XqLsXLuh/pOCcLFkmQrNRc8wSGLe
 LhaLydf1pppUSpwtEXhLJiwbZ6UsLbdG2Kumd4wZ6/VPFh9bnYFh8PrIyLDVxdGLQkK9
 9n18/hqPYJf/7MD/gECXnBvd+kICrrOA1t2QfpCzKnuI0KUo2vwNACCPbflhe9tLWAD0
 V/jA==
X-Gm-Message-State: AC+VfDzvHsJZ0eLZ2xjSNtKWoUmccCpp9ZSiK8nN48zyZigDRwk4TGVD
 mWIpn//LzJKDDxaaGd2F/0NCTQ==
X-Google-Smtp-Source: ACHHUZ5ZrdfyYh5y1tk49fFKsi3ApIfFMGD+jwFkSrpureaIeIWoGT4Ghm/fdObK/np4YyjXHk7Jyg==
X-Received: by 2002:adf:e252:0:b0:307:7f38:37f with SMTP id
 bl18-20020adfe252000000b003077f38037fmr6934139wrb.66.1686650114217; 
 Tue, 13 Jun 2023 02:55:14 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 e4-20020adfdbc4000000b0030ada01ca78sm14844845wrj.10.2023.06.13.02.55.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 02:55:13 -0700 (PDT)
Date: Tue, 13 Jun 2023 11:55:11 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZIg8/0UJB9Lbyx2D@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <20230612154329.7bd2d52f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230612154329.7bd2d52f@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686650114; x=1689242114; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=RqNvggRPyNB9Hehd7xfWxJNAOn1bnmQJXJE17DkVdBU=;
 b=g/gQ2/z9jaLvDVlTUHmih1Mf6W7SQX7wJSQ+I8XBYvpmmlpFWCMKBmAtIqbdA9HJWB
 iWJ8265l0uWUBs0Kg2xf88IK1ASsgY7HBMkicdvyoLSF2ZFw96kmx8hlZ4inRvc6mfw6
 usW+eWfcjxc7P7c5wlWofL6a/6amUVvrMqWmVbcEPl/2nvlor4GEZMJYDGvrBQ2ES0Kz
 MIm+Gt3o5Al8+xgJHIvN+k83T0tslOCriSPQAfvlsubkAEA+EPvZDMa6sTwznVHhsGT7
 9tQ5f+N1kjiEiCDElzEW318WS8K22rXW/SvG9B0QnKg+Y4mmXmNqLX7TKuwjrx3J05kI
 izbw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=g/gQ2/z9
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

Tue, Jun 13, 2023 at 12:43:29AM CEST, kuba@kernel.org wrote:
>On Fri,  9 Jun 2023 14:18:44 +0200 Arkadiusz Kubalewski wrote:
>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> 
>> Add documentation explaining common netlink interface to configure DPLL
>> devices and monitoring events. Common way to implement DPLL device in
>> a driver is also covered.
>
>> +``'pin': [{
>> + {'clock-id': 282574471561216,
>> +  'module-name': 'ice',
>> +  'pin-dpll-caps': 4,
>> +  'pin-id': 13,
>> +  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
>> +                 {'pin-id': 3, 'pin-state': 'disconnected'},
>> +                 {'id': 0, 'pin-direction': 'input'},
>> +                 {'id': 1, 'pin-direction': 'input'}],
>> +  'pin-type': 'synce-eth-port'}
>> +}]``
>
>It seems like pin-parent is overloaded, can we split it into two
>different nests?

Yeah, we had it as two and converged to this one. The thing is, the rest
of the attrs are the same for both parent pin and parent device. I link
it this way a bit better. No strong feeling.


>
>> +SET commands format
>> +===================
>> +
>> +``DPLL_CMD_DEVICE_SET`` - to target a dpll device, the user provides
>> +``DPLL_A_ID``, which is unique identifier of dpll device in the system,
>> +as well as parameter being configured (``DPLL_A_MODE``).
>> +
>> +``DPLL_CMD_PIN_SET`` - to target a pin user has to provide a
>> +``DPLL_A_PIN_ID``, which is unique identifier of a pin in the system.
>> +Also configured pin parameters must be added.
>> +If ``DPLL_A_PIN_DIRECTION`` or ``DPLL_A_PIN_FREQUENCY`` are configured,
>> +this affects all the dpll device they are connected, that is why those
>> +attributes shall not be enclosed in ``DPLL_A_PIN_PARENT``.
>> +Other attributes:
>> +``DPLL_A_PIN_PRIO`` or ``DPLL_A_PIN_STATE`` must be enclosed in
>> +``DPLL_A_PIN_PARENT`` as their configuration relates to only one
>> +parent dpll or parent pin.
>
>Also sounds like setting pin attrs and pin-parent attrs should be
>different commands.

Could be, but what't the benefit? Also, you are not configuring
pin-parent. You are configuring pin:pin-parent tuple. Basically the pin
configuration as a child. So this is mainly config of the pin itsest
Therefore does not really make sense to me to split to two comments.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
