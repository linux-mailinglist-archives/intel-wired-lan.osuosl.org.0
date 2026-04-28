Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFJ2A1mO8Gl4UwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:39:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F64B482C64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:39:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61D424128F;
	Tue, 28 Apr 2026 10:39:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQQ7Ag7X7lus; Tue, 28 Apr 2026 10:39:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD6524128B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777372756;
	bh=pBkKGyCnHo/WumAxGthc6hrl9KJPldFDEDPlbU81Xl4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kFnD21sLPWcd1TywsOZQZvNifvojtZisFEs3q1Br8NI164FegoeuGh3Zd3h2/fyvc
	 ppuQOPPyac/Qy6tdtszrEMPRFrnJLSSBLcUdafHLQt+WSgxMj3XQBxNyiKwFGLM1Xl
	 vZde9YJW0TTavCswkN3B0TyrLNmtCBUVLqekZaMNidYeU0x2bFP+NvimJtY5nDh9VB
	 u43Zc2yk/hRoLlEkPnlbSP8Tw9MqxttsmBHXZ2jk0It3VAuUzStFSG5p4WuO7/s/ZA
	 zLvGpksOsdafxHtTzU7BKTyk6RKIVFn1JkdeSPhEbv6u6LEpG9r+aLmRzNb1Jj8vbz
	 CkNPAuele5kww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD6524128B;
	Tue, 28 Apr 2026 10:39:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 53D701B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44B2960FE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i9-F1Iv_HxdC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:39:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E99A060FE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E99A060FE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E99A060FE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:39:13 +0000 (UTC)
X-CSE-ConnectionGUID: jRjZ6suKTte6JH1nHWx/+w==
X-CSE-MsgGUID: ZCqJMgfzQt+N5rdDPDVOfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82129665"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82129665"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:39:13 -0700
X-CSE-ConnectionGUID: b4j4xyRwTby95FsK2JPPBw==
X-CSE-MsgGUID: +lgNgHwhSai15uUy7ChhtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="231273121"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.81.233])
 ([10.247.81.233])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:39:09 -0700
Message-ID: <84b4f8bb-3c8c-4098-bc7f-7e9fd248c5ca@linux.intel.com>
Date: Tue, 28 Apr 2026 18:39:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, khai.wen.tan@linux.intel.com
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
 <20260428060009.311393-2-khai.wen.tan@linux.intel.com>
 <a9cfe2dc-f4dc-48fb-a374-0d2902baa0c5@molgen.mpg.de>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <a9cfe2dc-f4dc-48fb-a374-0d2902baa0c5@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777372754; x=1808908754;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Bgc9zNw8/VIIqORJYTIMHdUjkk5pjcVenC5PsPgEqi8=;
 b=OYwOZAqwpQhGYpftplENX2d9cWM0+hyvNX6thfvE2qEXvkJXvvGadM8Z
 /h3A4eg1fnVPMcL+7/fCeXkJ7VSJcBnUsCnq+t9nDR9QyHl/BkP+vFUin
 /Tkdw5Y+4PK2XxyTdSXYLtcYvO5CLT+SDrNI2JJcw6Cc0U5WtS6RlTVF8
 rNTFgQutJX3P/Rouc8qwi+OmVPd2nOMmJrJ9aOFPMsiZRDdUts+5CA5bl
 DCNc8eiOHs6LXVSXj7mT8HCkOdao0U04hEvwTo2d2KGgZIZ0SAQdfHE2x
 deWioRrsMZRsqc5sRcPgt6vc3+T6heyfBN5pb7Y5eTmVM3nhWEkd0Dvf9
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OYwOZAqw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/3] igc: remove unused
 autoneg_failed field
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
X-Rspamd-Queue-Id: 5F64B482C64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]


Hi Paul,

Thank you for your review.

