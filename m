Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DE57383CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 14:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79473820B7;
	Wed, 21 Jun 2023 12:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79473820B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687350611;
	bh=jZqHrQrTlLZGrlWcJrg2GVbKawBto1K4//96Docqqlg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AYr05Xb9ccZPuEw/n3bisLXCnBTNb9h8mlkKcNuQN3uACCthRH8Y5JSsSv6aPkJGR
	 srO0GXBInsOwU+Acpxhu5sdeiiEkkjLYGBOZBcWi51ZZdCDSKL6p3T/Pubhl1I4fAr
	 2vUIIJFyBM3HNFjDKGhTY1cNeYdses0YcGMBQWi5Di4T2bG0fq0V7GZg4wNSO+jaoU
	 YKhYIvG5zdO+P49QhkVrY3KEipc/8RMuRDlAiKU/StdGdfLXruCamrPNFd6MpHv5/a
	 fsbdoXPVqBvB/ssw4jZ3vHbhQO1lusuQhBYrNXVrUuPsP46UQnKNbZhSoE3/W4XtKX
	 diAUL4dtj/JMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwIiJp-ikmLN; Wed, 21 Jun 2023 12:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C9AF820E7;
	Wed, 21 Jun 2023 12:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C9AF820E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7237A1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 12:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42A9840BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 12:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42A9840BE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KurN5-M22m2x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 12:30:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F97840125
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F97840125
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 12:30:03 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-4f640e48bc3so7831358e87.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 05:30:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687350601; x=1689942601;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R9RGfJqgepIeBvJ1OfKk1XmicseQJBOqqkZjFv/Sa90=;
 b=hk1mOhzfhhN0P3s4+2uS4E6JYPWRAL7v5f3ko+BuMxu7b6PA/kLjNZ+Si4xuQ7jpTU
 rNn/HL+q1Py9/RkXs963bScTaQO/RSNei3z0odaJQ+//RCBTdDsrO7TZIN/qMDLI9N7j
 KDllJU0209AlapZl50ki8YB3h9Os6KterZdymbzrcHXTXF3C/JSLo1NWwWxGWlbKOPrD
 FddJv/I256+bJf8P5cOiOBu2jfB2OIzeh8d+kNHkMij+tdBHOcp+j1j80eZwiB/HxudR
 6wyd3dxfLidr5IfmnTEMne4eM+rRpuayfj32PXYh4FLG13aub2Ec/ZLJR6vgtWHa9kFf
 me4A==
X-Gm-Message-State: AC+VfDxWIjRiPrtZbzineJxyPXsDcNCGQAB4DbAtPikk0G0OsUWESdYe
 cfmpVoL49yg21Vi8/2nLIH+9lA==
X-Google-Smtp-Source: ACHHUZ5n1us+Bo/SpNyVjWkH9hnrHLxyGkJ086GdwXI8vcD2bjT3FD19WznXfwbxPjwjeY65NzV9QQ==
X-Received: by 2002:a19:7715:0:b0:4f9:5a87:1028 with SMTP id
 s21-20020a197715000000b004f95a871028mr998668lfc.30.1687350601263; 
 Wed, 21 Jun 2023 05:30:01 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 x1-20020a5d4441000000b00311d8c2561bsm4376924wrr.60.2023.06.21.05.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 05:30:00 -0700 (PDT)
Date: Wed, 21 Jun 2023 14:29:59 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJLtR0c+tvCbUgri@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-9-arkadiusz.kubalewski@intel.com>
 <ZISmmH0jqxZRB4VX@nanopsycho>
 <DM6PR11MB4657161D2871747A7B404EDD9B5FA@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657161D2871747A7B404EDD9B5FA@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687350601; x=1689942601; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=R9RGfJqgepIeBvJ1OfKk1XmicseQJBOqqkZjFv/Sa90=;
 b=EkqoBWjMr87RPy89et6BGhuw9VAPZh7M+VK6jbsmEABD22QZZD6QcVmEmD0YKxTD3i
 NFifzn2AbhccQE8IS2d4oMw6SbNGIvnDgO3+FnbrVyacR7rd3gQ33x9OKxIFKXHFgQxU
 Bv7htOjEJeg2jVHoz1cAzYz1FCO+UYTGSokSdXVKZJ8oWzrEjoc6oosLLIGauk35oxeB
 fcRL7THnuGMfucqzTYbmGsnzDX2XCIVoqReAHk3Uu0S52nmlVnY90+BNjuqKXwsIKpxr
 xS6Q2JQnfzg+Hegrb/1bzxj5Tzo1AKsS3qAAnNufUJ1JsCy6SOsxkScjyFjut5bGuZF1
 Omtg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=EkqoBWjM
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 08/10] ice: implement dpll
 interface to control cgu
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jun 19, 2023 at 10:34:12PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Saturday, June 10, 2023 6:37 PM
>>
>>Fri, Jun 09, 2023 at 02:18:51PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>
>>[...]
>>
>>
>>>+static int ice_dpll_mode_get(const struct dpll_device *dpll, void *priv,
>>>+			     enum dpll_mode *mode,
>>>+			     struct netlink_ext_ack *extack)
>>>+{
>>>+	*mode = DPLL_MODE_AUTOMATIC;
>>
>>I don't understand how the automatic mode could work with SyncE. The
>>There is one pin exposed for one netdev. The SyncE daemon should select
>>exacly one pin. How do you achieve that?
>>Is is by setting DPLL_PIN_STATE_SELECTABLE on the pin-netdev you want to
>>select and DPLL_PIN_STATE_DISCONNECTED on the rest?
>>
>>
>>[...]
>
>AUTOMATIC mode autoselects highest priority valid signal.
>As you have pointed out, for SyncE selection, the user must be able to manually
>select a pin state to enable recovery of signal from particular port.
>
>In "ice" case there are 2 pins for network PHY clock signal recovery, and both
>are parent pins (MUX-type). There are also 4 pins assigned to netdevs (one per
>port). Thus passing a signal from PHY to the pin is done through the MUX-pin,
>by selecting proper state on pin-parent pair (where parent pins is highest prio
>pin on dpll).

Could you show me some examples please?


>
>Thank you!
>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
