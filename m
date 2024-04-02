Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB0B895798
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 16:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3B6C4084B;
	Tue,  2 Apr 2024 14:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RUKS7glJSuj9; Tue,  2 Apr 2024 14:57:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11C164083F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712069853;
	bh=0sM+PF1faer+1R7DFgq8gLZEds5mGKsgjskx6cXrKUI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=42GzZ1CONqzIZx1Tra6DfajQh6vFWm7tq8PLakCHbYeO1u6qduFhIFv0XF8ftbhYg
	 m1X3qA9AVtZhGO7C1MDst+Zwk5fgKtrUrNmjfhXwfgKQTfq5qnJ2/ukKnoJ51kqhkg
	 RuKzgHn/7/VaZPa6rETplsOF4yWPPg+YCDSr0OT1oFztiPNzmBgyhHcZ1l59Na4H17
	 KO5pRNVbT6dmlY0/0tnbEGYvRGHk/DqD4vTTpV78tqlbPlWGShFnw7MYvu41v50Jjf
	 6lfHe1HKema4IQHduDaosOha1SMy3uMaIvZJ1Efiir81kgD2zneY9MbsG8BEkehHC3
	 Bp5jLib1z+GMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11C164083F;
	Tue,  2 Apr 2024 14:57:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDBB91BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:57:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B02F240AEC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:57:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QiX2bjIchUWn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 14:57:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 074944094F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 074944094F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 074944094F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:57:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3F53BCE1B4A;
 Tue,  2 Apr 2024 14:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07E04C433F1;
 Tue,  2 Apr 2024 14:57:24 +0000 (UTC)
Date: Tue, 2 Apr 2024 07:57:24 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240402075724.04e1a831@kernel.org>
In-Reply-To: <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712069845;
 bh=jH8W3rNaCzzyywh+KEmos38PBmWwa8tmyPdVUI7pHTg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VAZsLfKdeRqVSfCsOyhS/9qr9mFIW+YK/4hwIgPDpRLBCjR9D2aYf+VftQRzZF7qw
 /GQlUzpMBWKtcDTXWotimx8ge8ljLv7lROZ+LzhumLswZqopzXRqC+AE8Yrk+khs1D
 /V/6uYBqlZgJsRHEZ5X0fR3oJlsb1R4Z6mTxPtQPxFoN5/xYQ4RxBuXMlJeTBT+gjA
 1vwXH9K38fceIWvgup0XPAmUUCpgFVZu1fqg7JC261ftnHgoRAeqPr/yoUaHUPELyF
 CO8rBZTvrM8Cz14fSlLNRviNkl7Mfa5aEXzwCi1PpL5BPfbT7v9BB/yuR7MsOJW2EP
 iHwyaUkvhqw9w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VAZsLfKd
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
Cc: Andrew Lunn <andrew@lunn.ch>, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2 Apr 2024 16:46:54 +0200 Andrew Lunn wrote:
> Looking at
> https://www.optcore.net/wp-content/uploads/2017/04/QSFP-MSA.pdf table
> 7 it indicates different power budget classifications. Power level 1
> is a Maximum power of 1.5W. So does your parameter represent this?  It
> is the minimum maximum power? And your other parameter is the maximum
> maximum power?
> 
> I agree with Jakub here, there needs to be documentation added
> explaining in detail what these parameters mean, and ideally,
> references to the specification.
> 
> Does
> 
> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> 
> actually talk to the SFP module and tell it the maximum power it can
> consume. So in this case, it is not the cage, but the module?
> 
> Or is it talking to some entity which is managing the overall power
> consumption of a number of cages, and asking it to allocate a maximum
> of 4W to this cage. It might return an error message saying there is
> no power budget left?
> 
> Or is it doing both?
> 
> Sorry to be picky, but at some point, somebody is going to want to
> implement this in the Linux SFP driver, and we want a consistent
> implementation cross different implementations.

Or "guessing how things work" another way of putting this would be -
please go investigate what exactly the FW will do with these values.
