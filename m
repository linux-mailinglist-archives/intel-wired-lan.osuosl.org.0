Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9590B87C1F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 18:16:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42F41410EA;
	Thu, 14 Mar 2024 17:16:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r6YP5HeqMHvG; Thu, 14 Mar 2024 17:16:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25AF8410DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710436582;
	bh=Vv5+GJ2H72OtZp5Q7FjppK435Qe+DXqy2DrBspVR6Y0=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=XZlye5SErqVPtnB6d6lKKOmdp/WhGcRujJzKljma9DHKOTz7CU7bFgdk2uJamw/2e
	 RMD55jc5moxpkO0gXV0NxN7Cw3WuHdrrcBS7aAxoCa/pkSgVUNJAsm78/foLIKtMMJ
	 3y3uUbFHJNaRgzjuZu33623/xt+/MA2awyWs6G12u8CbQeLs9RFXncyHhzmF1vDfT/
	 B80Qo03/j1I6qX8zrD2bf9ekjNg0vqS406XfQK498GKgTK89/og+s+8Z2rDD+qPEEf
	 n0F3t8UzHPy6e5Lcikx/KcO7IGlMyRMuZfh6nbToiJhMdyWoyPoTW0bmmJfDw4t9zC
	 W9R+VknLHLs1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25AF8410DF;
	Thu, 14 Mar 2024 17:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 324971BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 17:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AADC410C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 17:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LhJE_H0WzYJK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 17:16:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C048410BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C048410BB
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C048410BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 17:16:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0B278CE1E18;
 Thu, 14 Mar 2024 17:16:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C6BC433F1;
 Thu, 14 Mar 2024 17:16:12 +0000 (UTC)
Date: Thu, 14 Mar 2024 12:16:11 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20240314171611.GA958323@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240206135717.8565-3-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710436573;
 bh=L79tdLUwzaaRgRXL97CbprC3UX8xdukYNWJfNJ9rn8Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=bLCoITag/SuEtTrsO/sMEjHd4BnWeVtJvXB6210xjO0cdkxYMA8vA1JIb6pEd2Kfy
 Id8hEuP4GShaNC+PpogaxARWBhxMId5O2Cie8lL7/14MzwoABw+v7vAtpZtvsqvwVm
 j+7ReyKeR/gEjByLQxpMlRsVYXDEGyGeHFdCK6t+sjpJtjaZP9s/5wAN9lzVmWJr7r
 pLa+CQidixlNP3GHezj2k/ubGEQYBhmB8PMTnGZbFPbhqQ4aFXAmuJp6RUqrSv3XnA
 050p8/o022AJfkYOdhHhi7dvoS2VTcsuMhDFAH55Xucdvzdz4Rqw4PKJtaUCOfiv+R
 zUf5Dv5K5Grxg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bLCoITag
Subject: Re: [Intel-wired-lan] [PATCH 2/4] PCI: Generalize TLP Header Log
 reading
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
Cc: Oliver O'Halloran <oohall@gmail.com>, Tony Luck <tony.luck@intel.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 linux-pci@vger.kernel.org, Greg Rose <gvrose8192@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 linux-efi@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, linuxppc-dev@lists.ozlabs.org,
 Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org,
 linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+cc Greg, Jeff -- ancient history, I know, sorry!]

