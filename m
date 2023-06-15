Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3BA731AB9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 16:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B890F408C5;
	Thu, 15 Jun 2023 14:02:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B890F408C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686837740;
	bh=bi+bwGYFU2PUMICKNUeeDVwFMEMUUNY3QnvfBJbU+Zc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ugXZkJKHZb4sN7XzGYT+4MzSS9BbijPoNsp65brgjKFP/e/m7H4oXwzXD7RTsvH5n
	 6Bbf/7ey69CA2dAoZuUdzv1ky8EnaduZKB4w7Zpf/WBtFdr17TWxpDRyI6FuV9POTO
	 hvKmTJoPeMBm2/GdSiQXShNkLBui7RoDNb8PPR+yhxjvhFepZ0aK5D5mwqjY5SmFU0
	 sfeXv6wFTbVbiHzFryDx90ZyqcVccHm9N09MT/yEo7kq/cuqoEVqeFEuyhxnkphpix
	 8exZoQnOmhiMMlaFXckS9rMyK0wcxUY4zJjOiJkL1dtgZW+gYgIzXgNL2vVvMdSFRV
	 iH31BP13gbJGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LowfZoRX4Je9; Thu, 15 Jun 2023 14:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 717FC402F4;
	Thu, 15 Jun 2023 14:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 717FC402F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C9451BF30B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 045C983CD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 045C983CD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id In3KC56vRjr4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 14:02:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1B5D83CB6
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1B5D83CB6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:02:13 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-3f8d1eb535eso17038215e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:02:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686837732; x=1689429732;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Iuyq1q4Civx77PzFHDpUKjHueDOZzYAPik1VN/lXMjU=;
 b=lHR8dtLdpUKYb3JPt5CzGSkjR3J6ki0bkwm5phASS3PDVPvP8zuHpEUk4A1PBCB1so
 NbJ5OsWV+rSBlrpqc+3JK+DCKpWGVsrE2UiSdbK/EDRwDDwnwntr8IHg4VKKOiwidbfj
 QtE9Pc+zwgIwQPSpO1Miy76KdAFOa5dzjT9Vf0D2TE2b8+dFZQ4Ah76EJazaY+mbOm8O
 NfTXi2BQ9r+S7UkMNtx6+UX+HH+ArWOzGUOC49KKlDcJoYLmGcQGR6Ep0mOIEmvlOwDW
 BA7xvunLnPgvF1A0wQ7Rq7hr/gcQeSXg0L+/AFq+QHT+Fodlv2P9FzD9SbOPmdjVC8jm
 29LA==
X-Gm-Message-State: AC+VfDwm9THd1pPtGdjA9Q3ywgNM+R7cg6bYtcPjTATmXca6ncn/BfyR
 bAN9+yKlBqiFx/ICPXtfVmxFVg==
X-Google-Smtp-Source: ACHHUZ4iD1QD4PcU+1Mi7cLd3fj4RqTIZLLfpbM5IniOHsfJxvG3gxKMkIe8r+04/YXuNVSV3DhkBw==
X-Received: by 2002:a05:600c:2204:b0:3f6:be1:b8d9 with SMTP id
 z4-20020a05600c220400b003f60be1b8d9mr12830537wml.6.1686837731830; 
 Thu, 15 Jun 2023 07:02:11 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 o6-20020a05600c378600b003f42d8dd7d1sm20851147wmr.7.2023.06.15.07.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jun 2023 07:02:10 -0700 (PDT)
Date: Thu, 15 Jun 2023 17:02:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <64c98e79-2de5-419a-9565-2523635bd3dc@kili.mountain>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-7-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230613215440.2465708-7-vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686837732; x=1689429732;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Iuyq1q4Civx77PzFHDpUKjHueDOZzYAPik1VN/lXMjU=;
 b=N4QpRNULdQTn1NUO/iUp8WyMddebbz+L8BZPtSAVMqhZ4jS80V1cWa4Pil0diJQkAw
 DhCHbqsSjI4uM7MgeYO67u5tP/INNBO5NKUjFlmbqaK7LSsGuxrZGQWp6lOhD8LotFLQ
 DupgDjg0yJmIL+/oLVAytEkkpOCG++boHf44jnB3L1ZBz14x2TD6git3VPmDOcfODst6
 aXTgk7lMzTtEc981/Gs1re5ndsa+DPQ0llX5aig1q+CmmP8EKhD7Or/BlHFcswyY5ZQm
 HYX25Pl2pbe0UPEtiJdgxy6LXQvqmy/67SuTOX41SnbFadNOjucM9s1lkqjt6TyXPJmu
 LhHw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=N4QpRNUL
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/9] net: netdevsim:
 create a mock-up PTP Hardware Clock driver
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 12:54:37AM +0300, Vladimir Oltean wrote:
> +
> +	spin_lock_init(&phc->lock);
> +	timecounter_init(&phc->tc, &phc->cc, 0);
> +
> +	phc->clock = ptp_clock_register(&phc->info, dev);
> +	if (IS_ERR_OR_NULL(phc->clock)) {
> +		err = PTR_ERR_OR_ZERO(phc->clock);
> +		goto out_free_phc;
> +	}
> +
> +	ptp_schedule_worker(phc->clock, MOCK_PHC_REFRESH_INTERVAL);
> +
> +	return phc;
> +
> +out_free_phc:
> +	kfree(phc);
> +out:
> +	return ERR_PTR(err);
> +}

Simon added me to the CC list because this code generates a Smatch
warning about passing zero to ERR_PTR() which is NULL.  I have written
a blog about this kind of warning.

https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/

Returning NULL can be perfectly fine, but in this code here it will lead
to a crash.  The caller checks for error pointers but after that it
assumes that "phc" is a non-NULL pointer.

The IS_ERR_OR_NULL() check is not correct.  It should just be if
if (IS_ERR()).

However, the question is can this driver work without a phc->clock?
Depending on the answer you have to do one of two things.
If yes, then the correct thing is to add NULL checks throughout the
driver to prevent a NULL dereference.

If no, then the correct thing is to ensure that CONFIG_PTP_1588_CLOCK is
enabled using Kconfig.  We should never have a driver where we compile
it and then it can't probe.

regards,
dan carpenter


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
