Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6D0779DAF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Aug 2023 08:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E235D60B16;
	Sat, 12 Aug 2023 06:22:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E235D60B16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691821341;
	bh=Rir6U8ZVGzpEW6/xVV2+S8/l4IlW/K3zoumbfqZ2ebE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ecCt8QBAsQVZ2DI8K/zkuZN8IPk1/6T5tkGNVomPMJdhST9Bh5mXFf1/t7Hk3hYLf
	 gao9WKVdLJXPZQFcGNlcprCyF1Xjx/P+kE7BQUmPEgBiZVsQGdTCQNAp2fc2iSe2Go
	 qcolglCOnjrlL6QaRYo/wu8/2d+k1Yshng1HN9hYPdN99bO6MyFymqax8gEfhiG09o
	 vOUY0v6YFP4N4E4efnlPb9wZV56khSpYF0zkYOwRzCSfeOt8Pd37CBNxn8VWEOahs2
	 NDOtNE4nw4sYJSf12RzPSIC5qK7Y458iuHXkMu2JsWHjpdhJN8Vy6aE29Btd6h0+Ay
	 8yQguCJFmuA9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1HmenzudzzXk; Sat, 12 Aug 2023 06:22:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B968860A70;
	Sat, 12 Aug 2023 06:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B968860A70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DF771BF21A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 06:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D96E760AAC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 06:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D96E760AAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eIMt-e-TSu7C for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Aug 2023 06:22:13 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D893360A70
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 06:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D893360A70
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2b9bb097c1bso40485081fa.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 23:22:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691821330; x=1692426130;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tIaxLGslRcW1QcwxO7GUCWkC9wgWwk1uDGheKD/YCrw=;
 b=hJFgVvnZrmZ9znshVXsB4NFD7XvcSPjBh4aczTk8R+NsclcHrY5P2l8zsvrVeBvR6+
 sR0YOdPwgJKjviT2o6mptPHumSTRrUxklO8m+EXg4X+/fnp4fFQMcff1qPtXTs/aXdnS
 8aRD3ttlmDKrsMbAOKY8B026peWWVvln48VmT1X0i1u3+R7JmOwtaEmn8pO4wkqFvATl
 3J2Sge6qIGkFynnGRTAJ/m4EF3QKXTKXXMy9i/u0ilTHHzTcl6FZSgLGqLj+kVp78pE0
 g8NHn56bCBa4DFzhKJWIOFyatGXok6biWT6lIzyeSFJvk2bUeKdkFb/j3W0Ko9Tb4oxu
 IKTQ==
X-Gm-Message-State: AOJu0Yxw2DdZDZ4Zg6bpmWdCUELFNrC1Ws9CokRdznltE3AgLG+IaaOL
 IeHjspq7HbY2ZLMGwJTw5JzoRQ==
X-Google-Smtp-Source: AGHT+IEjyBAvqlEbHIM9xPstbrjCcgXcTfotTEm4wwyq+KYhjkim0j7pUrNecCBDyycYcldKCLSwcA==
X-Received: by 2002:a05:6512:3da0:b0:4f8:71cc:2b6e with SMTP id
 k32-20020a0565123da000b004f871cc2b6emr3913300lfv.33.1691821330468; 
 Fri, 11 Aug 2023 23:22:10 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 l26-20020aa7c31a000000b005224d15d3dfsm2883854edq.87.2023.08.11.23.22.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Aug 2023 23:22:09 -0700 (PDT)
Date: Sat, 12 Aug 2023 08:22:08 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNclEAXpyAFrhCh5@nanopsycho>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691821330; x=1692426130; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tIaxLGslRcW1QcwxO7GUCWkC9wgWwk1uDGheKD/YCrw=;
 b=4PctNgLywMMJCSp6BUcfrAV8WOEPnbG4kVlmHd2WEFjSmqXBcuZ/AfSLxuR4EXNmR0
 nyhBBFjS8+zL8ucP4+zurnj7NAahlSvniN3ONxIhuWJ9dvgDuArke3IfQT+NN+WfuUUZ
 CEuniya89+TOZA/kXssDd9PJmlBDK1KJK95gLegPBhP0srsdaJRI6k/9oYkGutLxC4+B
 Gv9kIZ8yJiQ1ScPq94nDqLgNVp6BZTOJ2yHdCHtyxQs9poN3oI5/f1PY9BBjLxUN3d/C
 6IMnuaPJcQrwDpiF71wfSivHhhz4qCAUuJ6sN4sQJpZwS12RLCmaUqs11Cp57p36sm1N
 IbQQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=4PctNgLy
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/9] Create common DPLL
 configuration API
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 11, 2023 at 10:03:31PM CEST, vadim.fedorenko@linux.dev wrote:
>Implement common API for DPLL configuration and status reporting.
>The API utilises netlink interface as transport for commands and event
>notifications. This API aims to extend current pin configuration 
>provided by PTP subsystem and make it flexible and easy to cover
>complex configurations.
>
>Netlink interface is based on ynl spec, it allows use of in-kernel
>tools/net/ynl/cli.py application to control the interface with properly
>formated command and json attribute strings. Here are few command
>examples of how it works with `ice` driver on supported NIC:
>
>- dump dpll devices
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--dump device-get
>[{'clock-id': 282574471561216,
>  'id': 0,
>  'lock-status': 'unlocked',
>  'mode': 'automatic',
>  'module-name': 'ice',
>  'type': 'eec'},
> {'clock-id': 282574471561216,
>  'id': 1,
>  'lock-status': 'unlocked',
>  'mode': 'automatic',
>  'module-name': 'ice',
>  'type': 'pps'}]
>
>- get single pin info:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-get --json '{"pin-id":2}'
>{'clock-id': 282574471561216,
> 'module-name': 'ice',
> 'pin-board-label': 'C827_0-RCLKA',
> 'pin-dpll-caps': 6,
> 'pin-frequency': 1953125,
> 'pin-id': 2,
> 'pin-parent-device': [{'id': 0,
>                         'pin-direction': 'input',
>                         'pin-prio': 11,
>                         'pin-state': 'selectable'},
>                        {'id': 1,
>                         'pin-direction': 'input',
>                         'pin-prio': 9,
>                         'pin-state': 'selectable'}],
> 'pin-type': 'mux'}
>
>- set pin's state on dpll:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-set --json '{"pin-id":2, "pin-parent-device":{"id":1, "pin-state":2}}'
>
>- set pin's prio on dpll:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-set --json '{"pin-id":2, "pin-parent-device":{"id":1, "pin-prio":4}}'
>
>- set pin's state on parent pin:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-set --json '{"pin-id":13, \
>                      "pin-parent-pin":{"pin-id":2, "pin-state":1}}'
>

For the record, I'm fine with this patchset version now.
Please merge and make this jurney to be over. Thanks!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
