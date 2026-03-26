Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NgLDB/CxGku3QQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:20:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CAA32F4FB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:20:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11D5E60A43;
	Thu, 26 Mar 2026 05:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xSIcx4Ips-4a; Thu, 26 Mar 2026 05:20:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E39960A51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774502423;
	bh=aa8Oo9ESgQItRaqaOQ9DNzXFkC6kr5Y7gZP1T5Pf6R4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RpMykZ2Uu7c7y2rgfP2lnEulsi3Y8Y/krITu0pqZqzCOYfbyOong9jynHo4CEYzJX
	 22Wb4+O1d6le7RvXh2wnflCiXQ8/feHzN/z30yr1bQNdcNxg2bAwq0bQvm2YCj6rSd
	 jBMA15Ce3zgWbCxY+L7Wb4OcdRMQklTLdbAwjvSG+Vo9Dw3VuMKOM0i4XBIwQ6jXDZ
	 ihGQWcIu4dLslW0I3aXZrDviux0AdmDpJsN3QD120CDkIEou4E7e+5nL/k+p+lkGcY
	 ijuZKWJt5js26p308Wz06VKHvigqxRZRQ35AqmEZxgJ6JToE/jn//Y6pYpsPs2GDTg
	 tbh20dIWTNt9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E39960A51;
	Thu, 26 Mar 2026 05:20:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6078FF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 515D360A51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:20:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F4WI0B1Z2f3d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 05:20:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F04626080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F04626080C
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F04626080C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:20:14 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-486fe655187so6123925e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 22:20:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774502412; x=1775107212;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aa8Oo9ESgQItRaqaOQ9DNzXFkC6kr5Y7gZP1T5Pf6R4=;
 b=ZOxNuakleLywM2Bmmo63mNalqwChAXt9mPMca8o1WW81rAQwYPDpbW8X8W/ziTt+ms
 WOkA5+Awy4xpkSKqMTQdy1M3sssUdwPyYYQl7g14kn5UUtgzZiFbKYbRWM7hA5gt6/pO
 IbQCXLFaVZasivb2HS/p69YD0Pq0/38EUMquB20hQx6HNZtZswcTkahcqmdoDFMrtedy
 HaKEvVnZZSrUPXUjQ9pjTO6xFIck8JnSlOBzdkyDwEZWCXeCFWqnwMIHXzNwAWIkwZc0
 HMEU22LF0nV97QoLaPftFJvr6BZvVJK/SIBGwQRDgw007J763mGuadaxvSMltkLv1ss6
 Kgig==
X-Forwarded-Encrypted: i=1;
 AJvYcCUtJuGZZUZ0xeiFUNiTSL6gL+nztatNvCYeLRLp6B/qm3N2McZ2rCjxXGfG7IbGMsf4jRsroxK2BxnsdPLXrOw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxC63W6hIo8HNNmTozmWGEqwSBUzBAD6//Nrk/CGcyS5iuceD20
 MQim+hcJn7eG42IE/H2cTl8bcddCTUJjmXAO/VlusmMGLww+AzPSs4K2nIInEMDoknA=
X-Gm-Gg: ATEYQzxlu+OhA0ZNCYldbUFIe24+z4kHNNY8mBSfe9KX4MNQDgcZ8sXmHMFai/yr9Zt
 uouFKZW1TLi449vmpQnFbQon4pdEteAtwzMO/pK3Kq9NI2k8VjA421IAGLe0Ef26Io63oA1tY9U
 HE7H2GxPt2+zc5/0cU1dGidG/4MaXJ3HOCovuEwDLxVz2vIiUxZw/owEWL5f2+f5FSB2RS1nk+q
 fNRoy8ax5NOjadD7m5iIy/05m7Js+pReKVnlno/R9ahSikV97lNTrha8aBYWzN9rtoR6Immze/w
 4PyJcHJ56+o2eiQSZpjrxgfSvKEvncpUT1fRT0WFeJTEA3zLqDHT0io2t7d/WBUXW+YeqX/ldXA
 rDDAWFo1kc2IlxN83wDu9s+6uGA9T7s5IjXSfdAKwIFy786Akit2qTZ8sEG5MZMcCtdbwJsDdjq
 uYYXDVwcrhz63DwXg1ST8n6QIyKegyhoWR7Jg=
X-Received: by 2002:a05:600c:34ca:b0:485:3a27:a960 with SMTP id
 5b1f17b1804b1-48715f0369fmr89461225e9.0.1774502411215; 
 Wed, 25 Mar 2026 22:20:11 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43b919cefd7sm5204040f8f.17.2026.03.25.22.20.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2026 22:20:10 -0700 (PDT)
Date: Thu, 26 Mar 2026 06:20:05 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aa7hsleso6z6zaubb6phx4lexqnthgdvkns5cpg75gk6w3pi3o@7skrmgryitsj>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774502412; x=1775107212;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aa8Oo9ESgQItRaqaOQ9DNzXFkC6kr5Y7gZP1T5Pf6R4=;
 b=PGjQ74q26zXrU0oY7AAYRryuOV5XGn0cb6AEEmOOU2WLJh3/CA8MQ0NJTUA4/pqVWT
 FS/CfC024ebajyH18B3IVNFJnnFWP1JQBRcy/wquXaRmnaCZgdOv/sRMKyDQEN1gFqdw
 wODPFw7YZknwrIKZssmejo03PZgvwf5jV6txnC34CHel56DQa4WUfs3UUIG76tysrJAM
 myIDpZF/of+JLxIFnl8cM3+v50dqym3hNjZqg5ikegQpOE6UkRaV88w4e8+NUZAuVh0J
 i5m95Jxm2YiiMM5Eo4FhZbO5CtTtBs8n1NACIjGsRnppOkVfFcrdNvnoUDofiPKCvL37
 8QjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=PGjQ74q2
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] devlink: unregister
 shared devlink resources on destroy
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
Cc: netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.21 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:horms@kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 82CAA32F4FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Wed, Mar 25, 2026 at 07:26:53AM +0100, przemyslaw.kitszel@intel.com wrote:
>Since shared devlink acts as a normal devlink instance, capable of all
>usual devlink operations, it must unregister its resources.
>
>I plan to make use of devlink resources on a shared instance for ice
>driver by separate series, coming soon.
>
>Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>---
> net/devlink/sh_dev.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
>index b85e5cb1edbe..5de138bf3630 100644
>--- a/net/devlink/sh_dev.c
>+++ b/net/devlink/sh_dev.c
>@@ -71,6 +71,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
> 
> 	list_del(&shd->list);
> 	devl_lock(devlink);
>+	devl_resources_unregister(devlink);

Hmm. It is driver's responsibility to call this on appropriate place,
symmetric to resource register. Why to have this in code for sh?

The idea I had was to have callbacks to driver to do things like this
and more eventually. Would it work for you?


> 	devl_unregister(devlink);
> 	devl_unlock(devlink);
> 	kfree(shd->id);
>-- 
>2.51.1
>
