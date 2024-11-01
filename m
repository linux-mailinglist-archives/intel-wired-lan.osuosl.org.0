Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A59B8F37
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 11:30:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4F9D84438;
	Fri,  1 Nov 2024 10:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UDnwW3EOyC3L; Fri,  1 Nov 2024 10:30:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B55684381
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730457046;
	bh=wYdMMdRGXFwpokW8pyhVwKstf1EscA60BosA31i2T6Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U47gqRc25wTQ6uS3wktpBMU9d2Ul0y4XyTwIGkMD9GNk3whv2Q7bcVk+gf/HsHJ7B
	 oaMJCNSsJrM+xRCcvqtSrxT6xtrrx3lDDuGzSfY3B1mOw9aymEpsCZwwcqSjDgCK9Q
	 a8yODwJ3eMDnprH6xhhHS3tYYmX6V1d4FSfsx98/n71yY0iwP0naCnbEVyDz0RDRfT
	 DGLtQTcFyLyy+RwN7VWyNsVwmX1Kl3srQ5xvOu/ChN4Gz+j89655uwmg4IuyepdPNp
	 e0sjc+EYsS/JkYzK+u1PLP98fTgP9tDolm1wFTrprTslQ3eqT+b3gdMxRvt24gl6v8
	 ms5bZ72Y8hWog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B55684381;
	Fri,  1 Nov 2024 10:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DF34460
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 10:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBE74402E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 10:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kJSJG2sBvBNv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 10:30:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0CA1A402CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CA1A402CE
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CA1A402CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 10:30:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7060CA43319;
 Fri,  1 Nov 2024 10:28:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC2C5C4CECD;
 Fri,  1 Nov 2024 10:30:40 +0000 (UTC)
Date: Fri, 1 Nov 2024 10:30:38 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241101103038.GF1838431@kernel.org>
References: <20241001102605.4526-1-mateusz.polchlopek@intel.com>
 <20241001102605.4526-3-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001102605.4526-3-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730457041;
 bh=fK1mvPxKuCzyRD8eeizEsobaBIxDnSVChFaJ3zbXAxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fy51toMChfwdqf8TKX3Y4LinfdMxBYxkO5iWPC95XooxpHWmOOP2jWlBgrC8EFi1P
 I9RI7NQBDwAQvDMXGzibRpWMg90Cmurb5DYj2yhW2q9SWZeTaM8XWkBgbSORi6q7KR
 nd1aZOjsnXKwMDwisv/LNHTAtIVlkXATy8DqOHtnYYMr7cR+F7LUNi146pW8of28uh
 9Xlm4QH0wgYWmImx9NG9RbHjfjSYKpZwztFkpHGBCVkgGhHBWmE4o29Bo+5uBf1xh8
 7cBu7xncG+LWz/Z6g6K3oNvZJsNyvaMchTTwSJFPFVFlWFhgmb8aGpwon4TwO8EYNP
 VwrmTBwZBIOew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fy51toMC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: extend dump serdes
 equalizer values feature
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

On Tue, Oct 01, 2024 at 06:26:05AM -0400, Mateusz Polchlopek wrote:
> Extend the work done in commit 70838938e89c ("ice: Implement driver
> functionality to dump serdes equalizer values") by adding the new set of
> Rx registers that can be read using command:
>   $ ethtool -d interface_name
> 
> Rx equalization parameters are E810 PHY registers used by end user to
> gather information about configuration and status to debug link and
> connection issues in the field.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

