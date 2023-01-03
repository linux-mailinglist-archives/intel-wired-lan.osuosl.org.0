Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2126065C71A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 20:13:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88CB94025A;
	Tue,  3 Jan 2023 19:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88CB94025A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672773213;
	bh=B7S2ScPR/2Ifwg7HMgHoeB/7A9uxM7uEocdBcpZt+Qc=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=zYkA8NQj6hDuJHr4vAdAqONRk4/QkUw4JiA2d1+S3mAPs+qloMbXdfNJydOXZEiCW
	 gngYG0GEZp1F4xUIIQXi7KBoUbeH/J2pqSAHEwhsk+8CjnlRHuUZjzvEcv2i49WmdA
	 6AYwKGiYG0sBGnnhaWKtNB4hW4Prs822S0CTfkQmXnbiITrTOV96AQ/YtLuzMbsfkw
	 0865YDvaGbDO+/+oDkJ8RPaGnraCp3MeVmgwqrfsQwtXgkQJTALHyM88i+WaIvhkDF
	 j01nx4uHRxVortErey05AeaeFDFCFqdjfMQHMN/A8+7e6tRnLFQM3+9qfr69dGRr40
	 8DpAMYCjXC9oA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Se8e4RP0sm3f; Tue,  3 Jan 2023 19:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CCCA4022E;
	Tue,  3 Jan 2023 19:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CCCA4022E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2AFC51BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 19:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0A34606A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 19:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0A34606A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7n6tQnrIzXk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 19:13:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 418B360011
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 418B360011
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 19:13:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F340C614FA;
 Tue,  3 Jan 2023 19:13:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83932C433EF;
 Tue,  3 Jan 2023 19:13:24 +0000 (UTC)
Date: Tue, 3 Jan 2023 13:13:23 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Khandelwal, Rajat" <rajat.khandelwal@intel.com>
Message-ID: <20230103191323.GA1011840@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB483539867F2BABC92F586F8696F49@CO1PR11MB4835.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672773204;
 bh=tSDPzU+5kzmh6ydrbMl2dVR41MTdLf+q1kWvPUFZiMQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=GXdurLDeCh4toqDsgsNdnN0cas4HphRoxVFcL2Ador31DDslwyfyYYpWlYjJ1Ikoy
 sLOkGN5PxQbrECiOYSTQxSpM1DQeQwn02nTrC5bPgHVkWhLpVaLRo/XLOaorozlqiU
 ibVxkw03ELSmdIdt5Rk/JLMiAQ1paw5pPbExims1JifDMGoZ1u1CpMXanE2Ujektyj
 7moyyLaPT0trnYAi526orDa0pke8u9j9cpi7RPKCmcI+NT3Snyv0BPEGSqtzSih9y9
 rfR3naI3KI9yqltuz/rTjS73lC3FNmy2JXvBbTTKLO4KMoy8BUZG3BOAftg5bpaP8z
 FFoxr144M11Ow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GXdurLDe
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Rajat Khandelwal <rajat.khandelwal@linux.intel.com>,
 Leon Romanovsky <leon@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Mushayev,
 Nikolay" <nikolay.mushayev@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Efrati, Nir" <nir.efrati@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 03, 2023 at 06:58:36AM +0000, Khandelwal, Rajat wrote:
> ...
> The reason I masked inherently is I witnessed a function
> netxen_mask_aer_correctable() inside
> net/ethernet/qlogic/netxen/netxen_nic_main.c, which masks the
> correctable errors in the corresponding PCIe device.

In my opinion, netxen_mask_aer_correctable() should not exist.  The
PCI core should own the PCI_ERR_COR_MASK register.

netxen_mask_aer_correctable() was added by dce87b960cf4 ("netxen: mask
correctable error") with the note that it is a "HW workaround."  Maybe
it covers up some hardware defect in the device, although it doesn't
include any evidence of this.

But if we do actually need it, I would rather have the driver set a
quirk bit that the PCI core can use to mask correctable errors so the
AER configuration is all in one place.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
