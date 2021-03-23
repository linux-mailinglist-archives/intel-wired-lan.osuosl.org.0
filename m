Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B2F3467E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 19:40:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4456B83FB3;
	Tue, 23 Mar 2021 18:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vW6uosdAOGe; Tue, 23 Mar 2021 18:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CAC383FA8;
	Tue, 23 Mar 2021 18:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66FA61C1127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 18:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 557D483FA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 18:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNZZtZaAKIJU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 18:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8976783FA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 18:40:16 +0000 (UTC)
IronPort-SDR: n9FpKTn4+JJ8aCy74UbLdW09YffyApCWrfNCy74sKKrpuFEi4kieSck3JI2BZBnYp5a31PiYti
 XKxw9K+JAHGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="187224985"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="187224985"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 11:40:12 -0700
IronPort-SDR: kaTgHydsjhC4c6IVJcL2IUITm3tNUuhmOzdgw2gzCYcpNnFnI6n6KJ9j4/42K6B8uzzIaS/39T
 BF0MhDBU2blA==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="374345719"
Received: from ckane-desk.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.48.247])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 11:40:11 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Christoph Hellwig <hch@infradead.org>
In-Reply-To: <20210323160122.GC2438080@infradead.org>
References: <20210322161822.1546454-1-vinicius.gomes@intel.com>
 <20210322161822.1546454-2-vinicius.gomes@intel.com>
 <20210323160122.GC2438080@infradead.org>
Date: Tue, 23 Mar 2021 11:40:11 -0700
Message-ID: <87zgytk92s.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 1/3] Revert "PCI: Make
 pci_enable_ptm() private"
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, linux-pci@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Christoph Hellwig <hch@infradead.org> writes:

> On Mon, Mar 22, 2021 at 09:18:20AM -0700, Vinicius Costa Gomes wrote:
>> Make pci_enable_ptm() accessible from the drivers.
>> 
>> Even if PTM still works on the platform I am using without calling
>> this function, it might be possible that it's not always the case.
>> 
>> Exposing this to the driver enables the driver to use the
>> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
>> 
>> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
>
> Without an EXPORT_SYMBOL_GPL this is not going to be very useful for
> your driver.

Unless I am missing something here, the commit that made
'pci_enable_ptm()' private didn't remove the 'EXPORT_SYMBOL' from the
function definition in drivers/pci/pcie/ptm.c.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
