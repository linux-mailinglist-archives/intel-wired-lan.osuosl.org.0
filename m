Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5622B39DB8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 14:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CD2D60E23;
	Thu, 28 Aug 2025 12:49:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id obu3B76IRoBo; Thu, 28 Aug 2025 12:49:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CD2D60E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756385376;
	bh=29IhiQqgTr3yIV26x5LQEzqzOYDfqx1jPvdNgKdjByw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xrvoNpHugP2K6QMpe60kuDbioIjmr8YFiKgbEUzhfEAXTEo6k3UXLf4nCduH8SyhT
	 23sfoyYkoQoxaocaZO9ISw4bLWzfVwEeBJuLsBLiwwddMNtPhT4b4IGVLPfoeH0FbI
	 IxE/fp3txIDdm0hDApVHTMKD8QdGLdqOtf7jlZ8y/1qSxwGi8iWgMGgQ/dlAcOZZeq
	 Uf13jHvFwQW5vemfmAlSjFgfIqp6tyZSSFaT3lh712qgx1je1vfbX+6KTK6gcLHnai
	 gAXuAY0I5DF+6NEeGeCRGfBUNN8ub+mdi8SF8SX5/xA4B135b1k62iMPy+TJSYkiv6
	 MfUKoh6kr7QWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CD2D60E07;
	Thu, 28 Aug 2025 12:49:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C97791B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B186C813C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cbuK-QMbo8Nx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 12:49:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C22180EA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C22180EA1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C22180EA1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:49:33 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-611-M2Cr9P5cMauCz9Tqy5E6PQ-1; Thu, 28 Aug 2025 08:49:30 -0400
X-MC-Unique: M2Cr9P5cMauCz9Tqy5E6PQ-1
X-Mimecast-MFC-AGG-ID: M2Cr9P5cMauCz9Tqy5E6PQ_1756385369
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3c79f0a57ddso524329f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 05:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756385369; x=1756990169;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=29IhiQqgTr3yIV26x5LQEzqzOYDfqx1jPvdNgKdjByw=;
 b=KYA66abT8X0MaExMvFh+DBlqVN7o+OgOS06SV5aNcORfURlYsoDQnOkJux8r5etlQk
 Eu+C063KNMm+VPblbgtcS0rp3CWUWzvQzlyMhBUmdfjXkjZcmhAoIaDnPRvjKMfVqp6F
 0CsoMLk5wQie3xZHC1gVMWRmZTj3Om768u1xcv7AUazsDUv3rFcAB+TxK+n1IgADOJKD
 YCjtIf5VUX2UZjgO0BlmDnjZioTsEWow6J4aSlzsxz+zeJhg3AxZ8Ip6eygjpHbotgV9
 9/TB/+RGBrUdpZhzHBYP6B6wfFBcYVUFqamQIzm6Z+jz1iPkdvqGKzauBlOGDboSd6Ap
 tcgw==
X-Gm-Message-State: AOJu0Ywm56HQKNtJHp7X9p3zrMN8/8rBRUPncKWDlPdQzc/CWAKQxPI2
 Jc2Qq1GTwcu2RTE0bxxR0tcl2q1XBAQbORJ/224knllqV7DyEfVvUADsGWq19YQenO011C9TaSe
 RIbPNITpYYvFpfagvPIllXjRJM04rKw3ZjjzmgUhS3PHQMgynFsB/GQaWD/yX5MII+GNT2y8=
X-Gm-Gg: ASbGncv06Jjtk5HcYnxnkTXUldmbtrtxL10QMBxvX/tJHhEFPhUF5gsaZQoCUdGo09o
 ur7ehDqAx9EcTSenXClbzaQSkHinuFA/9koIvJq9N6l6uNeCeYlCOz1p6cTTmw+nqIZtMeOpFoe
 rNvXgasKC00Tpzp4afYXtrRAANS14ubzZslLVQhx5/wKg4qN7mzahYnXknrsNK1rmtNUAOFCLe5
 RXvWkKhCE61GyRPFnPxSuqIRSyVW09uxwOX75CpriCqrZWQrxUCCPe1EabEnXdDuTweHrUCjFLA
 saS7RjMiQzBG7xeMw8RZvQ0bsVzS6xIy97okwA/8r4Q=
X-Received: by 2002:a05:6000:2089:b0:3cd:7200:e031 with SMTP id
 ffacd0b85a97d-3cd7200e16emr3015148f8f.28.1756385369167; 
 Thu, 28 Aug 2025 05:49:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHb8z3eeaocT8UEeIm9El3fyqn3b1E+fVi40gmkpX1EXQEdYKsegzAxvCKzrJbuZrPLG8bZyg==
