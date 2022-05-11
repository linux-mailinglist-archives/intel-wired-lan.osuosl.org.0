Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5834B522C5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 08:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1057360AD8;
	Wed, 11 May 2022 06:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Axkv4Jzo1n0o; Wed, 11 May 2022 06:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0435060AAF;
	Wed, 11 May 2022 06:32:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63DA41BF870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F77D607E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dKa9KNPncyhp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 06:32:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1A51607E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:32:43 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aeb08.dynamic.kabel-deutschland.de
 [95.90.235.8])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AB39F61E6478B;
 Wed, 11 May 2022 08:32:39 +0200 (CEST)
Message-ID: <6b16f60d-0f76-f876-0881-de09ecbbbc89@molgen.mpg.de>
Date: Wed, 11 May 2022 08:32:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Linkui Xiao <xiaolinkui@gmail.com>
References: <20220510025755.19047-1-xiaolinkui@kylinos.cn>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220510025755.19047-1-xiaolinkui@kylinos.cn>
Subject: Re: [Intel-wired-lan] [PATCH] igb: Convert a series of if
 statements to switch case
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
Cc: netdev@vger.kernel.org, Linkui Xiao <xiaolinkui@kylinos.cn>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Linkui,


Thank you for your patch.

Am 10.05.22 um 04:57 schrieb xiaolinkui:
> From: Linkui Xiao<xiaolinkui@kylinos.cn>

Please add a space before the <.

> Convert a series of if statements that handle different events to
> a switch case statement to simplify the code.

(Nit: Please use 75 characters per line.)

> Signed-off-by: Linkui Xiao<xiaolinkui@kylinos.cn>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 34b33b21e0dc..4ce0718eeff6 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4588,13 +4588,17 @@ static inline void igb_set_vf_vlan_strip(struct igb_adapter *adapter,
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 val, reg;
>   
> -	if (hw->mac.type < e1000_82576)
> +	switch (hw->mac.type) {
> +	case e1000_undefined:
> +	case e1000_82575:
>   		return;
> -
> -	if (hw->mac.type == e1000_i350)
> +	case e1000_i350:
>   		reg = E1000_DVMOLR(vfn);
> -	else
> +		break;
> +	default:
>   		reg = E1000_VMOLR(vfn);
> +		break;
> +	}
>   
>   	val = rd32(reg);
>   	if (enable)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
