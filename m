Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9C0B13549
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 09:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27B6C60B1E;
	Mon, 28 Jul 2025 07:04:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kGXNC3Ed3-0; Mon, 28 Jul 2025 07:04:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C4FA608C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753686248;
	bh=aPeigkPpNy0z311kihCZ9iSSAAtlMGlxBp+LeAJGLvI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HnFWB0Wy+qpcTownjpNdn8or6Kqq8p1Y2JPQvoOP4nUgqfkPrzTPXPGMug6J1HNTz
	 +4IjTkdKkuUfh7rSEaDSZLIQ7XQwGgBsbTHEgjjHx0fnLUceIH+IhTyBIdsIdnYrOc
	 my1lByLdnX1o/p5RxQb3MBXjEalbWL9uf+tvFiMBMNn35sSeo3PNH7Eb39CHRaao4/
	 0RSW6WAQpmUmC4VmkWk0bh1XaVKfsGA0cJAW+wGqYBmM6xvVdB6Ffx+AFInRL07AzG
	 4PExWfy2VbTxjCP/0KksldKcZW6UK3ZuhaTqyL2vYGVaS1rmOpBlIWCqAnNiwieSYI
	 PJNeTaxSkpgjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C4FA608C5;
	Mon, 28 Jul 2025 07:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F0491BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 07:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B5FF82354
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 07:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zbywW4FyPzpW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 07:04:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8AA758233A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AA758233A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AA758233A
 for <intel-wired-lan@osuosl.org>; Mon, 28 Jul 2025 07:04:02 +0000 (UTC)
Received: from [192.168.2.202] (p57bd9d4f.dip0.t-ipconnect.de [87.189.157.79])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 41CCB61E6484D;
 Mon, 28 Jul 2025 09:03:45 +0200 (CEST)
Message-ID: <c3713450-605d-4b1e-ae41-bbbcaedc946f@molgen.mpg.de>
Date: Mon, 28 Jul 2025 09:03:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>
Cc: intel-wired-lan@osuosl.org, vitaly.lifshits@intel.com,
 linux-pci@vger.kernel.org
References: <8d1e606d-7320-4f02-98fe-e899702ac6e7@molgen.mpg.de>
 <20250727204331.564435-1-iam@valdikss.org.ru>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250727204331.564435-1-iam@valdikss.org.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226 on init
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


Thank you for your patch. Please make sure to use `git format-patch 
-v<N>` (reroll count) to mark the iteration of the patch.

Am 27.07.25 um 22:43 schrieb ValdikSS:
> Device ID comparison in igc_is_device_id_i226 is performed before
> the ID is set, resulting in always failing check on init.
> 
> Before the patch:
> * L1.2 is not disabled on init
> * L1.2 is properly disabled after suspend-resume cycle
> 
> With the patch:
> * L1.2 is properly disabled both on init and after suspend-resume
> 
> How to test:
> Connect to the 1G link with 300+ mbit/s Internet speed, and run
> the download speed test, such as:
> 
>      curl -o /dev/null http://speedtest.selectel.ru/1GB
> 
> Without L1.2 disabled, the speed would be no more than ~200 mbit/s.
> With L1.2 disabled, the speed would reach 1 gbit/s.
> Note: it's required that the latency between your host and the remote
> be around 3-5 ms, the test inside LAN (<1 ms latency) won't trigger the
> issue.

`sudo lspci -vv -s <x>` can be used to check L1.2 enablement under 
`L1SubCtl1`.

> 
> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
> Fixes: 0325143b59c6 ("igc: disable L1.2 PCI-E link substate to avoid performance issue")
> Signed-off-by: ValdikSS <iam@valdikss.org.ru>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
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

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
