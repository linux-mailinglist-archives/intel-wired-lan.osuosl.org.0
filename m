Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C94C6DE41
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 11:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8909B60E43;
	Wed, 19 Nov 2025 10:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KLqtp2cglksD; Wed, 19 Nov 2025 10:09:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D458B60888
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763546968;
	bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YLXChKXrCrBk+HybmekprtppUq4cuqlpfojw49Yj4y8PISJDIdsgzmYOcBe/qzH5b
	 IYqXPyuoM4ZflZFh/cETBamXvL6mYuLDCcmBvxKOD1yOVtYGu4zh+tCklqkSQarawH
	 9Bff1Kd/ABWOUyVhRYjjlauDAwoAxeJUOfUk/iMcnUbYdNTZDUEyi6wDMslvy9L2VN
	 3Q+dWA433hEI7Sj52C7vB7mvhcNwGG3qWzR3gMQBH5E1F3COayOXvPLqX+j7jUbKGB
	 cjgZ+eQBp846lbSnhWWHmhcoDpc/K74gWUSIEBQ8EcOmAZWV7Bc2qJ30d1hkhSQxNW
	 LK5eqdx9yR/BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D458B60888;
	Wed, 19 Nov 2025 10:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 55C1D37D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 10:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 479A440AD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 10:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y8mJF6Uu_QpU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 10:09:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=pmladek@suse.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2386841D95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2386841D95
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2386841D95
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 10:09:25 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-b7277324204so903950566b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 02:09:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763546963; x=1764151763;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
 b=k/YbYLmzdC8xJzq55tp5xPDZwLwiSzW9KVySxl7rNA+80mChKJ04dKSg39+ef7dc+t
 nTBwzy2n3ERtbFNFwXQAFyTUp5cdjfbYCJSA3ITjyEUFhQz2UuAKkt5yEdvctbe1Oftd
 iGh4ZJRcl9lfGUJHLOdcb43iJJQVlHqBkDMTouki8xC6w/WLyXxTq6+h+L0vFa+4Uo41
 Zkc639656DPJGVzTmalFXxRkoUojFTSki/UwXhzrQGBXb8qKLdmgR2wieqovNSL6BXMZ
 A0gCMKOHkSUEZm140Izp/ja6bqHdQ9ir04BYnSoSF5D0t/CrxmqYLA+Wfn4VoUFnyfuE
 C8ew==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJe0jyKWlPqNFRautkZWWGP0y+RA45zyLemgKMMl9IDDrU7TBNnmvtKuLIrW4dyo4o+RR9UCnvp93hxKtX+IY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YydYSIlNVKw3nXCSeiUY68fhX/01+GOj+5MvltyLz/8/bTwqFTG
 2y0AxnzfbuOlDAnIIuu3xwQlvjwLWnGIhMmOUbJpKDJLRp2dOb7s+mouFefut9H1HC0=
X-Gm-Gg: ASbGncuEaPVZHkDyGrKRAztdCROpq4nQA+xNPTl/JRGEZEDO/9suwkuZKjjNmE4yrYe
 5j5hrZNTWfTePV9WEBIp7sbuh8+sQNNpf775DTsr+viD9MsAxhWopRyg32Ap1nRpBVDarX0B/na
 IWSQ8FzwNMzdP1Kuh9//eKfnF3+plsQBIP+dUEQcFWfvW9+6Rzib5uGhpdanO2xGn7jSdPQNxuZ
 famIvIRbDSr26hQliIchdFsJTqyCTfjfoLSv5zpZeJbdHtfUZ0iBS8RjSVZ+hsCABhYkP15i3mZ
 pv97ifamib/o5BNcfxHji19ErVf1rBRJF52F4TzGXVVVAnGw3VcJ8khtpHtWFij9pkrC6j2cIQC
 zQoJWgRjIqqi8uH7WREVUv6vu7UkE9IIb1P8Bo8tj2cocM9xfAhAJXpZtoK/zkTM8k7DB8VBEAX
 ysPUv1oRGI0kqg2eQFyqJ3NoSh
X-Google-Smtp-Source: AGHT+IHL60A5nBupA1OyvdeZdvK8rVJqcdAj2UJ8GMSSqilZDEkvpcYDaNSL65+yyn9lVOsemK499g==
X-Received: by 2002:a17:907:1c81:b0:b72:d2df:641c with SMTP id
 a640c23a62f3a-b736795d498mr2006941666b.49.1763546963352; 
 Wed, 19 Nov 2025 02:09:23 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.130])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b734fda8bc8sm1594056066b.49.2025.11.19.02.09.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Nov 2025 02:09:22 -0800 (PST)
