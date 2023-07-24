Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDE875F353
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 12:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4323160F3D;
	Mon, 24 Jul 2023 10:31:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4323160F3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690194665;
	bh=GZvrB+fa5x3yMjEWa/2zKlc7bY2And014QIWLc1LeQ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uZt8cKfYg0fA+kxVmRmYD+BdtzTF88I1LOSvgwy1Urjas4WS83sTGMOvo2fNDAPXH
	 FbQDLIbSxSvcw5hmEnHkjo9wa1Uxf9Qo3V18qFN5FUq8SNE/3jssDOO3ltWK8W960d
	 cGjwVQyxhvHegdNBKOLcyf8wugr9ZJkvOmsfFfZDnuSTCOkrlVC9abuwCzYivNzwZk
	 uOjw3VeTOQMeig6P6aWklRgTCJIDLoVF8coEJgLSXs4R9cPlmU09MMt0bNX2b9nKTl
	 GWtl/33119enzxGpDxDtLYLO0LcJ/abQquMSxQwnDiTKdCwzq18D/eGMLFJs1No1La
	 0JaukIjvW5w6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dshRGL7WYmAs; Mon, 24 Jul 2023 10:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C00C660F33;
	Mon, 24 Jul 2023 10:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C00C660F33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F05D81BF45A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C853D81EEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C853D81EEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a8LZftCMeZ5X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 10:30:56 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2F2D81EEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:30:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2F2D81EEC
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CC43061E5FE04;
 Mon, 24 Jul 2023 12:30:33 +0200 (CEST)
Message-ID: <7c5e2fcc-e72b-42f0-bc22-ed5586f43f25@molgen.mpg.de>
Date: Mon, 24 Jul 2023 12:30:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Olga Zaborska <olga.zaborska@intel.com>
References: <20230724100623.79886-1-olga.zaborska@intel.com>
 <20230724100623.79886-4-olga.zaborska@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230724100623.79886-4-olga.zaborska@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 3/3] igb: Change IGB_MIN to
 allow set rx/tx value between 64 and 80
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Olga,


Am 24.07.23 um 12:06 schrieb Olga Zaborska:

The paragraph went into the commit message title instead of body. (I 
edited the subject.) Please resent.


Kind regards,

Paul


> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> ---
> v1->v2 fixed commit title and message
> v2->v3 fixed commit title and message, added changes for igb and igc
> v3->v4 fixed commit message
> ---
>   drivers/net/ethernet/intel/igb/igb.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 015b78144114..a2b759531cb7 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -34,11 +34,11 @@ struct igb_adapter;
>   /* TX/RX descriptor defines */
>   #define IGB_DEFAULT_TXD		256
>   #define IGB_DEFAULT_TX_WORK	128
> -#define IGB_MIN_TXD		80
> +#define IGB_MIN_TXD		64
>   #define IGB_MAX_TXD		4096
>   
>   #define IGB_DEFAULT_RXD		256
> -#define IGB_MIN_RXD		80
> +#define IGB_MIN_RXD		64
>   #define IGB_MAX_RXD		4096
>   
>   #define IGB_DEFAULT_ITR		3 /* dynamic */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
