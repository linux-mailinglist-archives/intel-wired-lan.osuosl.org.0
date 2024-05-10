Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7D18C24ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 14:32:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 890E0423F4;
	Fri, 10 May 2024 12:32:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rOEfr7-JhzE2; Fri, 10 May 2024 12:32:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B959423EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715344359;
	bh=kYvLhiz8ZLdgpAJEUaG2GVgbiir4S057iWOlDZef/0A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H2AvPZ8SVL2XVSv62HH7w9rcEPIzU3L5DNko2C+qCzaXz0v7avR6tvEFFdCoZmGbu
	 XZeFuaSwJifCWGLC4gnbUQO5/pwEyT69kkDO0bp4NsVGdCx/m7as8e8T8GpJtwoBux
	 j0r3CN/idyyCGCWMYuPUzIIplvJ51N4M4BG0vwWfsLfdUQnrz5pyYB+2+TX7lJxtZE
	 wMQhMufnBdm9CFAt+mp/cicI9nHxd2MkZCnqIHAXmdSi6q6xW7wYqBlgmtFbHefFBk
	 CxI1OsIZV53t8LBBKLDgnFSLG/PAjXbIulS7EJW4fa7omhb1KhxIXzoHtwSqUNgNh4
	 2a3lbIh7LqDjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B959423EB;
	Fri, 10 May 2024 12:32:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2411BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 351B9615A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:32:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F9nvECSRKB-m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 12:32:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 396396159E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 396396159E
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 396396159E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:32:34 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s5PQE-00F8RW-PQ; Fri, 10 May 2024 14:32:22 +0200
Date: Fri, 10 May 2024 14:32:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <5669c185-db96-4ac2-81d5-2198060ae77d@lunn.ch>
References: <20240503101836.32755-1-en-wei.wu@canonical.com>
 <83a2c15e-12ef-4a33-a1f1-8801acb78724@lunn.ch>
 <514e990b-50c6-419b-96f2-09c3d04a2fda@intel.com>
 <334396b5-0acc-43f7-b046-30bcdab1b6fb@intel.com>
 <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
 <b288926e-f9d6-48d5-9851-078a6c9912bf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b288926e-f9d6-48d5-9851-078a6c9912bf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=kYvLhiz8ZLdgpAJEUaG2GVgbiir4S057iWOlDZef/0A=; b=l8giWwHL5386gqDRGg9X+/i37t
 y1gLXjhj29wp1iMLa1uTcOfyWlUaZmX1DYOACtP7FTH8v0FJHWOadnRlrEnJIk28bhkz39vC3DjXC
 QVmx0mej7C9WEUlEiGWuptRsVAaB0CHhLA0CNl4un2IEJI54qYFriO0XRqQZQu0ObbM4=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=l8giWwHL
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Cc: pabeni@redhat.com, "naamax.meir" <naamax.meir@linux.intel.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, Ricky Wu <en-wei.wu@canonical.com>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, kuba@kernel.org, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > It would be interesting to see what the link partner sees. What does
> > it think the I219-LM is advertising? Is it advertising 1000BaseT_Half?
> 
> i219 parts come with LSI PHY. 1000BASE-T half-duplex is not supported.
> 1000BASET half-duplex not advertised in IEEE 1000BASE-T Control Register 9.

That is the theory. But in practice? What does the link partner really
see? I've come across systems which get advertisement wrong. However,
in that case, i suspect it is the software above the PHY, not the PHY
itself which was wrong.

	Andrew
