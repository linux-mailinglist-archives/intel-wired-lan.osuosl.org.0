Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA5B823112
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08BE7419C5;
	Wed,  3 Jan 2024 16:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08BE7419C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298661;
	bh=daSKfQY32qjKgh4ylR2vvvKeSvs6AhzA1EqOHh58CRc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xm3XjkvLsVad5oVg4M+ismOgxCYvjO+OrF0U2BF09etzP0tmoi2PqiMsvc6bUTs3N
	 +fxSTsMQC7NepK2wOWwrIT1ybmZi17UneG/qpEKfidQWzIvewbcQ1IQUMxlS/NmVak
	 bMjyYg1T+bnw2Z5+qwbJLOtN566N/lmAUP9RKvRUfL03pl/NRhmQng9FCVeLJOPcbp
	 sURR7iVwBgkwA3h3T1axd+tP7rGo0194K1XtHD89DBJfA+x1WmiHoGt3OhYWxQYeY2
	 hLrEE876YdnDYfRYxSmagRvf4/b250k6cGz73F7tEcokY/MMGyCI7Gm4EIhbeyGSaC
	 xO7RJFDRHJ7tA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9D8c71IaodO; Wed,  3 Jan 2024 16:17:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF164400D9;
	Wed,  3 Jan 2024 16:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF164400D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D8561BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4133E60AFB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4133E60AFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btg63Gcq8YEs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 08:20:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B1AB60EE9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B1AB60EE9
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="400789294"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="400789294"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 00:20:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="779928866"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="779928866"
Received: from sgruszka-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.153])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 00:20:25 -0800
Date: Wed, 3 Jan 2024 09:20:23 +0100
From: Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <ZZUYx9hhdVD+wAnG@linux.intel.com>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <d0fc7d04-e3c9-47c0-487e-666cb2a4e3bc@intel.com>
 <709eff7500f2da223df9905ce49c026a881cb0e0.camel@sipsolutions.net>
 <3e7ae1f5-77e3-a561-2d6b-377026b1fd26@intel.com>
 <c1189a1982630f71dd106c3963e0fa71fa6c8a76.camel@sipsolutions.net>
 <64684afc-3dbb-453e-9c90-bf2a86e70c50@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64684afc-3dbb-453e-9c90-bf2a86e70c50@gmail.com>
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704270037; x=1735806037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0Ul4OlGMi2BplcTsZp5Kk6kGh3sCmw9tmO1+Lmr7FJM=;
 b=dPhIkd0zryUmY75xp5aRVitYQAcqTk1TnNDt0EXnB0LKNp06EtmBwt7x
 eermX7HoPYfiQNFtos8wo71tMTbMS2GkPVaxKhBoOYFLHbuO4PidqvNCQ
 tJFmenZN874KPgIh6WSK0x3chN039WZyrwj8NVnYXos2++tyC470Vwg8V
 Rq/zFfe8dqwwHTLIM0YIxiB2hS9pio1ylOJrpHWKbiJaCANLdUzvbuVoo
 neDlUYTTSHUlTH0qBfwJF+gL8tHSpf0gAp5SzdoMOoKcEQ+Qv6tTjoR81
 Z8kY2xi4mYVfc9jr3q3AB8vuzej9Mw0WHDhPRhXYyC/45Vzz/QvoR5j7v
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dPhIkd0z
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Marc MERLIN <marc@merlins.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Johannes Berg <johannes@sipsolutions.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 06, 2023 at 12:59:09PM +0100, Heiner Kallweit wrote:
> On 06.12.2023 10:37, Johannes Berg wrote:
> > On Wed, 2023-12-06 at 09:46 +0100, Przemek Kitszel wrote:
> >>
> >> That sounds right too; one could argue if your fix is orthogonal to that
> >> or not. I would say that your fix makes core net code more robust
> >> against drivers from past millennia. :)
> >> igc folks are notified, no idea how much time it would take to propose
> >> a fix.
> > 
> > Maybe it should be on whoever added runtime pm to ethtool ;-)
> > 
> > Heiner, the igc driver was already doing this when you added
> > pm_runtime_get_sync() ops, was there a discussion at the time, or just
> > missed?
> > 
> I think it went unnoticed at that time that igc is acquiring RTNL
> in runtime-resume. I'm just astonished that this pops up only now,
> considering that the change was done more than 2 yrs ago.

PM runtime is disabled by default for igc (driver do not call
pm_runtime_allow()). It has to be enabled explicitly by user write
to pci sysfs power/control file. And after that link up/down or
ethtool has to be used to trigger this deadlock, so quite unlikely
scenario.

Is possible though, that some power saving daemon start enabling
pm runtime for devices, so that why issue become visible.

Regards
Stanislaw
