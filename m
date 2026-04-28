Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCh5GzPN8GkKYwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:07:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0EF4878BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF98B81B14;
	Tue, 28 Apr 2026 15:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Oj5jpARlQLQ; Tue, 28 Apr 2026 15:07:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CA5681D5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777388848;
	bh=n1Mp1qX8xz2ijMkLiFo4CC3dt9q4bTzJ8VvmE5MbnRQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l6aU3r8KU+stP8zcPElf/t4fsTVPcfuqcrrmL4G9vVHMZT8m5RBd9al0gnp4Hlk5Y
	 7AqYFVm+7+fbRXrn8OOCGuG0B4vWQ1oEJApvLPG59GMNqo3p/yEdzyIi5Expo97Kxp
	 FT9I100oeOop0QCdyuFXTjBgmr4sp0E8/cq33YQKfIZ9uzpSzIwAr4lNu4iFW03bxT
	 ZR3xK5/KOf4HXhRiDWXLZtnHGW12zhgNW3uJGMCA0UmLLl7QBiymrLsE3BSV2BYUGX
	 YHzFOa35bZr3C6h44PwvYQ9xVcRpIy7Cxcw2DcjgAw4s5m8r437T8rpaMhq4cqI/Iv
	 b3cAw1rTL24sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CA5681D5A;
	Tue, 28 Apr 2026 15:07:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 47C72231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27C9040F57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:07:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7m6yArJXOHZ5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 15:07:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C21940F4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C21940F4E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C21940F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:07:23 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 524524C4431132;
 Tue, 28 Apr 2026 17:06:26 +0200 (CEST)
Message-ID: <d3d4915c-1bc5-4e04-bfc4-9d9787849c6f@molgen.mpg.de>
Date: Tue, 28 Apr 2026 17:06:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Faizal Abdul Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: khai.wen.tan@linux.intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
 <20260428060009.311393-2-khai.wen.tan@linux.intel.com>
 <a9cfe2dc-f4dc-48fb-a374-0d2902baa0c5@molgen.mpg.de>
 <84b4f8bb-3c8c-4098-bc7f-7e9fd248c5ca@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <84b4f8bb-3c8c-4098-bc7f-7e9fd248c5ca@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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
X-Rspamd-Queue-Id: 7F0EF4878BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:faizal.abdul.rahim@linux.intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,molgen.mpg.de:mid];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]

Dear Faizal,


Am 28.04.26 um 12:39 schrieb Abdul Rahim, Faizal:

> On 28/4/2026 2:56 pm, Paul Menzel wrote:

>> Am 28.04.26 um 08:00 schrieb KhaiWenTan:
>>
>> (Should spaces be added in your name?)
>>
>>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>>
>>> autoneg_failed in struct igc_mac_info is never set in the igc driver.
>>> Remove the field and the dead code checking it in
>>> igc_config_fc_after_link_up().
>>
>> Could you please elaborate. Why is removal the correct fix, and it’s 
>> not an incomplete feature? Does auto-negotiation always succeed?
> 
> Auto-negotiation does not always succeed, but igc does not use
> autoneg_failed to handle that case, the field was never set anywhere
> in the igc driver.
> 
> Before this patch, the only igc references to autoneg_failed were
> the struct member declaration and the read in
> igc_config_fc_after_link_up(). No igc code ever assigned it to true,
> and git history shows no commit that added a setter since the code
> creation in 2018.
> 
> The field originates from the e1000/e1000e fiber/serdes forced-link
> path: when MAC-level auto-negotiation on fiber times out, the driver
> forces link up and sets autoneg_failed so the flow-control code knows
> pause was not negotiated and must be forced. igc has no fiber or
> serdes media, it only supports copper (igc_media_type_copper), so
> the code that sets autoneg_failed was never ported.
> 
> On copper, PHY auto-negotiation failure is handled differently:
> - No link at all: igc_check_for_copper_link() returns before reaching
>    flow-control configuration, there's nothing to configure FC on.
> - Link present but autoneg not yet complete:
>    igc_config_fc_after_link_up() checks MII_SR_AUTONEG_COMPLETE and
>    returns early without resolving pause. The next link-status event
>    re-triggers the check.
> - Autoneg completes (including via parallel detection fallback when
>    the link partner doesn't autoneg): the PHY still sets
>    AUTONEG_COMPLETE but LP_ABILITY won't have PAUSE bits since the
>    partner never sent autoneg pages. The existing flow-control logic
>    in igc_config_fc_after_link_up() handles that correctly, it falls
>    through to igc_fc_none or igc_fc_rx_pause based on requested_mode.
> 
> None of these paths need autoneg_failed. Keeping the field would be 
> misleading to reader.

Thank you. For me the information about just supporting copper would be 
great to have in the commit message.

>>> Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
>>
>> Please order it to not use the comma: Hong Aun Looi
> 
> Will do, thanks.
> 
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>> Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/igc/igc_hw.h  |  1 -
>>>   drivers/net/ethernet/intel/igc/igc_mac.c | 16 +---------------
>>>   2 files changed, 1 insertion(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ 
>>> ethernet/intel/igc/igc_hw.h
>>> index be8a49a86d09..86ab8f566f44 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
>>> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
>>> @@ -92,7 +92,6 @@ struct igc_mac_info {
>>>       bool asf_firmware_present;
>>>       bool arc_subsystem_valid;
>>>
>>> -    bool autoneg_failed;
>>>       bool get_link_status;
>>>   };
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ 
>>> ethernet/intel/igc/igc_mac.c
>>> index 7ac6637f8db7..142beb9ae557 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>>> @@ -438,28 +438,14 @@ void igc_config_collision_dist(struct igc_hw *hw)
>>>    * Checks the status of auto-negotiation after link up to ensure 
>>> that the

Just for your information, that your mailer wraps the lines of the quotes.

[…]

>>>    * speed and duplex were not forced.  If the link needed to be 
>>> forced, then
>>>    * flow control needs to be forced also.  If auto-negotiation is 
>>> enabled
>>> - * and did not fail, then we configure flow control based on our link
>>> - * partner.
>>> + * then we configure flow control based on our link partner.
>>>    */
>>>   s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>>>   {
>>>       u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
>>> -    struct igc_mac_info *mac = &hw->mac;
>>>       u16 speed, duplex;
>>>       s32 ret_val = 0;
>>>
>>> -    /* Check for the case where we have fiber media and auto-neg failed
>>> -     * so we had to force link.  In this case, we need to force the
>>> -     * configuration of the MAC to match the "fc" parameter.
>>> -     */
>>> -    if (mac->autoneg_failed)
>>> -        ret_val = igc_force_mac_fc(hw);
>>> -
>>> -    if (ret_val) {
>>> -        hw_dbg("Error forcing flow control settings\n");
>>> -        goto out;
>>> -    }
>>> -
>>>       /* In auto-neg, we need to check and see if Auto-Neg has 
>>> completed,
>>>        * and if so, how the PHY and link partner has flow control
>>>        * configured.

Kind regards,

Paul
