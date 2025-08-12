Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC08B22DC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A21561B3C;
	Tue, 12 Aug 2025 16:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xzG7tOzjZeFK; Tue, 12 Aug 2025 16:35:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4CB361B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755016507;
	bh=XNFJ4lsJKQSqXctXHecKGObVBfzsgwhgTW0QbBezthY=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u7kFc6Yt0R+5RGuoTY8DrvQFTlWsZr80rwypF8WbwGuREVwwi3CQcOGeT2EcO1ETZ
	 gCGWo0Y7WXQ39Mdw+o+p/cN3An0TUiJQuWcdJVX87OgGGU+CYSHsdk63BratEY8Krw
	 acit72qmumXPxo2zCyAPA9bFoezWHskTx9NbqmVRBWESiryixvjTkw25lYcRSbKRW9
	 opGfms4y4ln7N235BGAWi/b6Hjw3e3VWurmd1f9XMpQhw0iaNv6KrAHnF6EhMNboVA
	 O1XubjzlUXbBg5LEch4Wnlkcok2giEzpMm8e0YPqFIrjOBwxWO7mf01bJvbVgsXq9v
	 1leOW4UdExmBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4CB361B3E;
	Tue, 12 Aug 2025 16:35:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D2D951C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B970F40054
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:35:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EYkpONdp_ERn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:35:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 46BDE40026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46BDE40026
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46BDE40026
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:34:59 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2CEA761E647BA;
 Tue, 12 Aug 2025 18:34:13 +0200 (CEST)
Message-ID: <af057e48-f428-4c34-8991-99959edbabd2@molgen.mpg.de>
Date: Tue, 12 Aug 2025 18:34:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Qianfeng Rong <rongqianfeng@vivo.com>
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
 <20250812133226.258318-2-rongqianfeng@vivo.com>
Content-Language: en-US
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 bpf@vger.kernel.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250812133226.258318-2-rongqianfeng@vivo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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

Dear Qianfeng,


Thank you for your patch.

Am 12.08.25 um 15:32 schrieb Qianfeng Rong:
> Remove array_size() calls and replace vmalloc() with vmalloc_array() to
> simplify the code and maintain consistency with existing kmalloc_array()
> usage.

You could build it without and with your patch and look if the assembler 
code changes.

> Signed-off-by: Qianfeng Rong <rongqianfeng@vivo.com>
> ---
>   drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 2 +-
>   drivers/net/ethernet/intel/igb/igb_ethtool.c     | 8 ++++----
>   drivers/net/ethernet/intel/igc/igc_ethtool.c     | 8 ++++----
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 +-
>   drivers/net/ethernet/intel/ixgbevf/ethtool.c     | 6 +++---
>   5 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> index 1954a04460d1..bf2029144c1d 100644
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> @@ -560,7 +560,7 @@ static int fm10k_set_ringparam(struct net_device *netdev,
>   
>   	/* allocate temporary buffer to store rings in */
>   	i = max_t(int, interface->num_tx_queues, interface->num_rx_queues);
> -	temp_ring = vmalloc(array_size(i, sizeof(struct fm10k_ring)));
> +	temp_ring = vmalloc_array(i, sizeof(struct fm10k_ring));
>   
>   	if (!temp_ring) {
>   		err = -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 92ef33459aec..51d5cb6599ed 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -920,11 +920,11 @@ static int igb_set_ringparam(struct net_device *netdev,
>   	}
>   
>   	if (adapter->num_tx_queues > adapter->num_rx_queues)
> -		temp_ring = vmalloc(array_size(sizeof(struct igb_ring),
> -					       adapter->num_tx_queues));
> +		temp_ring = vmalloc_array(adapter->num_tx_queues,
> +					  sizeof(struct igb_ring));
>   	else
> -		temp_ring = vmalloc(array_size(sizeof(struct igb_ring),
> -					       adapter->num_rx_queues));
> +		temp_ring = vmalloc_array(adapter->num_rx_queues,
> +					  sizeof(struct igb_ring));
>   
>   	if (!temp_ring) {
>   		err = -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index ecb35b693ce5..f3e7218ba6f3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -627,11 +627,11 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
>   	}
>   
>   	if (adapter->num_tx_queues > adapter->num_rx_queues)
> -		temp_ring = vmalloc(array_size(sizeof(struct igc_ring),
> -					       adapter->num_tx_queues));
> +		temp_ring = vmalloc_array(adapter->num_tx_queues,
> +					  sizeof(struct igc_ring));
>   	else
> -		temp_ring = vmalloc(array_size(sizeof(struct igc_ring),
> -					       adapter->num_rx_queues));
> +		temp_ring = vmalloc_array(adapter->num_rx_queues,
> +					  sizeof(struct igc_ring));
>   
>   	if (!temp_ring) {
>   		err = -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 25c3a09ad7f1..2c5d774f1ec1 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -1278,7 +1278,7 @@ static int ixgbe_set_ringparam(struct net_device *netdev,
>   	/* allocate temporary buffer to store rings in */
>   	i = max_t(int, adapter->num_tx_queues + adapter->num_xdp_queues,
>   		  adapter->num_rx_queues);
> -	temp_ring = vmalloc(array_size(i, sizeof(struct ixgbe_ring)));
> +	temp_ring = vmalloc_array(i, sizeof(struct ixgbe_ring));
>   
>   	if (!temp_ring) {
>   		err = -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> index 7ac53171b041..bebad564188e 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> @@ -276,9 +276,9 @@ static int ixgbevf_set_ringparam(struct net_device *netdev,
>   	}
>   
>   	if (new_tx_count != adapter->tx_ring_count) {
> -		tx_ring = vmalloc(array_size(sizeof(*tx_ring),
> -					     adapter->num_tx_queues +
> -						adapter->num_xdp_queues));
> +		tx_ring = vmalloc_array(adapter->num_tx_queues +
> +					adapter->num_xdp_queues,
> +					sizeof(*tx_ring));
>   		if (!tx_ring) {
>   			err = -ENOMEM;
>   			goto clear_reset;

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
