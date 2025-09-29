Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CB9BA93D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F984810D9;
	Mon, 29 Sep 2025 12:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oDpvROCV5uow; Mon, 29 Sep 2025 12:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 949B0810D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759150369;
	bh=U+SbI/LMFtdZkwPJ3bA8tgXK02JRHocBCrAUxUhiaII=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9vr/J2H9V+juLoxwfY7mzwokkjjkO6Ej5CtBliKD26Nd+T/UnQhmKcEmEh0oT37QG
	 jetfapPcVaFyatylHnPuSj9WPOIWBq28uJaPmut89Jdr6modvwqK3RYWOvGwp65WGO
	 ea1Cuvh6/mhnG/ltNC+K31Q0ZpmczJVDsH6PjmQdXLzH5+ywJSWhO57gFcJPR1v1GN
	 9wHuBbEqPEdxW9QrKZpE+4n9q3SNfMru8TuLhNxjEMWbLcVlemld1xHueUIxkS9T3U
	 H7jMHC+6HslYTjvunsmbrSoHkHX1xcimLzX8rgEN1WLgFgs04NhzWOcvlbGQ/aKn+I
	 9Dtz+D7207kGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 949B0810D2;
	Mon, 29 Sep 2025 12:52:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E496A194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CACC640A50
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:52:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_BSV-NriImR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:52:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3758340A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3758340A47
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3758340A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:52:45 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6D2DE6028F36E;
 Mon, 29 Sep 2025 14:52:08 +0200 (CEST)
Message-ID: <def4e194-84b5-4f42-9f54-8e327ece1cf6@molgen.mpg.de>
Date: Mon, 29 Sep 2025 14:52:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>
References: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
Content-Language: en-US
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos and
 docstring inconsistencies
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

Dear Alok,


Thank you for your patch.

Am 29.09.25 um 14:44 schrieb Alok Tiwari:
> Corrected function and variable name typos in comments and docstrings:
>   ixgbe_write_ee_hostif_X550 -> ixgbe_write_ee_hostif_data_X550
>   ixgbe_get_lcd_x550em -> ixgbe_get_lcd_t_x550em
>   "Determime" -> "Determine"
>   "point to hardware structure" -> "pointer to hardware structure"
>   "To turn on the LED" -> "To turn off the LED"
> 
> These changes improve readability, consistency.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)

[…]

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
