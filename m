Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 750CEC536E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 17:35:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D47260E3E;
	Wed, 12 Nov 2025 16:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2TVGksi2k3tH; Wed, 12 Nov 2025 16:35:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 663F460E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762965322;
	bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KRSPnKlJ9mbSLrlZmfQUiR5FLVgbKbh3gHqIHT0XdoUU2WVPLBHRITsaY40AqY4Eo
	 PpOTMSBDN0MX346f896vBi/mMsQhZQy5HKmGActFMOi1+hCM4vheRpWcsVknlU/LFy
	 HSul52l43eyW1+HJ2R/bnOCaV9hrcGuaaRmLIlllC31OKcDbyiAnDJYnZ/aZ0R7eWj
	 FnhWScM4dSM4NkX1s9hV2oN39rXaobOKkg0RRr1jwR5Fk+43qfYNk9Sb90erYkfGJX
	 BNibx2eG/jRbgYYxBLo086SygL1ls3r9E0OkZe2DU5y5w2QI53Y2y/7t0r8lohfOx8
	 XzZS7K/vNqCKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 663F460E35;
	Wed, 12 Nov 2025 16:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F3E7125D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1923407D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:04:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OIQ6bXBBOe4L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 15:04:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=pmladek@suse.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E214C400A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E214C400A5
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E214C400A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:03:59 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-b73161849e1so387985166b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 07:03:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762873437; x=1763478237;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
 b=lPSD7fQ+HNCW+96bF+v0g8KPy3guzvvR348xlxetpXyVF2624DAEMTuu+GgwebYbli
 PXyoPW/zYU2cRUUKiJoKZ3pGmgAKnXeoeLbSiCRCmCXL8zNz4kLgwsc3nIcELOO08NoK
 5BNunU1/+9B8cwlZH8zhcJGWpAsv5P+u30iZOGmF68z4O3T+a2sqbDqy1XuZoPqpbscj
 5qWxbCdLmxdRzae/XrswVwyDiKvT7RRnLnrmzGYzwnH3O2FFNCNNqR3xO5daw+iApOI1
 SkHSSvp0th2r0HOCEEytCKOA+dVFBKGR7CYEOSrMYIDnKWGhhhj0P6WiwAF7GRg1724e
 eDOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfRvUlvsFmzSPzZzaCJEXlqNrOncVZLmPrw+Sn1uz0OhKTrVWvH57xX8J64YS1iqk9eve4BkyoVMKygaLeU4s=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yws0nSeS5+gyindu16VMNi+Mn5y62RLQAOZdRPf7wKNUpJXTzZH
 gbTdx39YyzGoJcOeGCdQkfoDMABrlxK+j4yXXavwkJlOJrUtgIG6nIaJMG61K2QlWXU=
X-Gm-Gg: ASbGncu6oPBruxa+sdpIx8ldcvOi2N72/1XO1rGhnIQhAO7qKV9091dLfNIMPLRWKd3
 /NQT5YTQ3Oh6nz3g4wOnJB56UzNFx43OFnj3EURzhCEjOX35QG6/6ki1pOYMdkPxjEF44UamLKO
 GLJqvNMtUxDYE2O2m3PVbqPiBvuS4+irxn7uCZQwTTFvV7Zgu9NUt1CecIBvxOIo0XBrdJfWtL+
 Xyu6UWC4xkTx2UcYnbZ3jlWIRZWHYZf0QY+yMyTLadMvERKVkOTOY481vzz+E2H0UowmSvv6w+U
 f6eZOCDiO8Iy/S18LCfygY5Rjc6bO2FqsmlGITp6BIKbS5tHwX94n6iI3XGxBzjt0aQmqQuAxea
 cmJ/0TrIOj4Y5md+aUA9lUYGHgjGbAnr/t8VvFZ+xpE9kalJQBEpabL8Tj9h9Cz56HSpZx2eOO1
 XG4Pk9VlTPCaolD3EasA==
X-Google-Smtp-Source: AGHT+IGWUxoIalLG5xLZllX+zCkekRXIo7e3xykwl2APS2wZQPGHNLqastwX+dw6XlJnfwm9Fe+bGg==
X-Received: by 2002:a17:906:f590:b0:b71:cec2:d54 with SMTP id
 a640c23a62f3a-b72e04e4ebemr1306841566b.57.1762873437355; 
 Tue, 11 Nov 2025 07:03:57 -0800 (PST)
