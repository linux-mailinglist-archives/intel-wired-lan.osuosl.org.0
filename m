Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F7D7397C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 09:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E0EC60E78;
	Thu, 22 Jun 2023 07:06:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E0EC60E78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687417568;
	bh=sMJzb2w6qmSLbNMTPgO66Cwb9oxiwU1LW22UU+XqDIU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OcZAwx5zKoxt2u4caTVyPVfbfSh3Xi2IkyOZ+9V3FNZ9YmGcn7pUtVvE6boLmLOIA
	 cH9QLn3S5/TQB+SR2Ip3V8jtnCRk7lFqIwsqBPSm1DMVJfliNVqC1aKfb8jcoUkQ2G
	 7XXopK+kP3jv9E/zMjwjyIfzg9Jmv02LEHAigMF3nheQAstRYMwIns2wa9wuX9F981
	 4euYZfSOj0hzJhTGTNS2ZkH3aX4kkV3Wth7TROKPRJbfiibZLUzr4r7nL9WbEdcX/J
	 DGre7wWFdxRodqG39tP9leeFaBMXKoHh3xcma1w0FFGgBjTUaXHf4l98zgrOd3ho3/
	 A8YKsSsq8O0ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rCAigNfKLnyL; Thu, 22 Jun 2023 07:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10D2D60E77;
	Thu, 22 Jun 2023 07:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10D2D60E77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59EE81BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 321C5400CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 321C5400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6omZwjsaHCWj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 07:06:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DE2D400C7
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DE2D400C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:05:59 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-3fa7512e599so1356665e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 00:05:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687417557; x=1690009557;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VIhSOYk52hVuqfcboW85OQLI0NHly7jy25hrkyJ2YAw=;
 b=QtWoh+NROIwzx1Vygi0BSV6ihYrzDczflqcG3ftFU1DukcKEuu3mmIr7CnaTmqonpy
 DckuCCpNe6veK6hUk29VEX6VEtuTwSC7NuNL4U2OK4tr6M7Ojwzihpx8TMV3AeOShrKn
 1x6kPL8YRDKTN5A/mxTfEM2hgSA8ks8cTdHCW8vZlJCzgxIth/74Pg8KsPrwO5lPmd3P
 H5qGUyilaonXfryHzACSNS/DccSWUo8GKoanbyhB8mPkF2hkJ+1DRDzhK5zBKfMfnPs5
 2bTEkHGACCu/5XIH83slLeqAN+NduYTRHosEaFTy1JG6YEpxrakcqXyz4X0lUdU0TYMV
 0hgQ==
X-Gm-Message-State: AC+VfDzgGyqLSNc6tzNI+LaldtVnKFvYRD3/39ADrhUx9fRofcoBpHij
 FCzlmqxqyL6X9CeohrpnXSsY8Q==
X-Google-Smtp-Source: ACHHUZ47nqUaHErWDVz/sLK5UcH8SW19SUG16keT/oe5Rk5/giZmsiFYSgziHOgHrlK6XzxNNrCLiA==
X-Received: by 2002:a1c:7415:0:b0:3fa:77c8:6724 with SMTP id
 p21-20020a1c7415000000b003fa77c86724mr51349wmc.10.1687417557595; 
 Thu, 22 Jun 2023 00:05:57 -0700 (PDT)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 17-20020a05600c231100b003f8ec58995fsm6919930wmo.6.2023.06.22.00.05.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 00:05:57 -0700 (PDT)
Date: Thu, 22 Jun 2023 09:05:56 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJPy1FBvMC4z5SG2@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
 <ZIS1FX0QAqDSvVUK@nanopsycho>
 <DM6PR11MB46570B50A01D81F54F1068369B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB46570B50A01D81F54F1068369B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687417557; x=1690009557; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=VIhSOYk52hVuqfcboW85OQLI0NHly7jy25hrkyJ2YAw=;
 b=WZQ2qdOUncD9AsxUeqky0Sv9plZI/2WtRmFLj/vUPrLspAKtFdJAjDNBfRiM90Wl6l
 Bu52No9UiIMeNp5vJfqV4tdzKNy4gqSSkZZgdTA2tEhX9UhJ0VFvTD1WUjcyZjBnxsqM
 CY6kI+W0r2aC0t58Ot4ae4EkJpbEUxEO+qU0IzQugmgTpIX9f4Vdc6bAsBsmzf0/VZPu
 oMD/OCT9ypK+CBaNDZaMdjjZbvVgK6KKjigdSYdUY6tPiNMyp/u8BcNpj7C6Q76VkPqd
 cFeXbCEhZGKbNKcefxvBWXoomyu9ZEWY69AGbsxFJ97j4shY74xka5Cdz8D7NjEiYYcZ
 YJOw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=WZQ2qdOU
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
 "kuba@kernel.org" <kuba@kernel.org>,
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

Wed, Jun 21, 2023 at 08:55:35PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Saturday, June 10, 2023 7:38 PM
>>
>>Fri, Jun 09, 2023 at 02:18:46PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>
>>>DPLL framework is used to represent and configure DPLL devices
>>>in systems. Each device that has DPLL and can configure inputs
>>>and outputs can use this framework.
>>>
>>>Implement core framework functions for further interactions
>>>with device drivers implementing dpll subsystem, as well as for
>>>interactions of DPLL netlink framework part with the subsystem
>>>itself.
>>>
>>>Co-developed-by: Milena Olech <milena.olech@intel.com>
>>>Signed-off-by: Milena Olech <milena.olech@intel.com>
>>>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>>>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>>>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>---
>>> drivers/dpll/dpll_core.c | 953 +++++++++++++++++++++++++++++++++++++++
>>> drivers/dpll/dpll_core.h | 104 +++++
>>
>>Overall, looks very good! I pinpointed couple of nits below, nothing big.
>>General question: Why do you put documentation comment to every static
>>function? Does not make any sense to me. Even for non-exported functions
>>I think it is overkill. Most of them (if not all) give the reader no
>>additional information and only make the code a bit harder to read.
>>Care to drop them?
>>
>
>I forgot to respond here.. I would rather leave it, but if the others think
>the same way, we could remove them.

Could you explain what is the benefit of leaving them? What are they
good for. From what I see, they are obvious and only add blank LOC.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
