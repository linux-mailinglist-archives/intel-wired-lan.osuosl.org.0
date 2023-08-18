Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6692B780647
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 09:23:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 779AF41C3A;
	Fri, 18 Aug 2023 07:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 779AF41C3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692343425;
	bh=lFMlcXnFto3o010LVYc4LfMd9SUX2//AE5OXA7s6Hjo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NppdQo+q862uy5Lk/Qb4BDbl3Dd6aS5wuq4DOJWAK4EkvFKc3l7zrnd8/YUKH8F9e
	 JPMqQl6AMNGtQOMg7KOPcADqFd8CjQFwwCDNtnwzeg1VhHtYjd/iFHqY2lXH19vT3d
	 GxIyfj19plUl87RUyE7P/3Nf0JJB0x4Ow56htMrxcYt9ytd96qPfzqBKvDF20/gLfv
	 OT5dviuT1/pPtNCllMtDTIueEzorRyc13LX5j5KK06bnA/aa5ZcrVExFXiEshiCS0X
	 KnwIMpsG1sNjIoyiOPOyqynWmWePRa/+Kksku2WdnMVSiUJCcdp2eTlTm+Ik8LwnIy
	 kz9FIO9ZjBpCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2e0JsuMfJnHp; Fri, 18 Aug 2023 07:23:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBAAB41B87;
	Fri, 18 Aug 2023 07:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBAAB41B87
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB7741BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD16E60773
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:23:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD16E60773
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUWX7X43-0TS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 07:23:36 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82E8260743
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:23:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82E8260743
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-4fe8c3b5ca0so837809e87.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 00:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692343412; x=1692948212;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+nrlvGLSZrLTAidXKYdnf+IMABQtnX9eIwf7feDIRl4=;
 b=RCoT2mJrdK+TxmypZMzhUse7XAgPk6HWGZAsgtxZ7e+Puvt+8H+oq+D4RySKi4QYhc
 HggrfBfAtAjOeQcoIyASJHCRG/yFSGu2QwAsJTsySiPy73uu5nXpOrwudraKGyQfF2Xu
 A0wIe659lCeYpp6Jv6xaVDjgpZv2OBB1xmg1ZS4+1DZcOH3GTcVOn9kxOTFOdb2IS/0l
 hWupv/sJxHXb3igw9/svJ9lVL2ce2UCmRZ4fF4j77hOHLi6PWFS5yii7Y30n3hTAQb3L
 h0QnqzBvGWXZdHr6J/vFxBJD1akKqgTQVUus0DiZOQP83jqodL7pGmOLGx/CdQ8sN3vx
 Baug==
X-Gm-Message-State: AOJu0YydkIxQ1HH9SFYztlaKqYZSECg/9+QAH80ybeD+0Ybiu12yNrZV
 CfOvy6XmQ4tm0NWj/wzMW9wEjw==
X-Google-Smtp-Source: AGHT+IEOeJMn8/EoRozhoQagPj2QryyIspkPS5PyFAvnzRmg9yRI8DoPXKyuJg63xi4Xks3gO4wgAQ==
X-Received: by 2002:a05:6512:2356:b0:4ff:6fa3:63ce with SMTP id
 p22-20020a056512235600b004ff6fa363cemr1126718lfu.10.1692343412057; 
 Fri, 18 Aug 2023 00:23:32 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 16-20020a05600c231000b003fc00212c1esm1882608wmo.28.2023.08.18.00.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 00:23:31 -0700 (PDT)
