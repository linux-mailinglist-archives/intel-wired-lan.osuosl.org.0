Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9301B9C59AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 14:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5717E402DE;
	Tue, 12 Nov 2024 13:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O5KHt6x7Skkk; Tue, 12 Nov 2024 13:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 615A640152
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731419796;
	bh=vXCHDy2CtTq3ikpCtPUS/yL5SNnsohYV9UYTVkJYPjo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z9/c88thOI/vzOFKdJi9plwPYnzdn9sXoh9X0mkBbmZiQ++cIcBhWWhxgf5sxiI+t
	 0Wjvm4fotQrLrU6umWaXe9lAkw4JUKL7d6QUKtEbirLIQf+XFsXIZZt6lv3IDAqrh/
	 4pqlDLnpuBXJfA7kpUH2aTGj1E/TQuqb6ZfMmzscEUa1wk7QYc6wwz5UqbdnL4c7Dt
	 WgwLbDjQud6a9DWc/2pB6fAvWsEkhK+p0f8jlR5uqV6bG15h0Kh9ZNFrmnQtrQ4puJ
	 4XgViSc6WS70+uVsTC+hQCWizLqAHVf5GG04kw8reWzEVCmZ58W199L9oFFJTsJDRL
	 oRxY7Pkl1jPGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 615A640152;
	Tue, 12 Nov 2024 13:56:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F2C8D8F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AE918105B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hq2Pu4yNVaIJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 13:56:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::233; helo=mail-lj1-x233.google.com;
 envelope-from=razor@blackwall.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC3AD80C19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC3AD80C19
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC3AD80C19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:56:32 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id
 38308e7fff4ca-2fb49510250so49188051fa.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 05:56:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731419791; x=1732024591;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vXCHDy2CtTq3ikpCtPUS/yL5SNnsohYV9UYTVkJYPjo=;
 b=lJv9VUsupvYqKXsmo2fT8yM+lrJfXKVGJ3l3PCJTww84QahzILEhQr9FgtjPFWoIGG
 NSTcjVcHeUOa+SpC4hjBytlP0HSjPNXD1YbzLeTeO3YJAglWY3qfOHUG9i1lZhgas9n4
 LAeIiHE0pCvxOaDdEWk65/UIGBOVtDJ4z9iX2ofz6v+7AHcuHqjeJeHNgfjeZgTcfC67
 R7Dd0BweHye6v02f1qC/IriKeUl4GjIrUJH4GiFKO76tXe34HbsTq1NlymNI2fHCcHi2
 zknYOIRMjnvmDJ2FwTJHKM5INwjBZM0vwq1a6I7WBiorodnPEcVQjh1OWZjh0HF4umVr
 Ngbg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjp2sRvt3ZoqMBdUtb9x2YLhuZPxvFiF7cEdbkNfUiHxV4ZTH22HEMG07nMVB84AeS1LQseks5SeCXrWIJwnE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxmMeB8S4mYq6pcEXffxBxY2JPAP0uBlM4HrfAEPbLUyiyhJ00D
 FzKkLnU16AMRX6R4VD4mBpldFI/muA013maWJqP3T+cwql9YYC4inqZSoOjoWIs=
X-Google-Smtp-Source: AGHT+IFy5to0zem2CGYWJ4nSEZBhjBFKges/bowKsAqGZ5MejK3x4Ly1MEhGM+xRA91JqWSwPT899g==
X-Received: by 2002:a05:651c:221d:b0:2fb:4d7e:b942 with SMTP id
 38308e7fff4ca-2ff2021c20amr72273991fa.10.1731419790579; 
 Tue, 12 Nov 2024 05:56:30 -0800 (PST)
Received: from [192.168.1.128] ([62.205.150.185])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2ff179d4b37sm20078811fa.102.2024.11.12.05.56.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2024 05:56:29 -0800 (PST)
Message-ID: <cdebfe36-5306-42c1-aa89-c60b168b2c49@blackwall.org>
Date: Tue, 12 Nov 2024 15:56:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org
Cc: Simon Horman <horms@kernel.org>, Ido Schimmel <idosch@nvidia.com>,
 Amit Cohen <amcohen@nvidia.com>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Andy Roulin <aroulin@nvidia.com>, mlxsw@nvidia.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, UNGLinuxDriver@microchip.com,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Kuniyuki Iwashima <kuniyu@amazon.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 bridge@lists.linux.dev
