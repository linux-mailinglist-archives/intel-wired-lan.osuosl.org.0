Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AC47397D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 09:10:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA22160F07;
	Thu, 22 Jun 2023 07:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA22160F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687417805;
	bh=Xndfq55GH9YGbw1WYGm+O2JOZsN7jTEVYkbw/p1uUgU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kdjDJeGGFggOnPJbKYGFpxJ+Y920UCY64QdE0MB2ij3IYlHY0bPMNQAHiZzwzFxU/
	 5+64YMBE1b6/K45+BgjFAYDa3iDsF0zbY7w9BU20fkaIgdt4Oxut770SaDm4IO/lSc
	 tV56UpyLltDsuicH8oHI7/EX5LoBw+Z85ymkosSfYr1aprUmjwircEObD2ETBiuQ+f
	 onX4hG4pwsx/bzFw52qLwm3aSpNu5b8JGgJo7X1ZJbPyGQurOeXf4tTChb7WJciFHF
	 qXbq3HHBBvkc00NM4zX2FqCIoGB/RFf9WQ1Zqz6vZa/SBVSi6XYX4rmi05gCkaZ1pW
	 h4VZLH+Eh4Djg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Va5gi5-Fx_Ne; Thu, 22 Jun 2023 07:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9732660E78;
	Thu, 22 Jun 2023 07:10:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9732660E78
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13B751BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE14B409AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE14B409AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e12tc-uQso_I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 07:09:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D54A409A7
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D54A409A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:09:58 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-3094910b150so6957195f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 00:09:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687417796; x=1690009796;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mPyXOzxLtxEjY9cBPcsaRIns0EAEb4Nt/6W8EsU3ga8=;
 b=BUJW0XkHAsQHgNEH9O9PUNQaFPyNSsO7tuR8OTedmPwEPD+nlpuh2pBuvPCJ9ocUjk
 053CRKHOJNfU2b1lxVTj7Wg7gh+BCb41N+T1i1fscq+qUspjjhBgt3KuoDbDd0mLb/zj
 znpN9vgHMka8VVHcM78jkojqhmGThnPSBC82Ziyy8jCX4NgSzOgdH93XLcmBHpTm0mwd
 N19UikXNGQOCiOGcRNFZG5tShtC9v3kHhNyFfW9WWhPpyWA/TeMHaXTYWEBVHinXTFm5
 rmafGVzXVqZErUDjSEJIcY5KenP/LDWJZgo0xVPYbZOk6dlk73aONW6GFYawaCBsz7M0
 UN/Q==
X-Gm-Message-State: AC+VfDx5kZiqklT7E78mt7NwRiiaMUwC+pUDOZ0Ib1Xw8KAh98nkiZlX
 liqMmF9WMkkrRFRI0KJz+BlgxA==
X-Google-Smtp-Source: ACHHUZ7BfDfYg8tVKSO/1MGIhgM7knp4bxE9BjLvWPQmvpgYpkpg9XkXMIy4VKk2fcxV+HKp1ykuJA==
X-Received: by 2002:a5d:468d:0:b0:30a:f2a0:64fa with SMTP id
 u13-20020a5d468d000000b0030af2a064famr15527240wrq.10.1687417796496; 
 Thu, 22 Jun 2023 00:09:56 -0700 (PDT)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 f12-20020a5d58ec000000b00309382eb047sm6207885wrd.112.2023.06.22.00.09.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 00:09:55 -0700 (PDT)
