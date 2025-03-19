Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B676DA68654
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 09:05:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F9E260AB7;
	Wed, 19 Mar 2025 08:05:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jy9RBWPxyB0g; Wed, 19 Mar 2025 08:05:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37AAA60D93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742371503;
	bh=NoHqB1e0J2a+eyddmHrSi/zln+4vTHhpsAkSDj6bkz0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qq7ncZgiqW7H1CeH0w9ertgtq/5LaXJw9pJNSOb5993fkfvF1/cVgdmwf7a8myAjU
	 C5zmIJa7309EnfuhV6n5QT0mvBuP9LLZ89hsyn/cLK+BcaBXgigV+UrtR+8yMJU8ok
	 1oP2v78WLn1Mp0+oH1UZylwinezskMueBG5en32EXun0aergpXqMt33XtsG3zdN6ec
	 BcH29m9yDW229/D9Os1TJLE7HIMfh9BUtUJ8X26+qMbLgWHiqOnB1SsUGM7/yBxvo/
	 gn0aclAJ1INPi8AbOg8nV7vSRAfOFw3M/OJBT/H8oy/W/hE1pdCNS0fHv3iMWY2Y99
	 SQskc33J+Tj6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37AAA60D93;
	Wed, 19 Mar 2025 08:05:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED70BCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 08:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC6AC40283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 08:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUstNWKh9kPj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 08:05:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFF6740251
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFF6740251
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFF6740251
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 08:04:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8425E5C55D2;
 Wed, 19 Mar 2025 08:02:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75431C4CEEA;
 Wed, 19 Mar 2025 08:04:57 +0000 (UTC)
Date: Wed, 19 Mar 2025 10:04:53 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>
Cc: "Ertman, David M" <david.m.ertman@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250319080453.GD1322339@unreal>
References: <20250226185022.GM53094@unreal>
 <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250302082623.GN53094@unreal>
 <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
 <20250314181230.GP1322339@unreal>
 <8b4868dd-f615-4049-a885-f2f95a3e7a54@intel.com>
 <20250317115728.GT1322339@unreal>
 <dc96e73c-391a-4d54-84db-ece96939d45d@intel.com>
 <20250318172026.GA9311@nvidia.com>
 <2e29a3f3-1c74-461a-a7ae-efe6c429fa1f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2e29a3f3-1c74-461a-a7ae-efe6c429fa1f@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742371498;
 bh=5c9Wsoq1MqSD3TR0ypeiF676vfndF7v+iU5L7FrV9Fw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A9bN8+Po8pf/YBZL3DmN75kiDB/zybI3lKt4MKgau/Jaw95AJ0MC0ZyPns5+jy04i
 3xVLjpQrS4QHwzTdeTF7nrRX+O5/yU6dT+OrXk6jHf6U5QzjJi6C8DcjqjelKROV06
 VnzJfdNEKfvAqYjpKKnj0LtYxIkg6iv41m/Gj+GownLOdoO3QCkG8qPMwUYVzyNRn7
 6eTrpLkAYq9D0FJI15Lj9g2K9Gx7SlYcB8zj0lQSyxjxKx7xjR8CLPOUo32FbGDrrr
 sDdiN7YFLrpYigm/nGvynKUDU82fNJf0JMv7167anBCguZx90ND2PniDOJ9/ExmjaM
 SGRqDtK4fNrpg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=A9bN8+Po
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
 to support multiple consumers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 18, 2025 at 12:45:48PM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 3/18/2025 10:20 AM, Jason Gunthorpe wrote:
> > On Tue, Mar 18, 2025 at 10:01:36AM -0700, Samudrala, Sridhar wrote:
> > 
> > > Yes. Today irdma uses exported symbols from i40e and ice and loading irdma
> > > results in both modules to be loaded even when only type of NIC is present
> > > on a system. This series is trying to remove that dependency by using
> > > callbacks.
> > 
> > If you really have two different core drivers that can provide the
> > same API then I think you are stuck with function pointers :\
> > 
> > It is really weird though, why are their two core drivers that can
> > provide the same API? Is this because intel keeps rewriting their
> > driver stack every few years?
> 
> This is a known issue due to HW/FW interface changes across multiple
> generations of the NICs forcing us to go with separate core drivers.
> 
> We are working with HW/FW teams to avoid this in future and going forward we
> expect to have idpf/ixd as the 2 drivers (idpf providing the data path
> functionality and ixd as the control/data/switchdev port-rep driver) for all
> our future FNICs/IPUs.
> 
> Leon, Could you approve the callbacks approach considering that irdma needs
> to support multiple intel nic core drivers. We would really appreciate it.

I'm not approving or denying anything. I just expressed my view on the
idea to reinvent wheel. It is not HW bug which prevents from you to use
Intel HW, but some bad architecture decision. This decision leads to
extra memory waste and nothing more.

If I remember correctly, the use of "i40e and ice" at the same time is an outcome
of Intel's decision to keep (and rename) old driver which supported iWARP only
to support both iWARP and RoCE.

Even then, that architecture decision wasn't well received.

RDMA subsystem has another maintainer, who can and should have different
opinions from me, you can try to convince him that function pointers is
the right approach here. I think that it is not, extra waste of memory
is a small price to pay for such architecture decision.

Thanks

> 
> -SridharW
> 
