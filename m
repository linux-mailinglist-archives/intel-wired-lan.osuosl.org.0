Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F23A4828C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 16:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1C9B40D3D;
	Thu, 27 Feb 2025 15:11:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T3r7zSu_xUfH; Thu, 27 Feb 2025 15:11:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A313840DEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740669081;
	bh=mBJu1LUBZD7huyP2Fqh3L6NWg2IhYufGL+1Vn+2FDk4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FuUtTkBcPP9+OGVttM/W7s8bMMSnXyJDYOhhOUKXUk1Jd/uWm41A00P0IPb+XAB7e
	 hoGHUkV9Y6pbP/r7EFaYmhhWwlfdFzQX26dAAZqK/xsjpTO6iKi/i48VmNxhRNhghf
	 VAJqneZTgdzE972k79cIokn+XLPKjGyygpzHPsMNb3th0Lh+csqqK8IJ1+oiguskzt
	 C1utrSQvjFzrx9TulED8shck/jKG5/Twp2oJXc1POygtQckxFgtt/IZBuzUNo97iy9
	 qh1b5icCcpZRhvCrStMGGZ7RGse7queDUSnJ1qiiOHO/HOzXW1oy2W0wLMR4WTLnoB
	 L+H2ZOsbgfVgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A313840DEE;
	Thu, 27 Feb 2025 15:11:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B2B768
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 15:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 348D5605A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 15:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iqaBty3l3amR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 15:11:19 +0000 (UTC)
X-Greylist: delayed 314 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Feb 2025 15:11:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E0AAF6112E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0AAF6112E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.155;
 helo=fhigh-a4-smtp.messagingengine.com;
 envelope-from=mpearson-lenovo@squebb.ca; receiver=<UNKNOWN> 
