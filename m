Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7EF779DA6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Aug 2023 08:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A53060AE8;
	Sat, 12 Aug 2023 06:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A53060AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691821197;
	bh=LMdhUXCKepyJ3Nx8H89CJxtZt7uET1FHwb6FjaFs9z8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=195U2jkgjh4hsa+J2eoLGn/TMjey2KmiqLiPr0Ty0vOkNE2Ur7PJfM9SDLCIS2sZC
	 Uc/4yib1FKnCNjPDON97HC7KsTA2rrU81LdolYNgolpunpLGv6C/qUPAB0Q6D6kCr7
	 nihQpgfQHWGg7kvDjqZnq9z+QVa0QhYSKW/wzysfG5DK4vPZ0VkCvofwZX9bIT0QEm
	 Olths8h/RiBMw1Y0ZtGkfPB4TsJNKbC3GNRfX2oOPgaYu/ACyVTYXZPaDTf+e0FVd0
	 7ojRgxHiIXETZdKW30jgxorB4XUQMVv0+Ak/utnjr+SC+cXIeyHnZhVWXKRb18uc9r
	 +a+3h9m5/4zGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9qzGMLrJyzT; Sat, 12 Aug 2023 06:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6582460A79;
	Sat, 12 Aug 2023 06:19:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6582460A79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8951BF291
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 06:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0422382163
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 06:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0422382163
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zv_VEn_8PxTW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Aug 2023 06:19:49 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BDFC82109
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 06:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BDFC82109
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-99c0cb7285fso342476166b.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 23:19:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691821187; x=1692425987;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TjmLF1rO5TorvHBy4pxrBOw1UIR+s/EKu3iHtx+Nh50=;
 b=V1WO4l+BmrRmW9e+X3EwjYeG9KLsTC9cjUTEPLrKymXdoCzYu+b9OWbZZszV2nYgdk
 eCWed8NfGgBIMVYFz8viT0KPBw5BjAV0EDir0q+rsl6S93E1c/hEhfVOLyfzEOidXEJo
 kEnEqPa9cUZoU3bQBerqrtEvdWYWEDfs8Vg+utEMpwDyeyPGOI74vFIqgCVmGeJB1gDi
 WroauoICGT4bz8P7/ju/FNUyfufLWENVUW0eqDcncuAi/J5DZUIdMybyUI3okCDbrUJB
 JbkESYjjDgizKv7wr7jX4xheiATb/F911jqq5L2T9EbGCRRQM12gwIXMeq62xYQ+IOU2
 4wLQ==
X-Gm-Message-State: AOJu0Yy86a+r/9rQXf1H3PKLQuyCo3mUvC0uNRpVZqPPk2HLjxu1Awn8
 b3Pb88UqVs23XPswyEGRg86O/A==
X-Google-Smtp-Source: AGHT+IEPlIXz5uM26zKwi4mc++wqqZbRXc7W1xYTx2DsLMBRS7DeeCnK6XHSPYqBnlnaUBHaDTo/VQ==
X-Received: by 2002:a17:907:7859:b0:994:4e9c:30c6 with SMTP id
 lb25-20020a170907785900b009944e9c30c6mr3096190ejc.57.1691821186721; 
 Fri, 11 Aug 2023 23:19:46 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 g18-20020a1709067c5200b0099316c56db9sm3059967ejp.127.2023.08.11.23.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Aug 2023 23:19:46 -0700 (PDT)
Date: Sat, 12 Aug 2023 08:19:45 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNckgQzRO6uSvnaV@nanopsycho>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-8-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230811200340.577359-8-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691821187; x=1692425987; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TjmLF1rO5TorvHBy4pxrBOw1UIR+s/EKu3iHtx+Nh50=;
 b=P+eORdmHrfUq0eOC5J81tYaBqXZES0VMhvt28KeKlsdwVdQpvsQD5ws3OtjN61fsgW
 LVoGtSoX3FefyuQTIaB8zYNKuSxbNG7Kj9xVwmjUNjHhDFvIEpmCafNB8KvndOfaHzFh
 6HOAOEQ/SJPuUqYcxHwe08SPbR8UNlIIZAEqiZj9YHsM1LzV6oYVfpwyJcb7x6BH49np
 jP1vDVspTKKs8a75LKKcYQbm7izz/USlZJCDuZi0tdgAVHZlT8TGB4+gRbN9bw7qmYMW
 u29Een9xQ3Xiq2P5NnCv95RmRDSHakE1P9iAWWH2Zb9z7WLal0BcUGtiHHfqqri66zI5
 uQ5w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=P+eORdmH
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 7/9] ice: implement dpll
 interface to control cgu
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jiri Pirko <jiri@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 11, 2023 at 10:03:38PM CEST, vadim.fedorenko@linux.dev wrote:

[...]


>@@ -4690,6 +4694,8 @@ static void ice_deinit_features(struct ice_pf *pf)
> 		ice_gnss_exit(pf);
> 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
> 		ice_ptp_release(pf);
>+	if (test_bit(ICE_FLAG_DPLL, pf->flags))

This is a duplicate test as you test it as a first thing in
ice_dpll_deinit(). But nevermind this nit, let's have v4 merged
if possible.


>+		ice_dpll_deinit(pf);
> }
> 
> static void ice_init_wakeup(struct ice_pf *pf)
>-- 
>2.27.0
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
