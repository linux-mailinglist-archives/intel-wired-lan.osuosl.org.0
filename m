Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 516173BC4ED
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 04:52:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D0ED40459;
	Tue,  6 Jul 2021 02:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id quYU_sgxxu2b; Tue,  6 Jul 2021 02:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 644554041E;
	Tue,  6 Jul 2021 02:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D09B81BF392
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 23:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBA3C60737
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 23:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBrxFMsrsFSk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 23:02:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04094606F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 23:02:15 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id f13so8141052lfh.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 16:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=opgV/1dSlT5CgMY/0CX/nuPAXjFoizd2I+M4agkbai8=;
 b=ACwX+1GeoTQIhcM8Vvuv82ZgxGesCE/a3rlNidM6bCVqYO3kk9XqVk9wOGiDSzpSuM
 aqvjVojs1nxcxvOBqGAcFHmeCefIFjQFJl5Kk0fjhEjeX+MfsasMuxqytQH4NcFGQnsl
 bIWlLDhcvWJkJBbNun0X0wsMmxN70JX+VQ8DPaIZCkRG4PWY3TBZYOlJraCn5FTsUaUN
 fuWmzukSMs91wXUb43IGlS0qd5y9Li1iyeVPwubyKxn6Pyeg0HOp5cybE19ICK/zCw5Y
 LK3pORrBwyHk7hUde8M2XrGLvU/ZHg0Tn1EXRHhXDtCqZKyWh50XKltq86cMGBCH9wHI
 CbAw==
X-Gm-Message-State: AOAM530WAQN00DIoF8L5Ekc1ws7wBcA8DECaxWbtW1XuxWZnc0iK4kSE
 Yis+hCYe3vA+Qcn93yrNZzM=
X-Google-Smtp-Source: ABdhPJxGcdoMlt+O4KlMPB6m89KUIwV/UznGIwolBu//VdjxQJJ6rv4GIHsixITGAHepa6Y807nsfQ==
X-Received: by 2002:a05:6512:238b:: with SMTP id
 c11mr4669725lfv.548.1625526133811; 
 Mon, 05 Jul 2021 16:02:13 -0700 (PDT)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id s21sm1208097lfc.249.2021.07.05.16.02.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 16:02:13 -0700 (PDT)
Date: Tue, 6 Jul 2021 01:02:12 +0200
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210705230212.GC142312@rocinante>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210704142808.f43jbcufk37hundo@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210704142808.f43jbcufk37hundo@pali>
X-Mailman-Approved-At: Tue, 06 Jul 2021 02:52:47 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Pali,

[...]
> Aaron: can you check if pci_dev_is_disconnected() is really something
> which should be used and it helps you?

While having a closer look, I've noticed that quite a few of the network
drivers handle this somewhat, as I see that a lot of them have some sort
of I/O error handles set where a check for "pci_channel_io_perm_failure"
seem to be having place.  This is also true for this driver looking at
the igc_io_error_detected().

Is this not working for the igc driver?  Or is this for something
completely different?

Having said all that, I am not an expert in network drivers, so pardon
me if I am asking about something completely different, and I apologise
if that is the case.

> Bjorn, Krzysztof: what do you think about lifting helper function
> pci_dev_is_disconnected() to be available to all drivers and not only in
> PCI subsystem?

No objections from me, if we believe it's useful and that it might
encourage people to use a common API.  Currently, I can see at least
five potential users of this helper.

	Krzysztof
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
