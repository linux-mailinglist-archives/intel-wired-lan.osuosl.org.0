Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF39A273FA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 15:06:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F3C5607CC;
	Tue,  4 Feb 2025 14:06:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wB3kNmZBkVI3; Tue,  4 Feb 2025 14:06:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D5A1607FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738678015;
	bh=AZYDnDLUKi7bxWkgiLPMmgIvqJsM+fRlwM/bXWBTMlE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fFy0c7g3lxnFOv1KkESDfKYUi9HKqdol5IGoP+OpCEz2ngtEPXHbkL9DZjKwNNhrD
	 J+UM16JcmmU9YVq05uXGHu+tfe7jBU30iQNMvCsPlycq5ZpVl/9YoXmua/jNHXW7QZ
	 gepSN/qon6JUek9ixCLVTyl3hO86SlLHXrM0iO2beFbn/HHpxlBTUrQyrYBrFZzpYo
	 XPTKpL8vdS+NOFzp2zYgbYLlTM26+7qzEaYAh55v6VApNR5mn6drdhLZqChoXs2vlI
	 ig28k2JRhxr+6kA5Gpa817qXaoR9H8C62KwUbj/h1hordYpiCcn+JjpUKx/JklyDI3
	 e3tlMZw+U8abA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D5A1607FC;
	Tue,  4 Feb 2025 14:06:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 874B3185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 14:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75EDA40438
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 14:06:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nT-DJ5BsBPHT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 14:06:51 +0000 (UTC)
X-Greylist: delayed 399 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 04 Feb 2025 14:06:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D40F40B02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D40F40B02
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b3; helo=out-179.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D40F40B02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 14:06:51 +0000 (UTC)
Message-ID: <16199c68-3a65-456f-8d52-9a98be3d73f6@linux.dev>
Date: Tue, 4 Feb 2025 14:00:03 +0000
MIME-Version: 1.0
To: Paul Menzel <pmenzel@molgen.mpg.de>, Piotr Wejman <piotrwejman90@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250202170839.47375-1-piotrwejman90@gmail.com>
 <32579b22-a213-4e97-a816-66d0bb301f92@molgen.mpg.de>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <32579b22-a213-4e97-a816-66d0bb301f92@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1738677609;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AZYDnDLUKi7bxWkgiLPMmgIvqJsM+fRlwM/bXWBTMlE=;
 b=xp/KHitlFO2w6LEHZM5+iK6AhmEHnwtpWZb5niHUn3W0dzPXWkblxrmk7l0WsBRZ2a67nP
 bGgbqC7J7coZoJl0s2T3wIxKDvyha4JsLTNlLK/QW+YsRT2u8erB8tcQuFSkP63DoBC1eO
 JIFjbkdWvtMWMY4wZNrn23jwJWRDXzw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=xp/KHitl
Subject: Re: [Intel-wired-lan] [PATCH] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On 03/02/2025 16:41, Paul Menzel wrote:
> Dear Piotr,
> 
> 
> Thank you for your patch.
> 
> Am 02.02.25 um 18:08 schrieb Piotr Wejman:
>> Update the driver to the new hw timestamping API.
> 
> Could you please elaborate. Maybe a pointer to the new API, and what 
> commit added it, and what tests were done, and/or are needed?

The new API was added in 66f7223039c0 ("net: add NDOs for configuring
hardware timestamping") back in 2023, the old ioctl interface is in
deprecated state now.

> 
>> Signed-off-by: Piotr Wejman <piotrwejman90@gmail.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 52 ++++++++--------------
>>   2 files changed, 20 insertions(+), 34 deletions(-)
> 
> 
> Kind regards,
> 
> Paul

