Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CD9258530
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Sep 2020 03:37:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B40DC22E96;
	Tue,  1 Sep 2020 01:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNo1MLSmgRM9; Tue,  1 Sep 2020 01:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7B7B5274B3;
	Tue,  1 Sep 2020 01:36:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF3E41BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Sep 2020 01:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 617E3274AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Sep 2020 01:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAXDgFFtlalc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Sep 2020 01:36:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by silver.osuosl.org (Postfix) with ESMTPS id 0109423018
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Sep 2020 01:35:21 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 46D4F4611C8; Mon, 31 Aug 2020 21:35:19 -0400 (EDT)
Date: Mon, 31 Aug 2020 21:35:19 -0400
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20200901013519.rfmavd4763gdzw4r@csclub.uwaterloo.ca>
References: <20200827183039.hrfnb63cxq3pmv4z@csclub.uwaterloo.ca>
 <20200828155616.3sd2ivrml2gpcvod@csclub.uwaterloo.ca>
 <20200831103512.00001fab@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831103512.00001fab@intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] VRRP not working on i40e X722 S2600WFT
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 31, 2020 at 10:35:12AM -0700, Jesse Brandeburg wrote:
> Thanks for the report Lennart, I understand your frustration, as this
> should probably work without user configuration.
> 
> However, please give this command a try:
> ethtool --set-priv-flags ethX disable-source-pruning on

Hmm, our 4.9 kernel is just a touch too old to support that.  And yes
that really should not require a flag to be set, given the card has no
reason to ever do that pruning.  There is no justification you could
have for doing it in the first place.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
