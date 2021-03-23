Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D39346D90
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 23:50:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C50BA404F3;
	Tue, 23 Mar 2021 22:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PK6wPD3z2WCq; Tue, 23 Mar 2021 22:50:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78DC9404E7;
	Tue, 23 Mar 2021 22:50:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE4A1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 22:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76A88404E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 22:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ES1YF0HM4oOY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 22:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AEDDD404E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 22:50:02 +0000 (UTC)
IronPort-SDR: VCSesxqjtPMaD6VQstaB4P3lYvCUjrf1Cq0gKOprfnRHQXYekzu74Korh4Ngo0BPCLx+VIo2Ib
 RN7/cdVT2GPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="190679165"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="190679165"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 15:49:19 -0700
IronPort-SDR: K5Q+Oq+JhbhXFNsH8pIwTOM2hFaA7hm3cLblQz5+UqXf+Pd7EqWd2Yf6KgQ0PHkpyEKRuM4fsp
 NsJP7CVvEQrg==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="525020763"
Received: from ckane-desk.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.48.247])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 15:49:18 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20210323194046.GA598671@bjorn-Precision-5520>
References: <20210323194046.GA598671@bjorn-Precision-5520>
Date: Tue, 23 Mar 2021 15:49:18 -0700
Message-ID: <874kh1jxjl.fsf@vcostago-mobl2.amr.corp.intel.com>
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

Bjorn Helgaas <helgaas@kernel.org> writes:

> On Mon, Mar 22, 2021 at 09:18:20AM -0700, Vinicius Costa Gomes wrote:
>> Make pci_enable_ptm() accessible from the drivers.
>> 
>> Even if PTM still works on the platform I am using without calling
>> this function, it might be possible that it's not always the case.
>
> I don't understand the value of this paragraph.  The rest of it makes
> good sense (although I think we might want to add a wrapper as I
> mentioned elsewhere).
>

Sure. Will remove this paragraph, and add the helper as you mentioned.
Thanks.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
