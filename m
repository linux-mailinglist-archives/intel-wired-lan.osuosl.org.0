Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 640106F593
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jul 2019 22:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E2A9E203B6;
	Sun, 21 Jul 2019 20:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4BZ6si2dNrhP; Sun, 21 Jul 2019 20:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB392203C7;
	Sun, 21 Jul 2019 20:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D1EA1BF573
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2019 20:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6742187327
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2019 20:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q8GfuhZS6w0S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jul 2019 20:30:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97C748731E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2019 20:30:11 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 800D115265E02;
 Sun, 21 Jul 2019 13:30:10 -0700 (PDT)
Date: Sun, 21 Jul 2019 13:30:10 -0700 (PDT)
Message-Id: <20190721.133010.561994148836125357.davem@davemloft.net>
To: fred@fredlawl.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190718020745.8867-4-fred@fredlawl.com>
References: <20190718020745.8867-1-fred@fredlawl.com>
 <20190718020745.8867-4-fred@fredlawl.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 21 Jul 2019 13:30:10 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH] igc: Prefer
 pcie_capability_read_word()
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
Cc: bhelgaas@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Frederick Lawler <fred@fredlawl.com>
Date: Wed, 17 Jul 2019 21:07:39 -0500

> Commit 8c0d3a02c130 ("PCI: Add accessors for PCI Express Capability")
> added accessors for the PCI Express Capability so that drivers didn't
> need to be aware of differences between v1 and v2 of the PCI
> Express Capability.
> 
> Replace pci_read_config_word() and pci_write_config_word() calls with
> pcie_capability_read_word() and pcie_capability_write_word().
> 
> Signed-off-by: Frederick Lawler <fred@fredlawl.com>

Applied.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
