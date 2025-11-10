Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7C0C49CE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 00:45:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB36C40506;
	Mon, 10 Nov 2025 23:45:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aWRtDc_RbMD1; Mon, 10 Nov 2025 23:45:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4859340516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762818338;
	bh=N5NdZ3Il1D+l8lwQLcK5dXwNIadjasDY9t8ilnV/mV0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yGJonvtBY8ZUfNnpb/h5xJHHZs/o82Up7GNIyjjkPeVsCtPAcg5Xd2mrfchR2kZnd
	 heMigANVo6OVwvQ/GAk+ppAa2T7ybE8BSt07R1qATPV8FckwSaoBIj4uuXjF+xWQ9E
	 l/6ERNnJWKxMZjSSnJhqLrAElc3NnHiOvAI5XtgBu6irPf4ftnPZC5M4Rf4/vdFuJb
	 1RqbKRn2ATUhgSd5yurDNh/g+uabFpifoD/G4cduJ5yIEniyAwR4frfZzQYtrX5Q1V
	 YIbARtGr3sO/SHbArlYIScxFl8d2fvXRotYVWEGt+g5d1gWVMJVX4hxULjIwfF1Gep
	 JQfGapqaF0sjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4859340516;
	Mon, 10 Nov 2025 23:45:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AA7A125D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 945AB404D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:45:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id miv8cVlkszas for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 23:45:35 +0000 (UTC)
X-Greylist: delayed 463 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 10 Nov 2025 23:45:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BDF814041B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDF814041B
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::ae; helo=out-174.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::ae])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDF814041B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:45:34 +0000 (UTC)
Message-ID: <3eb5379f-c7ad-4aea-ab9a-20e07b7f34d0@linux.dev>
Date: Mon, 10 Nov 2025 23:37:33 +0000
MIME-Version: 1.0
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Corey Minyard <corey@minyard.net>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti
 <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li
 <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-20-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20251110184727.666591-20-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1762817866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N5NdZ3Il1D+l8lwQLcK5dXwNIadjasDY9t8ilnV/mV0=;
 b=U0xyIRecUBR+iYd+jFcmevJu/4H+A2bbNJnN96yfE0hlgn9ZMrH3LxAIKYqZS4s3cJ1uvm
 +7WK+gk43pd/VuQQ8rDReqm1AlKlWm8GBWmK3v11GgPPZIdbI1RU8LPuoyCqW5EbUBDj5d
 3Ou4TSlLX99wMRUdq/vNAC0vrqSI3Ow=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=U0xyIRec
Subject: Re: [Intel-wired-lan] [PATCH v1 19/23] ptp: ocp: Switch to use %ptSp
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

On 10/11/2025 18:40, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> While at it, fix wrong use of %ptT against struct timespec64.
> It's kinda lucky that it worked just because the first member
> there 64-bit and it's of time64_t type. Now with %ptS it may
> be used correctly.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>   drivers/ptp/ptp_ocp.c | 15 ++++++---------
>   1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
> index a5c363252986..a0bb8d3045d2 100644
> --- a/drivers/ptp/ptp_ocp.c
> +++ b/drivers/ptp/ptp_ocp.c
> @@ -3261,7 +3261,7 @@ signal_show(struct device *dev, struct device_attribute *attr, char *buf)
>   			   signal->duty, signal->phase, signal->polarity);
>   
>   	ts = ktime_to_timespec64(signal->start);
> -	count += sysfs_emit_at(buf, count, " %ptT TAI\n", &ts);
> +	count += sysfs_emit_at(buf, count, " %ptS TAI\n", &ts);
>   
>   	return count;
>   }
> @@ -4287,11 +4287,9 @@ ptp_ocp_summary_show(struct seq_file *s, void *data)
>   		ns += (s64)bp->utc_tai_offset * NSEC_PER_SEC;
>   		sys_ts = ns_to_timespec64(ns);
>   
> -		seq_printf(s, "%7s: %lld.%ld == %ptT TAI\n", "PHC",
> -			   ts.tv_sec, ts.tv_nsec, &ts);
> -		seq_printf(s, "%7s: %lld.%ld == %ptT UTC offset %d\n", "SYS",
> -			   sys_ts.tv_sec, sys_ts.tv_nsec, &sys_ts,
> -			   bp->utc_tai_offset);
> +		seq_printf(s, "%7s: %ptSp == %ptS TAI\n", "PHC", &ts, &ts);
> +		seq_printf(s, "%7s: %ptSp == %ptS UTC offset %d\n", "SYS",
> +			   &sys_ts, &sys_ts, bp->utc_tai_offset);
>   		seq_printf(s, "%7s: PHC:SYS offset: %lld  window: %lld\n", "",
>   			   timespec64_to_ns(&ts) - ns,
>   			   post_ns - pre_ns);
> @@ -4499,9 +4497,8 @@ ptp_ocp_phc_info(struct ptp_ocp *bp)
>   		 ptp_clock_index(bp->ptp));
>   
>   	if (!ptp_ocp_gettimex(&bp->ptp_info, &ts, NULL))
> -		dev_info(&bp->pdev->dev, "Time: %lld.%ld, %s\n",
> -			 ts.tv_sec, ts.tv_nsec,
> -			 bp->sync ? "in-sync" : "UNSYNCED");
> +		dev_info(&bp->pdev->dev, "Time: %ptSp, %s\n",
> +			 &ts, bp->sync ? "in-sync" : "UNSYNCED");
>   }
>   
>   static void

Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
