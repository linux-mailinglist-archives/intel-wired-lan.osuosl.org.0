Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EED6ADF0DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 17:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDE3940A28;
	Wed, 18 Jun 2025 15:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eTg4T9zQC9gW; Wed, 18 Jun 2025 15:14:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B27240763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750259654;
	bh=+S+UmywS1cMQlzcb0xKkbPVLyMmpj3IBlRdMtTw736I=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xc7VhMxBQHC1L3uXd4jOthuZdcojrSoQjppVk3o42KMpQg4mMOziDsGv5S0eRzB3f
	 0et252s7JyR+H0VLVIwumw8uh3JHksAA3tkQDafkbb84RnvtpWXDuI0dwpqttu7hFH
	 FUJPy50bvD2dRaqc/f/KtF0+e8kG+oGIu+0SUw8NotcnobeB5him/cUTQzNczHUthN
	 FohFgZsI0RZu3Tsq0+i1HgZOKXZwxAsWStih/HhMYf5C/9WpncBHzAyMjzlatbu0zj
	 KcdUQPkkDqif59EkZfEP1kwguL/xe4Jw4tPcfIHmOdQjJDbEabAFkstfDdw93nqVzt
	 WTCa3i9z1HSnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B27240763;
	Wed, 18 Jun 2025 15:14:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 931F9E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 15:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 853DC40773
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 15:14:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C93xUNy-7VHE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 15:14:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52a; helo=mail-ed1-x52a.google.com;
 envelope-from=razor@blackwall.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C4B1A408D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4B1A408D7
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4B1A408D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 15:14:11 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-60780d74c8cso12452638a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 08:14:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750259650; x=1750864450;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+S+UmywS1cMQlzcb0xKkbPVLyMmpj3IBlRdMtTw736I=;
 b=cT/dabV3ByiL2LKejMcAZ1yqv3igB3gSDLbt3jUp8ym6pzIi2V5B/XaRrud4PfYIKL
 FYbWXdkHBlYhU3zIi/rE7zv5S18UwBPzgNk/Q84y1GrDm9W8ySvboHMDrrgpjjL4fUzW
 20/EF8b3LG5kGOLK7RpjFIck/5bFE5rCSP/EpEdPH4aIDnSDFwawqRPwqamRI9Gvf+Tc
 kQtPcHTXeJEvlwcVmHlqksc30/VjNqca7JNR37ooHoxZcoUc0QcytfUBFGcviRS6IfBX
 AJs7h55t19MdQKAUI+mwRFv5hUov4BjDxCgG4a8xAkVJsWSZPhE4ZtJu5p0ekKL63/3s
 p9qw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOPo8izMWh77AFRo0fjpPYT7sni+dTFjyhbKF2d2zT9ZYe8aRaE8u6E/ewtlfADBlapVfX5Pgi7y+DKOQQS2c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YztSOzGGNVNqChQdulIpORu4ExWdWtMvnishptmWNGFvovpHeEQ
 SBHdMfCTnw5zDg/hXckllF5wllc6/lMqshygtZ7iy810gex4tax/lP3cp/OlURGAz6E=
X-Gm-Gg: ASbGncuuZY+3HZFbej9KrRz3itt1S2a9FBwv8HVexnK0LV+Q8SJphCUbVoGU0G02oi6
 6JQ16eij9UMSeRRNv3sxYZDMkHRtKJ9nxNq16mjGEBx8xcf9G6SYosSP40xKzGSFBQmvPGgrQHP
 pTRGOc1kCfskbkrpU6TgGTYoL2Q3ID0H5Gy4Ea9Ish+KJvpYkWIW1rfLdZILU5o3MXubSM1i3ul
 /tVtNTm4qQNe94Vft4tV5aQ6g1dsJukyRNmuKjcUV7hwZKxolVpWIUEDPGmIaVHmBL1afS5IgwU
 tJAjYk2DHcFFEov+pKoytIv1fAb1HO/Hgry6Pr9RuYg5EYnjMfCyFhkGI2zA7gBszaIo0gC+UTA
 8jcYkC+mO/LsSrivWzQ==
X-Google-Smtp-Source: AGHT+IEnxsS/Uvtcf+zcb/7M6kEE3A6RliSG0ulwTdKyTBE8eC4slu4mGjug2HX09alf/gW+PK3nnQ==
X-Received: by 2002:a05:6402:348f:b0:602:225e:1d46 with SMTP id
 4fb4d7f45d1cf-608d0835bf5mr17037976a12.3.1750259649535; 
 Wed, 18 Jun 2025 08:14:09 -0700 (PDT)
