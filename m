Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D442BC6B471
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 19:50:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBB2B81604;
	Tue, 18 Nov 2025 18:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3EJWEksXda8; Tue, 18 Nov 2025 18:50:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09B38162E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763491832;
	bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4VQBawqLTJznKhEyuPUJd9pCjteSeZAOzZyTiTDqJbtO11Oh4MburiSwLqb4aSRSb
	 mDhZVxAGR+9/JMQtBxNv59NBFnqu3p4awTz6QNqJ3T9+d3v90sneA5Y80XMBBMvWwm
	 NaRj+M3HIG+8cHDE6ToUYTO2Kr6nIsg6pd8McALJ8KTGck7uZ+2nH91dI20yOomx+D
	 gl4ulwdX0mEFBj5/08FGrJxdWmkYY8cvaml9fg50DnTzvL2DIaZxq/M7r27IptMwOy
	 uDa4yfyKYwA3fxBR5wLztiDoB/ESMsINXNs97wrIPeDUf/NeD8H9v0qzed1eQO40Of
	 Jqg8KjDibPgNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E09B38162E;
	Tue, 18 Nov 2025 18:50:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C7C98158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD87440162
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NnKvl30PC9Mn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 18:50:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D0E1340093
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0E1340093
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0E1340093
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:50:29 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-4779c672e9cso2683195e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 10:50:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763491828; x=1764096628;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
 b=FTudxHmAwTRnGIsOjTnaT0Re8eSDG9FN56LctjzFEqSIRF4FgJiFyNMA97GXKzGVHn
 92UIyxqOngpqK5yNVeiBlUpqGEAhaxFaBU4GIF+uUIllxPGkEXDrD9yLBHjBFW8UMEZF
 aNZ8rGFosQ9lt4ccByzHBBpizavB6bfkT8IoyLm0eioO/0jyQRLuvYkInzW0tMdfvasK
 FWGp4Nz1v2TW5q89NZ7V5S2JFw5Mh/M3maXoFR8mwA7EKJD7c1QeHWFOnAmXNH+NgY9u
 qbxvZ5w8jZdYWNsSXJU6iBPnVZRjCeqOyYlH3gs1vgU4FngTsHDJ7JwfpkQ+6ORYNTKQ
 SrTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUK24hR99Ca8CMIt6tR99X1AOBXkIYGPIRlCjIOiKzwFcHS/+9ccGbKW/hOybwpcuALot7sCrSyrC4zkxqBBDs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwzAAfs0thXk7cR1elXX/gge7Tlb00JQ2evnh3tbyb2tBXG9aWZ
 d91Y1kodBUIK+o2JewJKV30kOzLb/AFUrE1NO1gjEPMGkbQAzk7FyIqz
X-Gm-Gg: ASbGncurVCgraBJpsKL3/iJ7hP9DQkIIn3rcf6vPyRBNbug3FFBWCNEHgUzhuFx/fS7
 PKsThKB8j61wBDkhuHpwXJVad0EHTt/RzYnjq9r6itsG4sS3UshJBQZChIas9Z6wf5XqEVxTYu3
 l9oNrTFzUXOkVvWOy8khEkW1JYGxcEL60HNsK6Ojh7IvyYLK/hxKiN8O1Zl6vtR8W5jbm/xiy9R
 IJXESrjx8TWb7jZbzyE7C6o5MuUKYz7GSIdc9VPhuhdnw6hYjuEJ2kWIbjHOD8L25bPQT2576vc
 HtNJOlAOMaQPHglJ9iensgEdfl2FAXPQC1d7vSkC6coiDkRcmsFsfw3Airu6WJ6mnFD9Kcde1Wl
 QK9MDyNHn7u4TaLx18qw0oXsv74DCRdolfEvy4QGtsN0DIkg+CuQYYiK2Eyyd0Vr87/qT1akTYv
 rx6+zADMQJsbWB
X-Google-Smtp-Source: AGHT+IHx6i4VYWR6pSTcXtSoFlN4Y9U/3Z/PI54PVyQA5JnsfbBaJwpdM3LzkIBKtiuh5JtXbYxanA==
X-Received: by 2002:a05:600c:1547:b0:477:5c70:e14e with SMTP id
 5b1f17b1804b1-4778feabadamr87966605e9.5.1763491827278; 
 Tue, 18 Nov 2025 10:50:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:9ac1:9a91:7d1:a813])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-477a9df99d3sm22110705e9.12.2025.11.18.10.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Nov 2025 10:50:23 -0800 (PST)
Date: Tue, 18 Nov 2025 20:50:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Corey Minyard <corey@minyard.net>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
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
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
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
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Andrew Lunn <andrew@lunn.ch>,
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
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20251118185017.kk7binsumhh27n7x@skbuf>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-15-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-15-andriy.shevchenko@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763491828; x=1764096628; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
 b=Ms/Z+Ohfh44C6L1G+5yUyfyXlEMqvJd4RmY9Fy3TjSdafgpOUITGLhw9tIwLnFEPzb
 xSDXr6gwkkS5F67m0pvbKDHAEDhpxJ1+qQ9VdU4nYrJR3XFj0NrzON3ZfDz3oYv8z9D5
 Di+5Ms5t8ApssBn7ibiJ/50xS4WNGNmAaGYxxiZSXjh8GxizmfTtYwhKJfX6W99ycmKq
 pW42lVOu0m3uZSuEXbnuBOX9jZCcnp4RYce8XxYKPwkfmoaNgW/rFv/sHXn1Zetfak/S
 hhonw2jpDCNtZrC50Xz8nysBV1Qig9HmraoFMfytlYsYux/E+wgI2U4SZLU1RvQW/3O4
 7Shg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ms/Z+Ohf
Subject: Re: [Intel-wired-lan] [PATCH v3 14/21] net: dsa: sja1105: Switch to
 use %ptSp
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

Hi Andy,

On Thu, Nov 13, 2025 at 03:32:28PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---

Acked-by: Vladimir Oltean <olteanv@gmail.com>
Tested-by: Vladimir Oltean <olteanv@gmail.com>

Thanks!

This is a rarely modified portion of the SJA1105 driver, and it doesn't
conflict with other changes that I have planned, so from my PoV there is
no problem with the patch being picked up via other trees.