Received: from fhigh-a4-smtp.messagingengine.com
 (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0AAF6112E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 15:11:18 +0000 (UTC)
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id DF8E11140B90;
 Thu, 27 Feb 2025 10:06:02 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-04.internal (MEProxy); Thu, 27 Feb 2025 10:06:02 -0500
X-ME-Sender: <xms:Wn_AZx5xjrGS-Pyj_DdZ4huDDCN0ciJlj4rcJXU0UUDHxEPt52Ijrw>
 <xme:Wn_AZ-455SZniSlolirpV4t1_Wy88EaC46caDzPl_DJOtaSTQ58YxwMdRoI1qp1K6
 5LtZ2GtouLf6nLSvDY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdekjeejjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfeuvdehteeghedt
 hedtveehuddvjeejgffgieejvdegkefhfeelheekhedvffehnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddupdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopegurghvvghmsegurghvvghmlhhofhhtrdhnvghtpdhrtghpthht
 ohepvgguuhhmrgiivghtsehgohhoghhlvgdrtghomhdprhgtphhtthhopegrnhhthhhonh
 ihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprhiivghmhihs
 lhgrfidrkhhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopehkuhgsrgeskh
 gvrhhnvghlrdhorhhgpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhi
 shhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtoheprghnughrvgifodhnvghtuggvvh
 eslhhunhhnrdgthhdprhgtphhtthhopegrnhgurhgvfieslhhunhhnrdgthhdprhgtphht
 thhopehprggsvghnihesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:Wn_AZ4fWbUQBZ8lV40EH9Gxs753wjQ1Xguvqbbg-2LHGtZW53_My4A>
 <xmx:Wn_AZ6IN2ewPNHK4QfsbqiPc_DQuKCPFGBJy50WPtE96F-W2_S69uQ>
 <xmx:Wn_AZ1IeRiRkBG7KrUGTBdzzstEMpDHnmqQ2R12fB4gd5gL354FpMw>
 <xmx:Wn_AZzwxlwHNgv9SlJYs-9moKXo_z3nxzU8WgNmuVHVdA6e8ntQRkQ>
 <xmx:Wn_AZyDpmM_1D89-dk9jtROtXpAUY-bH0vuomWAWb6YCMIgDk4fNRspZ>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 088FB3C0066; Thu, 27 Feb 2025 10:06:02 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Thu, 27 Feb 2025 10:05:41 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andrew Lunn" <andrew@lunn.ch>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
In-Reply-To: <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1740668762;
 x=1740755162; bh=mBJu1LUBZD7huyP2Fqh3L6NWg2IhYufGL+1Vn+2FDk4=; b=
 UKh8opMsCwvAVZdE00m1mCO5tFu68JmUTlO0gTbA33y00UtodSnMMEt7WGwJ44O4
 SR+kFARoU8QFWeg8YXSY2/x9udGOXve9NsZUN5MQmL/Wk+mCbho8Ssw2WeIYTgSQ
 pAgcw4903ZTkDaI9883t8Isgp1YLIMQH4oRvRSG2lsnBs+K6a5Ur1A7ODJlnLeUK
 I/ovzifLAo5Gq/0iKHBwPuSEh5Jv+TQmKGGTf4EG7kM6mWGHLDZxe/UeMohwlvoP
 TrFEp6Jgk0aQWDg8mZP1vU+lQFg6y29KhZFYtr5xMXi/EMnx2xaASfwfw17wv6NT
 xABk6kXkJzIjkFQcKNC5Jw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1740668762; x=
 1740755162; bh=mBJu1LUBZD7huyP2Fqh3L6NWg2IhYufGL+1Vn+2FDk4=; b=I
 KGJDuELaDLLWtOxASLb+GUKGdORsAJsgXY52yQP0rK4INpJaj2/uMjLp3daRJLgT
 BM/JY+yKKYT9Bb72pRHzWT50f6Za06DrnIRrnYPkjUJfEWT5HTtFTdIW7n945EE6
 xaz3RHkNZenXRy3XlWedPmjwQZX8tcVhxPdRsXQ1jOfcNxg+weq8lJkDFX7yRB/k
 E096z1Cv6i3zHICJFIFJyuLYfR8UecxFczEOfG7OeMrAB5c/btvYM0QXEgklmzDR
 rhs80k3bse5SuoodFrLS2aEkUSORA5YolqD0GZhl5B4C3DFNjOHFTYf95A2BpgAI
 96BvzMzf5pTxyJXnhFyXg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=squebb.ca
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=squebb.ca header.i=@squebb.ca
 header.a=rsa-sha256 header.s=fm2 header.b=UKh8opMs; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=IKGJDuEL
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option
 for false IRP events
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

Hi Andrew,

On Wed, Feb 26, 2025, at 5:52 PM, Andrew Lunn wrote:
> On Wed, Feb 26, 2025 at 02:44:12PM -0500, Mark Pearson wrote:
>> Issue is seen on some Lenovo desktop workstations where there
>> is a false IRP event which triggers a link flap.
>> Condition is rare and only seen on networks where link speed
>> may differ along the path between nodes (e.g 10M/100M)
>> 
>> Intel are not able to determine root cause but provided a
>> workaround that does fix the issue. Tested extensively at Lenovo.
>> 
>> Adding a module option to enable this workaround for users
>> who are impacted by this issue.
>
> Why is a module option needed? Does the workaround itself introduce
> issues? Please describe those issues?
>
> In general, module options are not liked. So please include in the
> commit message why a module option is the only option.
> 

Understood. 

The reason for the module option is I'm playing it safe, as Intel couldn't determine root cause.
The aim of the patch is to keep the effect to a minimum whilst allowing users who are impacted to turn on the workaround, if they are encountering the issue.

Issue details:
We have seen the issue when running high level traffic on a network involving at least two nodes and also having two different network speeds are need. For example:
[Lenovo WS] <---1G link---> Network switch <---100M link--->[traffic source]
The link flap can take a day or two to reproduce - it's rare.

We worked for a long time with the Intel networking team to try and root cause the issue but unfortunately, despite being able to reproduce the issue in their lab, they decided to not pursue the investigation. They suggested the register read as a workaround and we confirmed it fixes the problem (setup ran for weeks without issue - we haven't seen any side issues). Unfortunately nobody can explain why the fix works.

I don't think the workaround should be implemented as a general case without support from Intel. 
I considered a DMI quirk, but without root cause I do worry about unknown side effects.
There is also the possibility of the issue showing up on other platforms we don't know of yet - and I wanted a way to be able to easily enable it if needed (e.g be able to tell a customer - try enabling this and see if it fixes it).

A module option seemed like a good compromise, but I'm happy to consider alternatives if there are any recommendations.

>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> ---
>>  drivers/net/ethernet/intel/e1000e/netdev.c | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 286155efcedf..06774fb4b2dd 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -37,6 +37,10 @@ static int debug = -1;
>>  module_param(debug, int, 0);
>>  MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
>>  
>> +static int false_irp_workaround;
>> +module_param(false_irp_workaround, int, 0);
>> +MODULE_PARM_DESC(false_irp_workaround, "Enable workaround for rare false IRP event causing link flap");
>> +
>>  static const struct e1000_info *e1000_info_tbl[] = {
>>  	[board_82571]		= &e1000_82571_info,
>>  	[board_82572]		= &e1000_82572_info,
>> @@ -1757,6 +1761,21 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
>>  	/* read ICR disables interrupts using IAM */
>>  	if (icr & E1000_ICR_LSC) {
>>  		hw->mac.get_link_status = true;
>> +
>> +		/*
>> +		 * False IRP workaround
>> +		 * Issue seen on Lenovo P5 and P7 workstations where if there
>> +		 * are different link speeds in the network a false IRP event
>> +		 * is received, leading to a link flap.
>> +		 * Intel unable to determine root cause. This read prevents
>> +		 * the issue occurring
>> +		 */
>> +		if (false_irp_workaround) {
>> +			u16 phy_data;
>> +
>> +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
>
> Please add some #define for these magic numbers, so we have some idea
> what PHY register you are actually reading. That in itself might help
> explain how the workaround actually works.
>

I don't know what this register does I'm afraid - that's Intel knowledge and has not been shared.

This approach, with magic numbers, is used all over the place in the driver and related modules, presumably contributed previously by Intel engineers. Can I push back on this request with a note that Intel would need to provide the register definitions for their components first.

Thanks for the review. I'll give it a couple of days to see if any other feedback, and push a v2 with updated commit description.

Mark
