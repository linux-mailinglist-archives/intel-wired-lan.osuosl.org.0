Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6DC3B1065
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 01:13:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEDF1405AE;
	Tue, 22 Jun 2021 23:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zup0NQm4njdE; Tue, 22 Jun 2021 23:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F10D40227;
	Tue, 22 Jun 2021 23:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 051C31BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 23:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0098A60841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 23:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJnPLtZIII2i for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 23:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95CCE606CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 23:13:42 +0000 (UTC)
IronPort-SDR: 7i37HDVP7rkLWn80ETBTXInzGdP3CyVZKg2iavG5fv0LZE3YGoOs4CEEqJpeaqzYnMToGorAsq
 5iegDSGzg1Mg==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="187540873"
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="187540873"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 16:13:39 -0700
IronPort-SDR: Ry76tJ1Tq4pNasP9FTpcg+1wgRvYhctm2f3MUxZtMwx/kyvfOjcS0zrikj1DiSVmPG6kvrq1dL
 gc9lDNnKozJA==
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="444767084"
Received: from rdsaffor-mobl2.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.255.229.23])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 16:13:38 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <a9c671aa107bb1436b924dd91e802ff642591468.camel@intel.com>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-3-vinicius.gomes@intel.com>
 <a9c671aa107bb1436b924dd91e802ff642591468.camel@intel.com>
Date: Tue, 22 Jun 2021 16:13:38 -0700
Message-ID: <8735t9sdb1.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/5] igc: Integrate flex
 filter into ethtool ops
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
Cc: "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "kurt@linutronix.de" <kurt@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony,

"Nguyen, Anthony L" <anthony.l.nguyen@intel.com> writes:

> On Thu, 2021-06-10 at 17:39 -0700, Vinicius Costa Gomes wrote:
>> From: Kurt Kanzenbach <kurt@linutronix.de>
>>
>> Use the flex filter mechanism to extend the current ethtool filter
>> operations by intercoperating the user data. This allows to match
>> eight more bytes within a Ethernet frame in addition to macs, ether
>> types and vlan.
>>
>> The matching pattern looks like this:
>>
>>  * dest_mac [6]
>>  * src_mac [6]
>>  * tpid [2]
>>  * vlan tci [2]
>>  * ether type [2]
>>  * user data [8]
>>
>> This can be used to match Profinet traffic classes by FrameID range.
>>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>> ---
>
> I was preparing these patches for a pull request and came across a
> couple warnings. Could you address them before I send these on?

Sure thing. Sorry I missed those.

>
> <snip>
>
>> @@ -1215,6 +1221,20 @@ static void igc_ethtool_init_nfc_rule(struct
>> igc_nfc_rule *rule,
>>               ether_addr_copy(rule->filter.dst_addr,
>>                               fsp->h_u.ether_spec.h_dest);
>>       }
>> +
>> +     /* Check for user defined data */
>> +     if ((fsp->flow_type & FLOW_EXT) &&
>> +         (fsp->h_ext.data[0] || fsp->h_ext.data[1])) {
>> +             rule->filter.match_flags |= IGC_FILTER_FLAG_USER_DATA;
>> +             memcpy(rule->filter.user_data, fsp->h_ext.data,
>> sizeof(fsp->h_ext.data));
>> +             memcpy(rule->filter.user_mask, fsp->m_ext.data,
>> sizeof(fsp->m_ext.data));
>> +
>> +             /* VLAN etype matching is only valid using flex filter
>> */
>> +             if ((fsp->flow_type & FLOW_EXT) && fsp-
>> >h_ext.vlan_etype) {
>> +                     rule->filter.vlan_etype = fsp-
>> >h_ext.vlan_etype;
>> +                     rule->filter.match_flags |=
>> IGC_FILTER_FLAG_VLAN_ETYPE;
>
> drivers/net/ethernet/intel/igc/igc_ethtool.c:1234:49: warning:
> incorrect type in assignment (different base types)
> drivers/net/ethernet/intel/igc/igc_ethtool.c:1234:49:    expected
> unsigned short [usertype] vlan_etype
> drivers/net/ethernet/intel/igc/igc_ethtool.c:1234:49:    got restricted
> __be16 const [usertype] vlan_etype

Will fix.

>
> <snip>
>
>> +static int igc_add_flex_filter(struct igc_adapter *adapter,
>> +                            struct igc_nfc_rule *rule)
>> +{
>> +     struct igc_flex_filter flex = { };
>> +     struct igc_nfc_filter *filter = &rule->filter;
>> +     unsigned int eth_offset, user_offset;
>> +     int ret, index;
>> +     bool vlan;
>> +
>> +     index = igc_find_avail_flex_filter_slot(adapter);
>> +     if (index < 0)
>> +             return -ENOSPC;
>> +
>> +     /* Construct the flex filter:
>> +      *  -> dest_mac [6]
>> +      *  -> src_mac [6]
>> +      *  -> tpid [2]
>> +      *  -> vlan tci [2]
>> +      *  -> ether type [2]
>> +      *  -> user data [8]
>> +      *  -> = 26 bytes => 32 length
>> +      */
>> +     flex.index    = index;
>> +     flex.length   = 32;
>> +     flex.rx_queue = rule->action;
>> +
>> +     vlan = rule->filter.vlan_tci || rule->filter.vlan_etype;
>> +     eth_offset = vlan ? 16 : 12;
>> +     user_offset = vlan ? 18 : 14;
>> +
>> +     /* Add destination MAC  */
>> +     if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
>> +             igc_flex_filter_add_field(&flex, &filter->dst_addr, 0,
>> +                                       ETH_ALEN, NULL);
>> +
>> +     /* Add source MAC */
>> +     if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
>> +             igc_flex_filter_add_field(&flex, &filter->src_addr, 6,
>> +                                       ETH_ALEN, NULL);
>> +
>> +     /* Add VLAN etype */
>> +     if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE)
>> +             igc_flex_filter_add_field(&flex, &filter->vlan_etype,
>> 12,
>> +                                       sizeof(filter->vlan_etype),
>> +                                       NULL);
>> +
>> +     /* Add VLAN TCI */
>> +     if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
>> +             igc_flex_filter_add_field(&flex, &filter->vlan_tci, 14,
>> +                                       sizeof(filter->vlan_tci),
>> NULL);
>> +
>> +     /* Add Ether type */
>> +     if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
>> +             u16 etype = cpu_to_be16(filter->etype);
>
> drivers/net/ethernet/intel/igc/igc_main.c:3332:29: warning: incorrect
> type in initializer (different base types)
> drivers/net/ethernet/intel/igc/igc_main.c:3332:29:    expected unsigned
> short [usertype] etype
> drivers/net/ethernet/intel/igc/igc_main.c:3332:29:    got restricted
> __be16 [usertype]

Will fix.

>
>
>> +             igc_flex_filter_add_field(&flex, &etype, eth_offset,
>> +                                       sizeof(etype), NULL);
>> +     }
>>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
