Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3AC645B27
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 14:41:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A39641748;
	Wed,  7 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A39641748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670420487;
	bh=UTxIU63ML/WxXhTOuyR68ptD/Q/F1vjCCndOqMwi4Gk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7wNOr/cpm8moKkVEnk/UMXcN2D5qpsF0+dfIDEXGvUV9OYG0Qh71Fu6keAhYbCwIr
	 A6FPgrmvVhHd+AtH83qJer0jVZe+eGTW4QkEmrGi3DkYR7Ry0AlQfehXHxjhFyhkRa
	 kJuNBgr58ZoXcd7nfZlsxVwAPsGn8k2KUi69tJs+qS3OFi10YGFtWZH6l9G9LuE8mI
	 M/YsKC3LiuDjVtPr+lhLKggZ+MriCKjsAc8Bq+xwCZyziWN6KOCiBw8J0KgKXvP1EK
	 4jsJ+qwYXYl2xrXfusxB795ezcqoyRxv23hmswizcEWrIY/aiOraDlWUrxN2w2jw0v
	 5+5R8NcsDHrLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hB5xUbzqk6O5; Wed,  7 Dec 2022 13:41:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C885040287;
	Wed,  7 Dec 2022 13:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C885040287
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BD5E1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 13:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13212402F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 13:41:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13212402F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWXWUsxDBySK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 13:41:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2742D40156
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2742D40156
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 13:41:17 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id m18so12517529eji.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Dec 2022 05:41:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mtuzOfw0Oi0U8E5fGsLC9amop5MnEpGVuaEzshiOd2A=;
 b=VEbbLImTMf6gCGAYvWWg3iu6LQX0PhKfHWGVJp+sE6iEzE3hyCdodmhYsdZiXWI9BT
 Y8yeJkWouotY9PUe86s7O3IUz3wXhtzVvmmBGabWc5XAhW24GYVCLUAymSXbcICE9Lys
 PfI0PNezomOqdvM+xXEN1ajp7ySOCXdCOvJQqBw4FAvlIk9e+i1mv7BOioPHB/7Z27AQ
 if4zU71rqpHq9pP+ysIQvus9mC9iMNtn0sgJquVvFX5rX8JCymBBAWDeIGq1bcDPEfFF
 J8iarSfaAlWCBVpucwPpPIAHAoOMQcaoaRe4q+AUr3MBIdcYcf1rqkoTF1qmniB/pxTA
 nlVA==
X-Gm-Message-State: ANoB5pkuVVaLFONSrP0e5mARpFo8Hjv9IxsBUY19hGkFi4U7MIJBaujv
 WUqYuQkCa6L1QUASfWERj82R7A==
X-Google-Smtp-Source: AA0mqf5lc/G1mvDAUTXao/P5lwqse/TLFm614gQpaRxZzlpXx2ryyaZOP6NYha22JQyxFjAI4elmaA==
X-Received: by 2002:a17:906:a209:b0:78e:ebf:2722 with SMTP id
 r9-20020a170906a20900b0078e0ebf2722mr73484504ejy.490.1670420475980; 
 Wed, 07 Dec 2022 05:41:15 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 1-20020a170906200100b007bc3a621224sm8561495ejo.196.2022.12.07.05.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Dec 2022 05:41:15 -0800 (PST)
Date: Wed, 7 Dec 2022 14:41:14 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y5CX+kYKoXeDppNT@nanopsycho>
References: <20221207022000.44043-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221207022000.44043-1-jiasheng@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mtuzOfw0Oi0U8E5fGsLC9amop5MnEpGVuaEzshiOd2A=;
 b=MoXad6POrKxM+1W1tpTYK0V/OAfkJ8/5ZfglWKfn4OVK/dpJoQLI30qKWoExXjVwk9
 TrtW4BntvSL0vTXRWLgwSKj1aue+B6dTv5RSUqJC5REBoEkHXPuzGUzEm4A/ELWfaC4j
 82d0N+kvsP0Y+Dex9cozH/7hs8zcFLpJWihpWHZqTtQx9RapuP2cVBnEwlNbeSY17aqe
 vNKK7Jn/7HNKVBZ+own0ke+EPRJ0b2Mo4yur7rVyW/PAsjCBNT/mOi7Kss0B4D/dYlnH
 m9opYgalLf8pL6RjStNmYJITFDDRuG8BBf++X4UTY6OpI1IFjyKok3eA69fDsYuKsKIi
 WOIg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=MoXad6PO
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add check for kzalloc
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Dec 07, 2022 at 03:20:00AM CET, jiasheng@iscas.ac.cn wrote:
>On Tue, Dec 06, 2022 at 05:47:01PM +0800, Jiri Pirko wrote:
>>>As kzalloc may fail and return NULL pointer,
>>>it should be better to check the return value
>>>in order to avoid the NULL pointer dereference.
>> 
>> Okay, so? Be imperative to the code base, tell it what to do in your
>> patch description.
>
>OK, I will describe the changes by the patch in more details.

It is not about details, it is about "imperative mood".


>
>>>@@ -462,6 +462,17 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
>>> 					       GFP_KERNEL);
>>> 		pf->gnss_serial[i] = NULL;
>>> 
>>>+		if (!pf->gnss_tty_port[i]) {
>>>+			for (j = 0; j < i; j++) {
>>>+				tty_port_destroy(pf->gnss_tty_port[j]);
>> 
>> You are destroying port which you didn't call (pf->gnss_tty_port[i])
>> for. Also, you are introducing a code duplication here with the error
>> path couple of lines below. Please convert this to goto-label error
>> path so the cleanup code is shared.
>
>I will convert this to goto-label in v2.
>But I have a question that the j is from 0 to (i - 1), and therefore only
>the initialized port will be destroyed.
>Is there any wrong?

You are right.

>
>Thanks,
>Jiang
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
