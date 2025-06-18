Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F862ADF0DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 17:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64DDD40773;
	Wed, 18 Jun 2025 15:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZqLnJAWh4bfI; Wed, 18 Jun 2025 15:13:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDC8D408D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750259632;
	bh=O+F9qb0WoqT4O8g9mE9Zc/ggeTeVcLZ0CP5p+3+ztus=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=38zKYoaKOMTM0VMLAABychVXrR8AS9oLxBf7CA9iGB98AcEqKCKyOv2XoXeaaqQqv
	 DWWvH5hNdjrQA1mCDSvU5h/fotwWQcge4b703iUKmr3wbSol0Zd2pfvvETF0kh0BDz
	 2hCM6YXCoEfyipEkuJAftiVX3KT4H1Fc9WD7klGx4twjL+bRNZ5DVWGu8kWwhH/FSp
	 d6Zpr7IX7nT9jahA4kSvblaOGAOYJ2v9Zjpu5rff3H1hMpAud5LbHnzPKjDCfONJgf
	 iJPfmXTK928Un1kv4HJs9CblicAOBY01CXJIg+IBs3A5hqRMhVBPmBhOWFHBsOcIFm
	 OBLbBcMTraWNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDC8D408D7;
	Wed, 18 Jun 2025 15:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D082BE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 15:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B671E60A40
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 15:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ikmQvrq38XAM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 15:13:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com;
 envelope-from=razor@blackwall.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9158E60908
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9158E60908
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9158E60908
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 15:13:49 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-adb2e9fd208so1424992566b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 08:13:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750259628; x=1750864428;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=O+F9qb0WoqT4O8g9mE9Zc/ggeTeVcLZ0CP5p+3+ztus=;
 b=Rn5tu2rrFB75g/60RNwbVDg8UMkcG2V+mh75dQSV7IXLWXi2gaxMgKNeQGjV4Ylcfo
 7VRLw4sn6DkWs5jT+lPGpVfWYA1scxD3qs7nfZ3BfRkF1Z2p/bvyBlYZ8Ga3hnid0gF6
 D0Ro7pMiBj1qiZ6lzICkGVv/jmQ4jtKtr8qi2jKgJus8csWZZX0z3lotCt006CvLBJTu
 +WWAlxF6715CnzxSZT5RaNvTfFdmNba5l0+ydWfRwp0vcLqSdxWaEPnYMscRw5Y7UvzE
 i8ezJ35++uqi+TXj4OwDgLr9gXXrztY4muLpnPRleUrP0aZjV5xkaqMDoswmGJT/xtej
 aJSA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7ucTi5K4/U2Ali2cdrUcMugLr1k0GNWsm6sPyEeUMQlNMzFTyzv2v1L9vSQw6digRDx81WtEsm8zRvhu6bf8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxySortsabCNaCQ/4Uf/EwPkLNnBBHEc8DCqB9vxAAeWQNP4AtE
 b+ndCKw7MS7oiCT4U1A5i6pktpSqXfm0RXT8zEggIFiwkuxUfC+rvFa5W6uNWRrepsY=
X-Gm-Gg: ASbGnctAf6CiHZuZDJQiVOtXn37TwD6cYK4HT5Zxx0XKnbBVou/w9ZVU30eCDJQJpMH
 tCX2Pagtfho6Q5iCPBKTJG0KhaOq/Ky8ZKUrM44osfwnKjwrUDiaAvYJlCN2EoeuMuqNaoxFJlU
 fqscutoEvgKLmnKT6k4Y9rO+k5BQN/UjKcoW43go1ZTqXDL7QfL81U56ClvucFIiaJ91hAHyqx9
 7mgx0GASQkdBuJOKkIiSTSzCUnQ6OfXYOhRV4TI+Ja1LjvON2uQNETjbpSC62wR0cuMUlNfs6zU
 nZm8vIEm03JbCfrdrZHtzVyjKYGEZ8w7JMHuNk2nxMui+XFFtIPtSDCnU1K5HzjkbSIeq7reezO
 mJ1xmA/yBT0QSEkaeWw==
X-Google-Smtp-Source: AGHT+IFP5VYYTJdfIK01Sjykg0ObgRPDVxQKO2zjJ45JW2hF+daM15wGjp6eoU5BXmzHVJq/enFDkw==
X-Received: by 2002:a17:907:3c94:b0:ad5:5210:749c with SMTP id
 a640c23a62f3a-adfad3cda7dmr1548731566b.22.1750259627178; 
 Wed, 18 Jun 2025 08:13:47 -0700 (PDT)
Received: from [192.168.0.205] (78-154-15-142.ip.btc-net.bg. [78.154.15.142])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-adec88fe907sm1076757366b.93.2025.06.18.08.13.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Jun 2025 08:13:46 -0700 (PDT)
Message-ID: <82caca13-7970-4f44-a68f-1efcf3e9a0f9@blackwall.org>
Date: Wed, 18 Jun 2025 18:13:44 +0300
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
 <20250616162117.287806-3-stfomichev@gmail.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20250616162117.287806-3-stfomichev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1750259628; x=1750864428;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=O+F9qb0WoqT4O8g9mE9Zc/ggeTeVcLZ0CP5p+3+ztus=;
 b=a5yGEGkQzvg83AifNHj0LHaFV+vDLyAawiGGmSklUGtcvjWTWYxNakXSRhZlQ3gmqC
 vY/+PKh0Q5jD+b/CRVJb2Tw8CISNMi98OkppYYn34NEE/V+qNRGZd3mRXnDAeVdm14ua
 trFEz9YqFY5/a7XpCqrj9BQQao7RTjtoFiLE7C3IpG6XGNJXEFoSmvkfTPBzXz2yNkf4
 biExfa5IjI7WiKMpDj9SbF8gGeWy77/drOPZtI5MzzE77qjvgJa7z+3/yZoXB1O8dERA
 mjrPKaAmfUHYkJ+pBNGNpaMTo+tL5wQfebJXqilG9bpe0m4roFlSH6yXTdkwTVhKGvt1
 7I7A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blackwall.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=a5yGEGkQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/6] vxlan: drop sock_lock
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
> We won't be able to sleep soon in vxlan_offload_rx_ports and won't be
> able to grab sock_lock. Instead of having separate spinlock to
> manage sockets, rely on rtnl lock. This is similar to how geneve
> manages its sockets.
> 
> Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
> ---
>  drivers/net/vxlan/vxlan_core.c      | 35 ++++++++++++-----------------
>  drivers/net/vxlan/vxlan_private.h   |  2 +-
>  drivers/net/vxlan/vxlan_vnifilter.c | 18 ++++++---------
>  3 files changed, 22 insertions(+), 33 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

