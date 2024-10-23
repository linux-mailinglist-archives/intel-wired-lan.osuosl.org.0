Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC04E9ABB58
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 04:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F98A4053A;
	Wed, 23 Oct 2024 02:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OollyiWO7NLn; Wed, 23 Oct 2024 02:12:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEF8340543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729649577;
	bh=5B9SJRSxpgH+a2QQDn/7m98ugDjbIUWnL6gLprauvRk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R97t08RcdmuvsfxUWfB60LMblQZwhtHqXwkfMNbip3HTUYynP7oh5ElSKYw7qTjwI
	 4gE6+YbLDquFYqM51PxLZcZwVEeBpobKoOEFf+E3wVS2qSvyCjttK8NlXF11pyMa5O
	 DOHAjbjzVrjwSRzFp6RWcySf5DNcY34diTzZL4kZcpwQR29zQ7ubVJ/giDtd6zd8ox
	 Tuu79vA5cDsuwpt/ntFqROybqIeqobrCfe8uI3GMQ50wjghy9UvO+Hs1E4w3IFH7FJ
	 pBjRUqQh2DcVQaL0Famy5Z5+yPpujoETUhPyLlKBZpucCY6c4ChqGeWNMSmzV+5+ag
	 TnmitcFPUG8bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEF8340543;
	Wed, 23 Oct 2024 02:12:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5760B59B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45C43600B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fIUDTOhuXNpC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 02:12:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::533; helo=mail-pg1-x533.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B2EA96006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2EA96006A
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2EA96006A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:12:55 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id
 41be03b00d2f7-656d8b346d2so4139787a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729649575; x=1730254375;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5B9SJRSxpgH+a2QQDn/7m98ugDjbIUWnL6gLprauvRk=;
 b=E87Ij8i4P7JyZKRQgdTm0/0S45q/8jQY52i3mza3omtYt2eUjfvjH1Nf/Jq4NNvMMp
 3AAf1CItHDwnhx34p8E4NOMdhNbIxl67boid+lVJYHIG88k+eiYPRU28RD9mxXo+NTgP
 t8Y9Fjtk9eMQ/rO7Dp1N0GB67bIAOcE0gY1kxECQpAOxeA2WechAhsxovwofq/JxBzjr
 Lr7vfj/flfo3NywBQ6iy80T1dCZiYu8Febfwsjb6FIH1XEIEZSK9898477go1QEaCPU3
 IydynfVD5UE+3Jr4rWDQ3NH7w0nivR+hOGAf8MV2Qsy/Ho+g+6QHvug43KjipL1Yr1bd
 dWjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCURMKa1cOu5HWwDYG36mz3PjxcGO6YUOPuzdqEONrONIzmcwL22GvsTNBl+6DpIElHv8R9BoB06X5u0Ja8bFR0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyzPJfbD1AWKYBBhRMCSF3Au78fNpsq9RFOln+cPX/dmAAJ2L2b
 vTp5Gh+DEygCaN3LDeTmK7fAK8qCb45AKbEyuoKBW+Y3f/99QcpF
X-Google-Smtp-Source: AGHT+IFGngh30tPnUsIitqRKW/TXZNiqX2UdKWf1av7Jf6M3yMXoiDLU5ZvkR2C/4+jJbiFyVtgfBw==
X-Received: by 2002:a05:6a20:e68c:b0:1d5:1729:35ec with SMTP id
 adf61e73a8af0-1d978aeac65mr1157129637.7.1729649574879; 
 Tue, 22 Oct 2024 19:12:54 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e76dfedbbfsm154240a91.56.2024.10.22.19.12.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 19:12:54 -0700 (PDT)
Date: Tue, 22 Oct 2024 19:12:46 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <ZxhbnvaxmV0njtMu@hoboy.vegasvil.org>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729649575; x=1730254375; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5B9SJRSxpgH+a2QQDn/7m98ugDjbIUWnL6gLprauvRk=;
 b=Tz8bikLRQ4ByYiG3nFflv6qd4zcSTMMSVHCqLVJtn1Rai0+c6eFU7F4dcvwNQW32Qc
 A4KZRp9ay5Hljmzht5LE8QoMekkO0/zAjniH1nV8MncZZP0ZMUzAW9dnxESGLExKVGkD
 u9v84STO0khbiyf2StwbY6vJaKKnOOwRtHF0eAog50iouXhlrvivtBwfxYDixHXI7jtz
 cHTDVHf2pD5axquyx6TlKwhDzHk1dhH7QhtcfVHB0eyA7ymMHbc30/vZjinVjLlnp8Gn
 noZ9X5ZOCNg5PhOiB9TPRDVxAalg6l7n2Xh9BupPYq19aHSLsOXnuWoMCz8MApywouaE
 k9bA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Tz8bikLR
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
 timestamp latch point
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

On Mon, Oct 21, 2024 at 04:19:54PM +0200, Arkadiusz Kubalewski wrote:
> Currently HW support of PTP/timesync solutions in network PHY chips can be
> implemented with two different approaches, the timestamp maybe latched
> either at the beginning or after the Start of Frame Delimiter (SFD) [1].

Why did 802.3-2012 change the definition of the time stamp position?

Thanks,
Richard
