Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CA1C427C5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 06:38:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F28AF8118D;
	Sat,  8 Nov 2025 05:38:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kItpXt_1wGa; Sat,  8 Nov 2025 05:38:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C4C681187
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762580318;
	bh=IuFGakl62Uel66KfFWqAn5hA/4XfSVGRSL4JDsBkaBs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7UBH6QO8+2G05jnbRi7N0WhhJ5uktA9iem6KA622t6AEWxNOqExHefiuT+zgmSGdV
	 QuIvYmYcTlzWmF/epe2+BHQ6mk6cvrAR9hX0qxcNPh6bPnRgBkCqt7KCjT+2u7Z4MY
	 5gR73kg8Azp+fWz8Z0YVjcGIoWL4JwKk5orK9To4oaj16zuD4/0YftdEyFiNrgRnlP
	 mCejL7vKj4DUyR7MpD5E/UITs8D0wC6o+PgsFZj0bcyCHx/sbAdLZd30Y37+3zVyx+
	 fGUH/0cu/BHo9NZL9W38VkMyjuJx44AJWoYIs6DOTIONXmInZsIyd4dloaIlsy8o5z
	 0Hcvm8H8H39JA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C4C681187;
	Sat,  8 Nov 2025 05:38:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F14661CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 05:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E306D407C2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 05:38:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 11S7E89LCaBq for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 05:38:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=saeed@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E3C5F407BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3C5F407BD
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3C5F407BD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 05:38:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 45AC461902;
 Sat,  8 Nov 2025 05:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC516C19422;
 Sat,  8 Nov 2025 05:38:33 +0000 (UTC)
Date: Fri, 7 Nov 2025 21:38:32 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Daniel Zahka <daniel.zahka@gmail.com>
Cc: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Srujana Challa <schalla@marvell.com>,
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>,
 Jerin Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Roger Quadros <rogerq@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Message-ID: <aQ7XWOI68rVDRewR@x130>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
 <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
 <db5c46b4-cc66-48bb-aafb-40d83dd3620c@gmail.com>
 <6aa2f011-3ba5-4614-950d-d8f0ec62222b@gmail.com>
 <p3pj3mu4mabgninwowqikegeotxgzhc4yptf7qrfhns37bnkoz@ugkbgvlkxqxb>
 <78db1fab-e482-4ebc-82ce-ba84b3f561e2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <78db1fab-e482-4ebc-82ce-ba84b3f561e2@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762580313;
 bh=w6GXV8F8qq8Ivlsip/h/QX7gHcMdkkyqZQffmsH93Go=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R6rzkZ9aOnGt/EQ9R93dim8mBYYjOjakJehQ5+rN7x3rvkrZwgPe3DNMNBLOS6Sh4
 mImZKwWN8OxH6gjwHfbPpky8S4xfaMEw4jAyYKPEkT3ztoZqWXNpmZBCg3s9GW11DH
 ubqLYGlFVZD9/bwsgi4HUeIL+tGoVZRpcmwSzbCHe4/tKN/YY1WJFNFfWmJhYpQvYq
 aLmPydUhP1j4nb/QPh4Bpfzi2TidyWlqi7OIYoBoMGpHxUbV0BbBU/eCT9rJf0d0LI
 UGX4tJ2pBMvLkxAGG5WdK5NuaGVKDGXY0wPCPhO3ZVQAVKzkoatva84A/KHH/1yljJ
 uT5/heaaQlZPQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=R6rzkZ9a
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

On 04 Nov 09:48, Daniel Zahka wrote:
>
>
>On 11/4/25 9:39 AM, Jiri Pirko wrote:
>>Tue, Nov 04, 2025 at 01:51:16PM +0100, daniel.zahka@gmail.com wrote:
>>>
>>>On 11/4/25 6:38 AM, Daniel Zahka wrote:
>>>>
>>>>On 11/4/25 5:14 AM, Jiri Pirko wrote:
>>>>>I did some research. 0/DEVICE_DEFAULT should not be ever reported back
>>>>>from FW. It's purpose is for user to reset to default FW configuration.
>>>>>What's the usecase for that? I think you could just avoid
>>>>>0/DEVICE_DEFAULT entirely, for both get and set.
>>>>I find that 0/DEVICE_DEFAULT is reported back on my device. I have
>>>>observed this same behavior when using the mstconfig tool for setting the
>>>>parameter too.
>>>e.g.
>>>$ dmesg | grep -i mlx | grep -i firmware
>>>[   10.165767] mlx5_core 0000:01:00.0: firmware version: 28.46.1006
>>>
>>>$ ./mstconfig -d 01:00.0 -b ./mlxconfig_host.db query SWP_L4_CHECKSUM_MODE
>>>
>>>Device #1:
>>>----------
>>>
>>>Device type:        ConnectX7
>>>Name:               CX71143DMC-CDAE_FB_Ax
>>>Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0;
>>>Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure Boot
>>>Device:             01:00.0
>>>
>>>Configurations:                                          Next Boot
>>>         SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0)
>>This is next-boot value. You should query current (--enable_verbosity)
>>to show in param get.
>
>I am still seeing that DEVICE_DEFAULT(0) is read back:
>
>$ ./mstconfig --enable_verbosity -d 01:00.0 -b ./mlxconfig_host.db 
>query SWP_L4_CHECKSUM_MODE
>
>Device #1:
>----------
>
>Device type:        ConnectX7
>Name:               CX71143DMC-CDAE_FB_Ax
>Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0; 
>Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure 
>Boot
>Device:             01:00.0
>
>Configurations:                  Default             Current       Next Boot
>        SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0) DEVICE_DEFAULT(0)    
>DEVICE_DEFAULT(0)
>

When default value of nvconfig is managed by FW, 0 will always mean
DEVICE_DEFAULT, and it is a way for the driver to reset back to default on
write, but on read FW should never return it, so this is a FW bug.

But this shouldn't block this series so just return 'default', from the 
driver perspective we should return 'default' when we know 0 means that.

