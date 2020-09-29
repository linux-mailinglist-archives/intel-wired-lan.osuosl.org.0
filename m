Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4EA27D54C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 20:00:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B2F18677E;
	Tue, 29 Sep 2020 18:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JvEiy0T95irc; Tue, 29 Sep 2020 18:00:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E14178678B;
	Tue, 29 Sep 2020 18:00:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9181BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 17:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED2842034C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 17:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VtKMVPPhPAWQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 17:47:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 9160A20133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 17:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oCfvHV+eKDJ81YLxCB6N47LJuI+3zUrT7MS+gF7gNr4=; b=NjIGhaXrWwlKfAho6RX83T5VBG
 9kU191xaHfQf9xMkmFbUhsM8unnI6/Cu/ZcxCQa07jLGVfllxEv6zJQNU/QSetYE/OyO4R5J1nfJe
 tyQEzzf82Vu/tTa++E0RflrJePy3HLzmjShO5JUtUXPNOhAuwTkJScF1wDER73o3ROFT/gajTsenI
 4XtDhwfOso7PtCEtkDtRszmeTq4W+xoyXI5+uhPwIQnUNCGNTfxG+kWAAPHV54h4cJDDstUqGHuct
 noGbPWU/Gu1kVxKq4X2UWJffCQAqVupBC4HQRqYLChEr/xqJzsRedUoGgfK4sRbhoX9/Ln5Cpce+T
 Ww2Yp2mA==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kNJiI-0000Hg-5T; Tue, 29 Sep 2020 17:46:54 +0000
Date: Tue, 29 Sep 2020 18:46:54 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20200929174654.GA773@infradead.org>
References: <20200928183529.471328-5-nitesh@redhat.com>
 <20200928215931.GA2499944@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928215931.GA2499944@bjorn-Precision-5520>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 29 Sep 2020 18:00:29 +0000
Subject: Re: [Intel-wired-lan] [PATCH v4 4/4] PCI: Limit
 pci_alloc_irq_vectors() to housekeeping CPUs
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, linux-pci@vger.kernel.org,
 sassmann@redhat.com, vincent.guittot@linaro.org, hch@infradead.org,
 mingo@redhat.com, intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, Nitesh Narayan Lal <nitesh@redhat.com>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 28, 2020 at 04:59:31PM -0500, Bjorn Helgaas wrote:
> [to: Christoph in case he has comments, since I think he wrote this code]

I think I actually suggested this a few iterations back.

> > +	hk_cpus = housekeeping_num_online_cpus(HK_FLAG_MANAGED_IRQ);
> > +
> > +	/*
> > +	 * If we have isolated CPUs for use by real-time tasks, to keep the
> > +	 * latency overhead to a minimum, device-specific IRQ vectors are moved
> > +	 * to the housekeeping CPUs from the userspace by changing their
> > +	 * affinity mask. Limit the vector usage to keep housekeeping CPUs from
> > +	 * running out of IRQ vectors.
> > +	 */
> > +	if (hk_cpus < num_online_cpus()) {

I woukd have moved the assignment to hk_cpus below the comment and
just above the if, but that is really just a minor style preference.

Otherwise this looks good:

Acked-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
