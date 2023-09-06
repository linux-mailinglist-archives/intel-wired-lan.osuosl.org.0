Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D13793446
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 06:00:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E7E24149C;
	Wed,  6 Sep 2023 04:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E7E24149C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693972806;
	bh=LeHHt5M/th8CFfVTVZlg8b4j3cGEwKDMPxCFxD/ARzY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZdQY2h2WwEQH80YTW5b/K0Atv7uIhxLVLqY/bZYirI/kMMsGBTLaDqAOOcqFvMeHU
	 DaVRQueoDbkkrz3RRhd3WZXMH5BjwfSC6Ob1X+wZquBQMUvRaGrNUTJ7gcM8NRlQq2
	 rtADYdkd/oWR50Cs1I0jzrHt540h1An/F4EVBMZIlcyodTmOWKDwEw+yM++0kMfEea
	 khoEuWenSewvWRtHJ2BXyeBoTTZmV+rZIjqW+xVZSugN4m8lwudD0BG8k0pKDB16IK
	 NGLCazJ97xPy8kWZKPmR6+otwoCAPVMiOnEJWducDZqFYVDib9c7d09hQvBg8mpGOw
	 4n8z3Km+viGsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDz5Adr2RvCF; Wed,  6 Sep 2023 04:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27852402F3;
	Wed,  6 Sep 2023 04:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27852402F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BF0E1BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 03:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 651B4402F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 03:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 651B4402F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hXzraio4Tvlz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 03:59:58 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14A4E401A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 03:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14A4E401A1
Received: from [192.168.0.185] (ip5f5aeeca.dynamic.kabel-deutschland.de
 [95.90.238.202])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 229C861E5FE01;
 Wed,  6 Sep 2023 05:59:48 +0200 (CEST)
Message-ID: <5a18abd6-8f36-41e5-a4cd-67ad910cb489@molgen.mpg.de>
Date: Wed, 6 Sep 2023 05:59:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20230905185020.3613223-1-ahmed.zaki@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230905185020.3613223-1-ahmed.zaki@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 0/4] Support rx-fcs on/off
 for VFs
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Ahmed,


Thank you for submitting this work.

Am 05.09.23 um 20:50 schrieb Ahmed Zaki:
> Allow the user to turn on/off the CRC/FCS stripping through ethtool. We
> first add the CRC offload capability in the virtchannel, then the feature
> is enabled in ice and iavf drivers.
> 
> We make sure that the netdev features are fixed such that CRC stripping
> cannot be disabled if VLAN rx offload (VLAN strip) is enabled. Also, VLAN
> stripping cannot be enabled unless CRC stripping is ON.

Please add a paragraph, how you tested this.


Kind regards,

Paul


> ---
> v6: Some code was mistakenly included in v5 (4/4), sorry for spamming.
> v5: Remove extra space in ice_for_each_alloc_rxq()  (3/4)
> v4: Use ice_for_each_alloc_rxq in ice_vsi_is_rxq_crc_strip_dis()  (3/4)
> v3: Fix Tony's comments in ice_vf_init_vlan_stripping() (3/4)
> v2: Move patch "ice: Fix VLAN and CRC strip co-existence" from 4/4 to 3/4
>      Other minor fixes from Tony for the same patch
> 
> Haiyue Wang (2):
>    ice: Support FCS/CRC strip disable for VF
>    ice: Fix VLAN and CRC strip co-existence
> 
> Norbert Zulinski (1):
>    iavf: Add ability to turn off CRC stripping for VF
> 
> Paul M Stillwell Jr (1):
>    virtchnl: Add CRC stripping capability
> 
>   drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 +++++++++++++++-
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 69 +++++++++++++++++--
>   include/linux/avf/virtchnl.h                  | 11 ++-
>   6 files changed, 141 insertions(+), 7 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
