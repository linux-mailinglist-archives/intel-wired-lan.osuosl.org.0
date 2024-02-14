Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9286D854433
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 09:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19701416D3;
	Wed, 14 Feb 2024 08:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m8ZeInBzua0u; Wed, 14 Feb 2024 08:45:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C9B7415F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707900342;
	bh=pvVZfskenABlsHEG7R+cYwzn8/7MBLlR+4aluprlmm4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ABLE+O+WfG8SfwNtoDdP4JBYH7FG71GAsH5BJy0bVQuf76kodZK28UqymzmOKVHw6
	 j+kEkATaqIufPm5BQyrnS6PEmdw9a0L2cxYwSyWzVQzdodeCIiistVryJ9O9czSSyT
	 PlpfauY40Iq47GQjid8yfXpjz1JEYhchSSzVaSSmVajzUi9avF0/YxjN2a1ohFZtLn
	 g8Yko1nufMLQzCwtonWgwR9U/yNvBMJK4SVuMqgsgsoRxBlYO6fFcV6Bkc0vKqzaMB
	 dosFZ3ibfRPzxzI2jUjCRb+ejSyFhAv8iarxP6C7QC1Wlknvj5JIuyYB7feSN3Yopc
	 mRRZE3F+p7vww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C9B7415F8;
	Wed, 14 Feb 2024 08:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B40F1BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 08:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03B4182323
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 08:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AC-gMGCDyPis for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 08:45:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6638F82322
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6638F82322
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6638F82322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 08:45:36 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-5620595f743so1680829a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 00:45:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707900334; x=1708505134;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pvVZfskenABlsHEG7R+cYwzn8/7MBLlR+4aluprlmm4=;
 b=rr+0lRCraoCKmB7pHYqmuV1dLzDuXYC4WcmLvdn1zj8JqSVjYk1PddhevXwwZdthyh
 2DqY1fcEFnbnlD2BekR7BbGdUhQokXpMgM9c3Ri+BQljFbSfDJXr/IHGPVSj2WHp4kIk
 P+BUd3+i4FMFFjbZ7zQHZIRz5Y7JQPFNRLQv9SDAlThuRLOHQSxKYkw4ndfwFwN02kGr
 S9Ln2oomjdSXo+PslIDxYa/DQ/bLbOtVvO1mo7GSKhDkSTdNKFnZ9wSn+jK62o0Ao4Ly
 x8fj96ATkiaQkA7ubgEOE8+ALIXbxbqiUK0CVygbx/VmMoT9Rgp5XH6Jve2rrBK45w8M
 oz8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUcTzaEm9BJd6ohTDRsQH5XCcMr2uT6clXF+/02uWoHKh4XyBhitLTdndeg4XZ9XdWDipZ5FNqH5HkOdbjtaEuYUwcCgAYr9uIhj0z6obORYA==
X-Gm-Message-State: AOJu0Yz/yYKPNWADBuSk0TCHr/UsTEqiXp3M+ui/YIBnQDlVtMeFwfbh
 cQEjZZIL5+Gcpr1qtxrzGYMrfAU8qlBwEKppcanZ6h7xct25RWz3lluaFYX/orM=
X-Google-Smtp-Source: AGHT+IFcEAOk9jLAoB8ej5kYTb9E5YsOIJ4weVq3TJ/Ub5DTXuJe90w5RDNz63pZ5/s0pV5uBhQZdA==
X-Received: by 2002:a17:906:acf:b0:a3d:2f12:78ee with SMTP id
 z15-20020a1709060acf00b00a3d2f1278eemr1311197ejf.50.1707900333592; 
 Wed, 14 Feb 2024 00:45:33 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCV5NGii4MuCSyEEPc8TxM9aqkORnM5iMtZJJkRxbSuJTnaDix2LMOFiFnEXsHPQBr+oMtg+rOVTrzhjwdY050hG8nLcWyjIQh2iRXl2mYdYCkAJd8/OuDGZYKM12CC9o9GKR0CMs+mXpYSbvStxp8vOdvchoUWwSZ7mdOWb6CGWJN+f4DUKKHT6dTKdijtqaFqXHYRBZya2SnB/H7vmkSDNp302ObiB+BpA5dUPbLpKo9dd+RTUS4YbnZMUqoEoXmhR1B1f8CUm8K8SAQhdxAGDrdQs9gth/re7R9BN+pTXXS0/Ll4yOkw0K3XMGo7eqtFfKjuQ2vvM/Xt2rJcQcMM+kkN0H+n4DplysN9kVKfIhxb4Q8KxDrimkNhaCZQFrs2rr5xRCUJK6v1BQFZ0C1OpPv25tViw514KJno=
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 vv3-20020a170907a68300b00a3d29f0afeasm757863ejc.2.2024.02.14.00.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Feb 2024 00:45:32 -0800 (PST)
Date: Wed, 14 Feb 2024 09:45:29 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Zcx9qWyr4IXn8rXa@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
 <ZcsvYt4-f_MHT3QC@nanopsycho> <Zcs8LsRrbOfUdIL7@mev-dev>
 <ZctSpPamhrlF4ILg@nanopsycho> <ZctYm9CVJzV+uxip@mev-dev>
 <6b62fe60-b1e2-49e0-b374-775ef42d07dd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b62fe60-b1e2-49e0-b374-775ef42d07dd@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707900334; x=1708505134;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pvVZfskenABlsHEG7R+cYwzn8/7MBLlR+4aluprlmm4=;
 b=OnlDi2Nfd/fb9T/ysu0rKWdIqW58igWQ/Ohd95iDbYaJLGL1w7KsldylgfEnCSS/2e
 8mLQsEz6ijGYr2qm7wkHZg5R7CQKRqVMWAp2NF+Ph4/N0eHQmgIhfKyn/8irwdkQEaPn
 NiLUG2rJZFv+m9M5QU5schiEa5OnlNGcSH0SvWxlIukUZ5jZojVWZ+6v2HDT3xIdKZhS
 b4G3sQGTnpsUYmURtJBP3FpqBeONhVIgcaoZwVeEongnMvZ2imvVrs9m24v7yHbz1gZP
 gQ7Val51KBl+wEuqExC/CrB5F8Qg1YHJndhUZKYgtcNrlloyt1tBrCzNi7RjIKuxASig
 cLiQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=OnlDi2Nf
