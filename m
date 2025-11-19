Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29380C6DF99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 11:27:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B1476081B;
	Wed, 19 Nov 2025 10:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8MzRnnx_RbA; Wed, 19 Nov 2025 10:27:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA73E60866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763548034;
	bh=S5WY+lURmUw0HR9k8yrpqOUBVS/BrDvLbJrZD1jEg78=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hb9xx+ynCZ/IhdcpGJh6i9g1jbZ7OvkUOWS9ltB3nQ+PY2Mjf/LiC9CDoAFhN13Fc
	 apQCbq+u+LkRCXNq8vy01usYVTPhDEv00Uk1j3riN0t0trL8FOUeLweZMg1DJo3YrT
	 3ezFANExL4s0tgtjWQHFlWlkGdRR601vQSJcHa0vBy//+wAVFNX9K/+iFUpF+8r8oZ
	 rohZ5Okx21DnHMAU4h1ubz9ySUSXBh/D/pYOPBnmVGq3/zZoD01Ul0gZwnIKT8jXHe
	 lG7XI7//cK241hhhfS4BjwcDFFz6B9caMqkJ6YRjjpgtAKs3pyl6SpS78evCApWaAz
	 PVtlr7risUxxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA73E60866;
	Wed, 19 Nov 2025 10:27:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B6AF37F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 10:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 386C06081B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 10:27:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 88niw3ugFkIM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 10:27:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06822606CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06822606CF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06822606CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 10:27:12 +0000 (UTC)
X-CSE-ConnectionGUID: UDmfeYiISTmJxZyA/sPExA==
X-CSE-MsgGUID: ZzOVtTycQEyds8ft4v4JEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65286214"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65286214"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 02:27:12 -0800
X-CSE-ConnectionGUID: BabbyDhyQAOE+ZtEsTT7/g==
X-CSE-MsgGUID: bIH3DAOlTZmt1WuzGTp/dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="195322765"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.245])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 02:26:53 -0800
Date: Wed, 19 Nov 2025 12:26:51 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Petr Mladek <pmladek@suse.com>
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
Message-ID: <aR2bazZn8m4EMHdW@smile.fi.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
 <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763548033; x=1795084033;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jmw9bhTP6DqEEo8SaI642JH1s3dFqQGzetmEw8f3+f0=;
 b=Uub4nHkRXSC+hnBu27O5tKmxAlldiCxHJ9/XxSy3YnF/Vc4RscCcxarX
 rHbteFtADMCt0C4+APJzeOtkk5HvpsproH68SzNaqQavzxhVn794hLC8C
 XTH8DSEkpt2QoDEHTGP1Lu+lZpsPAokYkk6RZtjJibrtuZJCDP/xMtCfZ
 tYmhyAp1uUOYt2uJs1kdghrU2Q9u9W+TlFv3cnHH7o3menN1T7UvLgS/r
 /+W34L81z9C4AiAvSB3hC+m0rRGvVu5BMcqF0WuZwJhBe46pBuzZqE/jV
 lRo9WYBjH1UuDpwrT9eB/1lbyz24d7E+9hABlhth9E2IsH4czsQ+ksMVy
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uub4nHkR
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

