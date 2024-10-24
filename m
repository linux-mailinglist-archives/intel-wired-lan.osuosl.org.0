Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EE49ADB26
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 06:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C48240363;
	Thu, 24 Oct 2024 04:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0s0RfeXawVPQ; Thu, 24 Oct 2024 04:51:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8364740309
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729745500;
	bh=GsILZh4krh0QXvX3a1dJzNvZ6BxeL6xSMOw+9+Av9C4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GElhZbg45woyYt4CMeN/z8SICpSXLWIEJmKML7M+L8NhAvr4FKWpmcXhrcm+k1Frj
	 +bcfJiYdW4V5qTlDLezbAFakB1InJmjSRiua4EG5fKGx/cYTKd91mfIENjNkdixfyP
	 BRlXs9pldJFc/+WrVRIezNVjArNL7Gl9XQ74XCV/h6eBjg2tKiRjyMTtqzlMo78V6x
	 GcbyT0ScdRa/UEs0xhLAzS4G5NeB4JKlrH7L/5nUUORPPnFE9gYHDyPCYWz2xXhCQR
	 caJw8E9qcO/4EtwBSFefivz0sk2wiMb5SiAP8Y3IslAdsZH2M+AzV0bONqd1IyoBf/
	 pH8HbUjU6al0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8364740309;
	Thu, 24 Oct 2024 04:51:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AF1502073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 04:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA8AA40251
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 04:51:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I8msOR_PutAU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 04:51:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6CA240363
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6CA240363
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6CA240363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 04:51:37 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-71e5130832aso378475b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 21:51:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729745497; x=1730350297;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GsILZh4krh0QXvX3a1dJzNvZ6BxeL6xSMOw+9+Av9C4=;
 b=L8OIydLYcSJ8DCi2nOmqC14FR9MxZ7dGt4NkN4EK4tssK3r3N/EC0V4OPvD8VM6nO4
 uuaSBJL9Uw74P3RUGnHGGhoP9mkgOeWAlY4U0UIjFp/9vBIZK4NHw236UIXaFMAWLXL3
 5maLwFN1sOatElVrMzeMXYiVgqtcR6hgMCPCEAwgHP4GwoUlcs0IDW3JNFLIXrHkTsnS
 RiOSmA5VCR8umBRiUri9eUtKEQ+URNG+x6oNbqIT6i9c9oyAmzfy1pRzvY/jlGKTqu7b
 tfXcR61BrPCCE8DmSsvxnU1SYKkyhp0dHJx0Mb9016ln9wGCBVi0s01tZ7hGRhn459wX
 hZqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdeEms+VKhlrUDezVp23I0XojwHv8jKaoNN/i/wTE44zfoFcQ0/rXRSU/BC1HFdsbyAJABUbD+qqLbXc+Vc28=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyOHB6jRp0DEhPHCRKx27IBc6Dl32/WRF2MLoc6BoAj3qccba9R
 6K4WcOcDL696vUqhrcsYU0yeXIAzpDTuampbD9eXhXpkdhyBBvuJ
X-Google-Smtp-Source: AGHT+IFacVlm7olQMQ4s01LEb04I6dC0tnNHEM49WuDR0xKRj3qy5Mww3b9mejfUY3UmbFG7pUZvww==
X-Received: by 2002:a05:6a00:61c7:b0:71e:b1dc:f255 with SMTP id
 d2e1a72fcca58-72030babe15mr5017988b3a.9.1729745497150; 
 Wed, 23 Oct 2024 21:51:37 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:c21b:c597:f9a6:3608])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec132feb9sm7168856b3a.67.2024.10.23.21.51.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2024 21:51:36 -0700 (PDT)
Date: Wed, 23 Oct 2024 22:51:34 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: horms@kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 andrew@lunn.ch, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <ZxnSVuqlXCHgeVKr@Fantasy-Ubuntu>
References: <ZxhruNNXvQI-xUwE@Fantasy-Ubuntu>
 <ba58bbcd-079e-42b9-8e66-52b2626936e2@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba58bbcd-079e-42b9-8e66-52b2626936e2@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729745497; x=1730350297; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GsILZh4krh0QXvX3a1dJzNvZ6BxeL6xSMOw+9+Av9C4=;
 b=Nsz3AsKK0jkA2UEoIHK6PhFwnoR9D/GzNgV2j3EfO1/Vfcol0uHjeTvsYKxzrdh8mX
 n17Ny7ToPidKgeXulGAW4Wwwrk7ZCOv/oZcmCsG+wUbCh/Kl0Vv9uhCl2++hXFcA3SQS
 CJmrXhIQmPrOQU/1gZ6Af9f1N4ythzwfiHD9W5vaxGuBveCRAVEuqMiuxWruVcfomrli
 QHjiAu8drCfHCofwAe/XCpNOvyKGk8F8XkfOJzrdF69KjtzrPzFKrPmpFUAvItNe41gU
 eYsgH8JmGkrozYlh/l5IKLU0C6yhHyH+WKnopC3sr4p+/8d8F62N0zoCz3C4DLXOtda/
 CuXg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Nsz3AsKK
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] [net-next] igb: Fix spelling
 in igb_main.c
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

On Wed, Oct 23, 2024 at 10:04:45AM +0200, Paul Menzel wrote:
> Dear Johnny,
> 
> 
> Thank you for your patch. I recommend to put the information, that the typos
> are only in comments, to the summary/title:
> 
> igb: Fix 2 typos in comments in igb_main.c
> 
> That way, skimming `git log --oneline` is more informative.
> 
> Am 23.10.24 um 05:21 schrieb Johnny Park:
> > Simple patch that fix spelling mistakes in igb_main.c
> 
> fix*es*, but better use imperative mood:
> 
> Fix 2 spelling mistakes in comments `igb_main.c`.
> 
Hello Paul,

I appreciate your comments, I'll address those in the new patch shortly.

Thanks,

Johnny
