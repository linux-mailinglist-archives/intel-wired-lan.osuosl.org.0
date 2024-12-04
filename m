Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A426A9E3594
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 09:37:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7E5F6070B;
	Wed,  4 Dec 2024 08:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ldXB-NKMHL1s; Wed,  4 Dec 2024 08:37:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C875C60722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733301459;
	bh=EoVke9SqFUpCaQKo+qnhyQ0iycqkcohJkC/+ji9nimc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L/LOuw2nSxTZ6q4V53S7qf2T0TAwmW2iMXdHtO57esOT7XoCSWnCI1eWgEK6NVS6K
	 LYHy20sJ5Bv6nl76OeiZB6vbFhGXCXooJy+pI4BhlC90Tf7C/R2XewYIvdqVvLp80l
	 cd6nWZavMMuOt0TO7qYa0zQddakhg8lEl14WrxKhcv5r4/J/UlfnNuHfEJZ1ZCYANi
	 m/l/pHPp4gGO1uaMwZtehVNWR5hh7ZBqWedjIVJAIAkLndiljbhwA2X8iWUDfhGIrG
	 4lbwHv/bExmUAMKZNKUvaDGjufoj29dJv/86rrfgmhMkup6QiHXFkOnDOGPUVz/XKQ
	 1nwK6iCly4aJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C875C60722;
	Wed,  4 Dec 2024 08:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E723F1DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 08:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C709384673
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 08:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2W0q9HxX_XDK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 08:37:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=andrew@andrewstrohman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81638845BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81638845BD
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81638845BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 08:37:36 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-6ef81222be7so40921747b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Dec 2024 00:37:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733301455; x=1733906255;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EoVke9SqFUpCaQKo+qnhyQ0iycqkcohJkC/+ji9nimc=;
 b=oNEP7YeYbNQrzuUqyABz6LaNcVq16tE5Ni1/AOaR4lYxqs/dHiTG2UaxiIaEqo+MbJ
 NkqlXYlr+mx0+E723rihqdxlKuL4/hRKwRsSHMfqnuOhpnZSS7DKYCB7c7KJveg3b2S/
 IpxNb9ByUFEtYqF8hhVWGR5MZ5mtFXgiIZD6XNfM8yCCn8LchpD0LshBulWjVjU6IS6M
 FazeZlC2khvya3MjJAnO7WhLKu6h77tLfHZrZquAimMyWM1q9SrVIcK2DICIYzeBd3oy
 Uu5iCNSYC9Wq2a46pum9ivzQi4RzwsRoepiF9SxSf3/kF4t+D5T1JA08NTnl8N77CJN2
 pUxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVMqPzipoYIcqB6mqE3UUmBL9l29ZqGUBcbPUj5+ZyhHwJn4+rk3MR2SxIFHtm+aLkRG3OQ3ytCvZF/dpqVlO4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwsC8i9+hNBuQTwmBA550sCvnN+M5oyeH6Fx4K6BlIB11p7RfIi
 F/XWAhplesl4Tl2+jHzLt5XY3njzW6mU24/M8gIUn63jagqAtZ245Lton0fe6X7AffmeJbSZAcV
 9e/ZgFjMlKPKNjtsd1Ok9gYDBnqP3dtCKAwNovg==
X-Gm-Gg: ASbGnctBHNpt0CHXklVuAPXG9r58EeVlOxHbq+S3U32X1Lyc65z9JjHTwVgk3pWUrB3
 fQYXxUsPgnGohL2N8/OjM87bVxyr84Bs=
X-Google-Smtp-Source: AGHT+IHrKkSgA4hGlK8jn7mrWKSIy07H4RXZ4L/gvYx86xaKYNomvgbtV66jTpE9OVKxPCEslG9WFAbqVeHjvw6aGX0=
X-Received: by 2002:a05:6902:150a:b0:e39:9032:122 with SMTP id
 3f1490d57ef6-e39d4389535mr7493688276.44.1733301455300; Wed, 04 Dec 2024
 00:37:35 -0800 (PST)
MIME-Version: 1.0
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
 <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
 <20241202100635.hkowskequgsrqqkf@skbuf>
In-Reply-To: <20241202100635.hkowskequgsrqqkf@skbuf>
From: Andrew Strohman <andrew@andrewstrohman.com>
Date: Wed, 4 Dec 2024 00:37:24 -0800
Message-ID: <CAA8ajJkPzpGRXO6tX5CkgX7DjGwR6bPyT4AXjZ0z8kXBk8Vr_g@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, UNGLinuxDriver@microchip.com,
 Shahed Shaikh <shshaikh@marvell.com>, Manish Chopra <manishc@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, 
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 bridge@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=andrewstrohman-com.20230601.gappssmtp.com; s=20230601; t=1733301455;
 x=1733906255; darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EoVke9SqFUpCaQKo+qnhyQ0iycqkcohJkC/+ji9nimc=;
 b=QsHfnC8QCBQ6oJrw+kxBw8CKcY+Oyt8omn5lKo+/a+Nd/5mWl8VdsIk4TSSeI1lCSr
 51e+7lEGnbrszHXSRmKGHTaH+wT0X4kXxeuHU9vXbc1dO59gdyaIIjkRlKbNrglTU3Fn
 FCBr19MvhBGiK9GLBHcEiQWoTexidxnsWwivxi4nHeCGDZSHwbfYHtd6MQnO0Hg6qkOj
 V6yWRubhw7UOaA/3qMlV6HFTu0PxJcfafN+Qyf9Z9YElnwK6aDOQ66d9PXBsnlHLchDi
 qmX2Asp0UOB2gkCqJIvSuVvEYMuao3nhoxdtEy+MyStWblCyWXqpkSBH3/L+Uc9YqyyC
 UaCA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=andrewstrohman.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=andrewstrohman-com.20230601.gappssmtp.com
 header.i=@andrewstrohman-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=QsHfnC8Q
Subject: Re: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB
 consider inner tag for Q-in-Q
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

> What stops you from changing the 802.1ad bridge port pvids to unique
> values, like 3, 4, 5... instead of 3, 3, 3, and making each other
> j != i bridge port be a non-pvid member of port i's pvid?

I'm not sure if I understand this suggestion.

I tried to draw out what you described here:
https://docs.google.com/drawings/d/1UcOpENFgr-s6p8Ypwo-l4yTvtUZFM6vSLxLiX2FOMLU

I'm not sure how host A can communicate with B with this configuration.

Consider host A transmitting towards host B. When the frame leaves
".1q bridge 3",
it will be tagged with .1q tag vid 7. When the frame leaves the .1ad bridge
heading toward ".1q bridge 2", it will be tagged again with an outer
.1ad tag vid 3.

So ".1q bridge 2" will see the frame as having an outer tag of .1ad vid 3 and
inner tag of .1q vid 7.

Is that what you are thinking, or something else?
