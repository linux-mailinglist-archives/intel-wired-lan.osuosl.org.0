Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E388A26068
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 17:42:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F028820D0;
	Mon,  3 Feb 2025 16:41:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id feCkIqYKEQhl; Mon,  3 Feb 2025 16:41:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8214D820D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738600918;
	bh=8GsYJDS920LNs6AE4ivVQe/dJh/g8qms8HaK6T5Nc90=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BU+UcvzxnvIUOR4A3RuilwZNu8xXTtx4ba4rKMv4IC5Ypz/kXMAuPWaRFW1EbgH94
	 1Jihsqe+r5Jv5jAl36HxMsPKBs0rg94ULh0uc5Uq/E27xBQuWllnNzQRdtef2U+oVC
	 61AGXWX+W9z0n3m0yw/gLgI9Im3CHbA01DeCXLd3lvT4DzgndmumnTaw/hjxj9ITso
	 ik8OZzT74P23a4d74f+aAQ4xdyCAYDK/3k/2+eB0+RhwryhGLDX7he5VO+xQtnjYnF
	 ViGJyeSr4h8OqY2XnhjdgARdPnEUPloSAWopIFF3pg7yuD3avqXQKzWeLY/Mo6jU4s
	 zqKJ7lpT6gJeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8214D820D2;
	Mon,  3 Feb 2025 16:41:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B49CB1A1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 16:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1B404057B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 16:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2aR7javzhrGf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2025 16:41:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B354240B03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B354240B03
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B354240B03
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 16:41:54 +0000 (UTC)
Received: from [192.168.10.14]
 (dynamic-176-000-013-018.176.0.pool.telefonica.de [176.0.13.18])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C83C061E6478A;
 Mon, 03 Feb 2025 17:41:15 +0100 (CET)
Message-ID: <32579b22-a213-4e97-a816-66d0bb301f92@molgen.mpg.de>
Date: Mon, 3 Feb 2025 17:41:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Piotr Wejman <piotrwejman90@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250202170839.47375-1-piotrwejman90@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250202170839.47375-1-piotrwejman90@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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

Dear Piotr,


Thank you for your patch.

Am 02.02.25 um 18:08 schrieb Piotr Wejman:
> Update the driver to the new hw timestamping API.

Could you please elaborate. Maybe a pointer to the new API, and what 
commit added it, and what tests were done, and/or are needed?

> Signed-off-by: Piotr Wejman <piotrwejman90@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c | 52 ++++++++--------------
>   2 files changed, 20 insertions(+), 34 deletions(-)


Kind regards,

Paul
