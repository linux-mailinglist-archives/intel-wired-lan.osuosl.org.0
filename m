Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76650346451
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 17:04:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17883403A6;
	Tue, 23 Mar 2021 16:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id op9UMQGfle7d; Tue, 23 Mar 2021 16:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 107B1403A4;
	Tue, 23 Mar 2021 16:04:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD5F81BF859
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 16:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B4EC6083B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 16:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oc2n9nmat2MR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 16:04:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF4F7606B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 16:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=r7+igJ9I87Xh8bxlKqYfdSgKCX2KNmm4MEakh98beFw=; b=os62iuDYvApfDmg2N7at90eK0V
 lX/O8fluacIAn/6uLJvBkKZeli2m8dQtEvPSdbDYlurCHbajtH3C1QxSvI7BrkEe7Ee3VcX4+QsVI
 7Jit+hLJBH2EtiaUi+XBp49kw7uBdU3DjrMxPP0RuBn/7JWz38wQQgi0Ny7KP4kKIMdvdOgKJi2gH
 7HXBH7TKpZ2rHGEADi2IO4jckaC1g/neIISBb42JvVoSLYvinCd5JsdSV4+0F4dxe57nsWIpCrDur
 v4/qIiLhgL7OVbmamIh2gEPGyJx9GYPJ8m2VP3SKwV2K9YFasf6r9dV/mVaTww6nVaect4YmjtqkN
 p1qamv8A==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lOjT8-00AFf4-Ou; Tue, 23 Mar 2021 16:01:39 +0000
Date: Tue, 23 Mar 2021 16:01:22 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210323160122.GC2438080@infradead.org>
References: <20210322161822.1546454-1-vinicius.gomes@intel.com>
 <20210322161822.1546454-2-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322161822.1546454-2-vinicius.gomes@intel.com>
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, linux-pci@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 22, 2021 at 09:18:20AM -0700, Vinicius Costa Gomes wrote:
> Make pci_enable_ptm() accessible from the drivers.
> 
> Even if PTM still works on the platform I am using without calling
> this function, it might be possible that it's not always the case.
> 
> Exposing this to the driver enables the driver to use the
> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
> 
> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Without an EXPORT_SYMBOL_GPL this is not going to be very useful for
your driver.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
