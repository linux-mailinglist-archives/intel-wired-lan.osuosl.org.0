Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EE774D4F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 14:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2941B60EC4;
	Mon, 10 Jul 2023 12:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2941B60EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688991012;
	bh=bNHYYqrgEpHphXtZ2v5edSHVBMZMnfit7Yp3zquG2VI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fRQwDEjWYf9ekSul8+ddLdfmrHNcFFsXV5O8RRwm+0TMoqR8t0amkt/HbcZNUPyGl
	 vvsRkrNx9t6uTezGSUmqLGB9gi0m0ZCN5OFfrIhS8kPUOJNrsRJ+m531d3VNixgLtT
	 tbWESWIOug+TVU+I0sKuUFJ5HfKkepQzU0aEt6seJzXRBFmWM+69+nHjl7u3AXgj/a
	 GceClmd30M4bbD36JaowQz1w2TnF342CaYjjIRZHGbslgGFAbmlX8wk6iDeylDTt5H
	 I9iSdaLkseZrvcFvCXXJzwEPTqpdWV2rnORoVAn7txeOIcSzAIBOX9eQZi0/T/IztQ
	 XdWKSiwQ/ARWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9eI3L5y6-Os; Mon, 10 Jul 2023 12:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B556860EDF;
	Mon, 10 Jul 2023 12:10:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B556860EDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC83F1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 12:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9376F813C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 12:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9376F813C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8AkE6DoWt6u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 12:10:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13B24813C0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13B24813C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 12:10:01 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-3fbfcc6daa9so33544125e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 05:10:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688991000; x=1691583000;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H+JMKDNGrwhDe4HBcYBuaXlqFjTwAt1vMreVme3OFY8=;
 b=Zi41AFq8fIUQWX5yojvqe3KkGuh4FP5IHwwXoJsC4+e8fYuKkU69OHl32T0C1JOB0N
 8zi/H2i4m0pPWCGfhqx+QML3wLgjuAjEWr8ut4oFZh/ORJfgfBCs/NFXsyMSmCnbQwG4
 KslDunXsD3u6OM/FYtggqYrY3iPcWy0fpJdk9tk9iFo5Tztd5iAM7rtzoKjVG27MjHHK
 seJImLiv+zEo9iI8ymw7Auefg4KhkHJYAP7lIC4pyuFYSYORsjWk1cUnuvoz1E3i3Lv1
 fUj1qTc9Bw37FePABkrPChBuS5B+BU163Mfz8TG4IhOHmnhiukR38n0546cHM+ngX9nG
 dcXA==
X-Gm-Message-State: ABy/qLbD/RYzzTG3892DJ1h9Fkp/dBQ9MtbY/mwfD1xlJNHiyAlfuAnT
 OTgI2HctZ6TI4YnVoMnYhEmT+Q==
X-Google-Smtp-Source: APBJJlG6iRHARThiiqxbJc+oH1dUx5jylRNEM8Djmjy4H8sNg1Su/SyUt7SEHMg58iXBXU/0NBUMLA==
X-Received: by 2002:a05:600c:2209:b0:3fc:b86:d3fa with SMTP id
 z9-20020a05600c220900b003fc0b86d3famr4756381wml.1.1688990999804; 
 Mon, 10 Jul 2023 05:09:59 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 z13-20020a7bc7cd000000b003fc0062f0f8sm9128556wmk.9.2023.07.10.05.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jul 2023 05:09:59 -0700 (PDT)