X-Received: by 2002:a05:6000:2089:b0:3cd:7200:e031 with SMTP id
 ffacd0b85a97d-3cd7200e16emr3015120f8f.28.1756385368650; 
 Thu, 28 Aug 2025 05:49:28 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45b6f306c93sm73332135e9.14.2025.08.28.05.49.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Aug 2025 05:49:28 -0700 (PDT)
Message-ID: <f865bca4-40e3-4e65-9269-6c0f0ae9ad22@redhat.com>
Date: Thu, 28 Aug 2025 15:49:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com,
 netdev@vger.kernel.org, horms@kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
References: <20250823094952.182181-1-mheib@redhat.com>
 <pdanf5ciga5ddl7xyi2zkltcznyz4wtnyqyaqm7f5oqpcrubfz@ma4juoq4qlph>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <pdanf5ciga5ddl7xyi2zkltcznyz4wtnyqyaqm7f5oqpcrubfz@ma4juoq4qlph>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: SOgAnrzXaJUlMX4Tgx2WIRgWPUya4SYXgMlT3uoC5zs_1756385369
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756385372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=29IhiQqgTr3yIV26x5LQEzqzOYDfqx1jPvdNgKdjByw=;
 b=DxcMwOm5KI+8cLVxfGKGNUvZNGH7LHmvXSd5bENY93xrZd1m8A4IKCLZHfq7I6woiPJwvz
 NWy+u/Hpv2mqWEYQbqer3HoTelJOOWK3UJCdBSwNCbFuha+w1RKVQbql+2mAzcja37xJ0N
 ethpupnR8CJoVG1/UfdDqk2zBU6PEX8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DxcMwOm5
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

Hi Jiri

