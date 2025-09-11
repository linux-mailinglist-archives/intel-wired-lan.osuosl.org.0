Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57977B538D3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 18:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 164C961C13;
	Thu, 11 Sep 2025 16:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1AXahjtGMBPn; Thu, 11 Sep 2025 16:12:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78CE361B6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757607151;
	bh=KBBdyh1VMRnF/CtI3xW5c/r96TybJpOvQ4OBXkcO8Cw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V4p4mjD/9se5VR+d/asiBzyLthhTX+L2/54OYTstJEU1iUvSj+iSW5rwi/qQ7/seO
	 rmIDXLP3EGkjXyZviSfeNzMNWD2WJ9G/Qae7tenA5KPe4xO2iYqp1l6E0NkiSCVZFO
	 Qs/EL7HjaX9w1gJcnxhmGc/6T4cR49ospm72OV5VmkVT8A7N/etAJfvKaEx17b3jLc
	 tDbijvx+ESGYCHp1NQNqb8/Hln/2wm+WSUhUUpFVO/nQYExI/rZf76TQoVmQgzgaUd
	 hwTTQESMunNmBNh3qYHF8syg3QAAytgUOhWaWwfhGlaD+H8TALtVi3/rtjP/RNnVWp
	 GN+Blw8WpOysw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78CE361B6B;
	Thu, 11 Sep 2025 16:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A8734E20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99F4B41247
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r7tSoFFwAcGh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 16:12:28 +0000 (UTC)
X-Greylist: delayed 163343 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 11 Sep 2025 16:12:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D964C404C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D964C404C4
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::bd; helo=out-189.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com
 [IPv6:2001:41d0:203:375::bd])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D964C404C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:12:27 +0000 (UTC)
Message-ID: <91db2877-96b8-451a-9316-5274c51441ad@linux.dev>
Date: Thu, 11 Sep 2025 17:12:17 +0100
MIME-Version: 1.0
To: Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
Cc: Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250910221111.1527502-1-vadim.fedorenko@linux.dev>
 <20250910221111.1527502-2-vadim.fedorenko@linux.dev>
 <8f52c5b8-bd8a-44b8-812c-4f30d50f63ff@redhat.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <8f52c5b8-bd8a-44b8-812c-4f30d50f63ff@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1757607143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KBBdyh1VMRnF/CtI3xW5c/r96TybJpOvQ4OBXkcO8Cw=;
 b=nIqqQVm72NCaRy2sbByX7araLF9Af4ZJtoCuIXYDTZDtTo2jLGU7QKH8ZTvbA8592P9fa5
 R1wIJWE8ugX89SZDFJFVIwrNIhJ8t512p7FnW6sBlzoXp3DByRNczzZzA1dWvdKv/hdK6T
 kG5Rr8F8bvkaj04AzzZNgf916F3/UCs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=nIqqQVm7
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] ethtool: add FEC bins
 histogramm report
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

On 11.09.2025 09:39, Paolo Abeni wrote:
> On 9/11/25 12:11 AM, Vadim Fedorenko wrote:
>> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
>> clarifies it a bit further. Implement reporting interface through as
>> addition to FEC stats available in ethtool.
>>
>> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> 
> Not really a review, but this is apparently causing self tests failures:
> 
> https://netdev-3.bots.linux.dev/vmksft-net-drv-dbg/results/292661/5-stats-py/stdout
> 
> and ynl build errors:
> 
> https://netdev.bots.linux.dev/static/nipa/1001130/ynl/stderr
> 
> /P
> 

Thanks for bringing it up, I'm trying to properly fix these things
