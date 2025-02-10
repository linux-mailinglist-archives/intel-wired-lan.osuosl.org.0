Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C07FA2EC49
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 13:08:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4933F60641;
	Mon, 10 Feb 2025 12:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vmJUY1LD3KY1; Mon, 10 Feb 2025 12:08:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AD956064F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739189280;
	bh=BB2W2xwqZFdIkyIX4Ew3tULoZVCDrBIncHM0jrIJOSc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vEf9IgTR5PlUd0eE6bDx4NHQsdLE9JlU3HlRoAXkeFgdshmJmYl0Z2nRaKablHCpg
	 TZpycKBvEToAQdLreH5Zk6A5S2PKQMqdYQ7e1Q5HgL8/zFvAVfrbOB9vihymJ0ODIZ
	 oKSDkkgLop31j5dkQvfcIXOQHWtyDr9HTTPfvzMa3sney4+JuHrOiYuO/4htHBYS6n
	 TqnQ1/pQURjzHldeYvM2Nlvr0+DfiNplIe9hh0act9TMxJtaBotLz+12aI3eZG1WCp
	 TgpltxC46j3MrFpDz6VvdDKR5bkFmTaY43go+O1VLpqEAml/aW8xujMNIoogmTIYzs
	 Fg27LPDLcEYlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AD956064F;
	Mon, 10 Feb 2025 12:08:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 48462199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4316D6068D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clOa3a_4m9Bl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 12:07:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ECC9860641
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECC9860641
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECC9860641
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:07:55 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 54F2061E647BF;
 Mon, 10 Feb 2025 13:07:29 +0100 (CET)
Message-ID: <442420d6-3911-4956-95f1-c9b278d45cd6@molgen.mpg.de>
Date: Mon, 10 Feb 2025 13:07:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
 <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
 <DS0PR11MB77854D8F8DEEE0A44BB0E17EF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <DS0PR11MB77854D8F8DEEE0A44BB0E17EF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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


Thank you for the quick reply.


Am 10.02.25 um 12:59 schrieb Jagielski, Jedrzej:
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Monday, February 10, 2025 12:40 PM

>> Am 10.02.25 um 11:40 schrieb Jedrzej Jagielski:
>>> E610 NICs unlike the previous devices utilising ixgbe driver
>>> are notified in the case of overheatning by the FW ACI event.
>>
>> overheating (without n)
>>
>>> In event of overheat when threshold is exceeded, FW suspends all
>>> traffic and sends overtemp event to the driver.
>>
>> I guess this was already the behavior before your patch, and now it’s
>> only logged, and the device stopped properly?

> Without this patch driver cannot receive the overtemp info. FW handles
> the event - device stops but user has no clue what has happened.
> FW does the major work but this patch adds this minimal piece of
> overtemp handling done by SW - informing user at the very end.

Thank you for the confirmation. Maybe add a small note, that it’s not 
logged to make it crystal clear for people like myself.

>>> Then driver
>>> logs appropriate message and closes the adapter instance.
>>> The card remains in that state until the platform is rebooted.
>>
>> As a user I’d be interested what the threshold is, and what the measured
>> temperature is. Currently, the log seems to be just generic?
> 
> These details are FW internals.
> Driver just gets info that such event has happened.
> There's no additional information.
> 
> In that case driver's job is just to inform user that such scenario
> has happened and tell what should be the next steps.

 From a user perspective that is a suboptimal behavior, and shows 
another time that the Linux kernel should have all the control, and 
stuff like this should be moved *out* of the firmware and not into the 
firmware.

It’d be great if you could talk to the card designers/engineers to take 
that into account, and maybe revert this decision for future versions or 
future adapters.


Kind regards,

Paul


>>      drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:static const char ixgbe_overheat_msg[] = "Network adapter has been stopped because it has over heated. Restart the computer. If the problem persists, power off the system and replace the adapter";
>>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> ---
>>> v2,3 : commit msg tweaks
>>> ---
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 5 +++++
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
>>>    2 files changed, 8 insertions(+)
>>
>>
>> Kind regards,
>>
>> Paul
>>
>>
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> index 7236f20c9a30..5c804948dd1f 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> @@ -3165,6 +3165,7 @@ static void ixgbe_aci_event_cleanup(struct ixgbe_aci_event *event)
>>>    static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
>>>    {
>>>    	struct ixgbe_aci_event event __cleanup(ixgbe_aci_event_cleanup);
>>> +	struct net_device *netdev = adapter->netdev;
>>>    	struct ixgbe_hw *hw = &adapter->hw;
>>>    	bool pending = false;
>>>    	int err;
>>> @@ -3185,6 +3186,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
>>>    		case ixgbe_aci_opc_get_link_status:
>>>    			ixgbe_handle_link_status_event(adapter, &event);
>>>    			break;
>>> +		case ixgbe_aci_opc_temp_tca_event:
>>> +			e_crit(drv, "%s\n", ixgbe_overheat_msg);
>>> +			ixgbe_close(netdev);
>>> +			break;
>>>    		default:
>>>    			e_warn(hw, "unknown FW async event captured\n");
>>>    			break;
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>> index 8d06ade3c7cd..617e07878e4f 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>> @@ -171,6 +171,9 @@ enum ixgbe_aci_opc {
>>>    	ixgbe_aci_opc_done_alt_write			= 0x0904,
>>>    	ixgbe_aci_opc_clear_port_alt_write		= 0x0906,
>>>    
>>> +	/* TCA Events */
>>> +	ixgbe_aci_opc_temp_tca_event                    = 0x0C94,
>>> +
>>>    	/* debug commands */
>>>    	ixgbe_aci_opc_debug_dump_internals		= 0xFF08,
