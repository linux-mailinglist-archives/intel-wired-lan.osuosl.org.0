Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF40AA5DD53
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:06:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C85481F0B;
	Wed, 12 Mar 2025 13:06:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWTO7CtQInbj; Wed, 12 Mar 2025 13:06:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9455781F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741784773;
	bh=KO4VVVT/RtKl517J0cn8cyrIOvSu1StRHJFRtRyxnEE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6DI724nwdr5IjhNcw268QOnwMySSj9VOFZTGA/CYthFQwzr3PAQMcvrC3+WPhy7aL
	 6pu0XnQ58SqgYD+e2BCi+FHU/a7LmnnTCB2bY7emN4E7JOvTW8jUV0K32CW578sRX3
	 uC//w9GCW3F1TYBnwh0wIgl5KR+HuH1CqrwXw5CurzBggYv+AUMEvSs9zbkWWplh0G
	 N27WSs5SXiTdiK2xl1tSUIid1FaoDIwrWIM5TJbe3NTfLnzlw2izzOEqVRDcVAarJd
	 A5e78w8MR7UPphDqnjFUUBTQ6+vKougEYwRhr6nwXA73xyYEyJMXHzbBSELrW1JpJj
	 0laXTYBR89fNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9455781F0C;
	Wed, 12 Mar 2025 13:06:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A2B791C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A13540FDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:06:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A47LyP8UeB3q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:06:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0AA59403C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AA59403C2
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AA59403C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:06:07 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tsLmW-004fSw-IR; Wed, 12 Mar 2025 14:05:56 +0100
Date: Wed, 12 Mar 2025 14:05:56 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <eae8e09c-f571-4016-b11d-88611a2b368f@lunn.ch>
References: <20250312032251.2259794-1-hamish.martin@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312032251.2259794-1-hamish.martin@alliedtelesis.co.nz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=KO4VVVT/RtKl517J0cn8cyrIOvSu1StRHJFRtRyxnEE=; b=sPrSTwdvJh0NGBdXclgJRY+ZEz
 LfRKtu4lMUIMPS3uY+4wLpZ6ldyFO7mFjaIKpFQS4XiQCQFENe+s8UkeGV73FTQ6LYHRWUW3kcoqi
 qM/UStunnWoenvQv4eknDiXEk8QriN0HWo4T1aa8h4o8APKSfuIwOHqZoOwI7K8/BBp8=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=sPrSTwdv
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Prevent IPCFGN write
 resetting autoneg advertisement register
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

On Wed, Mar 12, 2025 at 04:22:50PM +1300, Hamish Martin wrote:
> An issue is observed on the i210 when autonegotiation advertisement is set
> to a specific subset of the supported speeds but the requested settings
> are not correctly set in the Copper Auto-Negotiation Advertisement Register
> (Page 0, Register 4).
> Initially, the advertisement register is correctly set by the driver code
> (in igb_phy_setup_autoneg()) but this register's contents are modified as a
> result of a later write to the IPCNFG register in igb_set_eee_i350(). It is
> unclear what the mechanism is for the write of the IPCNFG register to lead
> to the change in the autoneg advertisement register.
> The issue can be observed by, for example, restricting the advertised speed
> to just 10MFull. The expected result would be that the link would come up
> at 10MFull, but actually the phy ends up advertising a full suite of speeds
> and the link will come up at 100MFull.
> 
> The problem is avoided by ensuring that the write to the IPCNFG register
> occurs before the write to the autoneg advertisement register.

When you set the advertisement for only 10BaseT Full, what EEE
settings are applied? It could be that calling igb_set_eee_i350() to
advertise EEE for 100BaseT Full and 1000BaseT Full, while only
advertising link mode 10BaseT causes the change to the autoneg
register.

Please try only advertising EEE modes which fit with the basic link
mode advertising.

     Andrew