On Tue, Feb 06, 2024 at 03:57:15PM +0200, Ilpo Järvinen wrote:
> Both AER and DPC RP PIO provide TLP Header Log registers (PCIe r6.1
> secs 7.8.4 & 7.9.14) to convey error diagnostics but the struct is
> named after AER as the struct aer_header_log_regs. Also, not all places
> that handle TLP Header Log use the struct and the struct members are
> named individually.
> 
> Generalize the struct name and members, and use it consistently where
> TLP Header Log is being handled so that a pcie_read_tlp_log() helper
> can be easily added.
> 
> Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index bd541527c8c7..5fdf37968b2d 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright(c) 1999 - 2018 Intel Corporation. */
>  
> +#include <linux/aer.h>
>  #include <linux/types.h>
>  #include <linux/module.h>
>  #include <linux/pci.h>
> @@ -391,22 +392,6 @@ u16 ixgbe_read_pci_cfg_word(struct ixgbe_hw *hw, u32 reg)
>  	return value;
>  }
>  
> -#ifdef CONFIG_PCI_IOV
> -static u32 ixgbe_read_pci_cfg_dword(struct ixgbe_hw *hw, u32 reg)
> -{
> -	struct ixgbe_adapter *adapter = hw->back;
> -	u32 value;
> -
> -	if (ixgbe_removed(hw->hw_addr))
> -		return IXGBE_FAILED_READ_CFG_DWORD;
> -	pci_read_config_dword(adapter->pdev, reg, &value);
> -	if (value == IXGBE_FAILED_READ_CFG_DWORD &&
> -	    ixgbe_check_cfg_remove(hw, adapter->pdev))
> -		return IXGBE_FAILED_READ_CFG_DWORD;
> -	return value;
> -}
> -#endif /* CONFIG_PCI_IOV */
> -
>  void ixgbe_write_pci_cfg_word(struct ixgbe_hw *hw, u32 reg, u16 value)
>  {
>  	struct ixgbe_adapter *adapter = hw->back;
> @@ -11332,8 +11317,8 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
>  #ifdef CONFIG_PCI_IOV
>  	struct ixgbe_hw *hw = &adapter->hw;
>  	struct pci_dev *bdev, *vfdev;
> -	u32 dw0, dw1, dw2, dw3;
> -	int vf, pos;
> +	struct pcie_tlp_log tlp_log;
> +	int vf, pos, ret;
>  	u16 req_id, pf_func;
>  
>  	if (adapter->hw.mac.type == ixgbe_mac_82598EB ||
> @@ -11351,14 +11336,13 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
>  	if (!pos)
>  		goto skip_bad_vf_detection;
>  
> -	dw0 = ixgbe_read_pci_cfg_dword(hw, pos + PCI_ERR_HEADER_LOG);
> -	dw1 = ixgbe_read_pci_cfg_dword(hw, pos + PCI_ERR_HEADER_LOG + 4);
> -	dw2 = ixgbe_read_pci_cfg_dword(hw, pos + PCI_ERR_HEADER_LOG + 8);
> -	dw3 = ixgbe_read_pci_cfg_dword(hw, pos + PCI_ERR_HEADER_LOG + 12);
> -	if (ixgbe_removed(hw->hw_addr))
> +	ret = pcie_read_tlp_log(pdev, pos + PCI_ERR_HEADER_LOG, &tlp_log);
> +	if (ret < 0) {
> +		ixgbe_check_cfg_remove(hw, pdev);
>  		goto skip_bad_vf_detection;
> +	}
>  
> -	req_id = dw1 >> 16;
> +	req_id = tlp_log.dw[1] >> 16;
>  	/* On the 82599 if bit 7 of the requestor ID is set then it's a VF */
>  	if (!(req_id & 0x0080))
>  		goto skip_bad_vf_detection;
> @@ -11369,9 +11353,8 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
>  
>  		vf = FIELD_GET(0x7F, req_id);
>  		e_dev_err("VF %d has caused a PCIe error\n", vf);
> -		e_dev_err("TLP: dw0: %8.8x\tdw1: %8.8x\tdw2: "
> -				"%8.8x\tdw3: %8.8x\n",
> -		dw0, dw1, dw2, dw3);
> +		e_dev_err("TLP: dw0: %8.8x\tdw1: %8.8x\tdw2: %8.8x\tdw3: %8.8x\n",
> +			  tlp_log.dw[0], tlp_log.dw[1], tlp_log.dw[2], tlp_log.dw[3]);
>  		switch (adapter->hw.mac.type) {
>  		case ixgbe_mac_82599EB:
>  			device_id = IXGBE_82599_VF_DEVICE_ID;

The rest of this patch is headed for v6.10, but I dropped this ixgbe
change for now.

These TLP Log registers are generic, not device-specific, and if
there's something lacking in the PCI core that leads to ixgbe reading
and dumping them itself, I'd rather improve the PCI core so all
drivers will benefit without having to add code like this.

83c61fa97a7d ("ixgbe: Add protection from VF invalid target DMA") [1]
added the ixgbe TLP Log dumping way back in v3.2 (2012).  It does do
some device-specific VF checking and so on, but even back then, it
looks like the PCI core would have dumped the log itself [2], so I
don't know why we needed the extra dumping in ixgbe.

So what I'd really like is to remove the TLP Log reading and printing
from ixgbe completely, but keep the VF checking.

Bjorn

[1] https://git.kernel.org/linus/83c61fa97a7d
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pci/pcie/aer/aerdrv_errprint.c?id=83c61fa97a7d#n181
