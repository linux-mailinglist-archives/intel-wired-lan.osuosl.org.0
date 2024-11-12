Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B1D9C59B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 14:56:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E06280EF8;
	Tue, 12 Nov 2024 13:56:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VLQjkJzJZUOM; Tue, 12 Nov 2024 13:56:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77F318105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731419815;
	bh=z6GJIfsl8L+Awni2vauytFSpkySMXcNGaJ2BvaXXMQw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XgSg6i/dTf7DG8snO9AHFucp3k27rR0MIr5HYiLDD0dRTEz57ptyPq7FaPmkP1dX1
	 OrEc2hOGaznkfxaKk2cKEzGtFBB4pc1zGNyMyvoT4ZNwwM8mHxMqvE/xDu08pjuuHq
	 N4CoOCpsko/wXSA++kKEDgVgMlRt4QegugUKK4GX8CizDoNzjUrvSGrUsYNumnhcMd
	 gqXQYZdtxmfEiznzHFalX7EFC8tgLb70vpDaqL+qHeYg/q1pB9kCm16Fjlk8+uq9Or
	 bhmH1yIec1HX3vi3HvdMnuriJ22e0hJnlpx8qwMN4MfDKBukQpHxPczfyCHzmrWx2d
	 db6u6wbO5Ppbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77F318105B;
	Tue, 12 Nov 2024 13:56:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 35A87D8F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1774380C19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SfPjbEXRgEPA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 13:56:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com;
 envelope-from=razor@blackwall.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3D02A80EF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D02A80EF8
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D02A80EF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:56:52 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-53a0c160b94so6846829e87.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 05:56:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731419810; x=1732024610;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=z6GJIfsl8L+Awni2vauytFSpkySMXcNGaJ2BvaXXMQw=;
 b=hD4tHplWFp6HzT5zCN9olbIF3SRg8KoRCYiz+hqzMXVjrjWVH/Ftkh6zJlBRdmUslw
 acx/hbM8Oc18/XDYO5sr7nCEoMDWuwfu78lUOeBcczkMI7ngegpsVjqaoIA2bGbvSk8R
 fVgiB3m9mbTmo1kscrj14Kwl8PYSOuPgcXTDqVwwuDEpei30cbgGnicPYHTyB8AQz5Yz
 Xe5Plwf8JSineQdHkPgtlbhgChCvOPeBzG7GhayfHq0eZlb3MDkGmGdwpVP0FBnH5hAa
 8bFMRKPyTPR6cY8AsRAgn+e9RQ53S+bSQM+jY8CgksyLYirA7TRgzvv9LWzgzFsPGbqo
 kMZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVueLdP99v8X9lhLuMXjur7y4PQCTw5OZQGbWKr23lv/8mBV1RFA5uEmWHagJqjRYnqWn6Zd3/QRCjkj5RPcgI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyoAsQNEBKH+IJ0KzNWpjR+C5yNQP5W4UGlfBmOQLQyvpsQDhvz
 OjwXFxHnNi79Ecaua0HHkRgS13v8/ik18+dKiOVqxXthQpXz8SMILmW8+YyC5hU=
X-Google-Smtp-Source: AGHT+IHOF4VYkC1Kg9QmW1uZS8lsVgKoN0pd0sATWDdzVSP/M3Xfx+BY8yEfFd2p1qhzXQFX+yWURg==
X-Received: by 2002:a05:6512:3dac:b0:535:645b:fb33 with SMTP id
 2adb3069b0e04-53d862b358cmr8000838e87.2.1731419809953; 
 Tue, 12 Nov 2024 05:56:49 -0800 (PST)
Received: from [192.168.1.128] ([62.205.150.185])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53d82678ec6sm1884152e87.50.2024.11.12.05.56.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2024 05:56:49 -0800 (PST)
Message-ID: <c0bcb7fb-6e52-45af-a115-7d10375047bf@blackwall.org>
Date: Tue, 12 Nov 2024 15:56:47 +0200
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
 <8153c15a3a5d341642e8c176cfb0d32e4be3efeb.1731342342.git.petrm@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <8153c15a3a5d341642e8c176cfb0d32e4be3efeb.1731342342.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1731419810; x=1732024610;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=z6GJIfsl8L+Awni2vauytFSpkySMXcNGaJ2BvaXXMQw=;
 b=ifhHVimPsgwBRJv8/y7BJ4Jy5Y6HXGMqbj2yQjrKNLLsvad+V64M6/eZr5wdt8ssMG
 06NynQILl9BYeLQGKQ/+RFxcQ0pzKbnnbDtahk+2zHG46FDQoYAkNMJzcnrty6HV307y
 iJEJI16ps8uAlSXA5e1uesJkrEOVdQpoakPQo/DdMco9F92WtlAYqcGwHE0vS+8nHeEQ
 VySwIOjqUbpXDwlBoLf+zy/VSg+jL0Py9aJNqtdiIPu5542eRsOyjfgZuigHgILTgCEt
 V7Wb1TwF2j5Su/MgvehkfIZPBXsa/eebs6FaiXlon6O24nZpEavJ2sbRXNpkSsbrgxpl
 FWRQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blackwall.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ifhHVimP
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/7] ndo_fdb_del: Add a
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
> In a similar fashion to ndo_fdb_add, which was covered in the previous
> patch, add the bool *notified argument to ndo_fdb_del. Callees that send a
> notification on their own set the flag to true.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Amit Cohen <amcohen@nvidia.com>
> ---
> 
> Notes:
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
>  drivers/net/ethernet/intel/ice/ice_main.c        |  4 +++-
>  drivers/net/ethernet/mscc/ocelot_net.c           |  2 +-
>  drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c |  2 +-
>  drivers/net/macvlan.c                            |  2 +-
>  drivers/net/vxlan/vxlan_core.c                   |  5 ++++-
>  include/linux/netdevice.h                        |  9 +++++++--
>  net/bridge/br_fdb.c                              | 15 ++++++++-------
>  net/bridge/br_private.h                          |  2 +-
>  net/core/rtnetlink.c                             | 11 ++++++++---
>  9 files changed, 34 insertions(+), 18 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


