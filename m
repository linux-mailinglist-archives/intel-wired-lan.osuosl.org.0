Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC093722D3D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 19:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BB3860FE6;
	Mon,  5 Jun 2023 17:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BB3860FE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685984736;
	bh=d3WA8KcgPLsu3a3q5LPUqcc9C49dJLa44JYpiwHMC00=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A2w1+PB/WCHsCEAY5dsUcmgC7ubqFSj19HcYSvPgW/38Dbxwc8B6cdTSWKuzsilct
	 l/vccJFQQRHTUU9dT4fsQPjYdUOyGkmfEzoUx0mAZtQoghir1E2ElStJjn3Pm0vP6w
	 80r96C47mMgjMI05MHNO07gKy8OpEIRup0IkRZW6WOBAsETcgyWzN95vc0+Bkyk8zR
	 ipnKu8L0tvkg43xPX06Crf4KlUaCiLF9318J0E47ISBveUwYqz6+7IknhbS97jaXTY
	 czLAtOi8biJI1K5oyWtoDZDgnYFnI+z1YZT80+7Iytvq9SwR/u55VbCbevXKKdN23E
	 QZonEmX65fI5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nazB2O8zyYtx; Mon,  5 Jun 2023 17:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CFB560F06;
	Mon,  5 Jun 2023 17:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CFB560F06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B32771BF40B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 17:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EF8D60F06
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 17:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EF8D60F06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eOia6xUPK-5q for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 17:05:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2F8C60E68
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2F8C60E68
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 17:05:27 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8b0.dynamic.kabel-deutschland.de
 [95.90.232.176])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 945D361EA1BFF;
 Mon,  5 Jun 2023 19:05:01 +0200 (CEST)
Message-ID: <4652cc32-7a00-145f-01e1-8a84ab1d2bf7@molgen.mpg.de>
Date: Mon, 5 Jun 2023 19:05:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Prasad Koya <prasad@arista.com>
References: <20230605031534.9846-1-prasad@arista.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230605031534.9846-1-prasad@arista.com>
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net,
 v2] igc: set TP bit in 'supported' and 'advertising' fields of
 ethtool_link_ksettings
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Bob Gilligan <gilligan@arista.com>, intel-wired-lan@lists.osuosl.org,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, Amir Avivi <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Prasad,


Am 05.06.23 um 05:15 schrieb Prasad Koya:
> set TP bit in the 'supported' and 'advertising' fields. I226 only supports twisted pair copper.

Please wrap lines after 75 characters in commit messages.

> Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")

`scripts/checkpatch.pl` says:

     WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1> 
("<title line>")' - ie: 'Fixes: 8c5ad0dae93c ("igc: Add ethtool support")'

> Signed-off-by: Prasad Koya <prasad@arista.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 8cc077b712ad..511fc3f41208 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   	/* twisted pair */
>   	cmd->base.port = PORT_TP;
>   	cmd->base.phy_address = hw->phy.addr;
> +	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
> +	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
>   
>   	/* advertising link modes */
>   	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
