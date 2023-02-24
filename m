Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C156A14B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 02:53:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AA43405C2;
	Fri, 24 Feb 2023 01:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AA43405C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677203592;
	bh=K3I6qojPRnViCRjB8WF33NJwx0YzQIkiddc+P14kXKE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a5dyTioH6TxFXovfJRVU0Az3AT0bb+Mghu4HIZEeIGtNBowCrqbHdAhZR3STA7mdv
	 pQ3cltUsGGlu9TuZ13f8C/lNES/x2cCaS0+u5zm+Wn/ozBmN4I5WZz73lexdYRXPgN
	 gtnZbh7/vjmwZ5LP4+qaP41mMnchjFlDcaEnIRIVkYdSdvK4AxbRQXPgL7Rfd+I7IG
	 UsF+Z+oQ7+HBBFtzXT8K9cCvKS6Pqwpw/DW4dxQ/heKfhoLSTwhNHKDkQw+dGdPere
	 7Q44W5bSiztsUwVLUXqaPFj593h+/pwhK/Ee0vyrEiO8Y0zFQgm+YwXtAn1xFbTkfw
	 FkdDbnBCAP1Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5kJkg3wdrqWi; Fri, 24 Feb 2023 01:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72A34405A5;
	Fri, 24 Feb 2023 01:53:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72A34405A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86F1D1BF616
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 01:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F5B860E30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 01:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F5B860E30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIEg-CpYoI7i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 01:53:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B30D360E1A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B30D360E1A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 01:53:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B465E617EE;
 Fri, 24 Feb 2023 01:53:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B81A6C433EF;
 Fri, 24 Feb 2023 01:53:03 +0000 (UTC)
Date: Thu, 23 Feb 2023 17:53:02 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20230223175302.2032b66e@kernel.org>
In-Reply-To: <20230224004627.2281371-1-jacob.e.keller@intel.com>
References: <20230224004627.2281371-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677203584;
 bh=i32PYCmD1Y5F92yWcLS6OzgN2FHlaPee1dcNv08xTnM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JGP6yo7T97io7Ozq2Fit9gE/iJacI/6AELEwCmvzZ9T3tB4Dqv5OB4bMmwlAif+ou
 4b8seibsw7NsJ5fqFiNrjTNJBrF+8uMeeYsiwtw7i2Is07Xaz4cuZRB1qINx81YXTb
 G5BfGIgkzr/fR0kpYFNXJHffQj5bzkpC/lUTWrcI1n5VpfWo6F4DEDvZ7nrx2hpoDw
 o1nr4GmbfXIjr/cY6Yt4XuzPT2X0FjHDt8dDntbh48vac19nvzjt134ee86EYpPhvN
 cAdyZP3v74yQRQJGX3U60ZRj26lniJQOjhdw4gp3RpAd4vs0mui0pYrf6TZuzlo/gT
 sNmGK9JRg00vw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JGP6yo7T
Subject: Re: [Intel-wired-lan] [PATCH intel-net v2] ice: remove unnecessary
 CONFIG_ICE_GNSS
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
Cc: netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 Feb 2023 16:46:27 -0800 Jacob Keller wrote:
> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Fixes: c7ef8221ca7d ("ice: use GNSS subsystem instead of TTY")
> Cc: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Cc: Alexander Lobakin <alexandr.lobakin@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>

Acked-by: Jakub Kicinski <kuba@kernel.org>

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
