Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED498FF4B3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14FF641686;
	Thu,  6 Jun 2024 18:32:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LHuVn-QqNG5z; Thu,  6 Jun 2024 18:32:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24CBF4164D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717698720;
	bh=KS2oYQ6kEvwe+tStHjauZWJyl0wKHtSJW2cYetOHMQY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TLwyU/XeftgL3Q20lL21QWEk1TD2UY+6XiyUdSL6IyfcS1PtjD+8Kfpp+9Taqt2mB
	 jSQA1jWDbPTEagl+0+EECUYDoO/tq8xSj/z4PnGEZfuTgTfE1FlB2lcP7s4C8CojXo
	 fgQ4kq/qTF4EVkPzDYHBQjieq9DAYgtuPc0eu1NQc1w5QeLZOqk8aUvVIAApsKvtzy
	 LXibK6KmygK7f3T0TBiWS9f3vdqwde5NShmacRGjwzNDzXqhYtdvXQUor/T1g015Xb
	 0H6+udA4Mmpr2MT72Fm5qAEMwbL2kOU5xOiO4bOygihUKE9G/JfeHmMKGO6ki1Ogk1
	 rMvFnBD5haQHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24CBF4164D;
	Thu,  6 Jun 2024 18:32:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 522361BF592
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 18:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 497954249B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 18:31:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aM8pSmC6fG-v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 18:31:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 355C24248F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 355C24248F
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 355C24248F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 18:31:56 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1sFHtn-00H2hc-F7; Thu, 06 Jun 2024 20:31:43 +0200
Date: Thu, 6 Jun 2024 20:31:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <12b1febd-a634-43bb-8edf-79ccb4f9e3aa@lunn.ch>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
 <1dbb8291-9004-4ec2-a01b-9dd5b2a8be39@lunn.ch>
 <c12ffb8e-0606-442b-810a-69bf65624bf9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c12ffb8e-0606-442b-810a-69bf65624bf9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=KS2oYQ6kEvwe+tStHjauZWJyl0wKHtSJW2cYetOHMQY=; b=GluwDzP0zbxIddz8/0rWtWfUnP
 Ln4KiPloTvSPVnN8yiLLtHlYqh8rz0Jk8wsMbDT/9VSmeb4d3lPfYsukLdRZPYCkvXRKB0jEnwcKV
 FwKqjeHY+qO2mKiCRJ9IGOvDwycriNLjaoJdyeIFPSxXEUPBmHctT/baE7rsilrMSIK4=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=GluwDzP0
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: jackie.jone@alliedtelesis.co.nz, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, chris.packham@alliedtelesis.co.nz,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Yea, its extremely easy to break things if you don't know what you're
> doing here. So its more a question of "are we ok exposing yet another
> way root can brick things?"

Many MAC drivers allow it, and we have not had complaints. It is not
really something i'm a fan of, it in theory allows user space drivers
for PHYs, but it is full of race conditions so in practice unlikely to
work reliably.

If you are worried about it causing additional support issues because
it gets abused, you could make it taint the kernel. That makes it
clear all bets are off if used. For the use case presented here, a
tainted kernel does not matter, it for lab testing, not production.

      Andrew

