Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A0994C99F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 07:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CB8D81E90;
	Fri,  9 Aug 2024 05:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgLq8fLbiQ-H; Fri,  9 Aug 2024 05:30:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CB1181E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723181445;
	bh=xtAHmrJc7jYsn5REORNNY+W6JKN4MrSVIwF6+kt4soc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lMiTyC05bDgtGq8KVzXCnoICLLaxU985s/hblte4FDIxcjPJW96q3O/ATpgeut+9M
	 dn9H6MCbhXg399PWHp2OfGCBK+P/hgLmtSdMMBzaZhM9+LHd0b7FKI3gfTVtx/9Ytj
	 ac/npodciBVPjvOB74lUkbevz1mAMrcx+5eG/T0KfpXklsbJ8ya9hJPYsP3/qaFV20
	 LitGeRuHeCEfFBSQ0PN4/V4kNOjbNon2Yv+DpVdudCgdPoVvm1/MV72j8QG2mjvJda
	 jUZ/7AP46TBGbBm34t1BzlZ2OFUaVEADxvlI/fJQcerhJPBjbakUhcNQkblDZl1nYx
	 SDvoMo0VE24Hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CB1181E92;
	Fri,  9 Aug 2024 05:30:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 593841BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 446AA605C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y4KkIUJ-wPgS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 05:30:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D760960067
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D760960067
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D760960067
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:30:40 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af7c9.dynamic.kabel-deutschland.de
 [95.90.247.201])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C431761E64862;
 Fri,  9 Aug 2024 07:30:16 +0200 (CEST)
Message-ID: <3975b135-25ae-4576-ba61-db0f51fcf987@molgen.mpg.de>
Date: Fri, 9 Aug 2024 07:30:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jiri Pirko <jiri@resnulli.us>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
 <ZrTli6UxMkzE31TH@nanopsycho.orion> <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
 <08fbb337-d2f1-47a7-871e-3890b34a782f@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <08fbb337-d2f1-47a7-871e-3890b34a782f@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/8] ice: devlink PF MSI-X max
 and min parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Cc: -nex.sw.ncis.nat.hpm.dev@intel.com (550 #5.1.0 Address rejected.)]

Am 09.08.24 um 07:18 schrieb Paul Menzel:
> Dear Michal,
> 
> 
> Thank you for your patch.
> 
> Am 09.08.24 um 07:13 schrieb Michal Swiatkowski:
>> On Thu, Aug 08, 2024 at 05:34:35PM +0200, Jiri Pirko wrote:
>>> Thu, Aug 08, 2024 at 09:20:09AM CEST, 
>>> michal.swiatkowski@linux.intel.com wrote:
>>>> Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>>>> range.
>>>>
>>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>>> ---
>>>> .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
>>>> drivers/net/ethernet/intel/ice/ice.h          |  8 +++
>>>> drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
>>>> 3 files changed, 76 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/ 
>>>> drivers/net/ethernet/intel/ice/devlink/devlink.c
>>>> index 29a5f822cb8b..bdc22ea13e0f 100644
>>>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>>> @@ -1518,6 +1518,32 @@ static int 
>>>> ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>>>>     return 0;
>>>> }
>>>>
>>>> +static int
>>>> +ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
>>>> +                 union devlink_param_value val,
>>>> +                 struct netlink_ext_ack *extack)
>>>> +{
>>>> +    if (val.vu16 > ICE_MAX_MSIX) {
>>>> +        NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
>>>
>>> No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
>>> That is the name of the param.
>>
>> Ok, will change both, thanks.
> 
> Maybe also print both values in the error message?
> 
>>>> +        return -EINVAL;
>>>> +    }
>>>> +
>>>> +    return 0;
>>>> +}
> 
> […]
> 
> 
> Kind regards,
> 
> Paul
