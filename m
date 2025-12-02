Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5265C9C688
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 18:35:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68C83610E1;
	Tue,  2 Dec 2025 17:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id igpZ_LSrHmYs; Tue,  2 Dec 2025 17:35:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90670610EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764696902;
	bh=HPAQF4gRur/yUze2q9ydJuZa+4eIzXfGTzMg9ZwHP4I=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nRBzcIgZ/Ehe5HLB2z0NellqjFUcOf/3xws3us2gLyjmrP12RmcRJKBjS9lAAHY6R
	 LaGMZEXaLhLzNFbCXCAGbD0Xj74tyx9i7CZtZ/gqO31Yv58SrO60uRxChwnybydhmh
	 gabOTlOUfZWfMTAq8BwP32zfWzxXeVXUcm/3bzocy+b6nvsdUKcG9WPVgvNFYQqLdB
	 lgKO8J7Se2xgo6ElE/BE14/NhHzgWno+O1x2c7A1KgrcSgalGPoZRhcgK+wigpOCvf
	 Mx5ozG9pfSIkG0hgOBdpxfFZ2VIy8N5rIjZSacxgRqR2vYXVLAvZrkjVjPFdV+tKYZ
	 phW40aXa/KYlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90670610EE;
	Tue,  2 Dec 2025 17:35:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 483A41BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 17:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F1B640BEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 17:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H1hV5yR0rWt3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 17:34:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 20E9F40C49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20E9F40C49
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20E9F40C49
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 17:34:57 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AFCF961CC3FF3;
 Tue, 02 Dec 2025 18:34:17 +0100 (CET)
Message-ID: <a5c2ee3c-6643-4e67-acba-44384706e971@molgen.mpg.de>
Date: Tue, 2 Dec 2025 18:34:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zdenek Bouska <zdenek.bouska@siemens.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
References: <20251202122351.11915-1-chwee.lin.choong@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251202122351.11915-1-chwee.lin.choong@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Use 5KB TX packet
 buffer per queue for TSN mode
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

Dear Chwee-Lin,


Thank you for your patch.

(Just a heads-up, that Zdenek’s email address was not properly quoted in 
the Cc: list.)

In the summary you could be more specific to say, that you *decrease* 
the size.

Am 02.12.25 um 13:23 schrieb Chwee-Lin Choong:
> Update IGC_TXPBSIZE_TSN to allocate 5KB per TX queue (TXQ0-TXQ3)
> as recommended in I225/I226 SW User Manual Section 7.5.4 for TSN
> operation.

Please elaborate on the problem (mention the 7 KB size and hangs), and 
maybe Faizal remembers why they chose 7 KB.

Also, are there any performance drawbacks. (I know that avoiding hangs 
tops that, but it would be good to know.)

> Fixes: 0d58cdc902da ("igc: optimize TX packet buffer utilization for TSN mode")
> Reported-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> Closes: https://lore.kernel.org/netdev/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 498ba1522ca4..9482ab11f050 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -443,9 +443,10 @@
>   #define IGC_TXPBSIZE_DEFAULT ( \
>   	IGC_TXPB0SIZE(20) | IGC_TXPB1SIZE(0) | IGC_TXPB2SIZE(0) | \
>   	IGC_TXPB3SIZE(0) | IGC_OS2BMCPBSIZE(4))
> +/* TSN value following I225/I226 SW User Manual Section 7.5.4 */
>   #define IGC_TXPBSIZE_TSN ( \
> -	IGC_TXPB0SIZE(7) | IGC_TXPB1SIZE(7) | IGC_TXPB2SIZE(7) | \
> -	IGC_TXPB3SIZE(7) | IGC_OS2BMCPBSIZE(4))
> +	IGC_TXPB0SIZE(5) | IGC_TXPB1SIZE(5) | IGC_TXPB2SIZE(5) | \
> +	IGC_TXPB3SIZE(5) | IGC_OS2BMCPBSIZE(4))

Reading the commit message of commit 0d58cdc902da ("igc: optimize TX 
packet buffer utilization for TSN mode"), it says, that the goal is to 
split up 32 KB. What is happening to the 8 KB that are freed up now?

>   #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
>   #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */

With a more elaborate commit message, feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
