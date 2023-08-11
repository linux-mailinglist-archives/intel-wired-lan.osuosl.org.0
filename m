Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4386F77855A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 04:21:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E89C60AF0;
	Fri, 11 Aug 2023 02:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E89C60AF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691720476;
	bh=oRq3h12J/ZgjotCukRlXPes1LD5kX5vFZRA9sNpoLvU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XCU7CyY+uVZR9rstQc7OTqr02FL3PvLEcQFsUXL5GI/DgsVOcB/JahrxIvU70g9HD
	 fszMHFVukUD/I1JWZhXVAAZqFSMA50wfzfN/evqlpVZb2ZAsPJQvvS9DIRCR0FBgEd
	 Yl+zgGARYHfO6aRlfXb91zsX08yjMkdi7XNfQyt0shSGJVxa43rAN5VAWQPzv9OLVs
	 82w60PVhAFlxjGJUnjjdBvGK5qJKBmHkP+QEerHezQp9LxEU2EK54ZhMjD22iOnyoX
	 +e1Bt+SbA0E8LfCm5MpQ9II05nuJ7SiEEZz2iXfFiQYrZDKHGQDiArNW1VkF+0FoiK
	 KMtRgpzFiIOlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7BcSrq7uU3q9; Fri, 11 Aug 2023 02:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 288BF60ACF;
	Fri, 11 Aug 2023 02:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 288BF60ACF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2CE61BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 02:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8927560ACF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 02:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8927560ACF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rL9JKrXgaQTh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 02:21:06 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 66B7760AC1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 02:21:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66B7760AC1
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9281B60C8C;
 Fri, 11 Aug 2023 02:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C485C433C9;
 Fri, 11 Aug 2023 02:21:03 +0000 (UTC)
Date: Thu, 10 Aug 2023 19:21:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230810192102.2932d58f@kernel.org>
In-Reply-To: <20230809214027.556192-7-vadim.fedorenko@linux.dev>
References: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
 <20230809214027.556192-7-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691720464;
 bh=UK6+nIoJRgJe0+F29KexKJZ3mwOyj8uyJA/QEbO/nzk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nlyPGGNQHpnfgEzkccS7V21YanmKRT5NmOZkZ0vxI3cxuA+qEIXYdbV1YPv15SwfV
 dJDrm3q8As5NaOwmz+ZyyvRwaRGdhPZb6ZhWvu8eN7xRR2MNdRYpU+11nVYFlWGZyQ
 b0dun7VFZkFM3de5z4jea7M9rrUqSH4UJ3E7bZzbiTaTxjCjDzcDoTq4xlb+IthX5x
 kfRFFau04EZPlvmSAZnPsNuwkCuObqRy65BsD2Pgq3OvZwWWpyFiELT3rkHE0WFoMR
 Jx589/2coK2xhWBfT3vJK3n0qnq9h7DrvHVGGywWYcbE2mtLB3xhtCrFHsY2PNX69X
 J9bBJgjMygL8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nlyPGGNQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/9] ice: add admin
 commands to access cgu configuration
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  9 Aug 2023 22:40:24 +0100 Vadim Fedorenko wrote:
> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> 
> Add firmware admin command to access clock generation unit
> configuration, it is required to enable Extended PTP and SyncE features
> in the driver.
> Add definitions of possible hardware variations of input and output pins
> related to clock generation unit and functions to access the data.

Doesn't build, but hold off a little with reposting, please hopefully
I'll have more time tomorrow to review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
