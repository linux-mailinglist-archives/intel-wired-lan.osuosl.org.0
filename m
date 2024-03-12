Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 235F5879151
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C457817AD;
	Tue, 12 Mar 2024 09:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oY1AapMPY9Nc; Tue, 12 Mar 2024 09:49:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB0DF81842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710236942;
	bh=QF8rrlwvoyakQvzCc2tDUQMNvfXPsszRq9UKpEfDyVo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=565zttpBPdMx63sEGMuLwztwQRMdz00u296qYL5bcBoZ3dWBx0Pr3jlk8CcgDnzST
	 Y/rQp//ywI+nLhKhPgXTUHYFL7J7FNcRJoTGur1Hi5yfYuSHs3Posn/dY6cbR0D54q
	 cutMnuJH/EfwxaVZ9tw0ZfY71b+xIaeG3TmBSBVTPEjg9p7QJUnB7lJUjmRWw3/ugU
	 PxYezvHg9EsV/bz19wiL4aYz/tN3rYm5IhauQnlwdhXxcLBbjk5Ec0hXMsyIdqFBHH
	 YOpv/tyZmgYucEpbObHUbNDofADjHcBLsOPb7XvrnlAihsnehbpT0TeCH2nnai1ex7
	 b7UPrCP/j9uxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB0DF81842;
	Tue, 12 Mar 2024 09:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC78C1BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4EA960856
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_vN9MXluTsI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:48:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55B0660729
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55B0660729
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55B0660729
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:48:57 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CAA1261E5FE36;
 Tue, 12 Mar 2024 10:48:20 +0100 (CET)
Message-ID: <fd37860e-306f-42bf-9a1d-e4d98ddf338c@molgen.mpg.de>
Date: Tue, 12 Mar 2024 10:48:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Erwan Velu <erwanaliasr1@gmail.com>
References: <20240312094259.770554-1-e.velu@criteo.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240312094259.770554-1-e.velu@criteo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v3] i40e: Prevent setting MTU if
 greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Erwan,


Thank you very umch for your patch.

Am 12.03.24 um 10:42 schrieb Erwan Velu:
> Commit 6871a7de705b6f6a4046f0d19da9bcd689c3bc8e from iPXE project is
> setting the MFS to 0x600 = 1536.

Please add a link, as most people do not have the iPXE archive checked 
out. Maybe also add the commit message summary.

> At boot time the i40e driver complains about it with
> the following message but continues.
> 
> 	MFS for port 1 has been set below the default: 600

Hmm, but 1536 > 600. So the log message is incorrect?

> If the MTU size is increased, the driver accept it but large packets will not

accept*s*

> be processed by the firmware generating tx_errors. The issue is pretty
> silent for users. i.e doing TCP in such context will generates lots of
> retransmissions until the proper window size (below 1500) will be used.
> 
> To fix this case, it would have been ideal to increase the MFS,
> via i40e_aqc_opc_set_mac_config, incoming patch will take care of it.
> 
> At least, this commit prevents setting up an MTU greater than the current MFS.
> It will avoid being in the position of having an MTU set to 9000 on the
> netdev with a firmware refusing packets larger than 1536.

Maybe add the new log message.

One last formal nit: Please use a line length limit of 75 characters per 
line.

> Signed-off-by: Erwan Velu <e.velu@criteo.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 89a3401d20ab..225b2fd0449e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2950,7 +2950,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>   	struct i40e_netdev_priv *np = netdev_priv(netdev);
>   	struct i40e_vsi *vsi = np->vsi;
>   	struct i40e_pf *pf = vsi->back;
> -	int frame_size;
> +	int frame_size, mfs, max_mtu;
>   
>   	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
>   	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
> @@ -2959,6 +2959,14 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>   		return -EINVAL;
>   	}
>   
> +	mfs = pf->hw.phy.link_info.max_frame_size;
> +	max_mtu = mfs - I40E_PACKET_HDR_PAD;
> +	if (new_mtu > max_mtu) {
> +		netdev_err(netdev, "Error changing mtu to %d, Max is %d. MFS is too small.\n",
> +			   new_mtu, max_mtu);

The other log messages capitalize MTU.

> +		return -EINVAL;
> +	}
> +
>   	netdev_dbg(netdev, "changing MTU from %d to %d\n",
>   		   netdev->mtu, new_mtu);
>   	netdev->mtu = new_mtu;


The rest looks reasonable.


Kind regards,

Paul
