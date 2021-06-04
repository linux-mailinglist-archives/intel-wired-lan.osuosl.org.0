Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2776B39C3E0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 01:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F11240278;
	Fri,  4 Jun 2021 23:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ETw9yUUiZazR; Fri,  4 Jun 2021 23:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93D1840225;
	Fri,  4 Jun 2021 23:27:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1B921BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 23:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CED1B415F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 23:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjYbeAMABjAl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 23:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0CA86415E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 23:27:06 +0000 (UTC)
IronPort-SDR: lNz1Kll24vuSxviKcCvuFWUSD3e2vH4l3Z3NVFe81OQz9DrW92FkkETW2sjZ2T5q0vyYzSR8dI
 K1PBEGUhdM1g==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204417067"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="204417067"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 16:27:05 -0700
IronPort-SDR: iAVDE/vmAqWrvAWl48ex59qbScDCEaekDl0uyq15IBJD25YOLL6WcIpKmrVPBxNFjIykVlcpCZ
 bO7fXjtuF8mQ==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="448429786"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.251.24.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 16:27:04 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20210604222542.GA2246166@bjorn-Precision-5520>
References: <20210604222542.GA2246166@bjorn-Precision-5520>
Date: Fri, 04 Jun 2021 16:27:04 -0700
Message-ID: <87bl8lxlbr.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v4 1/4] Revert "PCI: Make
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Bjorn Helgaas <helgaas@kernel.org> writes:

> On Fri, Jun 04, 2021 at 03:09:30PM -0700, Vinicius Costa Gomes wrote:
>> Make pci_enable_ptm() accessible from the drivers.
>> 
>> Even if PTM still works on the platform I am using without calling
>> this function, it might be possible that it's not always the case.
>
> Not really relevant to this commit, strictly speaking.
>

Will remove then.

>> Exposing this to the driver enables the driver to use the
>> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
>> 
>> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.
>
> Ideally I would cite this as ac6c26da29c1 ("PCI: Make pci_enable_ptm()
> private") so there's a little more context.
>

Yeah, that looks better.

Will follow the suggestions you made in the next patch as well and send
another version, thanks.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