On 8/28/25 2:43 PM, Jiri Pirko wrote:
> Sat, Aug 23, 2025 at 11:49:52AM +0200, mheib@redhat.com wrote:
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
>> - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>> 	value 12 \
>> 	cmode runtime
>>
>> - Previous discussion about this change:
>>   https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com
>>
>> Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>> Documentation/networking/devlink/i40e.rst     | 22 ++++++++
>> drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>> .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
>> .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++----
>> 4 files changed, 95 insertions(+), 12 deletions(-)
>>
>> diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
>> index d3cb5bb5197e..f8d5b00bb51d 100644
>> --- a/Documentation/networking/devlink/i40e.rst
>> +++ b/Documentation/networking/devlink/i40e.rst
>> @@ -7,6 +7,28 @@ i40e devlink support
>> This document describes the devlink features implemented by the ``i40e``
>> device driver.
>>
>> +Parameters
>> +==========
>> +
>> +.. list-table:: Driver specific parameters implemented
>> +    :widths: 5 5 90
>> +
>> +    * - Name
>> +      - Mode
>> +      - Description
>> +    * - ``max_mac_per_vf``
>> +      - runtime
>> +      - Controls the maximum number of MAC addresses a VF can use on i40e devices.
>> +
>> +        By default (``0``), the driver enforces its internally calculated per-VF
>> +        MAC filter limit, which is based on the number of allocated VFS.
>> +
>> +        If set to a non-zero value, this parameter acts as a strict cap:
>> +        the driver enforces the maximum of the user-provided value and ignore
>> +        internally calculated limit.
>> +
>> +        The default value is ``0``.
>> +
>> Info versions
>> =============
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>> index 801a57a925da..d2d03db2acec 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -574,6 +574,10 @@ struct i40e_pf {
>> 	struct i40e_vf *vf;
>> 	int num_alloc_vfs;	/* actual number of VFs allocated */
>> 	u32 vf_aq_requests;
>> +	/* If set to non-zero, the device uses this value
>> +	 * as maximum number of MAC filters per VF.
>> +	 */
>> +	u32 max_mac_per_vf;
>> 	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
>> 	struct ratelimit_state mdd_message_rate_limit;
>> 	/* DCBx/DCBNL capability for PF that indicates
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> index cc4e9e2addb7..8532e40b5c7d 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> @@ -5,6 +5,42 @@
>> #include "i40e.h"
>> #include "i40e_devlink.h"
>>
>> +static int i40e_max_mac_per_vf_set(struct devlink *devlink,
>> +				   u32 id,
>> +				   struct devlink_param_gset_ctx *ctx,
>> +				   struct netlink_ext_ack *extack)
>> +{
>> +	struct i40e_pf *pf = devlink_priv(devlink);
>> +
>> +	pf->max_mac_per_vf = ctx->val.vu32;
>> +	return 0;
>> +}
>> +
>> +static int i40e_max_mac_per_vf_get(struct devlink *devlink,
>> +				   u32 id,
>> +				   struct devlink_param_gset_ctx *ctx)
>> +{
>> +	struct i40e_pf *pf = devlink_priv(devlink);
>> +
>> +	ctx->val.vu32 = pf->max_mac_per_vf;
>> +	return 0;
>> +}
>> +
>> +enum i40e_dl_param_id {
>> +	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> +	I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
> What's so i40 specific about this? Sounds pretty generic to be.
>
>
>
>> +};
>> +
>> +static const struct devlink_param i40e_dl_params[] = {
>> +	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
>> +			     "max_mac_per_vf",
>> +			     DEVLINK_PARAM_TYPE_U32,
>> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>> +			     i40e_max_mac_per_vf_get,
>> +			     i40e_max_mac_per_vf_set,
>> +			     NULL),
>> +};
>> +
>> static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
>> {
>> 	u8 dsn[8];
>> @@ -165,7 +201,19 @@ void i40e_free_pf(struct i40e_pf *pf)
>>   **/
>> void i40e_devlink_register(struct i40e_pf *pf)
>> {
>> -	devlink_register(priv_to_devlink(pf));
>> +	int err;
>> +	struct devlink *dl = priv_to_devlink(pf);
>> +	struct device *dev = &pf->pdev->dev;
>> +
>> +	err = devlink_params_register(dl, i40e_dl_params,
>> +				      ARRAY_SIZE(i40e_dl_params));
>> +	if (err) {
>> +		dev_err(dev,
>> +			"devlink params register failed with error %d", err);
>> +	}
>> +
>> +	devlink_register(dl);
>> +
>> }
>>
>> /**
>> @@ -176,7 +224,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
>>   **/
>> void i40e_devlink_unregister(struct i40e_pf *pf)
>> {
>> -	devlink_unregister(priv_to_devlink(pf));
>> +	struct devlink *dl = priv_to_devlink(pf);
>> +
>> +	devlink_unregister(dl);
>> +	devlink_params_unregister(dl, i40e_dl_params,
>> +				  ARRAY_SIZE(i40e_dl_params));
>> }
>>
>> /**
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> index 081a4526a2f0..e7c0c791eed1 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> @@ -2935,19 +2935,23 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>> 		if (!f)
>> 			++mac_add_cnt;
>> 	}
>> -
>> -	/* If this VF is not privileged, then we can't add more than a limited
>> -	 * number of addresses.
>> +	/* Determine the maximum number of MAC addresses this VF may use.
>> +	 *
>> +	 * - For untrusted VFs: use a fixed small limit.
>> +	 *
>> +	 * - For trusted VFs: limit is calculated by dividing total MAC
>> +	 *  filter pool across all VFs/ports.
>> 	 *
>> -	 * If this VF is trusted, it can use more resources than untrusted.
>> -	 * However to ensure that every trusted VF has appropriate number of
>> -	 * resources, divide whole pool of resources per port and then across
>> -	 * all VFs.
>> +	 * - User can override this by devlink param "max_mac_per_vf".
>> +	 *   If set its value is used as a strict cap.
>> 	 */
>> -	if (!vf_trusted)
>> +	if (!vf_trusted) {
>> 		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
>> -	else
>> +	} else {
>> 		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
>> +		if (pf->max_mac_per_vf > 0)
>> +			mac_add_max = pf->max_mac_per_vf;
>> +	}
>>
>> 	/* VF can replace all its filters in one step, in this case mac_add_max
>> 	 * will be added as active and another mac_add_max will be in
>> @@ -2961,7 +2965,8 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>> 			return -EPERM;
>> 		} else {
>> 			dev_err(&pf->pdev->dev,
>> -				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
>> +				"Cannot add more MAC addresses: trusted VF reached its maximum allowed limit (%d)\n",
>> +				mac_add_max);
>> 			return -EPERM;
>> 		}
>> 	}
>> -- 
>> 2.47.3
>>
If i understand correctly, you’re asking whether this parameter could be 
added as a generic devlink parameter
rather than a driver-specific one?


if that the case, Yes, it could be made generic, but I initially 
implemented it as driver specific because I was targeting i40e only,
and I thought a generic approach might not be acceptable at this stage


I do plan to extend this to other drivers, as mentioned in the v1 patch 
here:
  - 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250821233930.127420-1-mheib@redhat.com/
For now, i'm pushing hard to get this patch into i40e since it affects a 
customer. Once it's accepted i can extend it
to other drivers and convert it to the generic devlink parameter.


Thanks,

