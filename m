Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MWiOqym/Wl0ggAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 11:02:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 193D24F3FAB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 11:02:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 709CA615A5;
	Fri,  8 May 2026 09:02:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R3UKMV1uoCFn; Fri,  8 May 2026 09:02:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5DED61516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778230953;
	bh=HlYOG3XzQZlo22JT9TgpdXVisycjOjKnbVWOM2UqaHQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MtYxuL5GQBNHvawUqsASBeCq13Aaa+ecGTYy9eY4vM7fYoIlS4TU3nviPIaW9Whdb
	 s3ru4J+1M4VO0ghCgzHybYjHDSR005vr21ehykNeo+TC4MWcVU49SHVYoZ2x0VJVim
	 L8CQxcEXvaHJe0Hrp4utaydidz8LFlH9V2UWR+K03fsh2SF92SFFBh4Zajq2sHuvBu
	 BWs7FB5XgdY6Sk+Ag4zp0q4ejmiCwBnnwqCsOdrHy77rOxFlxQNPx2c4UCKxT0zlYp
	 Btu1Etk69cmORg1P2tyDbgpKFOXHdkftSwvSbrB8dHIRbkZqse3tpSKqpa9A616oBd
	 8PG6uuWFH00Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5DED61516;
	Fri,  8 May 2026 09:02:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ECBD0272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2CB36132D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uZG8WVqbM0VG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 09:02:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB42661309
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB42661309
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB42661309
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:02:30 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-488d2079582so19339805e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 May 2026 02:02:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778230949; x=1778835749;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HlYOG3XzQZlo22JT9TgpdXVisycjOjKnbVWOM2UqaHQ=;
 b=X5nxCpHuQOHNSwakEwUK7OL885NX0vkuIXm3GcBwCVA3wOgRCDo+UqgCJe5VzrEFWD
 SmLxY4W0ZBJZBVwWxh9w613JACnMMZju/ZxAC8g2FhTVCXuPBnwECKYBf+QKBv2GdsXL
 dN+exNxiZt630GtfJuusDf6UU/3+OIEoVh03dw7YQQViNGmvaH14aUmWhn9l1K2qc10Y
 g1xOf/lh8Z9kCQ47BZZ0IAMUHA8bQDOD4n9DaPPX3ZyYFG9pnvJH9/vLuElXdlFd//8c
 Y8u0DjDkWv/FnQO+cFcum7PbAyMcq+4ZrucSAI/FWjNZJWGE/WzGCTQP2S1gRyBNyGK2
 AmpA==
X-Gm-Message-State: AOJu0YxsU05i+iecz7I/CaKwlms25VZMFTB6Wga5pA+WI1wQB+OftAS4
 X/LpWFJ0BduuJV+vdKJVPKdFPjmdoCOkDdY+Stnku56dZbzgHAPAjG4i
X-Gm-Gg: AeBDiesFtHTHR3CAU0FPHkCwPY6K+TYpC6DNcrUalbfg07hkaocLMkY+k6asL9KjpGS
 +7Ft8uVCpDdWO77JLPOifLBqNabQRjCpjWxlh3Ls2frPgQ50pVcjFOXIST95uNjktmFWI31zqUw
 RXiCyW18OHd86+ODJyV/jn9YHikds1oxxwLoVuc4KtG03hpVSojLhoKZdnbYCzlKieCR//tVRQN
 Q57LWbbo2b6UsSJ9iPS1cE2/WsckK8irry7rgkJT/N+QjE9GqplvZd3wn/IFm59loWk1nqVvtYH
 HNIY6GUoxl+Ywt3CZvkhGWn8XgdGhKz4e0fiw+PVzfFZWHgCvQLiNBjvncsDuwYMcI6+GtsfthC
 I7OOZZLhegpdxHr8SJoL4xCZGkeWJz/1PwMgMyUvG0h+eTrNg+ZoUgmUeIs3yhBgfN0lFXcDqta
 UY3dyX31AwPauRR9mM/jb3Oa3PAPeCM/iikZd1SR5uv1VDUjhoJCmz4rp5s53iop+d
X-Received: by 2002:a05:600c:8011:b0:48a:80cb:1bb4 with SMTP id
 5b1f17b1804b1-48e51f3b00emr178439985e9.22.1778230948591; 
 Fri, 08 May 2026 02:02:28 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45491bae13csm2842091f8f.29.2026.05.08.02.02.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2026 02:02:27 -0700 (PDT)
Date: Fri, 8 May 2026 10:02:26 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Ratheesh Kannoth <rkannoth@marvell.com>
Cc: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <linux-rdma@vger.kernel.org>, <netdev@vger.kernel.org>,
 <oss-drivers@corigine.com>, <akiyano@amazon.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <arkadiusz.kubalewski@intel.com>,
 <brett.creeley@amd.com>, <darinzon@amazon.com>, <davem@davemloft.net>,
 <donald.hunter@gmail.com>, <edumazet@google.com>, <horms@kernel.org>,
 <idosch@nvidia.com>, <ivecera@redhat.com>, <jiri@resnulli.us>,
 <kuba@kernel.org>, <leon@kernel.org>, <mbloch@nvidia.com>,
 <michael.chan@broadcom.com>, <pabeni@redhat.com>,
 <pavan.chebbi@broadcom.com>, <petrm@nvidia.com>,
 <Prathosh.Satish@microchip.com>, <przemyslaw.kitszel@intel.com>,
 <saeedm@nvidia.com>, <sgoutham@marvell.com>, <tariqt@nvidia.com>,
 <vadim.fedorenko@linux.dev>
