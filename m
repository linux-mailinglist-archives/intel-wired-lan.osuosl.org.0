Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE9C6473CB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 17:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 847FF40C0C;
	Thu,  8 Dec 2022 16:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 847FF40C0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670515339;
	bh=VV//v1YEHWaB8p3LQDJPk8mdU88UKC1yCGB4FX6qaOw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m8JDa9KeKyESol1Pi42B5977XCtcX6G6XbkgRHi+99rtRlhAkzx5xSQHMp6L2/UU0
	 IdU3ZPsMTxl6Bc50RUoz2OcqZcXiZol0vvUz8fWqTbXEd9zbZbhrD7jw4TEDs/GupH
	 2YOAoCzcZmwNJo9PypADgnhUGzQJmWRLZFFUXOogXonhwAiA+qwEsxUtM0d/ZKa23Q
	 ZVZOS9wJnERBYE+byaLiZtUYvfG9ESqf1SxvjdiCU4PQQzjridmj3mK54VmwyEQ8Dt
	 alrjtb9Nz1skEwD3FsfX73VaEUvtU4CNQWY4Hl2OVPPyc5f8nVz+eyj3F32cl7oZGv
	 P3/tNoMwTO8UQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4WtqAcmJ7vJ3; Thu,  8 Dec 2022 16:02:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 833C840C03;
	Thu,  8 Dec 2022 16:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 833C840C03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 747BC1BF576
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 16:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5959241927
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 16:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5959241927
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mgWNImum7yxp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 16:02:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5EB0415EB
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5EB0415EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 16:02:12 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id n21so5088732ejb.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Dec 2022 08:02:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PgTcP7Sb6G+mxt6RrmX5diGBUpEOwhypZwyQEkEjZUo=;
 b=XHfeoD/ABeIUXPcs9qs+m2weRqkSNwRMrx22IK/llrZgjHNwfUVQ075OWIx0O1DRs0
 KjBP0h/6VD+Wcz6qtCLEYmFVzTzSgA7nlhBnOOrJSgM2c2CqxDMsgaJeHXeccdtSTJqU
 O0ynasOgmbXvW/2hO4jVQ6oArBfEl5hSMUxd8nXi/4YPJ9HoHUZfIvZUyemyBWw97mHz
 nyhVv06Cl5DMpVGBnI7TjQJj1R1+HyKhD+7Rxjx5qnDyWdP0XstQX5O0l1wkxgz+tScd
 LbKgQ4NEPRhwqrNzi0LYvYaHWOmck2QqVga9YL87Rx2nWHHb26gr9z+yyQJIcq9ZbGr5
 /6iA==
X-Gm-Message-State: ANoB5pkWHquzcsD6Qg57b20jsINxQX4JdsMwSRmHG8CL7YLMkVJqG6FE
 khcxE2i53t7l0spKNaqKifMUYA==
X-Google-Smtp-Source: AA0mqf7BntqxGCpKPwxV6jdJ+uAdbt8+2G6+VAMqcwwJNz/syMYkGpO94/UjsegtDWOy3jZydWHzVQ==
X-Received: by 2002:a17:906:1e4d:b0:7c1:ac8:73a0 with SMTP id
 i13-20020a1709061e4d00b007c10ac873a0mr2285776ejj.51.1670515330398; 
 Thu, 08 Dec 2022 08:02:10 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 z16-20020a1709060f1000b007c1175334basm2675858eji.78.2022.12.08.08.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Dec 2022 08:02:08 -0800 (PST)
Date: Thu, 8 Dec 2022 17:02:04 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y5IKfOOhinE66+Kt@nanopsycho>
References: <20221208133552.21915-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221208133552.21915-1-jiasheng@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PgTcP7Sb6G+mxt6RrmX5diGBUpEOwhypZwyQEkEjZUo=;
 b=KLiZD2qBOu/qNsJ2cZjRu0xhRjkjzMUvesjTwJF+Nj34blnUwi+EXBP1laZJLS8qQj
 cAr+pVGQEkgP7EGIXfq2cAWyFCTDfhDG4cfZCYyiuGXVclg4Ynx/DWUMEaRSTGz833dN
 NCoHV26jGRcTcQFsYg2jyVoKA97rHaaFhk9n7HsPuWB/Tb8YKl8MTuMkV3zveMStl4JV
 Fs1Hau6UHdvfP1TGdyZ2wg9UWxVTI+u/sCEEHMSHyEXMjnoVcHwKffCOiWvuQNiEBOqL
 qxXGyjwsH7GGufZlywGdDJo7ICy0YGaGpAj92BiZSrgKRLKt3z8huikoi8IE9RYGETD6
 s8fg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=KLiZD2qB
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
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
Cc: leon@kernel.org, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Dec 08, 2022 at 02:35:52PM CET, jiasheng@iscas.ac.cn wrote:
>Add the check for the return value of kzalloc in order to avoid
>NULL pointer dereference.
>Moreover, use the goto-label to share the clean code.
>
>Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
>Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
