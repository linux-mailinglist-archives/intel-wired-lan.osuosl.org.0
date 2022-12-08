Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB24646E36
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 12:18:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2131D4191C;
	Thu,  8 Dec 2022 11:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2131D4191C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670498292;
	bh=kLCC2O24XDKeryYd749JrNwaVnq9epLnUvHPy2GeeTY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u5fKJp48wEj8dDSzNGx6dR1fWEia5Wlcuaj2eZ8xBmhI5dmD9QjuGXgDpFQoMJ7KZ
	 Y5HjnCAGQ3ukhOdCrUSnUQFGnqpdwJeiEJu9oIbEg5thom9p4QluyJ21Y/aizzavdj
	 s+wW5NkR1bMqIshsUw1ad2DTbO+EhwJnqbV+HNaWxNpj2hbI3gSABl0oBpxd2pGfJy
	 H0Oa8nYJx9E+N66ah6tkif4gzNriT1fIAzesSUnpd+P+60DdWlkmUVu0Qri9bakU6K
	 njLPcj6pc0s2K0aU4oVNqiEIJ7P8Mz/RAJ05DnH/xOVz1jMIfBmymH1JHgSsj+78sD
	 dpGyVbS7E4jLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1pxGFfPYD45; Thu,  8 Dec 2022 11:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C21144185E;
	Thu,  8 Dec 2022 11:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C21144185E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8687C1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 11:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DF9F610E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 11:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DF9F610E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlxzX9q3RosE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 11:18:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAAB3610CC
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAAB3610CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 11:18:03 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id kw15so3034717ejc.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Dec 2022 03:18:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oT2rBAyYzBWLma8KMHZ+cgilhfzsGAXdOAC/OUiRkiI=;
 b=0cz342NKs/fwylTMCbUyx34REdaUPt3GqAGS4YDyOW35F/OCQuluIQ0o4FOypiXPQc
 A124n0RQvsyKvR44AR7gJro+wiLecghUo5v7806LJEb0mkVH5N+380RfFcR86bffSN9p
 EkpA3jyr5PuQ81jhIBjZbJmvuaNmriUsHrNlUO6t1EHtkx6JP5+JLxMLuh/Jvve30N+c
 KM9xGxdKXEt/asdl5WxdZ/VMdQik78FK1Yo+tTLzKj7Y8zAQyqoXgOk3zJ7IeUS6n6bM
 kJ8MlDzmgQxd2pDaw3oO5gO8PlMYKQQGhwguqf0C8JpuDd84xKIIEgdze0hkaVJTcgUz
 0bmQ==
X-Gm-Message-State: ANoB5pmG0uvkqg52HgjM+G+ph0xt1vUKaCyggTvqpgIS5E0IZfXE07T5
 JaraDu1BwKQo8Ix4NYL52JigEg==
X-Google-Smtp-Source: AA0mqf4dCGvpdBf/rVkS/p9eh8VaoYt2Bc0DZMfBFvhS1GzG8BtgCH+uN1ZJXfp6N3yzJDxrNf4Liw==
X-Received: by 2002:a17:906:2e8e:b0:7c0:9805:4060 with SMTP id
 o14-20020a1709062e8e00b007c098054060mr2111777eji.38.1670498281701; 
 Thu, 08 Dec 2022 03:18:01 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 fi22-20020a1709073ad600b007c0d4d3a0c1sm6388329ejc.32.2022.12.08.03.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Dec 2022 03:18:00 -0800 (PST)
Date: Thu, 8 Dec 2022 12:17:59 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y5HH54ek3KX2aHpI@nanopsycho>
References: <20221208100603.29588-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221208100603.29588-1-jiasheng@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=oT2rBAyYzBWLma8KMHZ+cgilhfzsGAXdOAC/OUiRkiI=;
 b=SJY2ShYOGTIbPhBYczDaWzlurej2dSXzGDh6/nIOVDmC0aEN/0Jwe7KSuw/Dv1iEGi
 WXnyLoVqbs62c+0xshTao9VbfPXzaZbWaK6BAbyq4q+x93GDLyh7/MpP37aOTaLH6o0h
 4sybymi3lSIXBbGg9bcedvmRMhGx04QnoxTH07jTeCuIoUhE5wOiqxTVe3gm2lZxzrlO
 RD6kfSaRV67NWLeZEmI5xgspv/WOCgTCly3z8GOEyV0kGkeHUinfS9alzcfjUIjffy/X
 /WuauN0oMUEjT+pwYntbWKJ02dbIh/asW9qYhxhAa18YFAOYkPTn5zGHUwXqE6f17mge
 M3xg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=SJY2ShYO
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Add check for kzalloc
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

Thu, Dec 08, 2022 at 11:06:03AM CET, jiasheng@iscas.ac.cn wrote:
>On Thu, Dec 08, 2022 at 05:25:02PM +0800, Leon Romanovsky wrote:
>>> +err_out:
>>> +	for (j = 0; j < i; j++) {
>> 
>> You don't need an extra variable, "while(i--)" will do the trick.
>
>No, the right range is [0, i - 1], but the "while(i--)" is [1, i].

Are you sure??


>If using "while(i--)", the code should be "tty_port_destroy(pf->gnss_tty_port[i - 1]);".
>It will be more complex.
>Therefore, it is worthwhile to use an extra varaible.
>
>Thanks,
>Jiang
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
