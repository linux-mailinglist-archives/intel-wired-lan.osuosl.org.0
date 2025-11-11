Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3097CC4B4FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 04:26:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B269581C38;
	Tue, 11 Nov 2025 03:26:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hOnU93x21KU; Tue, 11 Nov 2025 03:26:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC19581C44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762831601;
	bh=w9YfczBl48ea8mHJkL8eBp3uBxU9e1Sb8I6E3BeHMZ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zShslgRabY9E1bIQ/qhbQFIJ7deQ3eDyExGhuIpBZVpnWmbn9X2AdkmzFlQ6DiT/p
	 NiRjcB6boIA3tbuZRJ9qSE2JNt2UZZFruRfKVaba8W/cYjMUpoliCBPpXsQkjfFR1+
	 GmOwNqAU1aaY+WYGoY+qKkAwhYJvO74cOitNY2Ylmr8TWmBPx6ucPye+eAPBRZY1TQ
	 ndlPLTgGvtLy+aNvKzzbMBOpyQ9IlzXPUezDDbZJD+tk3+CXg/8cfUjSlqusK5VWl6
	 YG3aYszGXfca2lJtCLWcTG64Q5gIHuuPp+t1Q1yFPRf4jD99qzJBWS0B0ih21tCErI
	 MaSei3lFczqeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC19581C44;
	Tue, 11 Nov 2025 03:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D1567FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 03:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B828B60B1F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 03:26:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iPkV_A9-f6Rg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 03:26:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=saeed@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9141460B1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9141460B1E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9141460B1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 03:26:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A03E360202;
 Tue, 11 Nov 2025 03:26:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37601C4CEF5;
 Tue, 11 Nov 2025 03:26:36 +0000 (UTC)
Date: Mon, 10 Nov 2025 19:26:34 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jiri Pirko <jiri@resnulli.us>, Daniel Zahka <daniel.zahka@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
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
Message-ID: <aRKs6jXqSvC3G_R0@x130>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
 <20251110154643.66d15800@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251110154643.66d15800@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762831596;
 bh=SF8ejBUx63BEWVbo35HrIhmuFlhum3NF91vPz7W/S9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=arA+s8Lck9ZMVhIL7OYtfs+oWUJRLcttj4EpE7KRk7v1UFN/ft+8fCUgtsMc9gd76
 xbz4H/FDW92jLwUvPHG1/WqhhK/z+mVldQc2od6H+BtjiQB5JxvQ4gM5lD1vbzg+pb
 OIGUaErFPL8HlyvrJVGOJSgG6krBoN0V6JHOlVSp76LaFGEO6EWU5piCu0OvjblFrG
 F1/jjUCtMmVj/39yjWouTOw7gaRBlyA5oyUIXix6w4uHaltQIts5/VuBnRuBzJrWIH
 Cq/wXocuXrdrwYG9qhGNsItJ2oZ+mWg1KHT70AM/kbW2xbJC2oehFU+RZ7t/XXG9uM
 4U13e4tZIDmyA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=arA+s8Lc
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
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

On 10 Nov 15:46, Jakub Kicinski wrote:
>On Sun, 9 Nov 2025 11:46:37 +0100 Jiri Pirko wrote:
>> >So, I checked a couple of flows internally, and it seems this allows
>> >some flexibility in the FW to decide later on which mode to pick,
>> >based on other parameters, which practically means
>> >"user has no preference on this param". Driver can only find out
>> >after boot, when it reads the runtime capabilities, but still
>> >this is a bug, by the time the driver reads this (in devlink), the
>> >default value should've already been determined by FW, so FW must
>> >return the actual runtime value. Which can only be one of the following
>>
>> I don't think it is correct to expose the "default" as a value.
>>
>> On read, user should see the configured value, either "full_csum" or
>> "l4_only". Reporting "default" to the user does not make any sense.
>> On write, user should pass either "full_csum" or "l4_only". Why we would
>> ever want to pass "default"?
>
>FWIW I agree that this feels a bit odd. Should the default be a flag
>attr? On get flag being present means the value is the FW default (no
>override present). On set passing the flag means user wants to reset
>to FW default (remove override)?
>
>> Regardless this patch, since this is param to be reflected on fw reboot
>> (permanent cmode), I think it would be nice to expose indication if
>> param value passed to user currently affects the fw, or if it is going
>> to be applied after fw reboot. Perhaps a simple bool attr would do?
>
>IIUC we're basically talking about user having no information that
>the update is pending? Could this be done by the core? Core can do
>a ->get prior to calling ->set and if the ->set succeeds and
>cmode != runtime record that the update is pending?
>

Could work if on GET driver reads 'current' value from FW, then it should
be simpler if GET != SET then 'pending', one problem though is if SET was
done by external tool or value wasn't applied after reboot, then we loose
that information, but do we care? I think we shouldn't.

>That feels very separate from the series tho, there are 3 permanent
>params in mlx5, already. Is there something that makes this one special?

In mlx5 they all have the same behavior, devlink sets 'next' value, 
devlink reads 'next' value. The only special thing about the new param
is that it has a 'device_default' value and when you read that from 
'next' it will always show 'device_default' as the actual value is only
known at run time ,e.g. 'next boot'.

I think the only valid solution for permanent and drv_init params is to
have 'next' and 'current' values reported by driver on read. 
Or maybe go just with  'set' != 'get' then 'pending' as discussed above ?

