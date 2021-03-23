Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D4346938
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 20:41:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7CDA83A4D;
	Tue, 23 Mar 2021 19:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIWKpuRck2je; Tue, 23 Mar 2021 19:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1923C835C9;
	Tue, 23 Mar 2021 19:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 407121BF334
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C6286086C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AaQyCzdMGshS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 19:40:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BD6160623
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:40:52 +0000 (UTC)
IronPort-SDR: iXq7oXYyGj+oRHKxcOGVZKJZUuSq7NBbupOX4SoMKazQq1LzYl9JaAHIJgbxOVPFMAo8Ig0cOy
 jeHPMmxmTZXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="210640721"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="210640721"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 12:40:51 -0700
IronPort-SDR: 50JVbDM3OXVNtr/9fTbaGCYta4bCy8TsLKj4kOe4teHrkNLyvLOKCFUUJiA5ZElecQnWCZKuJQ
 DkCCGOfYXgLQ==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="452283510"
Received: from ckane-desk.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.48.247])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 12:40:50 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20210323192920.GA597326@bjorn-Precision-5520>
References: <20210323192920.GA597326@bjorn-Precision-5520>
Date: Tue, 23 Mar 2021 12:40:49 -0700
Message-ID: <87mtutk69q.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 2/3] igc: Enable PCIe PTM
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

> On Mon, Mar 22, 2021 at 09:18:21AM -0700, Vinicius Costa Gomes wrote:
>> In practice, enabling PTM also sets the enabled_ptm flag in the PCI
>> device, the flag will be used for detecting if PTM is enabled before
>> adding support for the SYSOFFSET_PRECISE ioctl() (which is added by
>> implementing the getcrosststamp() PTP function).
>
> I think you're referring to the "pci_dev.ptm_enabled" flag.  I'm not
> sure what the connection to this patch is.  The SYSOFFSET_PRECISE
> stuff also seems to belong with some other patch.

Yeah, I will improve the commit message to make it clear that this patch
is a preparation patch for the one that will add support for
PTP_SYS_OFFSET_PRECISE/getcrosststamp() and what's the relation with
PCIe PTM.

>
> This patch merely enables PTM if it's supported (might be worth
> expanding Precision Time Measurement for context).

Yes. Will expand the definition in the commit message.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
