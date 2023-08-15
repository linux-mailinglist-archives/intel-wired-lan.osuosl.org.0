Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B19C377CC0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 13:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA95861110;
	Tue, 15 Aug 2023 11:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA95861110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692100343;
	bh=8GM30dp4FqYcWeuMBH80kiIl7afAqiSrYuFJsvknlzQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7dlNP3p6gmbkjcP39xa9FGyEEYyPax2wxARnJP8LTBVmb36XbkpbQgLpbEqaEYMWJ
	 KDMJVmq1340sZA5M30zv7U1RtN9RsfsXvCb2lr7QF/Cz/igV00C5Qj1SNgBNyoxtyp
	 fOqaVk4Eec1JSJI98UGhlrrTsNyIMtFY5s7u1UIWvvHuSuyd4eUJ0qGGGsRYHlFO3K
	 ZevT0EVeQnLVE0pP3h/TQnUVrJDFdwdW+hvEvOhvESwOYaN+gpsHDPZVJjMliWACrs
	 b6WuBqKVhZ/OR6H0UxOg1+6xJiOyXfkeaGuMWdRs3P0SYkJXCjRaeex+SZ7BtATuX2
	 Zlgl25yDhOZ2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bm8mStoy4drv; Tue, 15 Aug 2023 11:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B889661103;
	Tue, 15 Aug 2023 11:52:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B889661103
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 164431BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 11:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4A3F81F50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 11:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4A3F81F50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpTgzGQ7Mmb5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 11:52:14 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FD8D81F4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 11:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FD8D81F4F
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-3fe2ba3e260so52160285e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 04:52:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692100332; x=1692705132;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XG1CdDs3BJOFxaT2xWjh9aVXbUzXw0Qce5rbzwyMS1I=;
 b=DaYMJ6D1f/l8vuPiY1NcHAUhRTMQejU4NoXfXXOpCmdnchzsbYH83dBv7fUGFPdee+
 F6JaruwlNTG7A3dX6d2rn1AriAUnp61/63lrCiwRt0ZmVDr/8RaM7L34q3tOatHpnfC+
 hYamI9tAXVzQ8jhgE/1zXq4aSMV8NgkYUsPgUthYoHCfgFsJ74EemB377HTtmEw6/tdt
 lhF3XAXmQ4bTrLSVP9nh6Jr7uhGYZBr5l7o5AwRdW/lC24soWhlnQPsAuoOlYIzHnedO
 hUlgFhWiOEIbTwKEfNoLl/+BVM64IB4oWy7MZtD7dznOX04TVPkXyRotvoHA92qRlWL0
 jitw==
X-Gm-Message-State: AOJu0YzUcvOOirKOTyZ3UICDGyFI7ZDM0sYBR0V1Q/V0SYs2u9ImTY/A
 nOjmrTIPimh+HUje7d2VgnMAcQ==
X-Google-Smtp-Source: AGHT+IG4DWtf444jYikYwXk+iJ1caroN9SCLeIUZQSKVD0XACiRvyg7nhoXLwxD45xrNyqAuLwJwHQ==
X-Received: by 2002:a05:600c:214d:b0:3fe:179a:9eee with SMTP id
 v13-20020a05600c214d00b003fe179a9eeemr9396315wml.30.1692100331959; 
 Tue, 15 Aug 2023 04:52:11 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 z5-20020a7bc7c5000000b003fbe4cecc3bsm20301828wmk.16.2023.08.15.04.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Aug 2023 04:52:11 -0700 (PDT)
Date: Tue, 15 Aug 2023 13:52:10 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNtm6v+UuDIex1+s@nanopsycho>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230814194528.00baec23@kernel.org>
 <43395307-9d11-7905-0eec-0a4c1b1fc62a@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43395307-9d11-7905-0eec-0a4c1b1fc62a@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1692100332; x=1692705132; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XG1CdDs3BJOFxaT2xWjh9aVXbUzXw0Qce5rbzwyMS1I=;
 b=cx29Z2/Gf27wrI+GW+nt3MIGLYw8rdG0pM2V8V6gDIXoay6oVWyPcSlNRrXgx+ia9H
 bynI3SuDiD1rHaWKQmAYTV+ZTfQRL8SBYnGy7ugUvdKNYR2KihJl4aW/Ae6gZOEY+ppk
 C+bHh+tb7qpNR5GWM7RLqu4DpPHA6S7nI3guRFLWjxpbWRZGPcmghzt7lHjZWBPKEHrR
 2fzhXb3Ah5+iraDZEA83A635nZ1V8bHmbW2lwyeqV/rCQP+S2FLs1H33TInFKWf3s2oO
 HmUYDH1HIX7JjEYrXa0u+I/jRXatro806knbv5tOnVzBiq3f5FvOjTuiNbgH9Q+B3xzP
 HZLg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=cx29Z2/G
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

Tue, Aug 15, 2023 at 01:36:11PM CEST, vadim.fedorenko@linux.dev wrote:
>On 15/08/2023 03:45, Jakub Kicinski wrote:
>> On Fri, 11 Aug 2023 21:03:31 +0100 Vadim Fedorenko wrote:
>> >   create mode 100644 Documentation/driver-api/dpll.rst
>> >   create mode 100644 Documentation/netlink/specs/dpll.yaml
>> >   create mode 100644 drivers/dpll/Kconfig
>> >   create mode 100644 drivers/dpll/Makefile
>> >   create mode 100644 drivers/dpll/dpll_core.c
>> >   create mode 100644 drivers/dpll/dpll_core.h
>> >   create mode 100644 drivers/dpll/dpll_netlink.c
>> >   create mode 100644 drivers/dpll/dpll_netlink.h
>> >   create mode 100644 drivers/dpll/dpll_nl.c
>> >   create mode 100644 drivers/dpll/dpll_nl.h
>> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.c
>> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.h
>> >   create mode 100644 drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>> >   create mode 100644 include/linux/dpll.h
>> >   create mode 100644 include/uapi/linux/dpll.h
>> 
>> Feels like we're lacking tests here. Is there a common subset of
>> stuff we can expect reasonable devices to support?
>> Anything you used in development that can be turned into tests?
>
>Well, we were playing with the tool ynl/cli.py and it's stated in
>the cover letter. But needs proper hardware to run. I'm not sure
>we can easily create emulation device to run tests.

Well, something like "dpllsim", similar to netdevsim would be certainly
possible, then you can use it to write selftests for the uapi testing.
But why don't we do that as a follow-up patchset?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
