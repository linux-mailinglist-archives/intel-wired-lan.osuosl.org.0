Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E12A0B39980
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A16F40DBA;
	Thu, 28 Aug 2025 10:19:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lC7T3df4LSKg; Thu, 28 Aug 2025 10:19:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D84840C16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756376389;
	bh=hG2R1Bkv9qVosRscKm612j4UuXS2eUujrOM+V+p/8pg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rkLjH6amY3/vxXLfiW30iVmRiVE/fi22k38coFAwzYJOBncuXfpV2S8pVYBNMiRnt
	 RN+akQ407tGVJHwaCNdC1g3WkcuN+MtD0i9OEpgArHk+sLdItSNOFnFctp8K1p6J78
	 xHTDtBGYp1fOiF3BpdowBVce5+jbSDoS07HNS4Q9ZHaTVcQ7kOEXqXhfchmrRVeRUk
	 3/zz6+EmyperYysZx8XDhzzig5OdbA+HJAj42OL/cpL8MwOfwfMUuqVvnD7i6XTMuZ
	 gnfou/ACAMUDvRDdKqmo8IIm8c4T+jVo2R0gfgPoTrw5m+Hmdz9mLvfyApVbT1dcYa
	 yDavRFVuK2Tpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D84840C16;
	Thu, 28 Aug 2025 10:19:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C54717D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6914340C16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOE9tOd-crmx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:19:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6FB3340B85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FB3340B85
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FB3340B85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:19:46 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-Dg84fT4JMXKlwwgataykNw-1; Thu, 28 Aug 2025 06:19:43 -0400
X-MC-Unique: Dg84fT4JMXKlwwgataykNw-1
X-Mimecast-MFC-AGG-ID: Dg84fT4JMXKlwwgataykNw_1756376383
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3c8bc2914a9so374012f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 03:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756376383; x=1756981183;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hG2R1Bkv9qVosRscKm612j4UuXS2eUujrOM+V+p/8pg=;
 b=cPwc1V5+l9rix8C2JtqgKxGtbtcvpOmvRp5AeimoPKEWzRrYGCSsyNyXQ9sCK0DFSA
 gITEl+yNV4pkMLtXOKz+FoMndEcUFwtxIZdHadgJNjVL+Z7cjsF9IFMZLmBRpPSYc/Ps
 ratEZlt9cR3wB5Q0ltH3rW3qjg0Fr+8ZsScvw3+mXovZIhUD7J/zgTJbuoVUAnLu1rNu
 7RKjFNvEfxgcb/tZLzTiqh75Aa4XEHpRX2DyckcIBIuiWglsW+NI1kckDH8wRytS3Sva
 jXzZ3TNie8x1WjxQy46tSGC0Sdze0hoikU8qmugcg/Yiv0pX3NhU5lqZ6oap8LWo2pBS
 KcWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCJVzcSvAcRDGpPF0Gsm11QFDFRQnhYdD63adlFWEABjZ8d9foIujKe86En3bl7QKVHELXuAMneEg/ryUjOOc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxzWB+PTWOsVEF8s6FV0yDTxBfd/vRJ4iovjmEnJ8sD4UOgtCWH
 jP3YyBJrZgxAGoKNWxdThqrg+GXbg9s+b7DivPa8yoBB83LCD2d8YdrAf/4NpP+Rlasx0pgPd83
 s5gtKPsxyHM1aG4brhk+INju1f4vkcUrUDJK6t4rd+vydKPDxu5Vb/7NsZD2CFaPDnXhAelQ=
X-Gm-Gg: ASbGncvbDYaYr7pnQx/D5Ae+EX09duY7rboi2/l7DEbwDoowLDm8jXPRt/QI5taZg9f
 zaZtCJB2PgTuEFtkUbERnyfMlELvugT6J39ilL3afjwaUYqo30a7CVU3gWmBQZjkohHCxkJyqgK
 cyHl2ogar/hdtzjQB3t9T4Ze/o/RSN35MYrTaozd36C3s9c4S8WBIV61A5asH188ftK7fYOMf1h
 ESbuylpNfjK835LEkFduR8Rk2lKQLDvtL1GLynHRtwgujJMOBplBQa9CX932Gyz0FzS5mpZxSJ7
 jDnCe03R2NrHuiBQhOT3Z25HPy3V24UL2JYXcUwgU8k=
