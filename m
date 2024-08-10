Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FD094DA9C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 06:15:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAADF414CB;
	Sat, 10 Aug 2024 04:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0IBHGIfNie8I; Sat, 10 Aug 2024 04:15:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B129A414B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723263354;
	bh=q3GerInaWEyH1A9O34QT6vz+N2U+qlxv6GKZ5/5cK7E=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OGMC6hKGG8RquD0H8jcVn8AMzeUD95JAU9b7iMxUbWjKkGQ7R2ks+Yexn+7IW7/Z3
	 hSSESiT+AJlifY/Tcpd/vH83dgL/bAmXXuujAgHkMysnRhJBlBQP0E4hBounm5Khke
	 9pGlWKvFgtiqxpT6npasuowpxGjjjp08FLPeauf+xpW9CaHUFxjEUgavlSRKyTuKDt
	 9xyVKumFgNuuVUJud1fFtVc+q4a5YtWBYr8XV6b00ZKWwej00hZUgm8/4IAQVhdN2n
	 sNioC0Qfa/CP0fdDR3AJZjkXAl2bKmAwxAm8nbCPMtiH7GIpwz7UxEL6W3CAP8Es0/
	 yFZCBMs3iq9og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B129A414B4;
	Sat, 10 Aug 2024 04:15:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF4741BF83B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 04:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D46754149E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 04:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zM8lXGbefTg0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 04:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E35D141490
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E35D141490
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E35D141490
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 04:15:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1A45B60BC3;
 Sat, 10 Aug 2024 04:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E40EC32781;
 Sat, 10 Aug 2024 04:15:50 +0000 (UTC)
Date: Fri, 9 Aug 2024 21:15:49 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20240809211549.28d651d7@kernel.org>
In-Reply-To: <20240808112013.166621-2-arkadiusz.kubalewski@intel.com>
References: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
 <20240808112013.166621-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723263350;
 bh=DsTex5w319t+W39m/nEPcF2eB9y2KGW7S5WuO7vGhIg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dKJlNMoXv7gx8cfES6UdDZhyuJJrX7BuuLni6LKNZvc38+xJVar7LA/Ss2qHJDtq+
 jJvn3dVXn8ezVa1RaMskxVMC4nIGfzbCftRDEePOUKDPkC3CNa+mXsyiFFwhNmRFXM
 7+xGv66g6YeeS+wCf6no+ACovtjR1FOqEEBTKb5U9IaRBfS4wj3aCIRGeW/SYoMaIr
 cPh60y47Q9B5xhdYY1FsI49xjwVs+uQpgQpsryVniDBPB8ta2/y64zMKHD41D+Tmuo
 5/wsJuD8DMh5Dw67WCDDu42URoZcyVy8iqr0jEzw1qN0503sOpkX8c09VkHrWGhhLs
 FO0GtQFdo9Brg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dKJlNMoX
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] dpll: add Embedded
 SYNC feature for a pin
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
Cc: jiri@resnulli.us, corbet@lwn.net, netdev@vger.kernel.org,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 vadim.fedorenko@linux.dev, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  8 Aug 2024 13:20:12 +0200 Arkadiusz Kubalewski wrote:
> +Device may provide ability to use Embedded SYNC feature. It allows
> +to embed additional SYNC signal into the base frequency of a pin - a one
> +special pulse of base frequency signal every time SYNC signal pulse
> +happens. The user can configure the frequency of Embedded SYNC.
> +The Embedded SYNC capability is always related to a given base frequency
> +and HW capabilities. The user is provided a range of embedded sync
> +frequencies supported, depending on current base frequency configured for
> +the pin.

Interesting, noob question perhaps, is the signal somehow well
known or the implementation is vendor specific so both ends have
to be from the same vendor? May be worth calling that out, either way.
