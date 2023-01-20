Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A7B6749EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 04:17:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 988D640278;
	Fri, 20 Jan 2023 03:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 988D640278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674184667;
	bh=Ln4qLnMccr7KsOHi+qbSMoMk3HCIKqKsNk2MXMeZUCc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jbNgSKVPaXHSf5/8ZHp8JdCAb7/gcO+zOyptvwF2jnmoKFTeF2OHsEniTBoApWGCs
	 GvfMNnh/sH+JL3GqEPw1XXxafoHWxAlZPNeuHHUUbmRp/H+w2A7GPP+TcXI2MWbNy1
	 vIMSOWW92i+XwHHqYVys4NXCz4CCWoaNDI2fDsDYlBEX4oZqz6j+SwmdDDK3hI9wiv
	 d8jLuESKtZvED/PbqgvGGciaQ6EmSD9n8xREIDdB+hD0YUEWB5+R4hWEnLhVP7Bs1u
	 7dZuS6QUXHnyb8LcM6PF+rum5maXNCV/X+eWAhNvyegYD7qYMNCnpn1Xt6DaoEQVGO
	 jqDY8nVKPhQAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eSW6q0PoV9d; Fri, 20 Jan 2023 03:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E55B405EB;
	Fri, 20 Jan 2023 03:17:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E55B405EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B49E1BF470
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 03:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75BDD40126
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 03:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75BDD40126
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rFCixJmn71d4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 03:17:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BDBE400FC
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BDBE400FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 03:17:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A596EB826F9;
 Fri, 20 Jan 2023 03:17:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03EE5C433F1;
 Fri, 20 Jan 2023 03:17:35 +0000 (UTC)
Date: Thu, 19 Jan 2023 19:17:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20230119191735.4bc11fd2@kernel.org>
In-Reply-To: <20230118234612.272916-3-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-3-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674184656;
 bh=uU3oYI54L8VUNcIszGsQrFwwcTkBniJmQ4MJV8jgxeU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X3IJSsoJlyArYgPxfFji8JJ141V1EnCDTsHj9ob0eTDDZV0plBOD289ABFprkPp2B
 AOPSuN8cf9XjiRx2B7m0rbBnfdY1zVSBAqImK4HcrYZ3nD71tMO7/IrjZwt1foHMH9
 XT35k/MAw3kgcM6jQUZDW628l8GyrtxPY4FuURpp1+ovx2k6bqF4494bpV8kqeeZ3n
 qKFT9XD6KolBzJJtZM1Qoq+JU8bVOddZRgFb0n8FoLX1vKj9D6qWG7+HEA/mc05KIt
 x4ICHCaEUBvtbM5KHlVNRXvETKVMJBbac76tNDpJW5seXBx3XyqF30XgS2MvFct1rx
 ZQjWWK3/GmIpw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=X3IJSsoJ
Subject: Re: [Intel-wired-lan] [PATCH 2/9] e1000e: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 18 Jan 2023 17:46:05 -0600 Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that
> is controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

How would you like to route these? Looks like there's no dependency 
so we can pick them up?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
