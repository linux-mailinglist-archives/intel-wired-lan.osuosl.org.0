Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E28B186AB87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 10:43:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 745F360DA0;
	Wed, 28 Feb 2024 09:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UI1643B452q; Wed, 28 Feb 2024 09:43:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B802060DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709113429;
	bh=kRPlWagDvPDMQ7ZK9LzRF2TmTIwImnAEbz7S+2nAljo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wej0Bjb6cNP7CAPxO2c8frRiuvT4bPdIzR+SUDasPfLCN2D4FOvrJum1OY9BnZPK7
	 Vui9TG4XtMg26W3RfX//UOz4hAp+ImBRUQ5kaShRI6ysFstwKQ4lcQNcYYJpS11V5G
	 m65KqpSU3zB9dJZqUCZa0HIn8PlMgwGTgIfLebd6kRC4C17bRbfytXqFWuG7ETKnV9
	 HHArq/yvpubFhqenOGqJislOFxEgfUYymTYlaiU4iVygdbzWwB5DFIGtRKhCZInyfC
	 xLVR6hm3eN/IxgOxWbhypPCMf8y4aFJG+yUWKNiA1iPiwKfjVqYcyfD8bekPJTIHAd
	 n6jajB59e3oVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B802060DF4;
	Wed, 28 Feb 2024 09:43:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C83ED1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 09:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B39A680EE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 09:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44-vQW08laCo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 09:43:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::333; helo=mail-wm1-x333.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B11D8126D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B11D8126D
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B11D8126D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 09:43:43 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-412ae15b06fso10825375e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 01:43:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709113421; x=1709718221;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kRPlWagDvPDMQ7ZK9LzRF2TmTIwImnAEbz7S+2nAljo=;
 b=LGDob+YBw/cWX6IaCPa789A4d68xuFVUKDTI6mGYityeG3YXU9mmkRYUmHH5caLmIr
 sWTNh3yr8IgmBHxO0kiFjr0sNbIGAC/ykILTfvbYa4aoKat9XmUgWJg4kbxrr1t5jgDr
 4oUU/FCmPhkG4swa+e2nMbSQVeYm/9dyzoaEl5SBKg2YBBJUjPckunIGFabzpIi06Ctk
 2rbIrIguUGMEaRVpwHyOXdOJ/e/RulzkU6wUDgiBaMcJ4R4yIEtRq/clOY7i7xTchVZ1
 2xARCM8SZKkzgs1dzGUj20pd1w4Fbmn583Z08D3gw9UDd4es9jYvhSy3ZfE+WAQJToop
 TY9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzARTD1+/U+EwnP6rhljEogI9yeztMuvNX4PTdfgW1ZRTERHrJMbK3LOI2PihdJ8V+MXNnX1cA94XDilQ/6VaKVNJdGu6zWd1rA8YFhmPLmQ==
X-Gm-Message-State: AOJu0YwPA7zrJ/QtDlTDuFBlPk/R1GjOXXMIIlTsVT7gXW3Fxx14WOe0
 dR982PvVrHFNvTrjXTrFVl/WoAoVLSkG/5f8WPlQct9kAzSXYmRZl5z/cOqQqmM=
X-Google-Smtp-Source: AGHT+IHuR2/GUaaVQKMylulngc2NeSpLM/wXdoWCxP1RvRNWXEcQoYpHV6mjF9Upqj7OQcQnPl17cQ==
X-Received: by 2002:a05:600c:5493:b0:412:f24:560a with SMTP id
 iv19-20020a05600c549300b004120f24560amr10064073wmb.11.1709113421234; 
 Wed, 28 Feb 2024 01:43:41 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 je13-20020a05600c1f8d00b00412b236f145sm1566537wmb.26.2024.02.28.01.43.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 01:43:40 -0800 (PST)
Date: Wed, 28 Feb 2024 10:43:37 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Erwan Velu <erwanaliasr1@gmail.com>
Message-ID: <Zd8ASR9ocx-Xk4OT@nanopsycho>
References: <20240227192704.376176-1-e.velu@criteo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240227192704.376176-1-e.velu@criteo.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709113421; x=1709718221;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kRPlWagDvPDMQ7ZK9LzRF2TmTIwImnAEbz7S+2nAljo=;
 b=Ldd3OPHx4rGDf5PwdBe9gh8yz1xFvl0/s0vFuDoO8bZHmgFfTVsla3vUemkGAgTzNQ
 K+/Gpd/H3bu2mgJnb/aeKIk6SJa0UJ6C1psQ7Ji0s7uRFgb5OY6MReDnTOEAwtKd7BS4
 NTsw3aPs7iCoNNxaf29b+5Ch7GugDZir4xROeIaUWm5tmPVtPxfLNWRACV16JegAyzgL
 JnCdiAnQ5Od4iqNTvTKmT72iQzAKbeVrFIZFQoGoaym3Efk5F8f3xeYeWRUATXfHCyd7
 6KaqPYvT71llfceGJUcs1yDoc9XO7U2JYcM92c8kjeOdeccwFIU1QVdPInZk6vcpcohc
 Z4Qw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Ldd3OPHx
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Prevent setting MTU if greater
 than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 27, 2024 at 08:27:03PM CET, erwanaliasr1@gmail.com wrote:
>Commit 6871a7de705b6f6a4046f0d19da9bcd689c3bc8e from iPXE project is
>setting the MFS to 0x600 = 1536.
>
>At boot time the i40e driver complains about it with
>the following message but continues.
>
>	MFS for port 1 has been set below the default: 600
>
>If the MTU size is increased, the driver accept it but large packets will not
>be processed by the firmware generating tx_errors. The issue is pretty
>silent for users. i.e doing TCP in such context will generates lots of
>retransmissions until the proper window size (below 1500) will be used.
>
>To fix this case, it would have been ideal to increase the MFS,
>via i40e_aqc_opc_set_mac_config, but I didn't found a reliable way to do it.
>
>At least, this commit prevents setting up an MTU greater than the current MFS.
>It will avoid being in the position of having an MTU set to 9000 on the
>netdev with a firmware refusing packets larger than 1536.
>
>A typical trace looks like the following :
>[  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000 which is greater than the current mfs: 1536
>
>Signed-off-by: Erwan Velu <e.velu@criteo.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>

Next time, could you please indicate the target tree in the patch
subject prefix, like this: "[patch net-next] xxx" ?


>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++++-
> 1 file changed, 8 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index 54eb55464e31..14fc70d854d3 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -2950,7 +2950,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
> 	struct i40e_netdev_priv *np = netdev_priv(netdev);
> 	struct i40e_vsi *vsi = np->vsi;
> 	struct i40e_pf *pf = vsi->back;
>-	int frame_size;
>+	int frame_size, mfs;
> 
> 	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
> 	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
>@@ -2959,6 +2959,13 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
> 		return -EINVAL;
> 	}
> 
>+	mfs = pf->hw.phy.link_info.max_frame_size;
>+	if (new_mtu > mfs) {
>+		netdev_err(netdev, "Error changing mtu to %d which is greater than the current mfs: %d\n",
>+			   new_mtu, mfs);
>+		return -EINVAL;
>+	}
>+
> 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
> 		   netdev->mtu, new_mtu);
> 	netdev->mtu = new_mtu;
>-- 
>2.43.2
>
>
