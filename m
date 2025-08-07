Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D612AB1D1C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 06:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7785F83FC3;
	Thu,  7 Aug 2025 04:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9xyGf9OuOk7; Thu,  7 Aug 2025 04:59:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC2A284011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754542761;
	bh=9SFymbIGWzi/QX5vo4v0KkKpvo+GIxgk0RhPC3TwBJ0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZP2vMOU3TAlVYCMMa2BpSeXCnZT276fjVYnllZ81xrF3ohUEMjSj05Ny4SPAZidrp
	 my7L8VB7jotTa7kebqQluoSkIm0XHtCVYDEzjfh0InDg9HKP4mm3lQpm83bgXSG7aD
	 j0N9UcGMqrkJ5Y1EzNdeIhGt7kw/zucn4uBB6i+sww2oz8AEMUs/nMq4xXJUrIMDVx
	 z3OS502LMHXciaW57ql0lBchYDU91cErSdGP4us1d1ewiaBA1IZY7IGta0qBsnM0V4
	 OXr7k8mCB2EenpGkuKh1S18BbVMffjfANhtCXlMKsYv2GuXKYAg1VZbPJtRHbtowpa
	 ZNLJNud4C0J1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC2A284011;
	Thu,  7 Aug 2025 04:59:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 165C631
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 04:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04E8460901
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 04:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wW2uTq9zpnlC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 04:59:19 +0000 (UTC)
X-Greylist: delayed 545 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Thu, 07 Aug 2025 04:59:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 43D99608D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43D99608D2
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=2a01:37:3000::53df:4ef0:0; helo=bmailout2.hostsharing.net;
 envelope-from=foo00@h08.hostsharing.net; receiver=<UNKNOWN> 
Received: from bmailout2.hostsharing.net (bmailout2.hostsharing.net
 [IPv6:2a01:37:3000::53df:4ef0:0])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43D99608D2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 04:59:17 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout2.hostsharing.net (Postfix) with ESMTPS id 10B01200A446;
 Thu,  7 Aug 2025 06:50:10 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 088D3493353; Thu,  7 Aug 2025 06:50:09 +0200 (CEST)
Date: Thu, 7 Aug 2025 06:50:09 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Thinh Tran <thinhtr@linux.ibm.com>
Cc: netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 pmenzel@molgen.mpg.de, jesse.brandeburg@intel.com,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, rob.thomas@ibm.com,
 Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <aJQwgTbRY59C196Z@wunner.de>
References: <20240515210705.620-1-thinhtr@linux.ibm.com>
 <20240515210705.620-3-thinhtr@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515210705.620-3-thinhtr@linux.ibm.com>
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V4,
 2/2] i40e: Fully suspend and resume IO operations in EEH case
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

On Wed, May 15, 2024 at 04:07:05PM -0500, Thinh Tran wrote:
> When EEH events occurs, the callback functions in the i40e, which are
> managed by the EEH driver, will completely suspend and resume all IO
> operations.
> 
> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>   with i40e_io_suspend(). The change is to fully suspend all I/O
>   operations
> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>   with pci_enable_device(). This change enables both I/O and memory of
>   the device.
> - In the PCI error resume callback, replaced i40e_handle_reset_warning()
>   with i40e_io_resume(). This change allows the system to resume I/O
>   operations

The above was applied as commit c80b6538d35a.

> @@ -16481,7 +16483,8 @@ static pci_ers_result_t i40e_pci_error_slot_reset(struct pci_dev *pdev)
>  	u32 reg;
>  
>  	dev_dbg(&pdev->dev, "%s\n", __func__);
> -	if (pci_enable_device_mem(pdev)) {
> +	/* enable I/O and memory of the device  */
> +	if (pci_enable_device(pdev)) {
>  		dev_info(&pdev->dev,
>  			 "Cannot re-enable PCI device after reset.\n");
>  		result = PCI_ERS_RESULT_DISCONNECT;

Why was this change made?

The driver calls pci_enable_device_mem() in i40e_probe(),
so calling pci_enable_device() here doesn't seem to make any sense.

The difference between pci_enable_device() and pci_enable_device_mem()
is that the former also enables access to the I/O Space of the device.
However I/O Space access is usually not used outside of x86.
And your patch targets powerpc because you seek to support EEH,
a powerpc-specific mechanism.

Unfortunately the commit message is not helpful at all because it
merely lists the code changes in prose form but doesn't explain
the *reason* for the change.

Thanks,

Lukas
