Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D16D3ABC9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 15:26:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96568405A5;
	Mon, 19 Jan 2026 14:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lDd36GwikmY7; Mon, 19 Jan 2026 14:26:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12C7F4056B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768832775;
	bh=xfpHbLD0lfcxO5zc/kGX8zLRlFIUbZY41QPpyljPP3c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ayz1m8r07k5VYjDHN0KvakonB4z0M6uSLnP7S8ijqBwYJ+gF2Mf0Qeb57+uVZ9E7m
	 DA4aOZ8Bteo748wUmAapalCbhuGn47FTP+TTJ1uHf83fT1eLPK4/3+fk6O2d/15T/M
	 Dx/gkHy7h685B1jnXtC1RopkMut1vHcJUCeHE1Oa5schbyNpRchsRPiO8ybRw292eH
	 N08PrQZ6ee6t3IBm+U9z736SA98TBhloNahP9m6mzmz5xxyJVgKvxHM5TaZWgoVzPq
	 MvhzGT/jI7Fo5gWtZCnLyLWmMS5iC9FwR1iEGOpnWCbmwVPOMgKkBKE4t7rJFoqGb4
	 00EYBoZcqc98g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12C7F4056B;
	Mon, 19 Jan 2026 14:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D7BA2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 14:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E06A61162
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 14:26:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0V4CT-IQW0_h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 14:26:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0326861161
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0326861161
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0326861161
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 14:26:10 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vhqCk-003VYy-DY; Mon, 19 Jan 2026 15:26:06 +0100
Date: Mon, 19 Jan 2026 15:26:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <4263db7a-fe7d-4bd7-a33b-54fd0a8d570d@lunn.ch>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
 <8f976990-1087-4ba0-a06d-c0538c39d2a3@lunn.ch>
 <PH0PR11MB59027E7BBF8EF6121DF24DDCF08EA@PH0PR11MB5902.namprd11.prod.outlook.com>
 <cb9f2295-0f1d-48a3-ab53-3d51c2930f94@lunn.ch>
 <MW4PR11MB589023306C8055BD6A937557F088A@MW4PR11MB5890.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB589023306C8055BD6A937557F088A@MW4PR11MB5890.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=xfpHbLD0lfcxO5zc/kGX8zLRlFIUbZY41QPpyljPP3c=; b=YwpUWWPy5k5IazfLWBKi3MdjBL
 Bh9ICL8flh3YGaQ67Xl/BA1tcXdi3TrnUcP5WFxBDED1X73MC77SKcalxBfbBWwDgNKYMAeJZ/BS0
 PGAHEQmoXlpZXjZd01JVse+RPvvOE9ziGzl3ixxCuV3rbMMK0DRCeeiwCqshvtOMPUb4=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=YwpUWWPy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/7] ixgbe: replace EEE
 enable flag with state enum
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

> i've checked the scenario and, indeed, EEE gets reenabled once link
> conditions are meet again even without driver intervention.
> Thanks for pointing me that.
> In that case i will remove link enablement/disablement on driver side,
> but i am wondering whether leaving logging trace on link condition
> change (EEE gets disabled due to unsupported link conditions) would be
> beneficial
> WDUT?
> then keeping tristate EEE would be required i believe

The current phylib/phylink code does not log this. There is also not
much the user can do about it, if EEE is disabled, other than throw
the ixgbe out and get a card which does implement EEE at lower speeds.

    Andrew
