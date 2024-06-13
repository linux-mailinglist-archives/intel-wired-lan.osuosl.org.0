Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0126C907A00
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 19:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AF886076F;
	Thu, 13 Jun 2024 17:38:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sTyMo4UsU5Iy; Thu, 13 Jun 2024 17:38:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13AE26105A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718300317;
	bh=LIocziUKFcmXNMxlh280ONDO1OMl2ptJuemZ88v6b5M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3wtTvCKE1GVlr7TPv8fV6HwLvs8Sq7KF/IHwOe24WNHsYmNJ0eJ1ficQAfiIBB3dO
	 0txr0AgeANW5K76AZgSeyk2PJD5C4eSTrqNqnAukU6f4T8jgdhHif8q5lZ2WnfbqjD
	 IaT1QL7P3MyZ1HO5Nun2Ize+asvsAKQe6OCvQfOoDpDronZCVFil7OBtXinMKIu7A6
	 +aVEYHlUzm/jDqeVEyJW24yfD6vs4fwdB0l55L5ph8fBWgIyTCbfuW0qVXdYCc/Xus
	 G14VuCBlRHuXLNHcamF30a1F9w5yL50yxcyEUV/fASNQ8u/JtVk3mzySaX2yWk+xXK
	 bqNoun0kAxlfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13AE26105A;
	Thu, 13 Jun 2024 17:38:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F3771BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 17:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C42782008
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 17:38:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8734XRepkD2z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 17:38:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BC1DC81264
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC1DC81264
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC1DC81264
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 17:38:31 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 9FD2060079;
 Thu, 13 Jun 2024 17:38:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by x201s (Postfix) with ESMTP id 2C001201EC1;
 Thu, 13 Jun 2024 17:38:18 +0000 (UTC)
Message-ID: <711d788e-14e4-41fe-99ea-4c50be008018@fiberby.net>
Date: Thu, 13 Jun 2024 17:38:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240609173358.193178-1-ast@fiberby.net>
 <20240612180419.391f584d@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Asbj=C3=B8rn_Sloth_T=C3=B8nnesen?= <ast@fiberby.net>
In-Reply-To: <20240612180419.391f584d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1718300308;
 bh=iHrGBdCbZI2bStSbB8zQUHcxeTKog1kQOycxa6OEd14=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=NtzwmtRzXbCIGztjkGdDShXjrZTC/Ly0c8lotFu2MjMLQqolth5maGlsYhHgYY6Cm
 i/xFL1Dx5aUezuTk7dASqlDjEf+QuLx8RHz1DGU3LzqAkmtctrSmkPBJrxr41jzKKp
 lbX3DaolNUJ/+koLsSqUKYFZA5IQftzXkTt6KJWrkirXqQezSnRdocS846urwocawl
 9ogJKPsL20k6HxWW6QLZUOEbfjkAOhsLctQWpcxozb3B/ymKIz/pXu8j3ta+wUCJNg
 MtlYOpvnRPM8Wi+lPcdl7SYcbN2EEvYpjTzWIGe4UPjjQRLx33lmAkB0kfN3KeQa19
 MCodr9xvFjGiw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=NtzwmtRz
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] net: flower: validate
 encapsulation control flags
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
Cc: Louis Peens <louis.peens@corigine.com>,
 Davide Caratti <dcaratti@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 linux-net-drivers@amd.com, netdev@vger.kernel.org, oss-drivers@corigine.com,
 Tariq Toukan <tariqt@nvidia.com>, linux-kernel@vger.kernel.org,
 Edward Cree <ecree.xilinx@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, i.maximets@ovn.org,
 intel-wired-lan@lists.osuosl.org, Martin Habets <habetsm.xilinx@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

On 6/13/24 1:04 AM, Jakub Kicinski wrote:
> On Sun,  9 Jun 2024 17:33:50 +0000 Asbjørn Sloth Tønnesen wrote:
>> Now that all drivers properly rejects unsupported flower control flags
>> used with FLOW_DISSECTOR_KEY_CONTROL, then time has come to add similar
>> checks to the drivers supporting FLOW_DISSECTOR_KEY_ENC_CONTROL.
> 
> Thanks for doing this work!

Thank you, for maintaining the tree!

> Do you have any more of such series left?

Not at the moment, I only stumbled upon this, because I read the code
with an eye on adding a new IS_JUMBO_FRAME flag (patches for which are
almost ready).

Once this[1] currently RFC patch goes in, I might try to move all
control flags in under FLOW_DIS_F_*, to get rid of the then
FLOW_DIS_(IS_FRAGMENT|FIRST_FRAG|ENCAPSULATION|F_*).

[1] [RFC PATCH net-next 1/9] net/sched: flower: define new tunnel flags
https://lore.kernel.org/netdev/20240611235355.177667-2-ast@fiberby.net/

> Could we perhaps consider
> recording the driver support somewhere in struct net_device and do
> the rejecting in the core?

Sure, it could work for the control flags, and used_keys validation,
but I am not sure if it is worth it, as most of the validation is
very specific to the limitations of the different hardware. An easy
first step in that direction would be to move the used_keys checks
behind a helper, and possibly storing used_keys in struct net_device.

> That's much easier to extend when adding
> new flags than updating all the drivers.

That's how it is now, with the new helpers, as all flags are
unsupported, unless the driver specifically supports it.

Any new flag only needs to be added to the core, and drivers only needs
to be updated when they implement offloading support for a flag.

> This series I think may not be a great first candidate as IIUC all
> drivers would reject so the flag would be half-dead...

Correct. I don't know if there is any hardware support planned for the
tunnel-related encapsulation control flags.

-- 
Best regards
Asbjørn Sloth Tønnesen
Network Engineer
Fiberby - AS42541