References: <cover.1731342342.git.petrm@nvidia.com>
 <2afc1da2e9cd2dc348975b0fe250682e74990719.1731342342.git.petrm@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <2afc1da2e9cd2dc348975b0fe250682e74990719.1731342342.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1731419791; x=1732024591;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=vXCHDy2CtTq3ikpCtPUS/yL5SNnsohYV9UYTVkJYPjo=;
 b=0hBvz+NuHpz33DZJW9y11roAFqDpb8oMtnewLMusJ8SrhBcL3P9b5Bty3jce4B+6Xq
 7XXNKuY2ioPhJWZndI2J74eciHIvRp7toRgJgvMdndMzGQw1I44xV6L8zdVNgBkbsC78
 YRMXK4q0TeEqbbA3kqkUeJKf0pzYdx+Dknm3cC0xGmusu41EwCsZ0yx5G1RXOVhLqRUc
 GuSXrPEE7ylvDLBfr2pH1wytFPh7w4OPMhUisHY9q/OGG87rYMuVVJGJ895Z6ZmSNf86
 Ni/IdPMlj/CGbKuAmTOjuq5ljQLC2q1tdyNT3ub4nSIE63sLjHM0+UDwCcZ9m/Z9gWXc
 Uaww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blackwall.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=0hBvz+Nu
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] ndo_fdb_add: Add a
 parameter to report whether notification was sent
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

On 11/11/24 19:08, Petr Machata wrote:
> Currently when FDB entries are added to or deleted from a VXLAN netdevice,
> the VXLAN driver emits one notification, including the VXLAN-specific
> attributes. The core however always sends a notification as well, a generic
> one. Thus two notifications are unnecessarily sent for these operations. A
> similar situation comes up with bridge driver, which also emits
> notifications on its own:
> 
>  # ip link add name vx type vxlan id 1000 dstport 4789
>  # bridge monitor fdb &
>  [1] 1981693
>  # bridge fdb add de:ad:be:ef:13:37 dev vx self dst 192.0.2.1
>  de:ad:be:ef:13:37 dev vx dst 192.0.2.1 self permanent
>  de:ad:be:ef:13:37 dev vx self permanent
> 
> In order to prevent this duplicity, add a paremeter to ndo_fdb_add,
> bool *notified. The flag is primed to false, and if the callee sends a
> notification on its own, it sets it to true, thus informing the core that
> it should not generate another notification.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Amit Cohen <amcohen@nvidia.com>
> ---
> 
> Notes:
> CC: Simon Horman <horms@kernel.org>
> CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> CC: intel-wired-lan@lists.osuosl.org
> CC: UNGLinuxDriver@microchip.com
> CC: Manish Chopra <manishc@marvell.com>
> CC: GR-Linux-NIC-Dev@marvell.com
> CC: Kuniyuki Iwashima <kuniyu@amazon.com>
> CC: Andrew Lunn <andrew+netdev@lunn.ch>
> CC: Nikolay Aleksandrov <razor@blackwall.org>
> CC: bridge@lists.linux.dev
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c      |  3 ++-
>  drivers/net/ethernet/intel/ice/ice_main.c        |  4 +++-
>  drivers/net/ethernet/intel/igb/igb_main.c        |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  2 +-
>  drivers/net/ethernet/mscc/ocelot_net.c           |  2 +-
>  drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c |  2 +-
>  drivers/net/macvlan.c                            |  2 +-
>  drivers/net/vxlan/vxlan_core.c                   |  5 ++++-
>  include/linux/netdevice.h                        |  5 ++++-
>  net/bridge/br_fdb.c                              | 12 +++++++-----
>  net/bridge/br_private.h                          |  2 +-
>  net/core/rtnetlink.c                             |  9 ++++++---
>  12 files changed, 32 insertions(+), 18 deletions(-)
> 

LGTM,
Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


