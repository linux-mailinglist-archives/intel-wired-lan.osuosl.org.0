Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DB9C536DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 17:35:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC37C60E46;
	Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4WjcmR-P94qg; Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 542A060E76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762965320;
	bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=eEhdgv/UHgeRTAZ0Ng9EmMDqYw5NtyqeW+9bu8/ejW1J7nmMByEbfR07QhC1roDMx
	 gu6yQeVnjX/L36jwSBHaVp7Qzghqv75fovQigktRH7bWXxfUMbmTrqsP0PXm/oKrDv
	 d6RxoNf21iyrwsNojw+qFw5RPfoBV3rw9RSP3Ywqhd8GrFKyL9Ofthr9rvP4g5yMrS
	 87ciBc+fAVP1/JOkxWwntuxGnlv755AZiVb+3m/13K3OsQg1SRMFV89kWwkWALK4Q1
	 9tDnC3bhVfIHs1Ukudl0lLtmsikbNUTbFi3Ku56kGgGxN3y9uC4QmCYneAG7XdNn6Z
	 XSqU386jmqK6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 542A060E76;
	Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5DE131C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB6AA60BB6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFmcQtavjyl6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 14:37:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c44; helo=mail-oo1-xc44.google.com;
 envelope-from=corey@minyard.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E040F60A68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E040F60A68
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E040F60A68
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:37:30 +0000 (UTC)
Received: by mail-oo1-xc44.google.com with SMTP id
 006d021491bc7-656d9230ceaso567676eaf.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:37:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762871850; x=1763476650;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
 b=ZfPLU0DpXfaERCoA1FgCQyYlSRfgmZsxvdPAPAb0IUVwLpzA2lEdVLURbJntZl2gWb
 GnN60E6thlcw46UcR2o6rL8qO7Ku8vyBeUMaJ6EaMe4wZhPS+jFqKohg8XcUS94YbeV/
 tjBCL63XOW+Q3NDemKBiDvzvrq5N8gh5N7AwZ99ic7vmzptRo7Oh2SKyppdd8VixvBXD
 jzlJphJp8GOZePxoh/NWBTo/NR5JgA1MEtRo+Mv3ZVoksaj/XDxNiPczMN2V5jnee/2S
 7bOg+ui89z35oChFH4Vktw7ibbtjNNW0k3yOQqqd0aa8VZ9LfzgQcU+Z+oI0/Q7572iP
 FJSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrm68b5eQGPluESgELkAtNNZFgId44CnCEekZVJ+8aOtYZEqJHjTqP1xuIikrCkI0Gk33UlgZ8Z/MVFg6N6Qk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxXjA7b+UsYWRqPOFITjQNYGwmVWHzLkIklIGIvKE33zVklxpnC
 1p8Ov+j+7NOy6JrnyrZBogxn9/xGzKMegwwiuhsowHAVNUzKaB7OVGAPat32b9A+tpw=
X-Gm-Gg: ASbGnct673v3IoVD7CgcqUH+yWsIrTNZCRramsIkvTqecg4Ig60y/peWoiT3apFk8OP
 F9zEyOjCLgp9t9twddSN0oh5ngf+J8HBe9rDhe1bauEQ767oL6lDxghPMBjB8a6/QPL9lbmP32p
 tTacSqGBsFT4zaTuNSa29rXkee4auomZMyaLwKhkWsVHMr9WXpyNV8n3BXg4cBL3cq/SXGYhidL
 bagqDJZYtQwezagsCNgTD0b7d/AZ2OLtHS//DReWVjYX6c9bsP+SDSV7k2fnVbEWbjYqFYE74fj
 AxFurxHimNBOWDSoB4NQ2bf7dLzuG5tyIqWtUlerj09PiHnxISuYw5ZX1aNKStMoTFxq0RByXn+
 c0vsI8rLQIO6N7v0L0nI2+vcPsc04jLlH2IJDLrwpIIdniO27+m7rFpmyT3oAOBjsLTXEhTM0sZ
 pqVXQ=
X-Google-Smtp-Source: AGHT+IFusuA/Ax3anjd0HIltuToxJUS02/udclYoHdoDI29Kk3VNxq4/rhyMyYWudQr5f0WcO3jkBQ==
X-Received: by 2002:a05:6870:4792:b0:3e7:f4a9:588b with SMTP id
 586e51a60fabf-3e7f4a9b0bcmr4110818fac.15.1762871849590; 
 Tue, 11 Nov 2025 06:37:29 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b4e9:19a3:cdaf:7174])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3e7d6f7a27dsm4861066fac.0.2025.11.11.06.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 06:37:29 -0800 (PST)
Date: Tue, 11 Nov 2025 08:37:24 -0600
From: Corey Minyard <corey@minyard.net>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christian K??nig <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>,
 Takashi Iwai <tiwai@suse.de>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
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
 Thomas Hellstr??m <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Krzysztof Wilczy??ski <kwilczynski@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>,
 Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Message-ID: <aRNKJIyk2ne39ScE@mail.minyard.net>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
 <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762871850; x=1763476650;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
 b=SvDIaDdl568QTsPtawPVtnYaPfJGh9JummuMyWcGEDqV8I/rO4w9v0UHfmNweuHQIh
 bPBwGj5DsuPcZ5ibD9h+VaOsf+2uSk1Ibc1VqSRwlY0WgjSfuJ0fGjnu7jT/5LOwjMdJ
 X1TfnYsIMF5wN+Lu751ZtQOM/28zBBFJn5BUhN5B4yn48/3WY6u5fe74NhXSd73kOabh
 vwdrBMpLEGedfsxg/6VEWq0rTllF84t5tbhU8JmNF9nwyItQf6m7A7gfWUQR2Iik2+S7
 Uwj7s0dYCu7nLWT+jzGq1EI2JJYbqEymlyeb30uyn7TZmPVaLy3AVJ1HyawVU+lUglcd
 Bdgw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=minyard.net
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=minyard-net.20230601.gappssmtp.com
 header.i=@minyard-net.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=SvDIaDdl
Subject: Re: [Intel-wired-lan] [PATCH v1 12/23] ipmi: Switch to use %ptSp
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
Reply-To: corey@minyard.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 11, 2025 at 05:08:25PM +0900, Sergey Senozhatsky wrote:
> On (25/11/10 19:40), Andy Shevchenko wrote:
> [..]
> > +	dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
> 
> Strictly speaking, this is not exactly equivalent to %lld.%9.9ld
> or %lld.%6.6ld but I don't know if that's of any importance.
> 

Dang it, I'm traveling and used the wrong way to send the previous response.
Sorry.

Anyway, yes, it's not equivalent, but it's not important.  It's better
to use a standard output format.  Thanks for pointing this out.

Thanks,

-corey
