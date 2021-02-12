Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEFA31981D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 02:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F0F68763B;
	Fri, 12 Feb 2021 01:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DSu8zS9GO4q6; Fri, 12 Feb 2021 01:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 033C68763C;
	Fri, 12 Feb 2021 01:49:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8ED91C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C48B98763B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N1-c12tPDPSs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 01:49:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 635DA8763A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:49:51 +0000 (UTC)
IronPort-SDR: PehnS/6mTXAFtHjWUi8dcR1qbKuxArBmvPeG5oFJSs46ePe9UADscaolXZ57LsCGBLDr7JOImJ
 6qI3/IHQ9vlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="162110098"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="162110098"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:49:44 -0800
IronPort-SDR: y/IHBG3P7t9LchfyYGaTnrDAbM/9N4lKNIjUI6kJREgFO8vc7aamRdWswLhOs2CdCSJ9TG+sim
 UogNZqRlh6Hw==
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="376121876"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.251.150.184])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:49:40 -0800
Date: Thu, 11 Feb 2021 17:49:37 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Dan Siemon <dan@coverfire.com>
Message-ID: <20210211174937.00006632@intel.com>
In-Reply-To: <5ff376e94c76a9b475242d829ca7b7d2e1786620.camel@coverfire.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
 <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
 <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
 <d3f0614118192ba0df5ec0e845f61e092f187744.camel@coverfire.com>
 <20210209120223.000041ca@intel.com>
 <5ff376e94c76a9b475242d829ca7b7d2e1786620.camel@coverfire.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dan Siemon wrote:

> On Tue, 2021-02-09 at 12:02 -0800, Jesse Brandeburg wrote:
> > Please provide us with which driver/kernel/firmware you're running,
> > uname -a
> > ethtool -i ethx
> > lspci -vvv -s < your pci bus:dev.fn>
> 
> We are ok to update to the latest 710 firmware and we follow the kernel
> releases closely.
> 
> As we haven't had problems related to firmware, we still have many 710s
> in the field that are on 6.01 firmware. Below are dumps from a couple
> of our test boxes where I have upgraded the firmware.

Hi Dan, thanks for the detail, I think your firmware is new enough, but
I'm pretty sure our driver isn't configuring enough (it's currently an
unsupported feature in Linux i40e) to get it working. Newer than 6.01 is
all I know of that is required for firmware based on what I know right
now.

I've filed an internal issue tracker against i40e and sometime
(hopefully) soon we'll have the team looking into details. I don't have
any timeline for you currently, sorry.

I agree this is an important use case. We appreciate your reporting the
issue to us. Based on what I found when doing some initial triage, it
doesn't seem like a simple fix in the code, so I can't offer you a
patch to fix the issue like I wish I could.

Please keep us posted if you find any other relevant details, and I'll
try to update this thread if we find any info or get a test patch up
and running.

-Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
