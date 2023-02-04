Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F368A7BC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 03:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A36C560B3B;
	Sat,  4 Feb 2023 02:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A36C560B3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675476089;
	bh=nUEwTBsgbCLPXKXDW2AJrvAtiHU/pbOYJONC5fE2Ljs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VHYX6LFqMeg1QvPf3tTTIucHfTLngaF5d1/ZLqibDMroAEVlfUgD3daHrKW5COBr9
	 U1gLcTYHJaxUDEOkAs/fwW0hl3G848+hzKO3KthWNb2FQvNcP72g8FoP/6AKEzBmKF
	 8P5Fo92o8VwKkPZxzq66PJhRlVFp1uDrhmO/f+eRre9AOv8YuAxN8MBUWNEvp/5VPb
	 UPWk7Tw5lwOojAtbJdBT7CVkif26ovGxvz2OSfjHvb0SWrvAON9Be1GzE4djul/y/0
	 lxeN1Z9Xlkyxi30QdmHktJ/UTmnUikno1Z8eqrP162ydjogfddyCExUZK6gCg0n4Fx
	 9g1j9zSyJmR/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMp3bl8Rxlv7; Sat,  4 Feb 2023 02:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 431AB60B1A;
	Sat,  4 Feb 2023 02:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 431AB60B1A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D81EF1BF2EF
 for <intel-wired-lan@osuosl.org>; Sat,  4 Feb 2023 02:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B054A81E96
 for <intel-wired-lan@osuosl.org>; Sat,  4 Feb 2023 02:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B054A81E96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6b-74pivgKf for <intel-wired-lan@osuosl.org>;
 Sat,  4 Feb 2023 02:01:21 +0000 (UTC)
X-Greylist: delayed 00:09:57 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B13C581E8F
Received: from mail.wantstofly.org (hmm.wantstofly.org [213.239.204.108])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B13C581E8F
 for <intel-wired-lan@osuosl.org>; Sat,  4 Feb 2023 02:01:21 +0000 (UTC)
Received: by mail.wantstofly.org (Postfix, from userid 1000)
 id 5BD2E7F54B; Sat,  4 Feb 2023 03:51:20 +0200 (EET)
Date: Sat, 4 Feb 2023 03:51:20 +0200
From: Lennert Buytenhek <buytenh@wantstofly.org>
To: intel-wired-lan@osuosl.org
Message-ID: <Y926GPvm0f544ogG@wantstofly.org>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] igc driver doesn't power down the PHY when link
 is brought down
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

When I run 'ip link set FOO down' on an I226 adapter, the link partner
keeps seeing link up, which is not what I would expect.  The igc driver
contains this code snippet that references this behavior (igc_phy.c):

> /**
>  * igc_power_down_phy_copper - Power down copper PHY
>  * @hw: pointer to the HW structure
>  *
>  * Power down PHY to save power when interface is down and wake on lan
>  * is not enabled.
>  */
> void igc_power_down_phy_copper(struct igc_hw *hw)
> {
>         u16 mii_reg = 0;
> 
>         /* The PHY will retain its settings across a power down/up cycle */
>         hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
>         mii_reg |= MII_CR_POWER_DOWN;
> 
>         /* Temporary workaround - should be removed when PHY will implement
>          * IEEE registers as properly
>          */
>         /* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);*/
>         usleep_range(1000, 2000);
> }

I tried uncommenting the phy write and that seems to work fine, and the
link partner now sees link down when I bring down the interface.

Does anyone know what this comment refers to, and which revisions of the
I225/I226 this applies to?  I looked at the git history of this code and
it seems that it has been this way since the code was merged.  Is it safe
for me to uncomment this code for I226 adapters in my kernel tree?


Thanks,
Lennert
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
