Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 425E0A3F6D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 15:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F074A40E48;
	Fri, 21 Feb 2025 14:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CCOFqersIWmB; Fri, 21 Feb 2025 14:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2CAE40E22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740146966;
	bh=LyEpOe8Dngk5hOO/giI2bfMW8O1kQUQtF0Zf6axCiaM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qCQQeDX2GQgHrJcNH3zTPt0oqmisdnh/e5JONAfNyDs9+S0Otmje7kXkSWINHD62R
	 mPbpY3oGtQr0GMgUzTNSf4KpsFe+5Pb0oFHzqtyyhZsRjUw2Q/NAJdKJhNy+iGAD6S
	 6PDHc0hgazm0FiZ/byGRa/e3Qyaw7drBZBBot1Bj0dl6ojcM/d8Yris6Ek3mkciSXV
	 w+UQS95ILflq23Nj2QEaYnOEbhi8K/c7+G0GKHZ30DGKrS3NotDvgQ9QuJhDr1h3g0
	 XCPTA7+V/rHjXALW6155Aq8ZDXOoboSrv0WXGu7EHHK3r7SxGyBTVUIdqF8e/8RO+B
	 +N21vsqruOCKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2CAE40E22;
	Fri, 21 Feb 2025 14:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C28E6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3F3D40A7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sOk-I5YnWGFm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 14:09:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7FFB640979
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FFB640979
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FFB640979
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:09:22 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af27c.dynamic.kabel-deutschland.de
 [95.90.242.124])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 643E161E646F9;
 Fri, 21 Feb 2025 15:09:02 +0100 (CET)
Message-ID: <7d8cfd3b-1e2e-48e3-b9b7-6f8aab8a83d7@molgen.mpg.de>
Date: Fri, 21 Feb 2025 15:09:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, andrew@lunn.ch, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250221135315.5105-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250221135315.5105-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix media type
 detection for E610 device
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


Thank you for the improved version. Two minor nits should you resend.


Am 21.02.25 um 14:53 schrieb Piotr Kwapulinski:
> The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
> device") introduced incorrect media type detection for E610 device. It
> reproduces when advertised speed is modified after driver reload. Clear
> the previous outdated PHY type high value.
> 
> Reproduction steps:
> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000
> rmmod ixgbe

As you use modprobe over insmod, you could also used modprobe -r.

> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000

Is now an error printed?

> Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>    More commit message details and reproduction steps added
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 683c668..0dfefd2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -1453,9 +1453,11 @@ enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
>   			hw->link.link_info.phy_type_low = 0;
>   		} else {
>   			highest_bit = fls64(le64_to_cpu(pcaps.phy_type_low));
> -			if (highest_bit)
> +			if (highest_bit) {
>   				hw->link.link_info.phy_type_low =
>   					BIT_ULL(highest_bit - 1);
> +				hw->link.link_info.phy_type_high = 0;
> +			}
>   		}
>   	}
>   

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
