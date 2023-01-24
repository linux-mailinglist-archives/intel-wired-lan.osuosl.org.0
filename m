Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6F16795BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 11:49:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CCE74186A;
	Tue, 24 Jan 2023 10:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CCE74186A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674557397;
	bh=Id/qOjVhPSm43sH5MLJ8yTcBOURYE8NnrbpZIXRxNxM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mx4bZ1+gBCLYAzfgAMS/JgzjaoaXoADindR1tcnjNDg3zHRVgnTZ/5ujSzbzJG09C
	 zDmCa6fCanhfVvqlHeOfCwqIZfkjgK3gPdy+xGmyrJpWNiGvptugTGfMENxxKamPQR
	 ljH2qI7vS3VNL3G5U202W78zqBsk4dkTEKiDJZLVvCxlU8BrjEGUtpD9gXXwtYcfWg
	 toYOiFi0Zp69b4kQAADB9pQtD3igNhX86yJ9aqyJ8DUSZYMCl+Ae2ILhU2RtNaBDfc
	 NGzMrTKnkz5Atqyel1broQkPX0VDZmMu7aW4oyR50DINw/85HZtsCzn5MI9MTylxDw
	 vC79woa5RhGZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gBPSzHbu-26y; Tue, 24 Jan 2023 10:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC1C341850;
	Tue, 24 Jan 2023 10:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC1C341850
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE0D21BF25B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 10:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6BAC41856
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 10:49:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6BAC41856
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4bggl9who2Bo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 10:49:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9187941850
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9187941850
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 10:49:47 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 26D3B60027FD0;
 Tue, 24 Jan 2023 11:49:44 +0100 (CET)
Message-ID: <a23d0eb5-123f-a2ad-5585-59147bb9b172@molgen.mpg.de>
Date: Tue, 24 Jan 2023 11:49:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20230124043915.12952-1-akihiko.odaki@daynix.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230124043915.12952-1-akihiko.odaki@daynix.com>
Subject: Re: [Intel-wired-lan] [PATCH RESEND] igbvf: Fix rx_buffer_len
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
Cc: netdev@vger.kernel.org, Yan Vugenfirer <yvugenfi@redhat.com>,
 linux-kernel@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Akihiko,


Thank you for your patch.

Am 24.01.23 um 05:39 schrieb Akihiko Odaki:

Maybe improve the commit message summary to be more specific:

igbvf: Align rx_buffer_len to fix memory corrption

> When rx_buffer_len is not aligned by 1024, igbvf sets the aligned size
> to SRRCTL while the buffer is allocated with the unaligned size. This
> allows the device to write more data than rx_buffer_len, resulting in
> memory corruption. Align rx_buffer_len itself so that the buffer will
> be allocated with the aligned size.
> 
> The condition to split RX packet header, which uses rx_buffer_len, is
> also modified so that it doesn't change the behavior for the same
> actual (unaligned) packet size. Actually the new condition is not
> identical with the old one as it will no longer request splitting when
> the actual packet size is exactly 2048, but that should be negligible.

Is there an easy way to reproduce it?


Kind regards,

Paul


> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>   drivers/net/ethernet/intel/igbvf/netdev.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 3a32809510fc..b6bca78198fa 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c
> @@ -1341,10 +1341,9 @@ static void igbvf_setup_srrctl(struct igbvf_adapter *adapter)
>   	srrctl |= E1000_SRRCTL_DROP_EN;
>   
>   	/* Setup buffer sizes */
> -	srrctl |= ALIGN(adapter->rx_buffer_len, 1024) >>
> -		  E1000_SRRCTL_BSIZEPKT_SHIFT;
> +	srrctl |= adapter->rx_buffer_len >> E1000_SRRCTL_BSIZEPKT_SHIFT;
>   
> -	if (adapter->rx_buffer_len < 2048) {
> +	if (adapter->rx_buffer_len <= 2048) {
>   		adapter->rx_ps_hdr_size = 0;
>   		srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
>   	} else {
> @@ -1625,7 +1624,7 @@ static int igbvf_sw_init(struct igbvf_adapter *adapter)
>   	struct net_device *netdev = adapter->netdev;
>   	s32 rc;
>   
> -	adapter->rx_buffer_len = ETH_FRAME_LEN + VLAN_HLEN + ETH_FCS_LEN;
> +	adapter->rx_buffer_len = ALIGN(ETH_FRAME_LEN + VLAN_HLEN + ETH_FCS_LEN, 1024);
>   	adapter->rx_ps_hdr_size = 0;
>   	adapter->max_frame_size = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;
>   	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
> @@ -2429,6 +2428,8 @@ static int igbvf_change_mtu(struct net_device *netdev, int new_mtu)
>   		adapter->rx_buffer_len = ETH_FRAME_LEN + VLAN_HLEN +
>   					 ETH_FCS_LEN;
>   
> +	adapter->rx_buffer_len = ALIGN(adapter->rx_buffer_len, 1024);
> +
>   	netdev_dbg(netdev, "changing MTU from %d to %d\n",
>   		   netdev->mtu, new_mtu);
>   	netdev->mtu = new_mtu;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
