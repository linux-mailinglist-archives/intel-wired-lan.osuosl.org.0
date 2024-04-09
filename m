Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395ED89DA7C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 15:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9C764152C;
	Tue,  9 Apr 2024 13:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A-9wOc2HknV2; Tue,  9 Apr 2024 13:39:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12A6541547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712669966;
	bh=T/r8BfXohVHFI2G7WWPeP1tiK6eBX+Y2sctROwXYGoY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qbFUa0OroNLOGoD97+bTqEBIM7DFbqK3oqeqcFqyFJmfQUhVSfI3LS+tGn7gNGQE1
	 qePorLFpWlDu9hAwLfRd2MDkBwMVS1PyVSE9dr/WBAEF0LYktiIAc9ShNtv4HBPeqJ
	 yoPOPvQPzQOMVL8eou479gaUycJ55HVOsN64ITqMv4oUJCnhGG6VohoY8Ol8ZE8JFM
	 z6WkMvqnaXwfeyAy6wnhp7dtwMCtSfA2y8LOcMUy89jqW7YbHOWtvx4EzsNDl+TUJo
	 nZMeuTUUti0z+a0nn4/h0AKlF1AwZNZYBdXRiBozQ0+x/HboclHBmFqAsjfDkisFSP
	 ErMMfmCAm0HUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12A6541547;
	Tue,  9 Apr 2024 13:39:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C66931BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1DE5605E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:39:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iKLcQOrfxcTS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 13:39:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E3DA605C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E3DA605C4
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E3DA605C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:39:21 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ruBgs-00CZvJ-KB; Tue, 09 Apr 2024 15:39:10 +0200
Date: Tue, 9 Apr 2024 15:39:10 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <c6258afd-2631-4e5d-ab25-6b2b7e2f4df4@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
 <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
 <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
 <cf30ce2e-ab70-4bbe-82ab-d687c2ea2efc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf30ce2e-ab70-4bbe-82ab-d687c2ea2efc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=T/r8BfXohVHFI2G7WWPeP1tiK6eBX+Y2sctROwXYGoY=; b=ZyYEMOrG0/R+2XPecvJOEkGO6e
 6hcO1kbUwIQX8H0eUIPjS5r69bF2sdEoXOLoM9cm53mb62vjkFAJFrOAvvNwRok/ixsfQHVgTxbts
 xPvnMPenm3v05CArVJMaijZK/yorXMIszUoas7NNGfhdj/SJcRR/SGvNLRiWfbcmI1x8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=ZyYEMOrG
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> This is something my current design supports I think. Using
> ETHTOOL_A_MODULE_MAX_POWER_SET user can get what cage supports
> and change it.
 
> This could be done using ethtool_module_power_mode_policy I think.

All these 'I think' don't give me a warm fuzzy feeling this is a well
thought out and designed uAPI.

I assume you have ethtool patches for your new netlink attributes. So
show us the real usage. Start with an SFP in its default lower power
mode. Show us the commands to display the current status. Allocate it
more power, tell the module it can use more power, and then show us
the status after the change has been made.

Then lower the power to that cage and assign the power to a different
cage.

This is something you can later reuse in the 0/X patch describing the
big picture of what the patchset does, and it will guide others who
want to implement the same API in the Linux SFP driver, or other MAC
drivers.

	Andrew
