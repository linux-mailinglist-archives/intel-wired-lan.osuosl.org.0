Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD5BB20132
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 10:04:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A19DA6125D;
	Mon, 11 Aug 2025 08:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 325wKvtCyuXf; Mon, 11 Aug 2025 08:04:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16D8E6125E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754899482;
	bh=asNaBFPL+p158I5IvJhIDnaL4pZxzTKLlzm49slX/gk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TsgQzaxrDVRs8hdgbuFcgaaUxCoZsdiCl+kJdorJLJbxA9f0FBa2aGcQYAT7+Zz/i
	 IhJYGrWYRGFL+VrHLP/8Wl1FiWCwFuueovLJl0iDl8T//0AZNnUr9HabU7Yrs4Jan8
	 S6XKBZ6zO5jsWXVjmtx3A9O8i+a+lGa2PfP/EDP4xlsYokQusBg1XJDDElv1pOY/Lr
	 9XiH5pe8u6H/qb1/wtXzBZ9werPlnmsmhfg4ZZBp6biBIdepy4CVlraW4KUTCnWiQY
	 Iq84VwoLE+/+B943RmFqS1jojmyK+aPjR+rzaa6FBNRWfHebBB9wQoLEsg7Kc7JuhQ
	 O2Ta7kTsMpDlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16D8E6125E;
	Mon, 11 Aug 2025 08:04:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD3C01C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 08:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEC4240F72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 08:04:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 18SqPy18zbYn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 08:04:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04DE940F6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04DE940F6D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04DE940F6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 08:04:37 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7bb.dynamic.kabel-deutschland.de
 [95.90.247.187])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2182361E64848;
 Mon, 11 Aug 2025 10:04:01 +0200 (CEST)
Message-ID: <ed450a63-bdf8-4a9e-ac19-9853a018e5c1@molgen.mpg.de>
Date: Mon, 11 Aug 2025 10:04:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <20250810170118.1967090-1-alok.a.tiwari@oracle.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250810170118.1967090-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix incorrect map used in
 eee linkmode
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


Am 10.08.25 um 19:01 schrieb Alok Tiwari:
> incorrectly used ixgbe_lp_map in loops intended to populate the
> supported and advertised EEE linkmode bitmaps based on ixgbe_ls_map.
> This results in incorrect bit setting and potential out-of-bounds
> access, since ixgbe_lp_map and ixgbe_ls_map have different sizes
> and purposes.
> 
> ixgbe_lp_map[i] -> ixgbe_ls_map[i]
> 
> Use ixgbe_ls_map for supported and advertised linkmodes, and keep
> ixgbe_lp_map usage only for link partner (lp_advertised) mapping.

Nice find! Do you have a reproducer/test case?

> Fixes: 9356b6db9d05 ("net: ethernet: ixgbe: Convert EEE to use linkmodes")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 25c3a09ad7f1..1a2f1bdb91aa 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -3571,13 +3571,13 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
>   
>   	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
>   		if (hw->phy.eee_speeds_supported & ixgbe_ls_map[i].mac_speed)
> -			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> +			linkmode_set_bit(ixgbe_ls_map[i].link_mode,
>   					 edata->supported);
>   	}
>   
>   	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
>   		if (hw->phy.eee_speeds_advertised & ixgbe_ls_map[i].mac_speed)
> -			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> +			linkmode_set_bit(ixgbe_ls_map[i].link_mode,
>   					 edata->advertised);
>   	}
>   

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
