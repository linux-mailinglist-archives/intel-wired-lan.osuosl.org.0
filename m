Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70986C536D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 17:35:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 500DB60E45;
	Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oc_unkHnkjYW; Wed, 12 Nov 2025 16:35:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FDDF60E56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762965318;
	bh=0w05K6KxFo07worIjxTlWcgaX/lcLwwSdDEeFRVch6g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fiETgqU2nKU4Vgpjs4/zP7C6749TEcumX805HPV2x3yoftZhmbB2ON55MXObEQoqN
	 h/C/J32L0lCZ1DjY+hwU4MQFsLl7n/57DbRSLfGYLdabsyP9Znm7lOKHIpNgEJ9HSR
	 MprRnlwfIm3ldZJPNkGWBgrm0iRlDvPdgRsYcLAQqcs88/fkT4UVEMw6iRmczPXkeB
	 UyfbOoDf8atuFSAlsSLqJF4OAJf4yzEdccxJNvv+xNmIkoQAfsdufJ/8zEH6Wstdxz
	 ow2DYQLZ25J8NtXfkPi8wd2lsXztyo1HclVtpmw1oAc8tCn0AmXR/2CL0eHVhDgyx4
	 6X+Do5wEmbyTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FDDF60E56;
	Wed, 12 Nov 2025 16:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C6077FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 08:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACAAA815D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 08:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id etGwm4wYwPN7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 08:08:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=senozhatsky@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 22C74815D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C74815D3
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22C74815D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 08:08:43 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-29808a9a96aso21262255ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 00:08:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762848523; x=1763453323;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0w05K6KxFo07worIjxTlWcgaX/lcLwwSdDEeFRVch6g=;
 b=NvTC4JdKJceCkigE2Aiyag/5Fm8LlP0/3QgUmM6bv7g41vW5v1CAmPGnDUCMlQ4k1C
 g7tmz7Ixy1Lt/NbXlw3XgP+YWwWvbd+Tm6+4ssEWvqa9J/4AI/Tz9ZTxYFDVKAC+ESGW
 ShuyhlEkHKLaBo1Ul/ZgEoFArSFGwe3RzM6f4Ivd+jb8oL82pssMyxAASXbO67IiJXNC
 oorQudcwXKRLsm/hVBPsgqaVpHM+IMRaK1ie95t0KFqs4CLGv7rt4lVk88P8N53y1XK5
 ++YRgquCsPi0jl/6ZEyNyj5m+dmFWv/81mlhq6NYxFbBXNBy8ezdB+0cIWVJzqjYLHEw
 G38w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWONAXtdXaW9ynSDZj1WojWq4rMCVLE79i3tpPfOkkEtYtAB5cu4x5BeHhn6K70qosOdJPOngGcjTqxWGLMQHE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy2tVEqLHBOgQIiDxbSaVQ7dV0SaRZYG2LazBzWD5IpYhjooyX3
 b4lCmC+v8fRxnEbvPHLUqaJK8u2qHZNz7yzhzwcqSLKw10VVPgu8vGWJkyFyEOW1fw==
X-Gm-Gg: ASbGncsNCWCfz+vnDPNoOdkOLKhUuNSt8rkIrK6nn/qMVGUFORuhYFRkYJ7K1YilyUW
 L/G964BCqeMfaEvZf1paQUfu09xodO/dpMIwTW78qUDMgCqhiUtnDYOfQvPjD+haS0Npi5UPfwI
 xypNTPmQFZx2rkIFdAmYg3sUnbRTE9GZBUSuW6bGIV3GyCDlVMSWZl33LiU6SfwRMq4hGiPSbiA
 cHs3yjMSRuuPBVu3ybafuyoIAzLVAnZ0J0PBhef3LQsSSxjXgbVunlIxxwRhDKmvOLGr2Mf+J8J
 k/BoioQ1PsFuzq9odepQ/aX6oMPrXR6uWkxayDHfnqUiwhxixYNqa/RgB5tA2MZ9/F00HH7oyXS
 EoJ3XwLj/Jajh292Ez7MRR7xugiZ6MHNHsUdQoSwqQkLSSBXvrM3S9GjR1zdnXiDBYuzh6mDtp5
 6Ep7du
X-Google-Smtp-Source: AGHT+IHC6xuDhDXvZKC9hTiDPjxDoSsReKjYtkLbxL1ziXkP+RR6tEjoFAFy33iKv0lQXU9dzXWwTw==
X-Received: by 2002:a17:903:2c06:b0:295:62d:503c with SMTP id
 d9443c01a7336-297e5627aecmr142808835ad.16.1762848523256; 
 Tue, 11 Nov 2025 00:08:43 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:4557:54b2:676a:c304])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29651ca4262sm173807695ad.86.2025.11.11.00.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 00:08:42 -0800 (PST)
Date: Tue, 11 Nov 2025 17:08:25 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Corey Minyard <corey@minyard.net>, 
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>, 
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>, 
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
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, 
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>, 
 Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, 
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, 
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, 
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>,
 Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Message-ID: <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1762848523; x=1763453323; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0w05K6KxFo07worIjxTlWcgaX/lcLwwSdDEeFRVch6g=;
 b=DFg1O3fM2JCZ4PU279eAzkQCLTsIjJ5Q3eUDcX+WPOyQdTf1T8l4tkFdxAdBnE8+Vj
 qW6AH0cZp0sO0W8AML5WzpvUcOlnC2TAm8x5ikg2DuTWrmVXryZvx8dF8xD8AZt/Q6vz
 u/lIZKojqoB1S0/IlxLl+ndOaPwLToQGc6Bn8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=DFg1O3fM
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On (25/11/10 19:40), Andy Shevchenko wrote:
[..]
> +	dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);

Strictly speaking, this is not exactly equivalent to %lld.%9.9ld
or %lld.%6.6ld but I don't know if that's of any importance.

