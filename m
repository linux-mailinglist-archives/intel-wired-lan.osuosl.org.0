Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E40108BD910
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 03:39:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D7164078F;
	Tue,  7 May 2024 01:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a5L3tH61W-n3; Tue,  7 May 2024 01:39:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 767BA40505
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715045975;
	bh=FXNp/q3EFc3VE1kfKaNpKliwa/x0VAgfl7uuP2pqXyQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZSK6brmxzTUxvr4npAKTbNKBTFFNLcNGRQE5B3LaOtIgECUzDt1cJEax7Wh3UZms
	 1KzOeCEsS2+0SShcqW/jwLaCEJMJqQ9owOxqrKhpH4jgoaUdFeRme28Elt3q9GB5zJ
	 7ZWI65QEPf1MUiQgMXy/LVvjpOA5qcfrMB11gIhvtVSk6A3EVh3P6Xa9bYXiNQc1NB
	 feKnULpaK5SKnNzQbh2MgPPIGDrdJ6N4bGaCUEVjkk2F82LN28lBKFf56VeCRH1+DD
	 LzoEAfz4QKryQiQJz5N5/9AGEEA/IzUd8uMHLFA/AO+Z3nuwZ1L1NtlcCGlr2Fnbym
	 vCHMbyyWdjhZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 767BA40505;
	Tue,  7 May 2024 01:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEF121BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 01:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3F18813CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 01:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SU8MV0nJ34en for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 01:39:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 75C04813C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75C04813C3
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75C04813C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 01:39:30 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s49nd-00EoM8-2p; Tue, 07 May 2024 03:39:21 +0200
Date: Tue, 7 May 2024 03:39:21 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Ricky Wu <en-wei.wu@canonical.com>
Message-ID: <f47e0bb6-fb3f-4d0e-923a-cdb5469b6cbe@lunn.ch>
References: <20240502091215.13068-1-en-wei.wu@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240502091215.13068-1-en-wei.wu@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=FXNp/q3EFc3VE1kfKaNpKliwa/x0VAgfl7uuP2pqXyQ=; b=LSCcqLyL687THwltEsK2assb/C
 3b7ONr5S/NsGuqh95g8ETyeP8w5OHcpqHaLc0f2gSm96GX23H4LOiSdNTsy6ncwZBxO9IgDWduXRi
 lTK3xu1MszAdGGQ3vtJ9d79ef6EE0jwM9E5+NQvD9ImJeGApkoQnF+02/XeRajB/S1RA=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=LSCcqLyL
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
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
Cc: jesse.brandeburg@intel.co, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 02, 2024 at 05:12:15PM +0800, Ricky Wu wrote:
> As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
> some e1000e NIC reports link up -> link down -> link up when hog-plugging
> the Ethernet cable.
> 
> The problem is because the unstable behavior of Link Status bit in
> PHY Status Register of some e1000e NIC.

Why PHY is this? It might be the PHY manufacture has an errata, since
this is probably not the MAC causing the problem, but the PHY itself.

	Andrew
