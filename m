Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAAF8B0CD0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 16:41:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 301698143D;
	Wed, 24 Apr 2024 14:41:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QliOo0xou3Je; Wed, 24 Apr 2024 14:41:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ECEB81CE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713969674;
	bh=1X8jzwc/J0aEfOen/Jzf7KM7nb+jdJmLOBgsiHxUrvw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6AcAl1d6HgrA3glFKq3MuwJPOc+OdLMOghI7kGIGIeytpSEpA3ORwWtFYk2nqPOW0
	 P101Tpcvl4YJVhnsDGr4Z4FzdBhDoTAhqqrIkD0nj7RvX4wuSGNDasus0ckwQckVqL
	 YwVCbcysm8hJ310+98pPGf0lG3WQ6cZOVSlMVwjs2UxJtn/aLn9bUWEPyNTHlphnbr
	 8ndKne3e4I9xyhfaUr3CV1ZsKwDmnpPMmktEwG8o4FE/qJgeysTGW42CHm3D37M4ym
	 AGWqQfyr2QWo3u4nmMeJc/uwwoYtx/bg5H3THkM3o9yrUAxShHte0GsDHbaCKlSIBP
	 zbZ3d1KI1DUMA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ECEB81CE7;
	Wed, 24 Apr 2024 14:41:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C0E21BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 778EF405C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oUu8dyPIGhG4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:41:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B35F040198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B35F040198
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B35F040198
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:41:07 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-41b21ed1985so2618025e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:41:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969666; x=1714574466;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1X8jzwc/J0aEfOen/Jzf7KM7nb+jdJmLOBgsiHxUrvw=;
 b=uJsRmV7G5wpcRsk085TxwpWEuo7PZx89vrg0f4uyEl58ftm6434ODq8ooa/lS6q13U
 TS7WGd4SIWtaogecxT6r+7s0C06hXTnxnG0Re1Qa05ue7F+LPVtSFEJZzh6CSyMwfS5a
 AIJ+EM5IyM+98SI0aEQsbDJ0qCqM9fIe5Jog7xwenBX9CAYWw45L7RwUdw7ReSQQx+Br
 8cZj/x14sbqCzqUv2ow3xNKIPJH9uAhvakPL5m7FwQUXKEyr7u7PTd/K4ORl4ALgIlk0
 W68VWCrXsiUe+I4d3yVUF3ySZGBfrBt6jJCvaBCyuMzWyuRS73Ri9iDgTAs8n8WuY6JV
 O/tA==
X-Gm-Message-State: AOJu0Yx+VL5AwDI/pahSxi5lXNB5tSbhTz6kZkpF4b123jQ36saDGlW/
 s9DDI+6BJyEHI5CDKbYcN0PMVwO39EigrRIR9adeRk4aoVIHlkF5KYWIUoVJAEk=
X-Google-Smtp-Source: AGHT+IEUIo8GejnCeZrD5zw3F3haHwaq5mAGTNjcOwYC2zFN3xTcdlE389RLK6tFmH0VnvUuKJke4g==
X-Received: by 2002:a05:600c:474a:b0:419:f241:632f with SMTP id
 w10-20020a05600c474a00b00419f241632fmr2164107wmo.31.1713969665517; 
 Wed, 24 Apr 2024 07:41:05 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 fj3-20020a05600c0c8300b00416b2cbad06sm27978565wmb.41.2024.04.24.07.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:41:04 -0700 (PDT)
Date: Wed, 24 Apr 2024 16:40:59 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Message-ID: <ZikZ-5O9Ta1mkT1O@nanopsycho>
References: <20240422130611.2544-1-piotr.kwapulinski@intel.com>
 <20240422130611.2544-6-piotr.kwapulinski@intel.com>
 <ZiZzdAX-qI-7wCMC@nanopsycho>
 <DM6PR11MB46105E83E5597982F1EF02C9F3102@DM6PR11MB4610.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB46105E83E5597982F1EF02C9F3102@DM6PR11MB4610.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713969666; x=1714574466;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1X8jzwc/J0aEfOen/Jzf7KM7nb+jdJmLOBgsiHxUrvw=;
 b=p9gxtET4e/+iFhn5vkGrHMICb9e/flHlfFwKupLgceYKma5gUQau0vKOTD1H3XfwaP
 qzgRIcuYAoPCRIzognQTHcy/k9CjbkKP4SoTn2K9eT9yUDChIz66V96zC4o2/2Jzu0hg
 ttHj0gMPIq8rCcEQHOT0bCYAXO7o/puWaQZcl8cXNmdZZIz4vVS61cj7aRkxFjPZWjxX
 BU8zmKZ4Yz81hWLVOM0cw6FTnkM9rP2bnjXljaIP3TbDEZ/rtRfiCTn+LIYKPY0QfGcp
 3YPml0LZNfW4S2RPBpmKWeD35SRkO5VVm8AnKvM7jZHQ1TfSZeO546veF33arO0axs8M
 goxw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=p9gxtET4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ixgbe: Enable link
 management in E610 device
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Wyborny,
 Carolyn" <carolyn.wyborny@intel.com>, "Glaza, Jan" <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Apr 24, 2024 at 03:49:09PM CEST, piotr.kwapulinski@intel.com wrote:
>>>-----Original Message-----
>>>From: Jiri Pirko <jiri@resnulli.us> 
>>>Sent: Monday, April 22, 2024 4:26 PM
>>>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>>>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; horms@kernel.org; Wyborny, Carolyn <carolyn.wyborny@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Glaza, Jan <jan.glaza@intel.com>
>>>Subject: Re: [PATCH iwl-next v4 5/5] ixgbe: Enable link management in E610 device
>>>
>>>Mon, Apr 22, 2024 at 03:06:11PM CEST, piotr.kwapulinski@intel.com wrote:
>>>
>>>[...]
>>>
>>>
>>>>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h 
>>>>b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>>>index 559b443..ea6df1e 100644
>>>>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>>>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>>>@@ -1,5 +1,5 @@
>>>> /* SPDX-License-Identifier: GPL-2.0 */
>>>>-/* Copyright(c) 1999 - 2018 Intel Corporation. */
>>>>+/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>>> 
>>>> #ifndef _IXGBE_H_
>>>> #define _IXGBE_H_
>>>>@@ -20,6 +20,7 @@
>>>> #include "ixgbe_type.h"
>>>> #include "ixgbe_common.h"
>>>> #include "ixgbe_dcb.h"
>>>>+#include "ixgbe_e610.h"
>>>> #if IS_ENABLED(CONFIG_FCOE)
>>>> #define IXGBE_FCOE
>>>> #include "ixgbe_fcoe.h"
>>>>@@ -28,7 +29,6 @@
>>>> #include <linux/dca.h>
>>>> #endif
>>>> #include "ixgbe_ipsec.h"
>>>>-
>>>
>>>Leftover hunk?
>>Will do
>I think it's better eventually to remove this blank line. What do you think ?

Does not seem to be ralated to the patch. Whatever.

>Thanks
>Piotr