Received: from pathway (nat2.prg.suse.com. [195.250.132.146])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b72bdbc9656sm1374243166b.7.2025.11.11.07.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 07:03:56 -0800 (PST)
Date: Tue, 11 Nov 2025 16:03:53 +0100
From: Petr Mladek <pmladek@suse.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Corey Minyard <corey@minyard.net>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>,
 Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Message-ID: <aRNQWc8O2y94zoj8@pathway>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
 <20251111122735.880607-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111122735.880607-2-andriy.shevchenko@linux.intel.com>
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762873437; x=1763478237; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
 b=ISETnJN+iOej44LPk3WYFbjaEqFSuW2BXtLOXll2E3C5ceJC07svB2ReB5BNbkmfMK
 kxZFtMRao0VK+812LkX6doJKblehL+JWrbRXhcaOphDsFkrqONcLfrNUEmt3erXbLI5A
 CnWPJOzO4mUYL80uBPKRkJdjKVxrZb+4px+GXfu3b49qjIKkgH2zwWj/z/8dtIkTCCep
 GCWrXyx2SPbp9+WwXkghvBxQarwr2CcJlP0ZELT01ZjeES29kUalRsIkTvOtkkbu+ahp
 RBz8765xGGyErRTMSFN3jfCcWeSGckjd5GC97teYOVYZf3ywcN9bjNRCTC5xQ2IpIwfP
 0YZQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=suse.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=suse.com header.i=@suse.com header.a=rsa-sha256
 header.s=google header.b=ISETnJN+
Subject: Re: [Intel-wired-lan] [PATCH v2 01/21] lib/vsprintf: Add specifier
 for printing struct timespec64
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue 2025-11-11 13:20:01, Andy Shevchenko wrote:
> A handful drivers want to print a content of the struct timespec64
> in a format of %lld:%09ld. In order to make their lives easier, add
> the respecting specifier directly to the printf() implementation.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  Documentation/core-api/printk-formats.rst | 11 ++++++++--
>  lib/tests/printf_kunit.c                  |  4 ++++
>  lib/vsprintf.c                            | 25 +++++++++++++++++++++++
>  3 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
> index 7f2f11b48286..c0b1b6089307 100644
> --- a/Documentation/core-api/printk-formats.rst
> +++ b/Documentation/core-api/printk-formats.rst
> @@ -547,11 +547,13 @@ Time and date
>  	%pt[RT]s		YYYY-mm-dd HH:MM:SS
>  	%pt[RT]d		YYYY-mm-dd
>  	%pt[RT]t		HH:MM:SS
> -	%pt[RT][dt][r][s]
> +	%ptSp			<seconds>.<nanoseconds>

I know that that there was no good choice. But I am curious.
Does the 'p' stands for some particular word, for example, "plain" ?

I do not want to start bike shedding but I think about
using 'n' as "number".

> +	%pt[RST][dt][r][s]
>  
>  For printing date and time as represented by::
>  
> -	R  struct rtc_time structure
> +	R  content of struct rtc_time
> +	S  content of struct timespec64
>  	T  time64_t type
>  
>  in human readable format.
> @@ -563,6 +565,11 @@ The %pt[RT]s (space) will override ISO 8601 separator by using ' ' (space)
>  instead of 'T' (Capital T) between date and time. It won't have any effect
>  when date or time is omitted.
>  
> +The %ptSp is equivalent to %lld.%09ld for the content of the struct timespec64.
> +When the other specifiers are given, it becomes the respective equivalent of
> +%ptT[dt][r][s].%09ld. In other words, the seconds are being printed in
> +the human readable format followed by a dot and nanoseconds.
> +
>  Passed by reference.
>  
>  struct clk
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 3f99834fd788..fdd06e8957a3 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -2464,6 +2488,7 @@ early_param("no_hash_pointers", no_hash_pointers_enable);
>   * - 'g' For block_device name (gendisk + partition number)
>   * - 't[RT][dt][r][s]' For time and date as represented by:

We should add 'S' here as well:

   * - 't[RST][dt][r][s]' For time and date as represented by:

That said, I am not sure about the optional '[p]'. We could
either do:

   * - 't[RST][p][dt][r][s]' For time and date as represented by:

or

   * - 'tSp'	For time represented by struct timespec64 printed
		as seconds.nanoseconds
   * - 't[RST][dt][r][s]' For time and date as represented by:

>   *      R    struct rtc_time
> + *      S    struct timespec64
>   *      T    time64_t
>   * - 'C' For a clock, it prints the name (Common Clock Framework) or address
>   *       (legacy clock framework) of the clock

Otherwise, it looks good.

Best Regards,
Petr
