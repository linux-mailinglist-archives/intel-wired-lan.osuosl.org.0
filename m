Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFD59B489B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 12:48:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D445B60848;
	Tue, 29 Oct 2024 11:48:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id um_AkOkTTbWp; Tue, 29 Oct 2024 11:48:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7BCF6084E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730202516;
	bh=fnPiSIzYx1HHGDGVnrngZ9mBvsB94BIHWT4QM52rRrM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jqoy/aJ/MI0BKtLP9loNDCwjc1ndBK4wJDKrUS7pZ5jOy27JAWmYAWXeby7SOGXTw
	 7mgEfvIgdU1W8RJ4mbqPwrYLSK2WCJUgkzG9y3DVTidINKHh4ZHIAmV3g8aYBbpVGq
	 yH93jKxK4AQsmFNkB1hRrwSKhNo62vi4MLvJr5MRJ0B01NSaS8BqmYvip2WVvi3ArF
	 dNie2nj1UeFYkiHHtCK7qv+gTRMUNoST0d98UzHasSJ4hK3iHJ1NVtg76AhQbf2Lgp
	 SfmyCEiMWf1JgAFibrjkTjuju9RN+KvcMgUeRBvW0qBNX9o1RF2qYsjAxhjRTaNhBq
	 w9F7rZiIrByag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7BCF6084E;
	Tue, 29 Oct 2024 11:48:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D7C0EAEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 11:48:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8751403FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 11:48:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3a5lSJ5V7HJU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 11:48:33 +0000 (UTC)
X-Greylist: delayed 1083 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 29 Oct 2024 11:48:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 781FA40225
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 781FA40225
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::bb; helo=out-187.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com
 [IPv6:2001:41d0:203:375::bb])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 781FA40225
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 11:48:33 +0000 (UTC)
Message-ID: <8899c12f-bc2f-49d3-bded-e838ac18fef8@linux.dev>
Date: Tue, 29 Oct 2024 11:30:22 +0000
MIME-Version: 1.0
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1730201427;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fnPiSIzYx1HHGDGVnrngZ9mBvsB94BIHWT4QM52rRrM=;
 b=opo5ntqsA8rr6ubL3xvniGK9UObixzdsM+/2sqePNDeiRZPc/roalwOphgW0PwWipbSQfi
 Oh72XIPwiRbf31ILLkk16qo64TyZicotgGiN7R/D/xeaCxCLyTHZ1FpGMFgt8utXVkO6X4
 P1AgBMDxwvbDC7It1PGCtzQQYSzFAng=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=opo5ntqs
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] ptp: add control over
 HW timestamp latch point
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

On 28/10/2024 20:47, Arkadiusz Kubalewski wrote:
> HW support of PTP/timesync solutions in network PHY chips can be
> achieved with two different approaches, the timestamp maybe latched
> either in the beginning or after the Start of Frame Delimiter (SFD) [1].
> 
> Allow ptp device drivers to provide user with control over the timestamp
> latch point.
> 
> [1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

I just wonder should we add ethtool interface to control this feature.
As we are adding it for phy devices, it's good idea to have a way to
control it through eth device too. WDYT?
