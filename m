Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C061E1A00
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 05:34:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12E3B85E06;
	Tue, 26 May 2020 03:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t8kCss1chxgc; Tue, 26 May 2020 03:34:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD19A85E1A;
	Tue, 26 May 2020 03:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 571E31BF947
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 03:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B6E986B05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 03:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cs7VEo82r3YE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 03:34:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9C4486AD9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 03:34:44 +0000 (UTC)
IronPort-SDR: kvylXOaLDb3v16O3g+FnNdO9/AJhu2gDmqsGwYEffWTsvmkALQsfIrGmoVEWHyFkIePaCv6Veu
 izH+pJfiohqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 20:34:44 -0700
IronPort-SDR: MOZBYrYX/DUAebIUWDovCopbLCdy3VvnTcgIltOfLMbccoZqlMJj91iMgfXh9V2/AqrP6IE6DJ
 JElbVHTP6cIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,435,1583222400"; d="scan'208";a="291033511"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga004.fm.intel.com with ESMTP; 25 May 2020 20:34:43 -0700
Date: Tue, 26 May 2020 11:34:48 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20200526033448.GA8838@chenyu-office.sh.intel.com>
References: <9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com>
 <20200526002355.B2FAE20657@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526002355.B2FAE20657@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-wired-lan] [PATCH 1/2] e1000e: Do not wake up the system
 via WOL if device wakeup is disabled
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
Cc: netdev@vger.kernel.org, Rui Zhang <rui.zhang@intel.com>,
 intel-wired-lan@lists.osuosl.org, Stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,
On Tue, May 26, 2020 at 12:23:55AM +0000, Sasha Levin wrote:
> Hi
> 
> [This is an automated email]
> 
> This commit has been processed because it contains a "Fixes:" tag
> fixing commit: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)").
> 
> The bot has tested the following trees: v5.6.14, v5.4.42, v4.19.124, v4.14.181, v4.9.224, v4.4.224.
> 
> v5.6.14: Build OK!
> v5.4.42: Build OK!
> v4.19.124: Build OK!
> v4.14.181: Build OK!
> v4.9.224: Failed to apply! Possible dependencies:
>     c8744f44aeae ("e1000e: Add Support for CannonLake")
> 
> v4.4.224: Failed to apply! Possible dependencies:
>     16ecba59bc33 ("e1000e: Do not read ICR in Other interrupt")
>     18dd23920703 ("e1000e: use BIT() macro for bit defines")
>     74f31299a41e ("e1000e: Increase PHY PLL clock gate timing")
>     c8744f44aeae ("e1000e: Add Support for CannonLake")
>     f3ed935de059 ("e1000e: initial support for i219-LM (3)")
> 
> 
> NOTE: The patch will not be queued to stable trees until it is upstream.
> 
> How should we proceed with this patch?
> 
We could discard the change for v4.9 and v4.4 IMO, as their impact should be
minor.

Thanks,
Chenyu
> -- 
> Thanks
> Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
