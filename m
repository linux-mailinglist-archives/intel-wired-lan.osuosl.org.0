Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 991BCA124F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 14:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BC1C60B9B;
	Wed, 15 Jan 2025 13:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uilmK5xmGK1S; Wed, 15 Jan 2025 13:40:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5524260BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736948414;
	bh=1wP+NUQchphSGsilS1IFsEIpczeRgDvJivqNrEOo+ok=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=akD2X6VNZ5IFMi/NW+T52IbMrw8d4lUHmhqIfrYh8yom8Kp0Bw8CK/JFCu3GmzTCK
	 rBCMjs/wP28maZqQ9BAT4dCgSq3+DCnZTl+AgA4HcLa70lscwGSujA6vcE9+E5p2fi
	 YvuBDLhT1wtZxc8ObA9tUY0EG8nYyNY5Z87Dn2fD9JaTia0g05o8Oiy+Y9kdYTQI0b
	 L0AEC+W1YVOPyQfRT61UOVfC3k1mmiWFJZcvEXf5HQoqGDMKKm+TpM3k+aZ1q4nmsJ
	 HX/oj00mrLAxy4C2FtADETp6FHa/hdrkPd5okJdyDJZszoN8x67APSkMaiq6y/ZdE4
	 qzUla12dTxJaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5524260BE5;
	Wed, 15 Jan 2025 13:40:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5048EB89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 13:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BDFA40AFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 13:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w9SmLKhrTjau for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 13:40:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6615C40C49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6615C40C49
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6615C40C49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 13:40:09 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DF51361E647A3;
 Wed, 15 Jan 2025 14:39:52 +0100 (CET)
Message-ID: <c8cf251c-9788-4d00-a633-7a4a7bdc5e87@molgen.mpg.de>
Date: Wed, 15 Jan 2025 14:39:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250115122720.431223-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250115122720.431223-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: add support for
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


Thank you for the patch.

Am 15.01.25 um 13:27 schrieb Jedrzej Jagielski:
> E610 NICs unlike the previous devices utilising ixgbe driver
> are notified in the case of overheat by the FW ACI event.

overheat*ing*

> In event of overheat when treshhold is exceeded, FW suspends all

threshold

> traffic and sends overtemp event to the driver. Then driver
> loggs appropriate message and closes the adapter instance.

logs

> The card remains in that state until the platform is rebooted.

How did you test this? Can you please paste the message?

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 5 +++++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
>   2 files changed, 8 insertions(+)
> 
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

Kind regards,

Paul
