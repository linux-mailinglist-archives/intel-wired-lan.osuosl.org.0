Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EA18873F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 20:30:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DF14416D1;
	Fri, 22 Mar 2024 19:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqYR_qE9q7bo; Fri, 22 Mar 2024 19:30:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 949E5418F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711135818;
	bh=6SZFJM4nqq6pe7Hdd5N5sKGISuuPTE9MkYTJ3mAOFbY=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=bomq26rwz1eKHc0pkOUw7k5OL91xFEpXh/HBmt0ssn3S9bRBR6IfMCBHjT0CJISjz
	 jZuzWriBz3CRGKBlMsTcGod8hfsDymhjWQ6r2iCubcTwGSQUKStYV6KW1yROw3FZGy
	 GmCM/hK2KbX9QVKK1GAK/Hy2254ATGYm3IKwCf3TQu4h1ilTzoIqoZtO7Q68LeNiPb
	 TiZ2UhJSqPYQmnbdhgmZnelVKzESGDeuRf2F7Jdz297l2r0vGSzQInmvGj1LJ/OATH
	 lTV98Yq4z3UBlFsGCpa5hhyZVpjR3ooYSVLqxG/+ILZ1+B8wLcFb514wNiNuk+hsvP
	 7Qr1aTNV264rQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 949E5418F4;
	Fri, 22 Mar 2024 19:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2F4B1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 19:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEF2A405FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 19:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJPNE6b2fl1T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 19:30:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7CB040323
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7CB040323
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7CB040323
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 19:30:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9EF8261491;
 Fri, 22 Mar 2024 19:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17D41C433F1;
 Fri, 22 Mar 2024 19:30:12 +0000 (UTC)
Date: Fri, 22 Mar 2024 14:30:11 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20240322193011.GA701027@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240206135717.8565-4-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711135813;
 bh=9R6ki8LkQLAWyMMmV+81/0KXBdxdkaUt91oUyJxHRXQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=GI4W6i26GH4YKoxcLI7lQ8yf1CYz3gnsVS5q/50obT5c+RAjHWdIx+1+1fcYFuMSK
 z7tq2Hy8gsByyk1C6HLUmIdEjEMjPlAEd5SPyoRNSsS1HUrAS8NtMtMQaTjVj8XtIP
 GfI5wwIhfK2ZdvFH8yfESIP4RXcrOtJGRVvTmGJafpDdRsj5RvAbXWu2XtvMvItr/Z
 Zoq9QazCmln///YbTsHQqQmawt8pLZ8s+57149iivVTAWIDAH/W5Cm1wZubwMH+tEE
 0i08O00EIoJelk5Ubc024aZSDXEmpIUnVRa35wSfyaEC/x0wB3d6Rabg6Z8TigwMBO
 GVbz6krwT5hCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GI4W6i26
Subject: Re: [Intel-wired-lan] [PATCH 3/4] PCI: Add TLP Prefix reading into
 pcie_read_tlp_log()
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
Cc: Oliver O'Halloran <oohall@gmail.com>, linux-efi@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Tony Luck <tony.luck@intel.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-pci@vger.kernel.org,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 06, 2024 at 03:57:16PM +0200, Ilpo Järvinen wrote:
> pcie_read_tlp_log() handles only 4 TLP Header Log DWORDs but TLP Prefix
> Log (PCIe r6.1 secs 7.8.4.12 & 7.9.14.13) may also be present.

s/TLP Header Log/Header Log/ to match spec terminology (also below)

> Generalize pcie_read_tlp_log() and struct pcie_tlp_log to handle also
> TLP Prefix Log. The layout of relevant registers in AER and DPC
> Capability is not identical but the offsets of TLP Header Log and TLP
> Prefix Log vary so the callers must pass the offsets to
> pcie_read_tlp_log().

s/is not identical but/is identical, but/ ?

The spec is a little obtuse about Header Log Size.

> Convert eetlp_prefix_path into integer called eetlp_prefix_max and
> make is available also when CONFIG_PCI_PASID is not configured to
> be able to determine the number of E-E Prefixes.

I think this eetlp_prefix_path piece is right, but would be nice in a
separate patch since it's a little bit different piece to review.

> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11336,7 +11336,9 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
>  	if (!pos)
>  		goto skip_bad_vf_detection;
>  
> -	ret = pcie_read_tlp_log(pdev, pos + PCI_ERR_HEADER_LOG, &tlp_log);
> +	ret = pcie_read_tlp_log(pdev, pos + PCI_ERR_HEADER_LOG,
> +				pos + PCI_ERR_PREFIX_LOG,
> +				aer_tlp_log_len(pdev), &tlp_log);
>  	if (ret < 0) {
>  		ixgbe_check_cfg_remove(hw, pdev);
>  		goto skip_bad_vf_detection;

We applied the patch to export pcie_read_tlp_log(), but I'm having
second thoughts about it.   I don't think drivers really have any
business here, and I'd rather not expose either pcie_read_tlp_log() or
aer_tlp_log_len().

This part of ixgbe_io_error_detected() was added by 83c61fa97a7d
("ixgbe: Add protection from VF invalid target DMA"), and to me it
looks like debug code that probably doesn't need to be there as long
as the PCI core does the appropriate logging.

Bjorn
