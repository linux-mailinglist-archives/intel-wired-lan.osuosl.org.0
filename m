Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 261DFC8D2FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 08:48:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4A2760B77;
	Thu, 27 Nov 2025 07:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YI3KYJg-bkpi; Thu, 27 Nov 2025 07:48:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D09F160B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764229735;
	bh=HEG7Vaq3TaJNxq6GRGwz8I626m+/53VmLOdEQuT1nU0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kkReRdvBhUtN7Yvr3wpbeYt6yU43r20di3givfaEzW+zBaIXkrfZQpTdrxS9ZA78V
	 2GNmvbzEw8mcMquEuVdco/uYfQCDB/Fbpd7WBF/e45uQOI2sXVeMc8bwYkUaQeiKrC
	 n9bssZYFmRVcVIslvMKpvplF9MYhFFt6K+GzN69L+6w7goYVdgI3lMclSKME2xeYGf
	 NkGqTVBDboeOuN0KPx/m23bmCG1bROkuqPk5uyEDtyAM6mOpeIRS7pkmoXAGKl2JkI
	 UE5uJl1v6CyhVAvrC8lsZdI6zvRkbtOvSHit8QCF0FKTTcwn6QYosyFvAuscKg3E3b
	 +6V1JO949XM6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D09F160B90;
	Thu, 27 Nov 2025 07:48:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B713B708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E0E7402D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:48:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04593CQeTMVp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 07:48:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 541E340065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 541E340065
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 541E340065
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:48:51 +0000 (UTC)
Received: from [192.168.2.216] (p5dc559e2.dip0.t-ipconnect.de [93.197.89.226])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2BB3161B48447;
 Thu, 27 Nov 2025 08:48:04 +0100 (CET)
Message-ID: <0655232d-cb7e-4059-9a12-5d5df0425e8c@molgen.mpg.de>
Date: Thu, 27 Nov 2025 08:48:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251127074516.2385922-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251127074516.2385922-1-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

Dear Andy,


Thank you for your patch.

Am 27.11.25 um 08:44 schrieb Andy Shevchenko:
> In many functions the Return section is missing. Fix kernel-doc
> descriptions to address that and other warnings.
> 
> Before the change:
> 
> $ scripts/kernel-doc -none -Wreturn drivers/net/ethernet/intel/idpf/idpf_txrx.c 2>&1 | wc -l
> 85
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v2: collected tags
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 96 +++++++++++++--------
>   1 file changed, 59 insertions(+), 37 deletions(-)

[…]

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