X-Received: by 2002:a05:6000:2404:b0:3c0:5db6:aed with SMTP id
 ffacd0b85a97d-3c5dcefd13fmr20040150f8f.54.1756376382555; 
 Thu, 28 Aug 2025 03:19:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUf9+VMVyT64li5grrkXarbkMEhZPAVzNfHJOMsvP5ckUlCR6vIpiQ2+ofJ4hBc+vAMdF9dA==
X-Received: by 2002:a05:6000:2404:b0:3c0:5db6:aed with SMTP id
 ffacd0b85a97d-3c5dcefd13fmr20040133f8f.54.1756376382106; 
 Thu, 28 Aug 2025 03:19:42 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3ca8f2811d9sm13194551f8f.20.2025.08.28.03.19.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Aug 2025 03:19:41 -0700 (PDT)
Message-ID: <31709a8a-f314-4522-830d-ec81b9435f10@redhat.com>
Date: Thu, 28 Aug 2025 13:19:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com
References: <20250823094952.182181-1-mheib@redhat.com>
 <fe840844-4fcd-49bf-a613-c5a99934a347@intel.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <fe840844-4fcd-49bf-a613-c5a99934a347@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tLOytQN2j3Kdz0dBK6Mio_fkT5Lmq0UBLIMdIb0ui68_1756376383
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756376385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hG2R1Bkv9qVosRscKm612j4UuXS2eUujrOM+V+p/8pg=;
 b=Y3auPePcZKjphMiHy07LsdLJ9ECi+M5E+SoCvBjApo1MAweoEXSlZYn8L1MRkKJN8Abujd
 p6UNG+YWNi26kJhcKyht3qaA17HRr2QgNECIb44bV9Qk6sSaCbwA4pXwcyMQTPvbhxt1Rx
 nstCuBde+QYcLOe5E4RxdAiil7KwNY0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Y3auPePc
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: add devlink param to
 control VF MAC address limit
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

Hi Tony,


