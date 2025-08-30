Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9414B3CF05
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 21:27:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E241C408BA;
	Sat, 30 Aug 2025 19:27:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id otMgTnTK5ZE6; Sat, 30 Aug 2025 19:27:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CF89408BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756582062;
	bh=Uvt2mpGdym0IZb0wC2fj1aXTNIQyGOS/5/SVOX0Crmg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jykrs+nm4hlkyZDogA03ykmSY7nEDM2DvXEs3/8UawMcZngG9hYzrFQ1dxdQH+fcy
	 NRrevFqjuHiHQFJF0VRed1rD0iV3T5bxzmEIrMOYZa/5Ld4TK/GI1IaQEOdlMdKg9v
	 9HxOGI6qKB39XEscHCI8/1GUW668bgluqaJ/2DzFyNgrsYeOByEAPBP7kNupyfAciG
	 wcxrV7srbxVIeqIOZSt5yTOdwWPSXiHn5/Ml3ulmqFuLYVtGnQbHCIiRUA88Afj3Mi
	 KZ9X3YClXkTevyjIlB4huwEr52QqwswDV8jV9NsNB4JUS8Qgg1x5W0x6wdRyKRfikA
	 oln7dKQsL/ytQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CF89408BB;
	Sat, 30 Aug 2025 19:27:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 868BFFA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 19:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D2FD40244
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 19:27:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4oHg2wZ4Medp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Aug 2025 19:27:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83C0540201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83C0540201
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83C0540201
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 19:27:39 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1usREb-006bFV-PD; Sat, 30 Aug 2025 21:27:33 +0200
Date: Sat, 30 Aug 2025 21:27:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, kohei.enju@gmail.com
Message-ID: <7607d394-9659-4bb0-af14-8a3633cfc89c@lunn.ch>
References: <20250830170656.61496-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250830170656.61496-1-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Uvt2mpGdym0IZb0wC2fj1aXTNIQyGOS/5/SVOX0Crmg=; b=FAijQTyNJ0gvNeBAA8ihuJuDSN
 UNazGSj9A3BGhfC9PhwSz5NzHvR4XjXU0PoJVoSB27DPbvU0sBGn1yRbok8l2XE564poqKv4Fj217
 RsYLVA+vvOlrhh5cbgQzUa500CnnhMLMKMe1hSxhCzsX0rlHFmF2t9LY0Jx0Uyod3pc4=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=FAijQTyN
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
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

On Sun, Aug 31, 2025 at 02:06:19AM +0900, Kohei Enju wrote:
> The current implementation of igc driver doesn't power up PHY before
> link test in igc_ethtool_diag_test(), causing the link test to always
> report FAIL when admin state is down and PHY is consequently powered
> down.
> 
> To test the link state regardless of admin state, let's power up PHY in
> case of PHY down before link test.

Maybe you should power the PHY down again after the test?

Alternatively, just return -ENOTDOWN is the network is admin down.

	Andrew
