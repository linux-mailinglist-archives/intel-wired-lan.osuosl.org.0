Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5742F18F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jan 2021 15:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E221F85BB8;
	Mon, 11 Jan 2021 14:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HPErB45CH9S4; Mon, 11 Jan 2021 14:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B390785C67;
	Mon, 11 Jan 2021 14:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32A3D1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 13:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2DCB085DB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 13:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GPGD_8m8XrM7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jan 2021 13:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DE3F85D78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 13:26:13 +0000 (UTC)
IronPort-SDR: sYkrHR/0fbfTDq9cPPDLO89NOJPSBiUclSJF0l9SLOEyuCuHYgmmjfzUhxFM9zs8vHcPXycUXQ
 TdR5cbX+SOrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="178007073"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="178007073"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 05:26:08 -0800
IronPort-SDR: 9rR6L8Ra2W2XoqC4xXwCfSU+DGNafg++oodP96V4LoXDNkru7uqyOtpLuWUDc0gcxrq6T4a1zg
 d6tBu8T/W0PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="423789385"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2021 05:26:04 -0800
Received: by black.fi.intel.com (Postfix, from userid 1000)
 id 9B0E4114; Mon, 11 Jan 2021 15:26:02 +0200 (EET)
Date: Mon, 11 Jan 2021 16:26:02 +0300
From: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
To: "Radev, Martin" <martin.radev@aisec.fraunhofer.de>
Message-ID: <20210111132602.bcd5hmtoqe4dcjwp@black.fi.intel.com>
References: <AM7P194MB0900E443CEBD6EF2EE37325ED9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
 <AM7P194MB09004AD790C5C85EDCB42323D9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM7P194MB09004AD790C5C85EDCB42323D9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
X-Mailman-Approved-At: Mon, 11 Jan 2021 14:58:30 +0000
Subject: Re: [Intel-wired-lan] Security issue with vmxnet3 and e100 for AMD
 SEV(-SNP) / Intel TDX
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
Cc: "martin.b.radev@gmail.com" <martin.b.radev@gmail.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "sathyanarayanan.kuppuswamy@linux.intel.com"
 <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "file@sect.tu-berlin.de" <file@sect.tu-berlin.de>,
 "doshir@vmware.com" <doshir@vmware.com>,
 "pv-drivers@vmware.com" <pv-drivers@vmware.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "brijesh.singh@amd.com" <brijesh.singh@amd.com>, "Banse,
 Christian" <christian.banse@aisec.fraunhofer.de>, "Kleen,
 Andi" <andi.kleen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Morbitzer, Mathias" <mathias.morbitzer@aisec.fraunhofer.de>,
 Robert Buhren <robert.buhren@sect.tu-berlin.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 08, 2021 at 03:31:56PM +0000, Radev, Martin wrote:
> Just noticed that Intel TDX already does the device filtering. Check: https://github.com/intel/tdx/commit/6789eee52aab8985e49b362379fab73aa3eecde2
> 
> CC-ing Kirill and Kuppuswamy from Intel in case they want to be part of the discussion.
> ________________________________
> From: Radev, Martin
> Sent: Friday, January 8, 2021 12:57 PM
> To: netdev@vger.kernel.org <netdev@vger.kernel.org>; intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>
> Cc: doshir@vmware.com <doshir@vmware.com>; jesse.brandeburg@intel.com <jesse.brandeburg@intel.com>; anthony.l.nguyen@intel.com <anthony.l.nguyen@intel.com>; Morbitzer, Mathias <mathias.morbitzer@aisec.fraunhofer.de>; Robert Buhren <robert.buhren@sect.tu-berlin.de>; file@sect.tu-berlin.de <file@sect.tu-berlin.de>; Banse, Christian <christian.banse@aisec.fraunhofer.de>; brijesh.singh@amd.com <brijesh.singh@amd.com>; Thomas.Lendacky@amd.com <Thomas.Lendacky@amd.com>; pv-drivers@vmware.com <pv-drivers@vmware.com>; martin.b.radev@gmail.com <martin.b.radev@gmail.com>
> Subject: Security issue with vmxnet3 and e100 for AMD SEV(-SNP) / Intel TDX
> 
> Hello everybody,
> 
> tldr: Both drivers expose skb GVAs to untrusted devices which gives RIP
>          control to a malicious e100 / vmxnet3 device implementation. This is
>          an issue for AMD SEV (-SNP) [1] and likely Intel TDX [2].
> 
> Felicitas and Robert have started a project on fuzzing device drivers which
> may have negative security impact on solutions like AMD SEV Secure
> Nested Paging and Intel Trusted Domain Extensions. These solutions protect
> a VM from a malicious Hypervisor in various way.
> 
> There are a couple of devices which carry security issues under the attacker
> models of SEV-SNP / Intel TDX, but here we're only discussing VMXNET3 and
> e100, because we have detailed PoCs for both.
> 
> Maintainers of both vmxnet3 and e100 were added in this email because the
> discussion will likely be the same. The issues were already sent to AMD PSIRT,
> and Tom Lendacky and Brijesh Singh have volunteered to be part of the email
> communication with the maintainers. Both have been working on AMD SEV.
> 
> Please check the two attached files: vmxnet3_report.txt and e100_report.txt.
> Both contain detailed information about what the issue is and how it can be
> exploited by a malicious HV or attacker who has access to the QEMU process.
> 
> Fix:
> In an earlier discussion with AMD, there was the idea of making a list of
> allowed devices with SEV and forbidding everything else. This would avoid
> issues with other drivers whose implementation has not been yet scrutinized
> under the threat model of SEV-SNP and Intel Trusted Domain Extensions.

+Andi.

Right. Our TDX guest enabling has white list of devices that allowed to be
used. For now it's only VirtIO, but I believe it also requires hardening.
We need to validate any VMM input.

It might be beneficial to have coordination between Intel and AMD on what
devices (and device drivers) considered to be safe for trusted computing.
I think we can share burden of code audit and fuzzing.

-- 
 Kirill A. Shutemov
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
