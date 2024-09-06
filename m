Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F9096F8BB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 17:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B1DC40441;
	Fri,  6 Sep 2024 15:55:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dOai6MUgcXW7; Fri,  6 Sep 2024 15:55:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC2E64025D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725638104;
	bh=9gmhx+3YknuSIRL8TWBm0tczYK/bI4fx8rop8t+Isog=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FyjGXVlhgxMXaxyWknHfR8tBFizLEU1e6dOaA6N73NwOB9Z8nIutL0wlXcPoLtaXm
	 ZO6ZJjt25Vl18vz92PI9+mMUcsnRhyJ8/7gCt0hUEezRl/rhYyLZ4mBk5fcRqIcDhd
	 O2Z33dCvTQsLUmJ/I4CF2BeBLIbMB7oTWyvM64pm4dDxWeNb8Ls4fvekyKTcRKwL6k
	 f/dDfXy4J46dqdTSSUZBedmpsjTI1nUtclnGrqxyRqK6NUvN2MtYn+X9Mmza++0RDD
	 EYqvIDxS6yvHxAxuij998A/nPbnmrROHmOIcnpgvRNi6CwW4KZNSSAI1l2LBIf3zgq
	 FEHDk6HjRJ82w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC2E64025D;
	Fri,  6 Sep 2024 15:55:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 582E11BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 15:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4454B40251
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 15:55:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M8BhwvgniqT9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 15:55:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F81B4021C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F81B4021C
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F81B4021C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 15:55:02 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1smbIP-006qHD-FL; Fri, 06 Sep 2024 17:54:49 +0200
Date: Fri, 6 Sep 2024 17:54:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jeff Daly <jeffd@silicom-usa.com>
Message-ID: <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
References: <20240906104145.9587-1-jeffd@silicom-usa.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240906104145.9587-1-jeffd@silicom-usa.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=9gmhx+3YknuSIRL8TWBm0tczYK/bI4fx8rop8t+Isog=; b=d/dX/Yqd0hvLno6IuvSrJq3xLG
 PbkPQAz2jDR0MsAmvM+UHgwGumgp8WU0yfGOJ+1eaXlo02U7z9N2n86a60JsHrRxCEREopRF7hjaB
 zgt77qavOK9oYqjQjAvGWb5O5G77kcRFj/J1uZFc9js/BsCQFSfCZHyVnbKlpZnczrZM=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=d/dX/Yqd
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 06, 2024 at 06:41:45AM -0400, Jeff Daly wrote:
> Resubmit commit 565736048bd5 ("ixgbe: Manual AN-37 for troublesome link
> partners for X550 SFI")
> 
> Some (Juniper MX5) SFP link partners exhibit a disinclination to
> autonegotiate with X550 configured in SFI mode.  This patch enables
> a manual AN-37 restart to work around the problem.
> 
> Resubmitted patch includes a module parameter (default disabled) to
> isolate changes.

Module parameters are not liked in networking code. They are very user
unfriendly, and poorly documented.

Why do you need it? Is this change risky?

	Andrew