Date: Wed, 19 Nov 2025 11:08:01 +0100
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
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
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
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
Message-ID: <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1763546963; x=1764151763; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
 b=F5XvTzGv3siaUWRtMv2iE1+GXAkk7oe04CSlgiGvSOuD6p/Cl92iVnTXnXsbhgN64Y
 6+HzaDfFk7DKg4QNmsRdiobGLMzw7ZRCOKkKKbEdcSM2HxQKElls7OhDu1wSNtlCcSvb
 IJU9YcdPNWRYJwhlNoFhFStDIAm6JwThQARZvl1sRvbUMCr4yrjmS3b7qu43PXnWNrYe
 nxI7nd3wpyUNFvgTAmJKKfWF517JHuvtWr+TmJZEF/EN/LKYKQi8a+sdz5sbinsUPTDx
 rfRH0fKDbhAB6sO4qYM6/5tz/UKyHI3YazMJ1oG2jtWcZWcwij7u8SNTYP8Pv33Ne+8N
 yrZQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=suse.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=suse.com header.i=@suse.com header.a=rsa-sha256
 header.s=google header.b=F5XvTzGv
Subject: Re: [Intel-wired-lan] [PATCH v3 19/21] scsi: fnic: Switch to use
 %ptSp
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

On Thu 2025-11-13 15:32:33, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.

I was about to commit the changes into printk/linux.git and
found a mistake during the final double check, see below.

> diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
> index cdc6b12b1ec2..0a849a195a8e 100644
> --- a/drivers/scsi/fnic/fnic_trace.c
> +++ b/drivers/scsi/fnic/fnic_trace.c
> @@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  {
>  	int len = 0;
>  	int buf_size = debug->buf_size;
> -	struct timespec64 val1, val2;
> +	struct timespec64 val, val1, val2;
>  	int i = 0;
>  
> -	ktime_get_real_ts64(&val1);
> +	ktime_get_real_ts64(&val);
>  	len = scnprintf(debug->debug_buffer + len, buf_size - len,
>  		"------------------------------------------\n"
>  		 "\t\tTime\n"
>  		"------------------------------------------\n");
>  
> +	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
> +	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
>  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -		"Current time :          [%lld:%ld]\n"
> -		"Last stats reset time:  [%lld:%09ld]\n"
> -		"Last stats read time:   [%lld:%ld]\n"
> -		"delta since last reset: [%lld:%ld]\n"
> -		"delta since last read:  [%lld:%ld]\n",
> -	(s64)val1.tv_sec, val1.tv_nsec,
> -	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
> -	stats->stats_timestamps.last_reset_time.tv_nsec,
> -	(s64)stats->stats_timestamps.last_read_time.tv_sec,
> -	stats->stats_timestamps.last_read_time.tv_nsec,
> -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
> -	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
> -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
> -	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
> +			 "Current time :          [%ptSp]\n"
> +			 "Last stats reset time:  [%ptSp]\n"
> +			 "Last stats read time:   [%ptSp]\n"
> +			 "delta since last reset: [%ptSp]\n"
> +			 "delta since last read:  [%ptSp]\n",

Both delta times are printed at the end.

> +			 &val,
> +			 &stats->stats_timestamps.last_reset_time, &val1,
> +			 &stats->stats_timestamps.last_read_time, &val2);

I think that this should be:

			 &stats->stats_timestamps.last_reset_time,
			 &stats->stats_timestamps.last_read_time,
			 &val1, &val2);

>  	stats->stats_timestamps.last_read_time = val1;

The original code stored the current time in "val1". This should be:

	stats->stats_timestamps.last_read_time = val;

> @@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);

Just for record. Another values are stored into @val1 and @val2 at
this point.

>  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -		  "Last ISR time: %llu (%8llu.%09lu)\n"
> -		  "Last ACK time: %llu (%8llu.%09lu)\n"
> +		  "Last ISR time: %llu (%ptSp)\n"
> +		  "Last ACK time: %llu (%ptSp)\n"
>  		  "Max ISR jiffies: %llu\n"
>  		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
>  		  "Corr. work done: %llu\n"
> @@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  		  "Number of rport not ready: %lld\n"
>  		 "Number of receive frame errors: %lld\n"
>  		 "Port speed (in Mbps): %lld\n",
> -		  (u64)stats->misc_stats.last_isr_time,
> -		  (s64)val1.tv_sec, val1.tv_nsec,
> -		  (u64)stats->misc_stats.last_ack_time,
> -		  (s64)val2.tv_sec, val2.tv_nsec,
> +		  (u64)stats->misc_stats.last_isr_time, &val1,
> +		  (u64)stats->misc_stats.last_ack_time, &val2,

So, this is correct!

>  		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
>  		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
>  		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),


Now, I think that there is no need to resend the entire huge patchset.

I could either fix this when comitting or commit the rest and
you could send only this patch for review.

Best Regards,
Petr

PS: All other patches look good. Well, nobody acked 7th patch yet.
    But I think that the change is pretty straightforward and
    we could do it even without an ack.
