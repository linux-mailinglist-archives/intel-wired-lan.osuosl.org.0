Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0A1188682
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2020 14:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBC55893B8;
	Tue, 17 Mar 2020 13:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cvo9TXmgsBcs; Tue, 17 Mar 2020 13:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF0AC893C2;
	Tue, 17 Mar 2020 13:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE771BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 13:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69F5C87464
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 13:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kxecYn9F5C2n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2020 13:56:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F04C873E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 13:56:08 +0000 (UTC)
IronPort-SDR: cU0S2iiuVnG5M9kuBbW8RuIRnKDdqHglFfYltDCIgJp9Ch/DRr6Aj63EtiEzO+bxjhQ/SFFisD
 GNxExRAATwLg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:56:07 -0700
IronPort-SDR: EudibzLXSBUtjWzXjYnr4QsK9D9UHEOD1I7kGAn4RZyEgki7PlIa/O4pEcANbt9QEvNGI9/Vql
 Gu0aQ8qj3tBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="263039372"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.251.160.142])
 ([10.251.160.142])
 by orsmga002.jf.intel.com with ESMTP; 17 Mar 2020 06:56:04 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, vitaly.lifshits@intel.com
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
Date: Tue, 17 Mar 2020 15:56:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [Regression] "e1000e: Add support for S0ix"
 breaks s2idle on Lenovo X1 Carbon 7th
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
Cc: Jason Yen <jason.yen@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/17/2020 15:34, Kai-Heng Feng wrote:
> Hi,
> 
> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
> I managed to get one at hand and I can confirm the issue is 100% reproducible.
> 
> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
> 
> Reverting "e1000e: Add support for S0ix" makes suspend work again.
> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
> 
> Kai-Heng
> 
> [1] https://bugs.launchpad.net/bugs/1865570
> [2] https://bugs.launchpad.net/bugs/1866170
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
> 
please, check of ME enabled on this system. try disable ME and re-run
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
