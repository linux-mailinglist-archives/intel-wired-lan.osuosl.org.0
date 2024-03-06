Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D958730FD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 09:43:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 443064176E;
	Wed,  6 Mar 2024 08:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nK_AeLIrpa1d; Wed,  6 Mar 2024 08:43:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6626E41773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709714603;
	bh=PR+Nk3pCiZKxNZDXI7fJRBjQbinANPBrnGZjGnCs9/A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BNn/UGHNpzoimktkRvvd4EgkInmzYUGVR9dbaKyEtdtKhpJ0ONaL3De7AGnU7z+kT
	 VyHFaI0ex5JmMoa3iHPIh5K3q3AC4+Rco7x5EGSNvNcXYhvdmCb2GaoOYe+Qv9l3Ud
	 MhFDZOVd5D4bifYT3M6DcXu6j4rDfuAPfD8z/JeJ4L51y7ZDe0F5p5CgA3C+gi42RK
	 GHDoedBeEwxgtFMWek6O9GFivbb/fiQOOwVjziNy1lsFVrsa4PiBS73aNFdwdYkJ0Z
	 q9lCiuzs3yfOgucJQtAmSW8iJX+SoFro1/4yyPFRQ6Rl5u5fmugOPU1zqsALXNY+mA
	 nbet1CIFNXL8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6626E41773;
	Wed,  6 Mar 2024 08:43:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 445F51BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F43440591
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 16IK7DSk4IdA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 08:43:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF19040347
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF19040347
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF19040347
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:43:19 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-a45aa7cb2b3so186150266b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 00:43:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709714597; x=1710319397;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PR+Nk3pCiZKxNZDXI7fJRBjQbinANPBrnGZjGnCs9/A=;
 b=ZCGcetDZx0w4mi5Eh+IrroyAoIZMhQNRNPq6EEYgMjNmvS0d2CgTWVzJrQRpdlqAtw
 kn6w1coI3r0MMZbl1vpTKkRR/lbTzE95KgR0h9sv3oh0s4rW6BZejv03VfpNDaBZ840c
 xXZH1M3lMqXiyPr50Wfwn6a8PcjaSa6BwqdSJxeOQjj4+dlMQ3JUYljnx8oRiyTD+hRP
 VHTzIoHSEuFHAJ1rhHXw6sgtkpSW0ZFlvCUKa9bKjY+eSYWnp3IAktHhXyrXw3glCV7/
 AbFmDmf7JMpZP3WbagVGH4j0GoAS8trh/Dv3i6iDUtCYIJFwYCkEWfjmYCTEBadxkz3X
 KBMA==
X-Gm-Message-State: AOJu0Yy3zH6T9KsiCeZYyUUyAZBkKssp7FG3T4k9Jp21XLhoR31pEvpg
 mvVZNGQWpsj5QQjVcunH6B8uxQ1mjBosLTVL+GiKO1XC1Za2ke+FuLA1n/w7f98=
X-Google-Smtp-Source: AGHT+IGyYG/nOCxuZnL80qCIb7SDO35oUUKTkZuCFl7a3pHgumTeZUt3jFvFSSgGwHFqzd5t3COW/g==
X-Received: by 2002:a17:906:fa8b:b0:a44:4c9e:85ef with SMTP id
 lt11-20020a170906fa8b00b00a444c9e85efmr8081171ejb.77.1709714597555; 
 Wed, 06 Mar 2024 00:43:17 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 u1-20020a1709063b8100b00a4324ae24dbsm6886108ejf.62.2024.03.06.00.43.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 00:43:17 -0800 (PST)
Date: Wed, 6 Mar 2024 09:43:14 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <ZegsovsvS08Vvplb@nanopsycho>
References: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
 <20240305143942.23757-7-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305143942.23757-7-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709714597; x=1710319397;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PR+Nk3pCiZKxNZDXI7fJRBjQbinANPBrnGZjGnCs9/A=;
 b=wxdogy4RBLM7XxcnnCdBQ00j6DdczcJ1RfmPJgkkbixZIlD5FlUObvrWntzCJkYS2k
 9lvqyJMKMl8fWepzO0UCnuF5GFzBt3NXvUfcIg4jS7CLgy/ZtuoYn8EHQSAImSgkVEpP
 kMhl/ML3vjamcaNYHtlD0hiKujtEJfZ8QlFn+3sbC4yVyEyI4A5wYdKjqT2nTDzMe+fB
 CukACDV+g8q+7gNmzwtIjz5rfT9+GJwiuQWC/h7TSnyrMIIpbvnfTdHdzU2uAP40goWR
 cug++sED4tfFB9B5RObi3dOAsMs9wKkI/Imy2gla8HaWE+Rci4lZ+kdwChBTwFfJPRdR
 iTlw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=wxdogy4R
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 6/6] ice: Document
 tx_scheduling_layers parameter
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, kuba@kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Mar 05, 2024 at 03:39:42PM CET, mateusz.polchlopek@intel.com wrote:
>From: Michal Wilczynski <michal.wilczynski@intel.com>
>
>New driver specific parameter 'tx_scheduling_layers' was introduced.
>Describe parameter in the documentation.
>
>Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
>Acked-by: Jakub Kicinski <kuba@kernel.org>
>Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>


Reviewed-by: Jiri Pirko <jiri@nvidia.com>