Subject: Re: [Intel-wired-lan] [iwl-next v1 07/15] ice: add auxiliary device
 sfnum attribute
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, netdev@vger.kernel.org, wojciech.drewek@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 11:04:00PM CET, jacob.e.keller@intel.com wrote:
>
>
>On 2/13/2024 3:55 AM, Michal Swiatkowski wrote:
>> On Tue, Feb 13, 2024 at 12:29:40PM +0100, Jiri Pirko wrote:
>>> Tue, Feb 13, 2024 at 10:53:50AM CET, michal.swiatkowski@linux.intel.com wrote:
>>>> On Tue, Feb 13, 2024 at 09:59:14AM +0100, Jiri Pirko wrote:
>>>>> Tue, Feb 13, 2024 at 08:27:16AM CET, michal.swiatkowski@linux.intel.com wrote:
>>>>>> From: Piotr Raczynski <piotr.raczynski@intel.com>
>>>>>>
>>>>>> Add read only sysfs attribute for each auxiliary subfunction
>>>>>> device. This attribute is needed for orchestration layer
>>>>>> to distinguish SF devices from each other since there is no
>>>>>> native devlink mechanism to represent the connection between
>>>>>> devlink instance and the devlink port created for the port
>>>>>> representor.
>>>>>>
>>>>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>>>>> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>>>>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>>>>> ---
>>>>>> drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31 +++++++++++++++++++++
>>>>>> 1 file changed, 31 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>>>>>> index ab90db52a8fc..abee733710a5 100644
>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>>>>>> @@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device *device)
>>>>>> 	kfree(sf_dev);
>>>>>> }
>>>>>>
>>>>>> +static ssize_t
>>>>>> +sfnum_show(struct device *dev, struct device_attribute *attr, char *buf)
>>>>>> +{
>>>>>> +	struct devlink_port_attrs *attrs;
>>>>>> +	struct auxiliary_device *adev;
>>>>>> +	struct ice_sf_dev *sf_dev;
>>>>>> +
>>>>>> +	adev = to_auxiliary_dev(dev);
>>>>>> +	sf_dev = ice_adev_to_sf_dev(adev);
>>>>>> +	attrs = &sf_dev->dyn_port->devlink_port.attrs;
>>>>>> +
>>>>>> +	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
>>>>>> +}
>>>>>> +
>>>>>> +static DEVICE_ATTR_RO(sfnum);
>>>>>> +
>>>>>> +static struct attribute *ice_sf_device_attrs[] = {
>>>>>> +	&dev_attr_sfnum.attr,
>>>>>> +	NULL,
>>>>>> +};
>>>>>> +
>>>>>> +static const struct attribute_group ice_sf_attr_group = {
>>>>>> +	.attrs = ice_sf_device_attrs,
>>>>>> +};
>>>>>> +
>>>>>> +static const struct attribute_group *ice_sf_attr_groups[2] = {
>>>>>> +	&ice_sf_attr_group,
>>>>>> +	NULL
>>>>>> +};
>>>>>> +
>>>>>> /**
>>>>>>  * ice_sf_eth_activate - Activate Ethernet subfunction port
>>>>>>  * @dyn_port: the dynamic port instance for this subfunction
>>>>>> @@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>>>>>> 	sf_dev->dyn_port = dyn_port;
>>>>>> 	sf_dev->adev.id = id;
>>>>>> 	sf_dev->adev.name = "sf";
>>>>>> +	sf_dev->adev.dev.groups = ice_sf_attr_groups;
>>>>>
>>>>> Ugh. Custom driver sysfs files like this are always very questionable.
>>>>> Don't do that please. If you need to expose sfnum, please think about
>>>>> some common way. Why exactly you need to expose it?
>>>>
>>>> Uh, hard question. I will drop it and check if it still needed to expose
>>>> the sfnum, probably no, as I have never used this sysfs during testing.
>>>>
>>>> Should devlink be used for it?
>>>
>>> sfnum is exposed over devlink on the port representor. If you need to
>>> expose it on the actual SF, we have to figure it out. But again, why?
>>>
>>>
>
>I vaguely remember some internal discussion about orchestration software
>wanting to know which subfunction was associated with which auxiliary
>device. However, I think a much better solution would be to expose the
>auxiliary device ID out of devlink_port instead, through devlink port.
>
>I can't find any notes on this and it was quite some time ago so maybe
>things have changed.
>
>If we enable support for user-space configurable sfnum, then we can just
>have the orchestration software pick its sfnum (or check the netlink
>return value from the port add), so probably this is not that useful.

This is already solved by nested devlink. When you properly call
devl_port_fn_devlink_set(), you link the SF devlink instance with the
eswitch port representor. Then the user sees:

$ devlink port
pci/0000:08:00.1/98304: type eth netdev eth4 flavour pcisf controller 0 pfnum 1 sfnum 109 splittable false
  function:
    hw_addr 00:00:00:00:00:00 state active opstate attached roce enable
      nested_devlink:
        auxiliary/mlx5_core.sf.2


