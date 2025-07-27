Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DC1B1312C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 20:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A40D260FD6;
	Sun, 27 Jul 2025 18:30:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id POqgr5FNTYTv; Sun, 27 Jul 2025 18:30:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53A5860DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753641014;
	bh=Mpyl3IJxXxohHcXGQAdao9c1D0fGtkuy3T8H+xa9154=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wlRpnCcsHvIu8yZRHBiUYk6USkW6ckL6YPZ9atbe0SkLiEtqxjphWZ686MHWQB09C
	 KW4+17jNmwXhu1p+QcPIxcJpKrZHC0lZXswI+eC3xJpwbaLM+HVCkVDIyxb9MTEtYu
	 LJDUCrLLeyybn3Ong0BbrEcpj+HYXLj8iCXgj4yR1vaftGwjqaB4O8jO3qkAu3eTaI
	 dsdMSrhqyPZpW+1TYo0jgt0MUwuLJENoDhyK8E+xWVSjCnClEPoZLyNPHeWzmn4+Lh
	 qm5Wg/p6bL65F9V0dpF0Xi0vzMWXgQwA5o2ciVG//WcJX85Orfjrz/iB/1VW+BVOPC
	 8Jx43qy60ktWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53A5860DCF;
	Sun, 27 Jul 2025 18:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DD9D1231
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 18:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB52060C0D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 18:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yWkqAN-an7Wm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 18:30:11 +0000 (UTC)
X-Greylist: delayed 554 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Sun, 27 Jul 2025 18:30:10 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 923F960B72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 923F960B72
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 923F960B72
 for <intel-wired-lan@osuosl.org>; Sun, 27 Jul 2025 18:30:10 +0000 (UTC)
Received: from [192.168.2.202] (p5b13a0f7.dip0.t-ipconnect.de [91.19.160.247])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8364261E64849;
 Sun, 27 Jul 2025 20:20:40 +0200 (CEST)
Message-ID: <8d1e606d-7320-4f02-98fe-e899702ac6e7@molgen.mpg.de>
Date: Sun, 27 Jul 2025 20:20:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>
Cc: intel-wired-lan@osuosl.org, vitaly.lifshits@intel.com
References: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
 <20250727140011.527375-1-iam@valdikss.org.ru>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250727140011.527375-1-iam@valdikss.org.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
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

Dear ValdikSS,


Thank you for your patch and debugging this.

Am 27.07.25 um 16:00 schrieb ValdikSS:
> Device ID comparison in igc_is_device_id_i226 is performed before
> the ID is set, resulting in always failing check.

It’d be great if you added a Fixes: tag, and also a line how to test it.

> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
> Signed-off-by: ValdikSS <iam@valdikss.org.ru>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 031c332f6..1b4465d6b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7115,6 +7115,13 @@ static int igc_probe(struct pci_dev *pdev,
>   	adapter->port_num = hw->bus.func;
>   	adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);
>   
> +	/* PCI config space info */
> +	hw->vendor_id = pdev->vendor;
> +	hw->device_id = pdev->device;
> +	hw->revision_id = pdev->revision;
> +	hw->subsystem_vendor_id = pdev->subsystem_vendor;
> +	hw->subsystem_device_id = pdev->subsystem_device;
> +
>   	/* Disable ASPM L1.2 on I226 devices to avoid packet loss */
>   	if (igc_is_device_id_i226(hw))
>   		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
> @@ -7141,13 +7148,6 @@ static int igc_probe(struct pci_dev *pdev,
>   	netdev->mem_start = pci_resource_start(pdev, 0);
>   	netdev->mem_end = pci_resource_end(pdev, 0);
>   
> -	/* PCI config space info */
> -	hw->vendor_id = pdev->vendor;
> -	hw->device_id = pdev->device;
> -	hw->revision_id = pdev->revision;
> -	hw->subsystem_vendor_id = pdev->subsystem_vendor;
> -	hw->subsystem_device_id = pdev->subsystem_device;
> -
>   	/* Copy the default MAC and PHY function pointers */
>   	memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
>   	memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));

This diff looks fine.


Kind regards,

Paul
