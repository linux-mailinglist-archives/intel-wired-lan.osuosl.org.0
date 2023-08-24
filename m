Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DB97867F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 08:59:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AED1418F8;
	Thu, 24 Aug 2023 06:59:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AED1418F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692860395;
	bh=7F3T8Slr6oZOIEG7ICAc+UdLDspKlI4ibRugXtjNqd4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EuP0SxErLpxnJJAY7vDlDlRiNU3TVJZlAnWogcqLZmGZFYNPsfAe63LJt/lsCo/MY
	 atsT8KIu5kz0w9IKfsry2NxIsCBfN8JHeE57ugtdrLXTjXyXLwg+Pyj5LL7NQNnb+o
	 nvJyYmu62EMp8/2dMTgwSU7fUOuMTiwh33NickOzSeUKhv03pu94E9TRUEq7NACqyr
	 hMurGO6w+7vbXE8gl7bmrhvy6CzfSB8nh0j9SY4vVqeC9CNyysuZJ1HQ/6Hyk4KMEW
	 IAubbdcVEJrOWTvtEim/fbxeIhDFqooENZTg8LH8gxVyMe4e5NwLzVKchxTTOnHzfS
	 VOmWePXxm1uRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PphMcYWMw2hS; Thu, 24 Aug 2023 06:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2C254056A;
	Thu, 24 Aug 2023 06:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2C254056A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1E7A1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 06:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1ECC4118A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 06:59:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1ECC4118A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sezr1qaBzq02 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 06:59:47 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEDE641172
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 06:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEDE641172
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-400a087b0bfso8556755e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 23:59:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692860384; x=1693465184;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+xVvlCGex8MTTZYxV9+n6jIh21hrXPC9JzY4cLwH6KA=;
 b=dwNuRfmfYIJ7lMYV0l9KidVBH14JJZUq70O1U7VSh3qeShX5RYNJMfpkcZ1xfiw12D
 Au+TRZPSAmDMJpVAjCE8hFv0JahNFpLnoIk3IpKv8IdAPf6gewqrt0vbh9MpKHwmpxHh
 irdyPiTLfiptdfV00hajiyebUo5O8KhOynSiWVFXJMNxv2DhWPTLh+BKVtAq3g0m8BZ4
 +B2OFYvz4hYXade4AQHiIuAW+pY7TGTF0EXjyydOF5p0uZPaluNeAuZadEnvq/L/8ekW
 rnADZWBop5QW2vIUM7CmHbJGcFuMlcpul1fpj87L0T6qfBQNJc/hCL67hwAWU8yLjN5c
 87fg==
X-Gm-Message-State: AOJu0YwRw0QrYIvpTb15Sur9zsAAnZkzYQG1bFtY7Uyh90NNJZeMigFg
 KodB4GzIVGMMrperzhzceOVuuw==
X-Google-Smtp-Source: AGHT+IHV5h/gWiGqWISIXTEBzuyi+BE2xkRY/zgFh1SxLekzv+sqKnQhfmfoEMGVAG+tjnX0+xWpsg==
X-Received: by 2002:adf:edca:0:b0:31a:d7fc:28f with SMTP id
 v10-20020adfedca000000b0031ad7fc028fmr12034332wro.19.1692860384103; 
 Wed, 23 Aug 2023 23:59:44 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 y17-20020adfe6d1000000b003176eab8868sm21246718wrm.82.2023.08.23.23.59.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Aug 2023 23:59:43 -0700 (PDT)
Date: Thu, 24 Aug 2023 08:59:42 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZOb/3qbGKS4+6Slu@nanopsycho>
References: <20230823225242.817957-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823225242.817957-1-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1692860384; x=1693465184; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+xVvlCGex8MTTZYxV9+n6jIh21hrXPC9JzY4cLwH6KA=;
 b=JA/SlRiSGXLmyf4uxdL8Ezug//3djjbWkWBwFLDDwMEZb8sfx3E/tGZNzckZiddzdY
 vzZdao/SmZppv1Jwr8TYyz+1EEMuiXtaqhPJ7UsLHabhBVyNQllseyx+wcxHnck5PYfx
 3hjWgKX243esYSmP+UJ9iPL8O54M2Y1okgV06RTexXMWQJin22ja0auiPFgIJxZxJuaI
 0qIi2d3hAdKgKRPFYf5Kr6t0K2llnb2ccWk78c7jf4OX2MR20VO/5sXnz2HOzK16yds/
 PV7MZCBC2Ro5kwyuyRG7lb7ghiiAWapS+FketmqQpxWVxUlSyzuqj3dxhlKM2K9It+vQ
 2oRQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=JA/SlRiS
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/9] Create common DPLL
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

Thu, Aug 24, 2023 at 12:52:33AM CEST, vadim.fedorenko@linux.dev wrote:
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
>- dump dpll devices:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--dump device-get
>[{'clock-id': 4658613174691613800,
>  'id': 0,
>  'lock-status': 'locked-ho-acq',
>  'mode': 'automatic',
>  'mode-supported': ['automatic'],
>  'module-name': 'ice',
>  'type': 'eec'},
> {'clock-id': 4658613174691613800,
>  'id': 1,
>  'lock-status': 'locked-ho-acq',
>  'mode': 'automatic',
>  'mode-supported': ['automatic'],
>  'module-name': 'ice',
>  'type': 'pps'}]
>
>- get single pin info:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-get --json '{"id":2}'
>{'board-label': 'C827_0-RCLKA',
> 'clock-id': 4658613174691613800,
> 'capabilities': 6,
> 'frequency': 1953125,
> 'id': 2,
> 'module-name': 'ice',
> 'parent-device': [{'direction': 'input',
>                    'parent-id': 0,
>                    'prio': 9,
>                    'state': 'disconnected'},
>                   {'direction': 'input',
>                    'parent-id': 1,
>                    'prio': 9,
>                    'state': 'disconnected'}],
> 'type': 'mux'}
>
>- set pin's state on dpll:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-set --json '{"id":2, "parent-device":{"parent-id":1, "state":2}}'
>
>- set pin's prio on dpll:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-set --json '{"id":2, "parent-device":{"parent-id":1, "prio":4}}'
>
>- set pin's state on parent pin:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>--do pin-set --json '{"id":13, "parent-pin":{"parent-id":2, "state":1}}'
>
>
>Changelog:
>
>v5 -> v6:
>- change dpll-caps to pin capabilities and adjust enum accordingly
>- remove dpll.h from netdevice.h

For the record, I'm fine with this version and my signed-offs stand.

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
