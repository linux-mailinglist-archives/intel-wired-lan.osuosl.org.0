Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2967395A0E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 17:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACCF640487;
	Wed, 21 Aug 2024 15:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkDNchn7T9Ge; Wed, 21 Aug 2024 15:06:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEDD240361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724252804;
	bh=f8+hZ1hrZrVg6sdmnqV9eGbTxgXID1VTgZ/hemZwO+Y=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=5OzeAIXzLueR/wAxnLDUlVtZ/C71DYPji5XVSpNklGNQwdgw5QAuUtEFDLnXTCWRC
	 kEfs9i8BbP345u/29s/QspMRcx8dmA08hHwSwyG7uqhsLQPku3BmaPDmpRIzR7gRKJ
	 qqIsLlveAr/HVIhxPY2tvgDVqqtk8ARSRTcRMvB+r49C4xd1M7GWIhX9SYt7K8kOFM
	 uqRthslTreC3NTUbmHy0LQLnKswyoSUr9zv8r1pMnV0I8e+JrdrrS/rU2lJOWvhA3B
	 hd2g/Yhpel946yz5ulFPPfv1UBXeXh01YwY+ihlnKFvHfKde6ssXnD0mG0wuLyhewJ
	 abgzfb6krtTCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEDD240361;
	Wed, 21 Aug 2024 15:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FC421BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 15:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8936040177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 15:06:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jkJICbSuJUoN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 15:06:41 +0000 (UTC)
X-Greylist: delayed 398 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 21 Aug 2024 15:06:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4FA1E4014D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FA1E4014D
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FA1E4014D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 15:06:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C7421A41C8D;
 Wed, 21 Aug 2024 14:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E858FC32781;
 Wed, 21 Aug 2024 15:00:00 +0000 (UTC)
Date: Wed, 21 Aug 2024 09:59:59 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Petr Valenta <petr@jevklidu.cz>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Hui Wang <hui.wang@canonical.com>
Message-ID: <20240821145959.GA248604@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b190e352-e11f-4795-941a-62c09ba5f602@jevklidu.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724252401;
 bh=IBN6ywL7mYkh82/j5VznfLF6ZiKDxwfMVwAbnqTvVlQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TjP4IpRmrQyy63JtLyx5SlJeP/OGNKmXSdI6LYE+ayq6fxjrkIoDchMWUyvBTxbRo
 NOzqYvLPKVT0oRHTjQbpsSwBeOH4ZmatOUNaTJXPIvRMzUn95AY4VBod0pT+3fJpfR
 GXKsc1Ar2SQ+dp3rFdro1yeBZnlsCdVy6BqVMnGzti52CoFgHgxML388qpHmX68Hr+
 va/fmNM9zrLWGJ7uZZForOWUpR1R8Bbi+aWRPTwWlqHB2YD3Dnmz5wiMLEbnE/Kac3
 yCZYxMmgZdNoo8PuK9fcD5qzAmo6NwAYJY5uV/bgZCBrjJlpI0LMwXmcp10MfryWdI
 1apXowugEdYgQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TjP4IpRm
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "Rafael J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Jiri Slaby <jirislaby@kernel.org>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+to Dima, Vitaly, Hui; beginning of thread at
https://lore.kernel.org/r/60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org]

On Wed, Aug 21, 2024 at 01:39:11PM +0200, Petr Valenta wrote:
> Dne 20. 08. 24 v 23:30 Bjorn Helgaas napsal(a):
> > On Tue, Aug 20, 2024 at 11:13:54PM +0200, Petr Valenta wrote:
> > > Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
> > > > On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
> > > > > On 19. 08. 24, 6:50, Jiri Slaby wrote:
> > > > > > CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
> ...

> > I'm at a loss.  You could try reverting the entire b2c289415b2b commit
> > (patch for that is below).
> 
> This patch didn't help, so I reverted it back.
> 
> > If that doesn't help, I guess you could try reverting the other
> > commits Jiri mentioned:
> > 
> >    76a0a3f9cc2f e1000e: fix force smbus during suspend flow
> >    c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
> >    bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp function
> >    6918107e2540 net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates
> >    1eb2cded45b3 net: annotate writes on dev->mtu from ndo_change_mtu()
> >    b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
> >    75a3f93b5383 net: intel: implement modern PM ops declarations
> > 
> > If you do this, I would revert 76a0a3f9cc2f, test, then revert
> > c93a6f62cb1b in addition, test, then revert bfd546a552e1 in addition,
> > etc.
> 
> I have created revert patches like this:
> git format-patch --stdout -1 76a0a3f9cc2f | interdiff -q /dev/stdin \
> /dev/null > revert_76a0a3f9cc2f.patch
> 
> I have applied revert_76a0a3f9cc2f.patch (rebuild and tested), then in
> addition revert_c93a6f62cb1b.patch and after applying
> revert_bfd546a552e1.patch irq storm didn't appear.
> 
> I have tested it with 3 subsequent reboots and in all those cases it was ok.

Thanks for all this testing.  It sounds like reverting all three of
76a0a3f9cc2f, c93a6f62cb1b, and bfd546a552e1 fixed the IRQ storm, but
I'm not clear on the results of other situations.

It looks like c93a6f62cb1b could be reverted by itself because it's
unrelated to 76a0a3f9cc2f and bfd546a552e1.  I added the authors of
all three in case they have any insights.

Bjorn