Date: Fri, 18 Aug 2023 09:23:30 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZN8ccoE8X5J6yysk@nanopsycho>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-3-vadim.fedorenko@linux.dev>
 <20230814194336.55642f34@kernel.org>
 <DM6PR11MB4657AD95547A14234941F9399B1AA@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230817163640.2ad33a4b@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817163640.2ad33a4b@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1692343412; x=1692948212; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+nrlvGLSZrLTAidXKYdnf+IMABQtnX9eIwf7feDIRl4=;
 b=gUkgEFdIUbCRiIovcKuPSXsz2jIBb04GMmR/D3yc0PsZNNvQX94puOhOfFRBicMod9
 FV75KNTBfswt/NUNYIl1BqJy7KRs3S3YAIGngmEcU5TovnqTTcy9aXhsxqPZdIWRXmEM
 KtbCL3yxYGA+YCAMtZmuqJ1ngjumWyHgt292mGY+f43e/fzIwMte2JtKjLmYORwpgGTC
 wE0h78ODD3iiAW0fW7CN/SEAWHZdFAWD/BJ3VsOsurCbmh0IhX82V89Gvry5s6dfXWsY
 UkRy3/h5kT2IwVboIXZHHLuCH3lq20jEzrdr86vQfSmiM5PqstmAICwpAS/ow0JHRMf4
 0k8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=gUkgEFdI
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/9] dpll: spec: Add
 Netlink spec in YAML
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jiri Pirko <jiri@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "Olech,
 Milena" <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 18, 2023 at 01:36:40AM CEST, kuba@kernel.org wrote:
>On Thu, 17 Aug 2023 18:40:00 +0000 Kubalewski, Arkadiusz wrote:
>> >Why are all attributes in a single attr space? :(
>> >More than half of them are prefixed with a pin- does it really
>> >not scream to you that they belong to a different space?
>> 
>> I agree, but there is an issue with this, currently:
>> 
>> name: pin-parent-device
>> subset-of: dpll
>> attributes:
>>   -
>>     name: id
>>     type: u32
>>   -
>>     name: pin-direction
>>     type: u32
>>   -
>>     name: pin-prio
>>     type: u32
>>   -
>>     name: pin-state
>>     type: u32
>> 
>> Where "id" is a part of device space, rest attrs would be a pin space..
>> Shall we have another argument for device id in a pin space?
>
>Why would pin and device not have separate spaces?
>
>When referring to a pin from a "device mostly" command you can
>usually wrap the pin attributes in a nest, and vice versa.
>But it may not be needed at all here? Let's look at the commands:
>
>+    -
>+      name: device-id-get
>+        request:
>+          attributes:
>+            - module-name
>+            - clock-id
>+            - type
>+        reply:
>+          attributes:
>+            - id
>
>All attributes are in "device" space, no mixing.
>
>+      name: device-get
>+        request:
>+          attributes:
>+            - id
>+        reply: &dev-attrs
>+          attributes:
>+            - id
>+            - module-name
>+            - mode
>+            - mode-supported
>+            - lock-status
>+            - temp
>+            - clock-id
>+            - type
>
>Again, no pin attributes, so pin can be separate?
>
>+    -
>+      name: device-set
>+        request:
>+          attributes:
>+            - id
>
>Herm, this one looks like it's missing attrs :S
>
>+    -
>+      name: pin-id-get
>+        request:
>+          attributes:
>+            - module-name
>+            - clock-id
>+            - pin-board-label
>+            - pin-panel-label
>+            - pin-package-label
>+            - pin-type
>+        reply:
>+          attributes:
>+            - pin-id
>
>Mostly pin stuff. I guess the module-name and clock-id attrs can be
>copy/pasted between device and pin, or put them in a separate set
>and add that set as an attr here. Copy paste is likely much simpler.

Agreed for the copy.

Honestly, I wound thing that shared ATTR space is fine for DPLL,
the split is an overkill here. But up to you Jakub :)


>
>+    -
>+      name: pin-get
>+        request:
>+          attributes:
>+            - pin-id
>+        reply: &pin-attrs
>+          attributes:
>+            - pin-id
>+            - pin-board-label
>+            - pin-panel-label
>+            - pin-package-label
>+            - pin-type
>+            - pin-frequency
>+            - pin-frequency-supported
>+            - pin-dpll-caps
>+            - pin-parent-device

The ID of device is inside this nest.


>+            - pin-parent-pin
>
>All pin.
>
>+    -
>+      name: pin-set
>+        request:
>+          attributes:
>+            - pin-id
>+            - pin-frequency
>+            - pin-direction
>+            - pin-prio
>+            - pin-state
>+            - pin-parent-device

Same here.


>+            - pin-parent-pin
>
>And all pin.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