On Wed, Nov 19, 2025 at 11:08:01AM +0100, Petr Mladek wrote:
> On Thu 2025-11-13 15:32:33, Andy Shevchenko wrote:
> > Use %ptSp instead of open coded variants to print content of
> > struct timespec64 in human readable format.
> 
> I was about to commit the changes into printk/linux.git and
> found a mistake during the final double check, see below.
> 
> > diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
> > index cdc6b12b1ec2..0a849a195a8e 100644
> > --- a/drivers/scsi/fnic/fnic_trace.c
> > +++ b/drivers/scsi/fnic/fnic_trace.c
> > @@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> >  {
> >  	int len = 0;
> >  	int buf_size = debug->buf_size;
> > -	struct timespec64 val1, val2;
> > +	struct timespec64 val, val1, val2;
> >  	int i = 0;
> >  
> > -	ktime_get_real_ts64(&val1);
> > +	ktime_get_real_ts64(&val);
> >  	len = scnprintf(debug->debug_buffer + len, buf_size - len,
> >  		"------------------------------------------\n"
> >  		 "\t\tTime\n"
> >  		"------------------------------------------\n");
> >  
> > +	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
> > +	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
> >  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> > -		"Current time :          [%lld:%ld]\n"
> > -		"Last stats reset time:  [%lld:%09ld]\n"
> > -		"Last stats read time:   [%lld:%ld]\n"
> > -		"delta since last reset: [%lld:%ld]\n"
> > -		"delta since last read:  [%lld:%ld]\n",
> > -	(s64)val1.tv_sec, val1.tv_nsec,
> > -	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
> > -	stats->stats_timestamps.last_reset_time.tv_nsec,
> > -	(s64)stats->stats_timestamps.last_read_time.tv_sec,
> > -	stats->stats_timestamps.last_read_time.tv_nsec,
> > -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
> > -	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
> > -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
> > -	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
> > +			 "Current time :          [%ptSp]\n"
> > +			 "Last stats reset time:  [%ptSp]\n"
> > +			 "Last stats read time:   [%ptSp]\n"
> > +			 "delta since last reset: [%ptSp]\n"
> > +			 "delta since last read:  [%ptSp]\n",
> 
> Both delta times are printed at the end.
> 
> > +			 &val,
> > +			 &stats->stats_timestamps.last_reset_time, &val1,
> > +			 &stats->stats_timestamps.last_read_time, &val2);
> 
> I think that this should be:
> 
> 			 &stats->stats_timestamps.last_reset_time,
> 			 &stats->stats_timestamps.last_read_time,
> 			 &val1, &val2);
> 
> >  	stats->stats_timestamps.last_read_time = val1;
> 
> The original code stored the current time in "val1". This should be:
> 
> 	stats->stats_timestamps.last_read_time = val;
> 
> > @@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> >  	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);
> 
> Just for record. Another values are stored into @val1 and @val2 at
> this point.
> 
> >  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> > -		  "Last ISR time: %llu (%8llu.%09lu)\n"
> > -		  "Last ACK time: %llu (%8llu.%09lu)\n"
> > +		  "Last ISR time: %llu (%ptSp)\n"
> > +		  "Last ACK time: %llu (%ptSp)\n"
> >  		  "Max ISR jiffies: %llu\n"
> >  		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
> >  		  "Corr. work done: %llu\n"
> > @@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> >  		  "Number of rport not ready: %lld\n"
> >  		 "Number of receive frame errors: %lld\n"
> >  		 "Port speed (in Mbps): %lld\n",
> > -		  (u64)stats->misc_stats.last_isr_time,
> > -		  (s64)val1.tv_sec, val1.tv_nsec,
> > -		  (u64)stats->misc_stats.last_ack_time,
> > -		  (s64)val2.tv_sec, val2.tv_nsec,
> > +		  (u64)stats->misc_stats.last_isr_time, &val1,
> > +		  (u64)stats->misc_stats.last_ack_time, &val2,
> 
> So, this is correct!
> 
> >  		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
> >  		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
> >  		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),
> 
> 
> Now, I think that there is no need to resend the entire huge patchset.
> 
> I could either fix this when comitting or commit the rest and
> you could send only this patch for review.

Thank you for the thoroughly done review, I changed that patch between the
versions and the problem is that for printf() specifiers (extensions) we do not
have an automatic type checking. We starve for a GCC plugin for that, yeah...

In any case, if you fold your changes in, I will appreciate that!
Otherwise it's also fine with me to send a patch separately later on.

> PS: All other patches look good. Well, nobody acked 7th patch yet.
>     But I think that the change is pretty straightforward and
>     we could do it even without an ack.

This is my understanding as well. It changes the output, but that output is
debug anyway. So I don't expect breakage of anything we have an obligation
to keep working.

-- 
With Best Regards,
Andy Shevchenko


