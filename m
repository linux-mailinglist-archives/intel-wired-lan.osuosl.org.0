Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D5170866C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 19:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFC2B6144F;
	Thu, 18 May 2023 17:10:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFC2B6144F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684429848;
	bh=BMDC4QxGEXEvB0+xn1eeux9LLvIENpPZH0/MEyAEhwk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W5d+PdhxFWevhspOaBULg73iFVzJdPIhrfCcu3pt1429yh9TIkST9odWpIUJ7q2Eu
	 VCShEkeC2nAAiiWCeo7lZIFaX/uymj8HsmrzVBzT5BU7g7yjYup2m5IqTrUINR/Odz
	 2DY1opuq8V21umkmOsodYDenQHWUj1trHDtYmfUFg5qfYlpIfrZiALjyrE3MdXt6w1
	 WW+9aQoi7L+in5DBtISiDrnY9pi1YEdTkfZNMo7vbwxXMWUJ3RrrSrEB/IVhiJgXOb
	 U+obxCuHZ9epmVXXYvGSGR7BK+bMtJ25fucUXjX5rXG6KI8hqconZtHib/7xQ2jRoR
	 tuGrjDH3xNotA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwUR3Kip5BCg; Thu, 18 May 2023 17:10:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6D8060A79;
	Thu, 18 May 2023 17:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6D8060A79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DA9B1BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 17:10:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0DB784447
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 17:10:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0DB784447
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cj2jU6o7ap4K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 17:10:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC76C84443
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC76C84443
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 17:10:40 +0000 (UTC)
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-411-Dr4pkGiHPWe47zp2usMSKg-1; Thu, 18 May 2023 13:10:38 -0400
X-MC-Unique: Dr4pkGiHPWe47zp2usMSKg-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-4f3932e595dso1634546e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684429837; x=1687021837;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wdUVVT/Gh0h3a0M3UuaFKXpOqMtLr7CTYjRZtfYWYb0=;
 b=fiHsOxSGnXP/dRaew8C/rphVAXkoWW3CzNQYvFJo0xlhq1rZBoyI89acq/JhVNUSbQ
 KtvqFax/jfSgUO0YcRY8/wi1K24sZZ9BH7RqC3b/3KFlTLjnwHB1ZEAEAwVcz9rJO3+M
 pjV7xUSGEFbfiaoVKhfRC6a9kB1S11MdxZjE0wFh2DLJYlyLdd+i7AcEkkqS246sJkkH
 8cWAikWUBLtWKBeSzL+zyk2eghWCCGIgsrAAamUyPZ1njHS4sQKxtG+QB8dx9RxFhkez
 0ug2MDIDQjTFL03a17GEdntGxVpqRcKNE0iQLBGkiMcn6VN64K7MXsAROjKcZYv5lzlD
 Pl5Q==
X-Gm-Message-State: AC+VfDyVzQhWofUM5iyojUivHU5P3dlFCEpR01bLeIm3wz4y99LpftWa
 QHlMWvg/5hWr8d9Pg9CsW9h7ukzR7W8D54mf2UIu13MkZIhBQjD8igEN/7h8t/zhHwxj/Mi7Btc
 3TB2KA+vrKNnbCQH+qg2YXoAlycuNSg==
X-Received: by 2002:ac2:47f4:0:b0:4ef:f3bf:93a6 with SMTP id
 b20-20020ac247f4000000b004eff3bf93a6mr1320502lfp.51.1684429836857; 
 Thu, 18 May 2023 10:10:36 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5mJQAyU8eMFAPoYUR83fXtizp93jbZcxuQoZeZF89CQUd8JRlNhQiXgN4K5QbAUDfWVC4/xQ==
X-Received: by 2002:ac2:47f4:0:b0:4ef:f3bf:93a6 with SMTP id
 b20-20020ac247f4000000b004eff3bf93a6mr1320484lfp.51.1684429836447; 
 Thu, 18 May 2023 10:10:36 -0700 (PDT)
Received: from redhat.com ([2a02:14f:175:3e4d:6703:27b9:6f74:5282])
 by smtp.gmail.com with ESMTPSA id
 c3-20020a197603000000b004f13eca769esm314397lff.82.2023.05.18.10.10.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 10:10:35 -0700 (PDT)
Date: Thu, 18 May 2023 13:10:29 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20230518130452-mutt-send-email-mst@kernel.org>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
MIME-Version: 1.0
In-Reply-To: <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684429839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wdUVVT/Gh0h3a0M3UuaFKXpOqMtLr7CTYjRZtfYWYb0=;
 b=ifR8dwf67YZDkXGkr2DOhbrhIt/1YYBAmOuYRsP/IwuzvevSb5Y7tKpcKrA5KxtDdHvgLO
 1C8ENLgkprtShFYJQobeKT2OXlXS3CIPWj8Aei1BrKeNvX2qTgdk1Kteio+GkoLoF8qKFE
 kMAgfndU3Y9DlcLS6QNn15gEdsL4/1s=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ifR8dwf6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 18, 2023 at 09:19:31AM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 5/11/2023 11:34 PM, Michael S. Tsirkin wrote:
> > On Mon, May 08, 2023 at 12:43:11PM -0700, Emil Tantilov wrote:
> > > This patch series introduces the Intel Infrastructure Data Path Function
> > > (IDPF) driver. It is used for both physical and virtual functions. Except
> > > for some of the device operations the rest of the functionality is the
> > > same for both PF and VF. IDPF uses virtchnl version2 opcodes and
> > > structures defined in the virtchnl2 header file which helps the driver
> > > to learn the capabilities and register offsets from the device
> > > Control Plane (CP) instead of assuming the default values.
> > 
> > So, is this for merge in the next cycle?  Should this be an RFC rather?
> > It seems unlikely that the IDPF specification will be finalized by that
> > time - how are you going to handle any specification changes?
> 
> Yes. we would like this driver to be merged in the next cycle(6.5).
> Based on the community feedback on v1 version of the driver, we removed all
> references to OASIS standard and at this time this is an intel vendor
> driver.
> 
> Links to v1 and v2 discussion threads
> https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/
> https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/
> 
> The v1->v2 change log reflects this update.
> v1 --> v2: link [1]
>  * removed the OASIS reference in the commit message to make it clear
>    that this is an Intel vendor specific driver

Yes this makes sense.


> Any IDPF specification updates would be handled as part of the changes that
> would be required to make this a common standards driver.


So my question is, would it make sense to update Kconfig and module name
to be "ipu" or if you prefer "intel-idpf" to make it clear this is
currently an Intel vendor specific driver?  And then when you make it a
common standards driver rename it to idpf?  The point being to help make
sure users are not confused about whether they got a driver with
or without IDPF updates. It's not critical I guess but seems like a good
idea. WDYT?

-- 
MST

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