On 28/4/2026 2:56 pm, Paul Menzel wrote:
> [Cc: Removed stray *Looi*]
> 
> Dear Khai Wen Tan,
> 
> 
> Thank you for your patch.
> 
> 
> Am 28.04.26 um 08:00 schrieb KhaiWenTan:
> 
> (Should spaces be added in your name?)
> 
>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>
>> autoneg_failed in struct igc_mac_info is never set in the igc driver.
>> Remove the field and the dead code checking it in
>> igc_config_fc_after_link_up().
> 
> Could you please elaborate. Why is removal the correct fix, and it’s not an 
> incomplete feature? Does auto-negotiation always succeed?
> 

Auto-negotiation does not always succeed, but igc does not use
autoneg_failed to handle that case, the field was never set anywhere
in the igc driver.

Before this patch, the only igc references to autoneg_failed were
the struct member declaration and the read in
igc_config_fc_after_link_up(). No igc code ever assigned it to true,
and git history shows no commit that added a setter since the code
creation in 2018.

The field originates from the e1000/e1000e fiber/serdes forced-link
path: when MAC-level auto-negotiation on fiber times out, the driver
forces link up and sets autoneg_failed so the flow-control code knows
pause was not negotiated and must be forced. igc has no fiber or
serdes media, it only supports copper (igc_media_type_copper), so
the code that sets autoneg_failed was never ported.

On copper, PHY auto-negotiation failure is handled differently:
- No link at all: igc_check_for_copper_link() returns before reaching
   flow-control configuration, there's nothing to configure FC on.
- Link present but autoneg not yet complete:
   igc_config_fc_after_link_up() checks MII_SR_AUTONEG_COMPLETE and
   returns early without resolving pause. The next link-status event
   re-triggers the check.
- Autoneg completes (including via parallel detection fallback when
   the link partner doesn't autoneg): the PHY still sets
   AUTONEG_COMPLETE but LP_ABILITY won't have PAUSE bits since the
   partner never sent autoneg pages. The existing flow-control logic
   in igc_config_fc_after_link_up() handles that correctly, it falls
   through to igc_fc_none or igc_fc_rx_pause based on requested_mode.

None of these paths need autoneg_failed. Keeping the field would be 
misleading to reader.


>> Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
> 
> Please order it to not use the comma: Hong Aun Looi
> 

Will do, thanks.

>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_hw.h  |  1 -
>>   drivers/net/ethernet/intel/igc/igc_mac.c | 16 +---------------
>>   2 files changed, 1 insertion(+), 16 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ 
>> ethernet/intel/igc/igc_hw.h
>> index be8a49a86d09..86ab8f566f44 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
>> @@ -92,7 +92,6 @@ struct igc_mac_info {
>>       bool asf_firmware_present;
>>       bool arc_subsystem_valid;
>>
>> -    bool autoneg_failed;
>>       bool get_link_status;
>>   };
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ 
>> ethernet/intel/igc/igc_mac.c
>> index 7ac6637f8db7..142beb9ae557 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>> @@ -438,28 +438,14 @@ void igc_config_collision_dist(struct igc_hw *hw)
>>    * Checks the status of auto-negotiation after link up to ensure that the
>>    * speed and duplex were not forced.  If the link needed to be forced, 
>> then
>>    * flow control needs to be forced also.  If auto-negotiation is enabled
>> - * and did not fail, then we configure flow control based on our link
>> - * partner.
>> + * then we configure flow control based on our link partner.
>>    */
>>   s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>>   {
>>       u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
>> -    struct igc_mac_info *mac = &hw->mac;
>>       u16 speed, duplex;
>>       s32 ret_val = 0;
>>
>> -    /* Check for the case where we have fiber media and auto-neg failed
>> -     * so we had to force link.  In this case, we need to force the
>> -     * configuration of the MAC to match the "fc" parameter.
>> -     */
>> -    if (mac->autoneg_failed)
>> -        ret_val = igc_force_mac_fc(hw);
>> -
>> -    if (ret_val) {
>> -        hw_dbg("Error forcing flow control settings\n");
>> -        goto out;
>> -    }
>> -
>>       /* In auto-neg, we need to check and see if Auto-Neg has completed,
>>        * and if so, how the PHY and link partner has flow control
>>        * configured.
> 
> 
> Kind regards,
> 
> Paul
> 