On 8/28/25 12:14 AM, Tony Nguyen wrote:
>
>
> On 8/23/2025 2:49 AM, mheib@redhat.com wrote:
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> This patch introduces a new devlink runtime parameter that controls
>> the maximum number of MAC filters allowed per VF.
>>
>> The parameter is an integer value. If set to a non-zero number, it is
>> used as a strict per-VF cap. If left at zero, the driver falls back to
>> the default limit calculated from the number of allocated VFs and
>> ports.
>>
>> This makes the limit policy explicit and configurable by user space,
>> instead of being only driver internal logic.
>>
>> Example command to enable per-vf mac limit:
>>   - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>>     value 12 \
>>     cmode runtime
>>
>> - Previous discussion about this change:
>> https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com
>>
>> Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for 
>> every trusted VF")
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>   Documentation/networking/devlink/i40e.rst     | 22 ++++++++
>>   drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++----
>>   4 files changed, 95 insertions(+), 12 deletions(-)
>>
>> diff --git a/Documentation/networking/devlink/i40e.rst 
>> b/Documentation/networking/devlink/i40e.rst
>> index d3cb5bb5197e..f8d5b00bb51d 100644
>> --- a/Documentation/networking/devlink/i40e.rst
>> +++ b/Documentation/networking/devlink/i40e.rst
>> @@ -7,6 +7,28 @@ i40e devlink support
>>   This document describes the devlink features implemented by the 
>> ``i40e``
>>   device driver.
>>   +Parameters
>> +==========
>> +
>> +.. list-table:: Driver specific parameters implemented
>> +    :widths: 5 5 90
>> +
>> +    * - Name
>> +      - Mode
>> +      - Description
>> +    * - ``max_mac_per_vf``
>> +      - runtime
>> +      - Controls the maximum number of MAC addresses a VF can use on 
>> i40e devices.
>
> Are you intending for this to be for all VFs or only trusted? The 
> changes look to be only for trusted VFs, but it's not clear to me from 
> the documentation/comments.
>
>> +        By default (``0``), the driver enforces its internally 
>> calculated per-VF
>> +        MAC filter limit, which is based on the number of allocated 
>> VFS.
>> +
>> +        If set to a non-zero value, this parameter acts as a strict 
>> cap:
>> +        the driver enforces the maximum of the user-provided value 
>> and ignore
>> +        internally calculated limit.
>
> The filters are a shared resource. This will allow over-subscription; 
> other VFs could be starved
> of filters due to this. Since the user/PF is controlling, this is 
> probably ok but should be documented. Also, since these are shared, 
> this value acts as a theoretical max value, the hardware will start 
> returning errors when its limit are reached.
>
>> +        The default value is ``0``.
>> +
>>   Info versions
>>   =============
>>   diff --git a/drivers/net/ethernet/intel/i40e/i40e.h 
>> b/drivers/net/ethernet/intel/i40e/i40e.h
>> index 801a57a925da..d2d03db2acec 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -574,6 +574,10 @@ struct i40e_pf {
>>       struct i40e_vf *vf;
>>       int num_alloc_vfs;    /* actual number of VFs allocated */
>>       u32 vf_aq_requests;
>> +    /* If set to non-zero, the device uses this value
>> +     * as maximum number of MAC filters per VF.
>> +     */
>> +    u32 max_mac_per_vf;
>>       u32 arq_overflows;    /* Not fatal, possibly indicative of 
>> problems */
>>       struct ratelimit_state mdd_message_rate_limit;
>>       /* DCBx/DCBNL capability for PF that indicates
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c 
>> b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> index cc4e9e2addb7..8532e40b5c7d 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> @@ -5,6 +5,42 @@
>>   #include "i40e.h"
>>   #include "i40e_devlink.h"
>>   +static int i40e_max_mac_per_vf_set(struct devlink *devlink,
>> +                   u32 id,
>> +                   struct devlink_param_gset_ctx *ctx,
>> +                   struct netlink_ext_ack *extack)
>> +{
>> +    struct i40e_pf *pf = devlink_priv(devlink);
>> +
>> +    pf->max_mac_per_vf = ctx->val.vu32;
>> +    return 0;
>> +}
>> +
>> +static int i40e_max_mac_per_vf_get(struct devlink *devlink,
>> +                   u32 id,
>> +                   struct devlink_param_gset_ctx *ctx)
>> +{
>> +    struct i40e_pf *pf = devlink_priv(devlink);
>> +
>> +    ctx->val.vu32 = pf->max_mac_per_vf;
>> +    return 0;
>> +}
>> +
>> +enum i40e_dl_param_id {
>> +    I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> +    I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
>> +};
>> +
>> +static const struct devlink_param i40e_dl_params[] = {
>> +    DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
>> +                 "max_mac_per_vf",
>> +                 DEVLINK_PARAM_TYPE_U32,
>> +                 BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>> +                 i40e_max_mac_per_vf_get,
>> +                 i40e_max_mac_per_vf_set,
>> +                 NULL),
>> +};
>> +
>>   static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t 
>> len)
>>   {
>>       u8 dsn[8];
>> @@ -165,7 +201,19 @@ void i40e_free_pf(struct i40e_pf *pf)
>>    **/
>>   void i40e_devlink_register(struct i40e_pf *pf)
>>   {
>> -    devlink_register(priv_to_devlink(pf));
>> +    int err;
>
> RCT; declarations should order from longest to shortest.
>
>> +    struct devlink *dl = priv_to_devlink(pf);
>> +    struct device *dev = &pf->pdev->dev;
>> +
>> +    err = devlink_params_register(dl, i40e_dl_params,
>> +                      ARRAY_SIZE(i40e_dl_params));
>> +    if (err) {
>> +        dev_err(dev,
>> +            "devlink params register failed with error %d", err);
>> +    }
>
> Braces not needed here.
>
> Thanks,
> Tony
>

Thank you for your review.
yes agree this need to be more documented i updated the devlink param 
documentation to include your comment.
and fixed the minor code issue all in v3.
thanks.