Date: Mon, 10 Jul 2023 14:09:57 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZKv1FRTXWLnLGRRS@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJwWXZmZe4lQ04iK@nanopsycho>
 <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1688991000; x=1691583000; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=H+JMKDNGrwhDe4HBcYBuaXlqFjTwAt1vMreVme3OFY8=;
 b=MD2tvasVfOO4Nxy8SwUpBNEofYhK1a76YN7YTyJ6XCk4qvq1spePWJ5U2HolrrDdOT
 pzotR5LDEF25B41YlghYLyVcJkdw7vYJckcNJXxzoVzx8DbQ+6hEFFhdUj6XuU5/JwTS
 de7OJ/wZbyomxDR6RlVAoOvpDOADSoZgTnFR2HGAnnoWaFFoubJOc/2oATJfKeVSTYBJ
 xp2eDZ1l4OxeIVU/voQMubWmuIrIVwG/CaH7gXvloqVZatO1QXMFsWy7LlP8TddCh4qu
 5Do8+o8pothhSJMw+0Mm75HDNlA3gJgbKA3Vb5t+JO+ihvcYFSzAincJ4KCt7QFMv+p/
 CNRw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=MD2tvasV
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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

Mon, Jul 10, 2023 at 12:07:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Wednesday, June 28, 2023 1:16 PM
>>Wed, Jun 28, 2023 at 11:15:11AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>Sent: Tuesday, June 27, 2023 12:18 PM
>>>>
>>>>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>>>>wrote:
>>>>
>>>>>v8 -> v9:
>>>>
>>>>Could you please address all the unresolved issues from v8 and send v10?
>>>>I'm not reviewing this one.
>>>>
>>>>Thanks!
>>>
>>>Sure, will do, but first missing to-do/discuss list:
>>>1) remove mode_set as not used by any driver
>
>I have implemented in ice (also added back the DPLL_MODE_FREERUN).

Uh :/ Why exactly is it needed in this initial submission?


>
>>>2) remove "no-added-value" static functions descriptions in
>>>   dpll_core/dpll_netlink
>
>Removed.
>
>>>3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>>>   after each patch apply
>
>Hope Vadim will decide on this, the thing is merging in two patches
>doesn't make much sense as there won't be any linking until both patches
>are there, so most sense it would be if 3 are merged into one, but
>then we will be back to one big blob patch issue.
>
>>>4) remove function return values descriptions/lists
>
>Fixed.
>
>>>5) Fix patch [05/10]:
>>>   - status Supported
>>>   - additional maintainers
>>>   - remove callback:
>>>     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>>>6) Fix patch [08/10]: rethink ice mutex locking scheme
>
>Fixed.
>
>>>7) Fix patch [09/10]: multiple comments on
>>>https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>>>8) add PPS DPLL phase offset to the netlink get-device API
>>>
>
>Added few things on this matter
>- 1 dpll level attribute:
>  - phase-shift - measuring the phase difference between dpll input
>    and it's output
>- 1 dpll-pin tuple level attribute:
>  - pin-phase-adjust - set/get phase adjust of a pin on a dpll
>- 2 pin level attributes:
>  - pin-phase-adjust-min - provide user with min value that can be set
>  - pin-phase-adjust-max - provide user with max value that can be set
>- a constant:
>  - DPLL_PHASE_SHIFT_DIVIDER similar to DPLL_TEMP_DIVIDER for producing
>    fraction value of measured DPLL_A_PHASE_SHIFT

Again, why do we need this in this initial submission? Why it can't be a
follow-up patchset to extend this? This way we never converge :/
Please focus on what we have now and bring it in. Let the extensions to
be addressed later on, please.



>- implemented in dpll netlink and in ice
>
>>
>>You are missing removal of pin->prop.package_label = dev_name(dev); in
>>ice.
>>
>
>I didn't touch it, as we still need to discuss it, Jakub didn't respond
>on v8 thread.
>I don't see why we shall not name it the way. This is most meaningful
>label for those pins for the user right now.

This is not meaningful, at all. dev_name() changes upon which pci slot
you plug the card into. package_label should be an actual label on a
silicon package. Why you think this two are related in aby way, makes me
really wonder. Could you elaborate the meaningfulness of this?


>
>Thank you!
>Arkadiusz
>
>>
>>>Thank you!
>>>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
