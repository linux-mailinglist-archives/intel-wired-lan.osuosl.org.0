Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9343464EA2B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 12:21:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D973F82144;
	Fri, 16 Dec 2022 11:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D973F82144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671189659;
	bh=ixox0Ra57DVs/t0A1fukoewxkq4/sSCtzxmuujIdEQA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yg5Kmc2H/DLiP0X30Vsxh1RJ4FGionaVm/FdXm6b+CHHmTWsgpJDRKze6bCvwovFT
	 Nfh5AvaZNJzPoqLgiOVY7howBFLtT4/d0Un+hJq7ULBFO/FFdfzCqLj56rTZgO7IyO
	 NI06LPW7Lg4SFG9rgkWLo5Jeh5a+FVuGaxyu1Xr5YDYHm9hVvU2GEDX7wZwYfsBOUC
	 lbjW05xp7R7E+/IflrzZaF0i2H8NQ3N401Qm772+bcwdVTZSAQyMY/8rh2cKxvWunW
	 Tqu2klRpkY8q+1T9+FopLLvYSR3Ave6cXEoxzPKs5DmFdeBOMz9LN5H/5bRDhPtIuF
	 vAq0yX8oFIZ3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Ab8fnOoDE6h; Fri, 16 Dec 2022 11:20:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0EC88213E;
	Fri, 16 Dec 2022 11:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0EC88213E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9A3F1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 11:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 928B741B30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 11:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 928B741B30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8_3hHiaY3urT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 11:20:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC7E54192E
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC7E54192E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 11:20:51 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id f18so2165912wrj.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 03:20:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c8zJd904+IXjpPodDBXcpzzovSChRn9dgEg89jVdTTc=;
 b=PPyqAL2FiqcyddDTexi7VxPsnNprXbm0g0CyLnOt7R8bjhGY/vkW0a3rmc2blMz0wQ
 19Mmpcxv4JOb0v6KnRrGJi8YYw8lRuV6Dug9IqUxk3idsusjUtaGM/IYEzXLUmtiw4F2
 em0uag+8wLGkNbOX9RwdlNVYvz+guaOcG4Trwf0gJNV2SaIXEgu1II1R6qzmy2WlyqFA
 wrTDmDluVbxkz9lNuDKSf0HE3OUswRG+ladpAuZY52fP3CgwrRvKH8sqZtPvM1LJ6fG9
 P23+4b3SsXePVXXZtUyoD8wVJQUymah4iH1uCl/47moUqvanHg3EwayQcrHupvcTNwYl
 Hcmw==
X-Gm-Message-State: ANoB5pk/R9WvWxvj3GwL5GpLYx8hsss/4vXfvrpYyfDd/UMhKj7mxUZ+
 DEpDr0Lgl/34UXH0rD+yDbof3A==
X-Google-Smtp-Source: AA0mqf5FTRHlnyovbIiVic0ZLreeNyr+YqX6ewUwMmrnndfqEH8iic7W9jiQeCVaZIQ65MZg/fR77Q==
X-Received: by 2002:a05:6000:1d9c:b0:242:7eb8:37bf with SMTP id
 bk28-20020a0560001d9c00b002427eb837bfmr21996245wrb.32.1671189649772; 
 Fri, 16 Dec 2022 03:20:49 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 1-20020a05600c228100b003d23928b654sm9042343wmf.11.2022.12.16.03.20.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Dec 2022 03:20:48 -0800 (PST)
Date: Fri, 16 Dec 2022 12:20:48 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Daniil Tatianin <d-tatianin@yandex-team.ru>
Message-ID: <Y5xUkA1WlFX4UhzR@nanopsycho>
References: <20221216091326.1457454-1-d-tatianin@yandex-team.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221216091326.1457454-1-d-tatianin@yandex-team.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=c8zJd904+IXjpPodDBXcpzzovSChRn9dgEg89jVdTTc=;
 b=rwC753FZsDUgTG4iIcy926S69sXY8sUHPwYod7qj6vcU/Aab3GdkOxs2e0mkNILo40
 EuzGZWQSs+t9TFGViBP0HMSn2f5NA0pEON7drTGWJabe53fS/hClSpNaQd2IHD68Ljri
 XQ/yG4C+pacM8BubKRno+Iln+lJnd55/H7dKp2pflYml8XZ6pfUDA3JQyAy6+Pml3p/7
 uEfIi7EiShHzKM5HwFWYeDR7ipOt1A3fcUuDkVoUp6vj6GKvo3I+3nNSrapQ++X7Sj4l
 A750lg4s57z9KiCUEsre4OyU1xmWg45pt/SAMR5e2IEFGSrA6pE2EsZrcueaM+CZeXSP
 7Q6Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=rwC753FZ
Subject: Re: [Intel-wired-lan] [PATCH v1] iavfs/iavf_main: actually log
 ->src mask when talking about it
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Dec 16, 2022 at 10:13:26AM CET, d-tatianin@yandex-team.ru wrote:
>This fixes a copy-paste issue where dev_err would log the dst mask even
>though it is clearly talking about src.
>
>Found by Linux Verification Center (linuxtesting.org) with the SVACE
>static analysis tool.
>
>Fixes: 0075fa0fadd0a ("i40evf: Add support to apply cloud filters")
>Signed-off-by: Daniil Tatianin <d-tatianin@yandex-team.ru>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
