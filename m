Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345B3239D8D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Aug 2020 04:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9415D87BC8;
	Mon,  3 Aug 2020 02:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gP6zecp2SF6p; Mon,  3 Aug 2020 02:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 488D087BBF;
	Mon,  3 Aug 2020 02:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E8B891BF331
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Aug 2020 21:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFCF88511B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Aug 2020 21:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rTAgNvYw-lrQ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Aug 2020 21:04:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from viruvalge.hosting.plutex.de (inutil.org [109.69.64.57])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 30CE584528
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Aug 2020 21:04:17 +0000 (UTC)
Received: by viruvalge.hosting.plutex.de (Postfix, from userid 112)
 id 38C62406AF; Sun,  2 Aug 2020 23:04:13 +0200 (CEST)
Received: from hullmann.fritz.box (ip4d154a56.dynamic.kabel-deutschland.de
 [77.21.74.86])
 by viruvalge.hosting.plutex.de (Postfix) with ESMTPSA id ACF6E40430;
 Sun,  2 Aug 2020 23:04:11 +0200 (CEST)
Received: from jmm by hullmann.fritz.box with local (Exim 4.94)
 (envelope-from <jmm@hullmann.westfalen.local>)
 id 1k2L9O-000VVc-VJ; Sun, 02 Aug 2020 23:04:10 +0200
Date: Sun, 2 Aug 2020 23:04:10 +0200
To: Jesse Brandeburg <jbrandeb@intel.com>
Message-ID: <20200802210410.GA120926@pisco.westfalen.local>
References: <20200716203902.acn3ea2b4iorxlhq@inutil.org>
 <alpine.LFD.2.23.451.2007281106010.590669@jbrandeb-desk.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.23.451.2007281106010.590669@jbrandeb-desk.jf.intel.com>
From: =?UTF-8?Q?Moritz_M=C3=BChlenhoff?= <jmm@inutil.org>
X-Mailman-Approved-At: Mon, 03 Aug 2020 02:51:17 +0000
Subject: Re: [Intel-wired-lan] Further information on
 CVE-2019-0145/CVE-2019-0146/CVE-2019-0147/CVE-2019-0148/CVE-2019-0149 for
 Linux?
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
Cc: Moritz Muehlenhoff <jmm@inutil.org>, intel-wired-lan@lists.osuosl.org,
 carnil@debian.org, benh@debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 28, 2020 at 11:10:27AM -0700, Jesse Brandeburg wrote:
> 
> 
> On Thu, 16 Jul 2020, Moritz Muehlenhoff wrote:
> 
> > Hi,
> > https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00255.html refers
> > to vulnerabilities in Intel Ethernet drivers and a few of them refer to the i40e driver
> > specifically:
> 
> I'm sorry Moritz that we haven't gotten back to you. We are chasing down the
> specific patches made upstream for software portions of the below fixes.

Thanks!

Cheers,
        Moritz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