Message-ID: <20260508100226.49294dc3@pumpkin>
In-Reply-To: <20260508034912.4082520-3-rkannoth@marvell.com>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-3-rkannoth@marvell.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778230949; x=1778835749; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HlYOG3XzQZlo22JT9TgpdXVisycjOjKnbVWOM2UqaHQ=;
 b=lAenx9djl1aTKqZg2A7L1lftNbwSyqqpYm5Ev1K7p3f4P0Sd9ULGrHpSPdI6uz2W62
 c5J4n4t728VNaNhGpIvYoB4v66XGx4X2MnMolsLQxPnivw+4OuuST2GuBnThtfadd7Bs
 /TT2swRkmynJKonArjJ5B2zn6w/mjn+OMYMqhDIqrNLdUVDd8xwb1DnLY/aYt0tp2ZeV
 6ZiGn4r4K0S+wc3Uuuu5/X4kDdQ2x58VugehWwYyR8wqt0sILrjqdwystbWQ0c2fuiUI
 HCwxD2kN8cZu0PylITKJ0FIm06flqTXBKBIl8GUY9WQwrr8DO7QqdX+N1wfqSEzWTdRJ
 b/3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=lAenx9dj
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 2/9] net/mlx5e: trim
 stack use in PCIe congestion threshold helper
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
X-Rspamd-Queue-Id: 193D24F3FAB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rkannoth@marvell.com,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:akiyano@amazon.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:arkadiusz.kubalewski@intel.com,m:brett.creeley@amd.com,m:darinzon@amazon.com,m:davem@davemloft.net,m:donald.hunter@gmail.com,m:edumazet@google.com,m:horms@kernel.org,m:idosch@nvidia.com,m:ivecera@redhat.com,m:jiri@resnulli.us,m:kuba@kernel.org,m:leon@kernel.org,m:mbloch@nvidia.com,m:michael.chan@broadcom.com,m:pabeni@redhat.com,m:pavan.chebbi@broadcom.com,m:petrm@nvidia.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:sgoutham@marvell.com,m:tariqt@nvidia.com,m:vadim.fedorenko@linux.dev,m:andrew@lunn.ch,m:donaldhunter@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,marvell.com:email];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,corigine.com,amazon.com,lunn.ch,intel.com,amd.com,davemloft.net,gmail.com,google.com,kernel.org,nvidia.com,redhat.com,resnulli.us,broadcom.com,microchip.com,marvell.com,linux.dev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, 8 May 2026 09:19:05 +0530
Ratheesh Kannoth <rkannoth@marvell.com> wrote:

> union devlink_param_value grew when U64 array parameters were added.
> Keeping a four-element array of that union in
> mlx5e_pcie_cong_get_thresh_config() inflated the stack frame past the
> -Wframe-larger-than limit.
> 
> Read each driverinit value into a single reused union, then store the
> four u16 thresholds in struct mlx5e_pcie_cong_thresh field order via a
> temporary u16 pointer to config.
> 
> Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>
> ---
>  .../mellanox/mlx5/core/en/pcie_cong_event.c   | 34 +++++++++++--------
>  1 file changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c b/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c
> index 2eb666a46f39..88e76be3a73d 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c
> @@ -252,28 +252,32 @@ static int
>  mlx5e_pcie_cong_get_thresh_config(struct mlx5_core_dev *dev,
>  				  struct mlx5e_pcie_cong_thresh *config)
>  {
> +	enum {
> +		INBOUND_HIGH,
> +		INBOUND_LOW,
> +		OUTBOUND_HIGH,
> +		OUTBOUND_LOW,
> +	};
> +
>  	u32 ids[4] = {

Someone will suggest that should be 'static const'.
It may make the code smaller.

> -		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_LOW,
> -		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH,
> -		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW,
> -		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH,
> +		[INBOUND_LOW] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_LOW,
> +		[INBOUND_HIGH] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH,
> +		[OUTBOUND_LOW] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW,
> +		[OUTBOUND_HIGH] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH,
>  	};
> -	struct devlink *devlink = priv_to_devlink(dev);
> -	union devlink_param_value val[4];
>  
> -	for (int i = 0; i < 4; i++) {
> -		u32 id = ids[i];
> -		int err;
> +	struct devlink *devlink = priv_to_devlink(dev);
> +	union devlink_param_value val;
> +	u16 *dst = (u16 *)config;

You can't do that - far too fragile.
Maybe &config->inbound_low - but even that assumes the values are in order.
A safer way would be using a temporary 'u16 val16[4]'.
(Or even overwrite ids[] with the result.)

But the code might even be smaller if you just unroll the loop:
	err = devl_param_driverinit_value_get(devlink, MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_LOW, &val);
	if (err)
		return err;
	config->inbound_low = val.vu16;
	err = devl_param_driverinit_value_get(devlink, MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH, &val);
	if (err)
		return err;
	config->inbound_high = val.vu16;
	err = devl_param_driverinit_value_get(devlink, MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW, &val);
	if (err)
		return err;
	config->outbound_low = val.vu16;
	err = devl_param_driverinit_value_get(devlink, MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH, &val);
	if (err)
		return err;
	config->outbound_high = val.vu16;

-- David


> +	int err;
>  
> -		err = devl_param_driverinit_value_get(devlink, id, &val[i]);
> +	for (int i = 0; i < ARRAY_SIZE(ids); i++) {
> +		err = devl_param_driverinit_value_get(devlink, ids[i], &val);
>  		if (err)
>  			return err;
> -	}
>  
> -	config->inbound_low = val[0].vu16;
> -	config->inbound_high = val[1].vu16;
> -	config->outbound_low = val[2].vu16;
> -	config->outbound_high = val[3].vu16;
> +		dst[i] = val.vu16;
> +	}
>  
>  	return 0;
>  }