Received: from [192.168.0.205] (78-154-15-142.ip.btc-net.bg. [78.154.15.142])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-608b48cd687sm9869313a12.18.2025.06.18.08.14.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Jun 2025 08:14:08 -0700 (PDT)
Message-ID: <22ec7ed6-9c38-4f81-9ec4-024da12b8710@blackwall.org>
Date: Wed, 18 Jun 2025 18:14:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 ajit.khaparde@broadcom.com, sriharsha.basavapatna@broadcom.com,
 somnath.kotur@broadcom.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, tariqt@nvidia.com, saeedm@nvidia.com,
 louis.peens@corigine.com, shshaikh@marvell.com,
 GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com, horms@kernel.org,
 dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de, mingo@kernel.org,
 ruanjinjie@huawei.com, idosch@nvidia.com, petrm@nvidia.com,
 kuniyu@google.com, sdf@fomichev.me, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org
References: <20250616162117.287806-1-stfomichev@gmail.com>
 <20250616162117.287806-2-stfomichev@gmail.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20250616162117.287806-2-stfomichev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1750259650; x=1750864450;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+S+UmywS1cMQlzcb0xKkbPVLyMmpj3IBlRdMtTw736I=;
 b=cODlxRo/wHEeJYYlQZsZ+fSjDia9ppsCgK0r6lUQsqHeKZB/RJho0ViQkXKvlP4+BY
 NHLjOltXDEmnahpIUPxYuF51ggsRr1IrOkrKlyHl4BxOf2lXAzI4/EOkceD5koFU6QOa
 I6IPSv5zaX8c7SAD2tACtTnyxU6B46UDieYEu//woYa54O9Y9C5w1D1sPjV8mQ0jr65z
 dMQhCHeaw5CqPi0ELB7NmVptNLsppCaD0tZU1rf+nkeQR/f+0BqiPHv8NX36zQlDfdKz
 uPFMHjROEwAmvkvLT1RYT+O9fMNIKhUF1Ixc3BqV4Dys0e+vUhO5YhV91TpoHBVJNcRZ
 bjTQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blackwall.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=cODlxRo/
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/6] geneve: rely on rtnl
 lock in geneve_offload_rx_ports
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

On 6/16/25 19:21, Stanislav Fomichev wrote:
> udp_tunnel_push_rx_port will grab mutex in the next patch so
> we can't use rcu. geneve_offload_rx_ports is called
> from geneve_netdevice_event for NETDEV_UDP_TUNNEL_PUSH_INFO and
> NETDEV_UDP_TUNNEL_DROP_INFO which both have ASSERT_RTNL.
> Entries are added to and removed from the sock_list under rtnl
> lock as well (when adding or removing a tunneling device).
> 
> Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
> ---
>  drivers/net/geneve.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
> index ffc15a432689..9efedc6758bf 100644
> --- a/drivers/net/geneve.c
> +++ b/drivers/net/geneve.c
> @@ -41,6 +41,7 @@ MODULE_PARM_DESC(log_ecn_error, "Log packets received with corrupted ECN");
>  /* per-network namespace private data for this module */
>  struct geneve_net {
>  	struct list_head	geneve_list;
> +	/* sock_list is protected by rtnl lock */
>  	struct list_head	sock_list;
>  };
>  
> @@ -1179,8 +1180,9 @@ static void geneve_offload_rx_ports(struct net_device *dev, bool push)
>  	struct geneve_net *gn = net_generic(net, geneve_net_id);
>  	struct geneve_sock *gs;
>  
> -	rcu_read_lock();
> -	list_for_each_entry_rcu(gs, &gn->sock_list, list) {
> +	ASSERT_RTNL();
> +
> +	list_for_each_entry(gs, &gn->sock_list, list) {
>  		if (push) {
>  			udp_tunnel_push_rx_port(dev, gs->sock,
>  						UDP_TUNNEL_TYPE_GENEVE);
> @@ -1189,7 +1191,6 @@ static void geneve_offload_rx_ports(struct net_device *dev, bool push)
>  						UDP_TUNNEL_TYPE_GENEVE);
>  		}
>  	}
> -	rcu_read_unlock();
>  }
>  
>  /* Initialize the device structure. */

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

