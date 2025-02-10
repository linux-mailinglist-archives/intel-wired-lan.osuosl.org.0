Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EB9A2EB85
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 12:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE05860801;
	Mon, 10 Feb 2025 11:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iXE0BbPl-rbU; Mon, 10 Feb 2025 11:40:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01722605A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739187653;
	bh=kumbr2jSCX/m6emLpPUVZzgSU1CKCNuEfJW5h/myOUc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r67bAmD1Frh1IWb3TfzvnAZBys9cZQq+RumgyGgCe5O5glSadQikc9320dAD6WW1H
	 QH2AsjI+4lILMa/Vtx47vbj5VNj2kRz8DVwop7TKyBODSjErfQkIpMdjz5ulGm8i5p
	 dbFSrEBekpZ1ljNsoCGaXfG4Byw6yIxzNDPbQo7JaWLCqfT3Y8AHYOJ+UhtNbd71tK
	 fWRwZqI2YxGsCi4l7x5oSHKzJOrZnH1MfWReKiCeNqWzsm1b6jsCsaYIM0e1ff4yo4
	 FT4sbcEjAg2ovxEbx4Qf0TTRMlsakmIkcsADxKkQlrcAgSW3DGxwjWY5e0o9/cen1H
	 sfGWFd9pNBksA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01722605A0;
	Mon, 10 Feb 2025 11:40:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3749D199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18CB0406F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hvHjmHQYF1Kh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 11:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 05001403FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05001403FC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05001403FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:40:48 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9630961E647BD;
 Mon, 10 Feb 2025 12:40:26 +0100 (CET)
Message-ID: <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
Date: Mon, 10 Feb 2025 12:40:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
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

Dear Jedrzej,


Thank you for your patch.

Am 10.02.25 um 11:40 schrieb Jedrzej Jagielski:
> E610 NICs unlike the previous devices utilising ixgbe driver
> are notified in the case of overheatning by the FW ACI event.

overheating (without n)

> In event of overheat when threshold is exceeded, FW suspends all
> traffic and sends overtemp event to the driver.

I guess this was already the behavior before your patch, and now it’s 
only logged, and the device stopped properly?

> Then driver
> logs appropriate message and closes the adapter instance.
> The card remains in that state until the platform is rebooted.

As a user I’d be interested what the threshold is, and what the measured 
temperature is. Currently, the log seems to be just generic?

     drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:static const char 
ixgbe_overheat_msg[] = "Network adapter has been stopped because it has 
over heated. Restart the computer. If the problem persists, power off 
the system and replace the adapter";

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2,3 : commit msg tweaks
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 5 +++++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
>   2 files changed, 8 insertions(+)


Kind regards,

Paul


> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 7236f20c9a30..5c804948dd1f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -3165,6 +3165,7 @@ static void ixgbe_aci_event_cleanup(struct ixgbe_aci_event *event)
>   static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
>   {
>   	struct ixgbe_aci_event event __cleanup(ixgbe_aci_event_cleanup);
> +	struct net_device *netdev = adapter->netdev;
>   	struct ixgbe_hw *hw = &adapter->hw;
>   	bool pending = false;
>   	int err;
> @@ -3185,6 +3186,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
>   		case ixgbe_aci_opc_get_link_status:
>   			ixgbe_handle_link_status_event(adapter, &event);
>   			break;
> +		case ixgbe_aci_opc_temp_tca_event:
> +			e_crit(drv, "%s\n", ixgbe_overheat_msg);
> +			ixgbe_close(netdev);
> +			break;
>   		default:
>   			e_warn(hw, "unknown FW async event captured\n");
>   			break;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> index 8d06ade3c7cd..617e07878e4f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> @@ -171,6 +171,9 @@ enum ixgbe_aci_opc {
>   	ixgbe_aci_opc_done_alt_write			= 0x0904,
>   	ixgbe_aci_opc_clear_port_alt_write		= 0x0906,
>   
> +	/* TCA Events */
> +	ixgbe_aci_opc_temp_tca_event                    = 0x0C94,
> +
>   	/* debug commands */
>   	ixgbe_aci_opc_debug_dump_internals		= 0xFF08,
>   

