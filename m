Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C518040BE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 22:08:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F12441762;
	Mon,  4 Dec 2023 21:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F12441762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701724089;
	bh=3I2T6t3MPoBjqrU/hNQpr4yWJIo/7pJ0dFM61k/CZIo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dDpkosgO68O7CbdU9mhMVKHWMPR8adTXw4SJL0m5pFVzcftZCaOMMeW+Qe3tBVdID
	 ccujFfBMPKH5z4DJUuyp29t1+RcGnoU2MmuT8iuc6hGAoDG6j1gkInBTUDnil34aZD
	 ULvWXBQTAH3hQuYz+gW8i90zyb33VmVkVOZle+VcsqDDoS6jceyd1Uk4y1i6wZVdEn
	 AEQH+UWWAiGa5/lUcbcUO2K8ZjMpHvMRJwSIUUjIL5pVX6I6ektBtEWyvZ1d7kZ20u
	 JASF4uRR7NcZVIoVQRBbJ9twEJ5lGRq8LcL3Y1EIE3w9onbiGWdPUG3NVPLUUTqC5A
	 asgABXiHyZRxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjtjHygaeXSI; Mon,  4 Dec 2023 21:08:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F20741917;
	Mon,  4 Dec 2023 21:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F20741917
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC2D31BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 20:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EAB840151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 20:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EAB840151
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1yq7Rp2orP8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 20:55:10 +0000 (UTC)
X-Greylist: delayed 1122 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 04 Dec 2023 20:55:10 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 805E64011A
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 805E64011A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 20:55:09 +0000 (UTC)
Received: from merlin by mail1.merlins.org with local (Exim 4.94.2 #2)
 id 1rAFxf-0003gi-1l by authid <merlin>; Mon, 04 Dec 2023 12:54:39 -0800
Date: Mon, 4 Dec 2023 12:54:39 -0800
From: Marc MERLIN <marc@merlins.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20231204205439.GA32680@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Mon, 04 Dec 2023 21:07:53 +0000
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 04, 2023 at 09:40:08PM +0100, Johannes Berg wrote:
> This one's still the problem, so I guess my 2-line hack didn't do
> anything.

sorry, I wasn't clear, this was the last hang before your patch. I
wanted to make sure it matched your analysis, which it seems to, so
that's good.  I now understand that the order in printk is not actually
the order of who is at fault.
I'm testing your patch now, will let you know ASAP

Marc
-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
