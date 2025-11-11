Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1D5C536D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 17:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 651C560E77;
	Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PAoYwZ7yRrEj; Wed, 12 Nov 2025 16:35:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32DD260E4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762965317;
	bh=Pqo49sUom4Ax8/5oMB7O551am4u2vZh+GPRUBYqOiSo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kTkg29YDctyJc3J8uz2GPZetcfgijIoBeTgyVT7psn/JEItj51XGNfV/y0+dnI9o0
	 2KUbzZvzBY7uTlWC9a0BwwH1O+yFX3+VcxHvA4hf0JgsKzUp7Q+qGcYxYYK6wvfvFt
	 Phdshqc2p17dAhkd8GYOXHc0nR0OLQsl1xRAkKsK270A/cD/2eUS+97X/Pegppokk1
	 sqTUtb/ENvLT+OWcCMtGRD7wPNRE/biwYyuYoTWVrkLsp0yf78ltzf+d3bVGJf5Yi0
	 NQ+AFq6lRr3DfkIBuv3TJbzIflyE6jtnwgSDz09CwqWlIQqM26u5cXVJi0rPGbhzMm
	 TNVelcOGpS7KQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32DD260E4F;
	Wed, 12 Nov 2025 16:35:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C808025D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 07:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A72DC4077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 07:58:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TeAakLsU1FnU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 07:58:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=hverkuil+cisco@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EF4DC4022E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF4DC4022E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF4DC4022E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 07:58:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1929E61909;
 Tue, 11 Nov 2025 07:58:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85862C4CEF7;
 Tue, 11 Nov 2025 07:57:45 +0000 (UTC)
Message-ID: <9f461bf7-3651-4be4-b6f9-20853cdc4c90@kernel.org>
Date: Tue, 11 Nov 2025 08:57:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hans Verkuil <hverkuil+cisco@kernel.org>
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
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
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
 <20251110184727.666591-14-andriy.shevchenko@linux.intel.com>
Content-Language: en-US, nl
In-Reply-To: <20251110184727.666591-14-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762847880;
 bh=5Uaa5nwFjVAGS3f1mHP+LmUtuVFBDubmN+xdr/NpZiU=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
 b=Ch1k3nWPMj6UEosM8Ssp+W11+ShFdJNgTHl19OiSOLt8ohzsfcyx1e1F7RmTDjV4h
 6nfm81zuqwh2U/1g+oysD3nb8RJ03+yxk6skIyzw3M3W3e/J9HtiabAgh4+xEFmu37
 l5MKqXDSdixGL84XrPmyQATSqs91LuFiI1HHYTjBcRMgp9dE7vdCjaftzIMHr0cVLk
 +CWgU4tpn3OvWPaoyx3SvYKWIXApBzibkh3iBOdzwx5+bk+s2HOEUiW5d50gYtDEsM
 lw10x7RmKw7oaN9Q1I5bh42iwHcHv5ipPInJZkoHKozkZTco3mSCA83d6op32oom8H
 eoL8yv1NXmTAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ch1k3nWP
Subject: Re: [Intel-wired-lan] [PATCH v1 13/23] media: av7110: Switch to use
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

On 10/11/2025 19:40, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Hans Verkuil <hverkuil+cisco@kernel.org>

Regards,

	Hans

> ---
>  drivers/staging/media/av7110/av7110.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/av7110/av7110.c b/drivers/staging/media/av7110/av7110.c
> index bc9a2a40afcb..602342d1174f 100644
> --- a/drivers/staging/media/av7110/av7110.c
> +++ b/drivers/staging/media/av7110/av7110.c
> @@ -321,7 +321,7 @@ static inline void print_time(char *s)
>  	struct timespec64 ts;
>  
>  	ktime_get_real_ts64(&ts);
> -	pr_info("%s(): %lld.%09ld\n", s, (s64)ts.tv_sec, ts.tv_nsec);
> +	pr_info("%s(): %ptSp\n", s, &ts);
>  #endif
>  }
>  