Date: Thu, 22 Jun 2023 09:09:54 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJPzwj1odaC8fFzO@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
 <20230612164515.6eacefb1@kernel.org>
 <DM6PR11MB4657FED589F5922BBAC5D9059B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657FED589F5922BBAC5D9059B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687417796; x=1690009796; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mPyXOzxLtxEjY9cBPcsaRIns0EAEb4Nt/6W8EsU3ga8=;
 b=3iouDSVugUMNcys+i697SLnTvuKCQCDU18RQuMxLJV54x1bnilfa2bLr1aadMiQh1g
 UItDYY8rMfETP4FeqIVWSeabeT9AuFOTAO2aUWdKuLg84/CdT7qzIiwweS4Gx3GVX1P8
 4bBATic4ICWKlQpgqYwOyZIg4yeumq7IFyMtmwFoUFt4NXiXBCo3DNhJZkMc01ZTBRaW
 ek+bbOOoFMHEBQqk1J0jBtWot+LCXVC45zM6x5Dl0Kk8ybD9Cafa8DoJ6GiSDoMY3ro7
 6A1iZr2yMlshPSuQUwe9k+ophGjpUKdwBA35Aey0t6Ccp+bFNAOoqgp2gLV3leZxIgP/
 d1Gg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=3iouDSVu
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 03/10] dpll: core: Add DPLL
 framework base functions
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jun 21, 2023 at 11:17:26PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jakub Kicinski <kuba@kernel.org>
>>Sent: Tuesday, June 13, 2023 1:45 AM
>>
>>On Fri,  9 Jun 2023 14:18:46 +0200 Arkadiusz Kubalewski wrote:
>>> +	xa_for_each(xa_pins, i, ref) {
>>> +		if (ref->pin != pin)
>>> +			continue;
>>> +		reg = dpll_pin_registration_find(ref, ops, priv);
>>> +		if (reg) {
>>> +			refcount_inc(&ref->refcount);
>>> +			return 0;
>>> +		}
>>> +		ref_exists = true;
>>> +		break;
>>> +	}
>>> +
>>> +	if (!ref_exists) {
>>> +		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
>>> +		if (!ref)
>>> +			return -ENOMEM;
>>> +		ref->pin = pin;
>>> +		INIT_LIST_HEAD(&ref->registration_list);
>>> +		ret = xa_insert(xa_pins, pin->pin_idx, ref, GFP_KERNEL);
>>> +		if (ret) {
>>> +			kfree(ref);
>>> +			return ret;
>>> +		}
>>> +		refcount_set(&ref->refcount, 1);
>>> +	}
>>> +
>>> +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>>
>>Why do we have two structures - ref and reg?
>>
>
>Thank to Jiri and reg struct we solved a pin/dpll association
>with multiple device drivers..

Multiple instances of the same driver.


>I.e. for pin:
>
>struct dpll_pin_registration {
>	struct list_head list;
>	const struct dpll_pin_ops *ops;
>	void *priv;
>};
>
>struct dpll_pin_ref {
>	union {
>		struct dpll_device *dpll;
>		struct dpll_pin *pin;
>	};
>	struct list_head registration_list;
>	refcount_t refcount;
>};
>
>struct dpll_pin {
>	u32 id;
>	u32 pin_idx;
>	u64 clock_id;
>	struct module *module;
>	struct xarray dpll_refs;
>	struct xarray parent_refs;
>	const struct dpll_pin_properties *prop;
>	char *rclk_dev_name;
>	refcount_t refcount;
>};
>
>Basically, a pin or a device can be registered from multiple drivers,

Again, multiple instances of the same driver.


>where each driver has own priv and ops.

Each instance/device.


>A single dpll_pin has references to dplls or pins (dpll_refs/parent_refs)
>it is connected with, and thanks to registration list single reference can
>have multiple drivers being attached with a particular dpll/pin.

Multiple instances/devices.


In case of mlx5, the same dpll device and same dpll pin could be shared
among two PFs but also among multiple VFs and SFs. They all share the
same clock, same dpll device.


>
>The same scheme is for a dpll_device struct and associated pins.
>
>
>>> +	if (!reg) {
>>> +		if (!ref_exists)
>>> +			kfree(ref);
>>
>>ref has already been inserted into xa_pins
>>
>
>True, seems like a bug, will fix it.
>
>Thank you,
>Arkadiusz
>
>>> +		return -ENOMEM;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
