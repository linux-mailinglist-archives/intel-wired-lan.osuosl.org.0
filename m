Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF868004D7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 08:40:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D31C16F5A1;
	Fri,  1 Dec 2023 07:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D31C16F5A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701416444;
	bh=H23jZ20BLuz3WS4/yY3hgEKmrqJ0lX56/MOLwWeMirc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YaNEec+GqPAS71G9XzK3NGY2WFV382lZL1QEV1CZQjZGgzQPaCjQ17T5x9mxJ59tM
	 9pULt2ryiwbd2tRprnk44pvUkL54poLbPxAVAB5C1uFNqm72Tp/EzCP7EwPTLdf5M8
	 0OLYHFGkd2orXEaEV7OZhTXHFB8JnGBtaMiI7TWOKL2xAiMCs+Ukx28YA5atASFXMC
	 4nAcuaWlop7DeEvrVJoNlVxR/DNarzku+BTvLmJ0kBGoDLVnxUkUYXX+rcmrSjFtBb
	 gEJ2WyVPlA07V+eP1XUAhH4skpfi0BTYqKdN7iJ+fwwUcxqpRgtnXWfNnTOnfYDh8e
	 jFyuQoV4qAcLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZczDVYRviwMQ; Fri,  1 Dec 2023 07:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCAD56F4D2;
	Fri,  1 Dec 2023 07:40:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCAD56F4D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 636CE1BF98D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FB7642079
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:40:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FB7642079
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AxsxtXS_Dssr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 07:40:37 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1EED42077
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:40:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1EED42077
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-a0029289b1bso239130566b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 23:40:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701416434; x=1702021234;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sz8TgoSO7HYblHK0tgTJzGRRiFKRRHYYQJ0Xbhf9+xA=;
 b=afS+m0Y9BrgE9Bw/WDRbI4yfShxis7nud04QcKNjlVBvDWDSQyD419xIEnO3K2IHsV
 g9ZoESEEs1WrndjAYY89Lsiv0ToANJOqkPnYJOxV62l0oClvJf6OVSh7E5KyDoIIRKyd
 VPLvTEApNS0SYN+JsdXiz8VzMYicsEWjiWVQ0JJ3UtT8dXFxGNxB3jWLZ2mGFIiS7RV2
 tbvdlUCHQk2tHgS3k7BYPdb8XQxG7PXVqjnZV4LauiTZkeUo99OX4UfhUTg1E1Cld+D8
 VtNsLhPyYk/4LTut7pc4HG/7HY3X+WTJsLStZcp/AFi0qoL/FfCXlWhgFf8RTXM7lKhU
 BFUQ==
X-Gm-Message-State: AOJu0YyVOwKvmr64cqcgX64HCOlm9gDJBh1lMKzBNr2stlfqHm4dC5uf
 /8vnrqzUQv4dDWHlUkfzX6AbyQ==
X-Google-Smtp-Source: AGHT+IGgqqWjAQV5JcO5OGsBpcsZcs8sPdEvKDT8ioKQRJ0V+39oxP+0bhkq+pthqvVwvNuwkRQcaQ==
X-Received: by 2002:a17:906:5399:b0:a19:a1ba:8cef with SMTP id
 g25-20020a170906539900b00a19a1ba8cefmr487745ejo.141.1701416433751; 
 Thu, 30 Nov 2023 23:40:33 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 l21-20020a170906a41500b0099cce6f7d50sm1577972ejz.64.2023.11.30.23.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Nov 2023 23:40:31 -0800 (PST)
Date: Fri, 1 Dec 2023 08:40:30 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <ZWmN7ifRPjuxK7f0@nanopsycho>
References: <20231129175604.1374020-1-sachin.bahadur@intel.com>
 <6404194f-3193-49e0-8e46-267affb56c24@lunn.ch>
 <BY5PR11MB4257E2D47667F2108BEDBE0F9682A@BY5PR11MB4257.namprd11.prod.outlook.com>
 <fadae2d9-68ab-4a1a-bfe1-78d0f1c2fb13@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fadae2d9-68ab-4a1a-bfe1-78d0f1c2fb13@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1701416434; x=1702021234;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sz8TgoSO7HYblHK0tgTJzGRRiFKRRHYYQJ0Xbhf9+xA=;
 b=oIYHzAscKnQSGWwjNHPWwIspYsmtX+h8T60hLyJpppdSQcrw0L5LMfdUvzOeTvOxVC
 6ZKkWElOnRa6tisT1HDQnuljcZWvaIS9RRSPwY1s9z3LQDPugOd8OwSXkIp0yYAG3+BR
 Plem2IIw+h4mnsfLrwweAE+lTU/085eh3YSUn8exQ/x+lxg36mvZLMXIuf4GeMVKCHVg
 Dhb+xarsgHADfFnxu991fQHD9acr7YfsQhYYKV0JGs6x+9ty694K+Aa4morJO37x9aTu
 wgF/SHKo02KIH96A4+02gX5l97MkI8fgqOW5WXIDFaUV008EZByP21+Z1L4NzOk8DFiz
 K9Ag==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oIYHzAsc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Print NIC FW version
 during init
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Bahadur, Sachin" <sachin.bahadur@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Nov 30, 2023 at 07:13:11PM CET, andrew@lunn.ch wrote:
>> Yes, this info is available via the "devlink dev info" command. 
>> Adding this info in dmesg ensures the version information is
>> available when someone is looking at the dmesg log to debug an issue. 
> 
>Ideally you would train your users to use devlink info, since you get
>more useful information, and it should work for any vendors NIC, not
>just Intel which is spamming the log with firmware versions.

+1

>
>  Andrew
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
