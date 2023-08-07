Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3FF771C1B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 10:14:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 883D281E51;
	Mon,  7 Aug 2023 08:14:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 883D281E51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691396047;
	bh=UxHl0qwJ0WT3dZ40s3Maqqd15i8tcUl3jZU/tO+rnTU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qWeC9z/qgycWyCthHQUcaw906K+K+q4P6R/QPVaCmF1rTIu7T2kbpspVvlUGjeEt/
	 Kp1k/M4NWVK3222OVxEaUUC6iO21/3vm6NdHerVN6VAVSec1oAYroFyiA5HZV/yjtH
	 jXHam7lfVGUNzJa7hNuyUn10tcL16aAGSpZAV7WOsB28c7JBQEe0Lxx3iJ1UQdnHbt
	 Oa/lMFpKqKsAWO8jWSQIVb9TCpz87xhZziK+o55KUy6u5dt+favgno+7pPs3XpEMl1
	 aqPPzWLgPmg6Gy9GeQS09bJGJHk9o+lOOmsWS4MV/R4XQbrLJDExQo2WGm8qgq8OOt
	 CA6jsQjSnciFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mdhLdjIQknw; Mon,  7 Aug 2023 08:14:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AAB880C0B;
	Mon,  7 Aug 2023 08:14:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AAB880C0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 189A91BF868
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 08:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E2704031E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 08:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E2704031E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCeFeSZzfneX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 08:13:19 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 613E340207
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 08:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 613E340207
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-317715ec496so3685406f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Aug 2023 01:13:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691395997; x=1692000797;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LLKodO4Y3hcUtlogMUbubeG9uU0/WvWNo//bCg4tNY0=;
 b=jbVjpS9vMhDSmrOrvR56Ri6UurTLOauE7eKDBAoRNHF2VBWYxHUkM1kU011WSUSZs1
 1teK6tw8Yipov74V+su1259qSDQoE6Zblgme4+YfR3YFBVrXYhcUItNeL6COTAFebwxa
 xYZtNhl7o3cf/8AC/GSHItsRGxANXVBc0NFC4rlLSdZlHUM73ZUPZO8sc8erTxDB/F1/
 +6ZmQ7282B5UZGJsoGmzCKRTYHJGBiJ3StCOIrfEY1LaHYZtk4tjie21Ejq11jpysiwE
 XeR2NZYs3ihj1Ns4vYQUyctH4BEbkffcrOT4tytyHlTCr3oIKLIpiBtnYOpi3dpWR86M
 9hbg==
X-Gm-Message-State: AOJu0Yzijwl/iUL9Jp44qk+/dGhw6ztBNPRMS1eO5Tr3Q5keR5GdP/oU
 bzJ2LB0k9iOOCcRz9JWXqHZjkQ==
X-Google-Smtp-Source: AGHT+IEh/NmRuU56UfaanfHAex34soIf/oqYQk+L702Ab/SKUXoKFvsY3POfIQesJkVPB9pf6BWhiw==
X-Received: by 2002:a5d:4f02:0:b0:317:3d78:c313 with SMTP id
 c2-20020a5d4f02000000b003173d78c313mr5749499wru.60.1691395997351; 
 Mon, 07 Aug 2023 01:13:17 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 s9-20020adfecc9000000b0031416362e23sm9782645wro.3.2023.08.07.01.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Aug 2023 01:13:16 -0700 (PDT)
Date: Mon, 7 Aug 2023 10:13:15 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNCnm9tPN1npIGUM@nanopsycho>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-4-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230804190454.394062-4-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691395997; x=1692000797; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LLKodO4Y3hcUtlogMUbubeG9uU0/WvWNo//bCg4tNY0=;
 b=tzJVjpGeQZRB+HyRUl/cxeBbmjjpAOY6w8Cwclu6Fxy6+mCDgYJvAdKt2BwUENwXy3
 VxlMxFRi8Fv6Gzia94jeZsxwZtBoMJxLUWI2xrrgEGpXCh+l/5wmWiOir4WO+JPVjj7Q
 6r8foa4HRp6deN+LK62yvKBuq6zKywhh2F0F5m5PsHX48OMs2yD56iSftOrzJQCTlPSi
 9hvRdtTMOY6f4wvBrIR7uV+aaYpuVk9YMN0HYrcaE2+vu4NThj698t4i6/Sj2fp1YL5s
 1QUOYgH0VGAeqjI/P01Vb6MdwCN2KvkPu8gwN5le43YKVHTVtDwrtybT7bCMMOM1sFI7
 oF2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=tzJVjpGe
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/9] dpll: core: Add DPLL
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 04, 2023 at 09:04:48PM CEST, vadim.fedorenko@linux.dev wrote:
>DPLL framework is used to represent and configure DPLL devices
>in systems. Each device that has DPLL and can configure inputs
>and outputs can use this framework.
>
>Implement core framework functions for further interactions
>with device drivers implementing dpll subsystem, as well as for
>interactions of DPLL netlink framework part with the subsystem
>itself.
>
>Co-developed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Milena Olech <milena.olech@intel.com>
>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Thanks!

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
