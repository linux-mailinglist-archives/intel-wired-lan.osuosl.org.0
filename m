Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3CD346804
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 19:46:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 265B2404F5;
	Tue, 23 Mar 2021 18:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mVAD-9hpCxM5; Tue, 23 Mar 2021 18:46:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18526404D0;
	Tue, 23 Mar 2021 18:46:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B717D1C1127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 18:46:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B25D483E96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 18:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sFGx2M_HEAHC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 18:46:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0516083DB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 18:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=TyB4jsgy1fbxCs/NyuZjXpuJ7EYGZ4t4yL8X8bIIVyE=; b=kb88EJynv+gJRz/F6hUVKnuS2k
 ZlyZ93zYPJyRKl10g+Dqr2PqQ3ung8vgIp112dBGn1XjBBCEawQYvfvJP9JI5H89focMBQVgOOVsj
 y8Nnpr/VZCQY4C2TRsKJyiNnxHT5kWi55nHBqnISsekGxRSCP1W/QkH1aoU6f/JLtkWJLCNI3NdYG
 SA62mEHFIA6Gl15nO35NbMcW1C9FuZx01D4oukqITcdrysBb1ct2YaXYP/wihLKKF7HOkkXV2joL2
 b7BNM4sxaaZRyrX0BbS3m0FMCKfGa5Q31/JdOWfxQmixhNVfKIWXaJUYvgrepyhQJlgSR6gedPg0K
 CwRkeqIQ==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lOm1y-00AQAU-N9; Tue, 23 Mar 2021 18:45:35 +0000
Date: Tue, 23 Mar 2021 18:45:30 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210323184530.GA2483289@infradead.org>
References: <20210322161822.1546454-1-vinicius.gomes@intel.com>
 <20210322161822.1546454-2-vinicius.gomes@intel.com>
 <20210323160122.GC2438080@infradead.org>
 <87zgytk92s.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zgytk92s.fsf@vcostago-mobl2.amr.corp.intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com,
 Christoph Hellwig <hch@infradead.org>, netdev@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 23, 2021 at 11:40:11AM -0700, Vinicius Costa Gomes wrote:
> > Without an EXPORT_SYMBOL_GPL this is not going to be very useful for
> > your driver.
> 
> Unless I am missing something here, the commit that made
> 'pci_enable_ptm()' private didn't remove the 'EXPORT_SYMBOL' from the
> function definition in drivers/pci/pcie/ptm.c.

OOPS, indeed.  Looks like right now the function is nindeed exported,
but has no single user at all.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
