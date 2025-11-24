Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2825EC8044E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 12:50:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A818783544;
	Mon, 24 Nov 2025 11:50:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LekV4PKHDqY6; Mon, 24 Nov 2025 11:50:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28895834F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763985042;
	bh=WrnKlMBKkkTxRS01ZHMBD3yodBDqret0LgJ3AytrPsk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w8U3eZnn388p+FJ97E7C2dKMg4/nqF+C0HYZ4bA6lRG0N2rf/vcZXbdFmvSt19kfn
	 3XK4jseJeWh6nETbHNOfc3OrzK2DfyddhlCBku15h0/JfY/rcawolMdpcLJ13uJJQm
	 o7rRx8RXt+DkHK/r39oPq+Op5Vk+fgOPjenSlp/nA59/sj6UyAOa+ZQ/uXBIY8ZXXI
	 2nlVwupIB/n5IeOud5/Epos7QCevd3zNjy4bBIjbrfQHDvH3T6ARj0Gc2iPuHIkd11
	 UXYnqXCnPqdAw9gJ3xfsCEYhfkkuqnJTL+eB2OP38Nj5gP6btPZVW1ffPWMwMfrbHo
	 WLaI8JPhYF03A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28895834F4;
	Mon, 24 Nov 2025 11:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B97234E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 11:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CDE940377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 11:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qHt-OdIyMSGd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 11:50:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2FB7340376
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FB7340376
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FB7340376
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 11:50:38 +0000 (UTC)
Received: from [192.168.44.160] (unknown [185.238.219.78])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D4D5261CC3FF6;
 Mon, 24 Nov 2025 12:50:20 +0100 (CET)
Message-ID: <7a18de32-73c6-4d54-831e-714e6ff0ccf1@molgen.mpg.de>
Date: Mon, 24 Nov 2025 12:50:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251124114356.75699-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251124114356.75699-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v2] ice: update DDP LAG
 package to 1.3.2.0
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



Am 24.11.25 um 12:43 schrieb Marcin Szycik:
> Highlights of changes since 1.3.1.0:
> 
> - Add support for Intel E830 series SR-IOV Link Aggregation (LAG) in
>    active-active mode. This uses a dual-segment package with one segment
>    for E810 and one for E830, which increases package size.
> 
> Testing hints:
> - Install ice_lag package
> - Load ice driver

Give the command?

Format the comands below without the bullet, so it can be copied more 
easily?

> - devlink dev eswitch set $PF1_PCI mode switchdev
> - ip link add $BR type bridge
> - echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> - ip link add $BOND type bond miimon 100 mode 802.3ad
> - ip link set $PF1 down
> - ip link set $PF1 master $BOND
> - ip link set $PF2 down
> - ip link set $PF2 master $BOND
> - ip link set $BOND master $BR
> - ip link set $VF1_PR master $BR
> - Configure link partner in 802.3ad bond mode

How?

> - Verify both links in bond are transmitting/receiving VF traffic
> - Verify bond still works after pulling one of the cables

Please give the command.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2: Update WHENCE
> ---
>   WHENCE                                        |   2 +-
>   ...ce_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} | Bin 692776 -> 1360772 bytes
>   2 files changed, 1 insertion(+), 1 deletion(-)
>   rename intel/ice/ddp-lag/{ice_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} (49%)
> 
> diff --git a/WHENCE b/WHENCE
> index 02e6d3575f99..7b63c659f100 100644
> --- a/WHENCE
> +++ b/WHENCE
> @@ -6970,7 +6970,7 @@ Driver: ice - Intel(R) Ethernet Connection E800 Series
>   
>   File: intel/ice/ddp/ice-1.3.43.0.pkg
>   Link: intel/ice/ddp/ice.pkg -> ice-1.3.43.0.pkg
> -File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
> +File: intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg

[…]

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
