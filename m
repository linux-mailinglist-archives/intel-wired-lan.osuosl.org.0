Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CF1708F97
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 07:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B121840B90;
	Fri, 19 May 2023 05:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B121840B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684475421;
	bh=nCzRnelX52dKbiGU/rtsJhgKWE39j+A5W4umMTIrdrw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XuXYWNE6dLG7KtwrbRw1kI+LG3L56k6xymP12Kay3Bdqubu6U+ZKLM7g+3Uw6IRXY
	 v7OqaPoTyRRnptCnGQY+TaKg01aZiTSudHya1XUs+n8aq70wfy3oyXLNizdQw6xPl6
	 7Rvqxoy1bYS0tUPsFk7ulVk/MDC9p9jwxenyPOsY1GX9VXquwTC+qKPAoU2/oRDjlF
	 1CtqgYCMSkHWP0y55Pad+Gc+6QyaXCa/2KLtmpSUJZyXTftiQOqmx3MgF1N+nRwwui
	 21ZBXHdc5vNWgxwuyzB/PxFVvlq5iCb3ZQjLHiGnsVnu387RUbt1sWtw80xeBZ7lBg
	 We+nOEfS2vf0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9x1CW8_L7oEM; Fri, 19 May 2023 05:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26426400D7;
	Fri, 19 May 2023 05:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26426400D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2463A1BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 05:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F02F6843FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 05:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F02F6843FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IiTi2SAng_hH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 05:50:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2FE8843BB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2FE8843BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 05:50:13 +0000 (UTC)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-557-0jvAdmrKOTiNzt8oxvxyLA-1; Fri, 19 May 2023 01:50:11 -0400
X-MC-Unique: 0jvAdmrKOTiNzt8oxvxyLA-1
Received: by mail-lj1-f197.google.com with SMTP id
 38308e7fff4ca-2af08de8c2fso15614981fa.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 22:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684475409; x=1687067409;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R2hzrnI5esYTTOUV9jOS70d88iTnE+AXFNmudpYyxXI=;
 b=ElIxUV11rjYA3Ztor0uj/cCtPKjJ8yLS4xv1oVMZXoFCVjZQS4e89lY6w8rZc6UDOi
 YfZQQlOqVAFm95W19WPf0IF5Oz5zTnt/1FXDy1tt36slfEKKyB/053EPmXY+1lZ9iN88
 reLRBINhe1yzwOlVuTiBY9SpYXO7TdLzaTDYNOwKRJJfPZTuDCeRROHeToHmA1tyDYb5
 58P9xtcDLa0ekEhWMzCv36qgHi6GmFJwa6BPrY0+B/K13PIs+I5xdIIMY4lyB3wxfrkX
 4Q5JhbDKLMEg0XfaK7H64GEFfG79sBujqDR/ND+mQzs6MtX3A0SJtwWI1T35bqlCLzxL
 hlRQ==
X-Gm-Message-State: AC+VfDzk0vAMacsgUPBh2AwUNF1s6darOt5LAH3Qew+OmCZCooLH35bR
 DCY6uS1/fIsUgTVIFMlknoaNdhV6lO/0IXnPooV76f5S2/21HrSim12UYxqh7omkkY6B4wLKYdM
 q9KZKPdOT0I7nlz11TO3rEsD5XiPMyA==
X-Received: by 2002:ac2:5581:0:b0:4f3:aaf0:f672 with SMTP id
 v1-20020ac25581000000b004f3aaf0f672mr494255lfg.45.1684475409783; 
 Thu, 18 May 2023 22:50:09 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7niOFPsZwqOneqGIAkM65yM1Ou6ocpJ0Gx3ZF3fF1AMiWM8NU4v0NkXeSdXsR/sV1uYPYNhA==
X-Received: by 2002:ac2:5581:0:b0:4f3:aaf0:f672 with SMTP id
 v1-20020ac25581000000b004f3aaf0f672mr494237lfg.45.1684475409450; 
 Thu, 18 May 2023 22:50:09 -0700 (PDT)
Received: from redhat.com ([2a02:14f:175:3e4d:6703:27b9:6f74:5282])
 by smtp.gmail.com with ESMTPSA id
 z17-20020ac24191000000b004eb2f35045bsm470970lfh.269.2023.05.18.22.50.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 22:50:08 -0700 (PDT)
Date: Fri, 19 May 2023 01:49:56 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20230519013710-mutt-send-email-mst@kernel.org>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
MIME-Version: 1.0
In-Reply-To: <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684475412;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R2hzrnI5esYTTOUV9jOS70d88iTnE+AXFNmudpYyxXI=;
 b=SOh+e7KvW9iT0ZHXC0ofQlimmFMGpEeNxNgKkFh9iHS7twP1beXZf8lypz3WZLfvubSD8b
 pWamibJSR4rDL8pyVzCGT8T80RlK7Uv4H5SrsUvmX7u62txidObkoYoPdNS3DiXoN64TJD
 45IlYR4n49dMPFu5OzwLjDkkHCE8GI4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SOh+e7Kv
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
 anthony.l.nguyen@intel.com, "Orr, Michael" <michael.orr@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 18, 2023 at 04:26:24PM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 5/18/2023 10:10 AM, Michael S. Tsirkin wrote:
> > On Thu, May 18, 2023 at 09:19:31AM -0700, Samudrala, Sridhar wrote:
> > > 
> > > 
> > > On 5/11/2023 11:34 PM, Michael S. Tsirkin wrote:
> > > > On Mon, May 08, 2023 at 12:43:11PM -0700, Emil Tantilov wrote:
> > > > > This patch series introduces the Intel Infrastructure Data Path Function
> > > > > (IDPF) driver. It is used for both physical and virtual functions. Except
> > > > > for some of the device operations the rest of the functionality is the
> > > > > same for both PF and VF. IDPF uses virtchnl version2 opcodes and
> > > > > structures defined in the virtchnl2 header file which helps the driver
> > > > > to learn the capabilities and register offsets from the device
> > > > > Control Plane (CP) instead of assuming the default values.
> > > > 
> > > > So, is this for merge in the next cycle?  Should this be an RFC rather?
> > > > It seems unlikely that the IDPF specification will be finalized by that
> > > > time - how are you going to handle any specification changes?
> > > 
> > > Yes. we would like this driver to be merged in the next cycle(6.5).
> > > Based on the community feedback on v1 version of the driver, we removed all
> > > references to OASIS standard and at this time this is an intel vendor
> > > driver.
> > > 
> > > Links to v1 and v2 discussion threads
> > > https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/
> > > https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/
> > > 
> > > The v1->v2 change log reflects this update.
> > > v1 --> v2: link [1]
> > >   * removed the OASIS reference in the commit message to make it clear
> > >     that this is an Intel vendor specific driver
> > 
> > Yes this makes sense.
> > 
> > 
> > > Any IDPF specification updates would be handled as part of the changes that
> > > would be required to make this a common standards driver.
> > 
> > 
> > So my question is, would it make sense to update Kconfig and module name
> > to be "ipu" or if you prefer "intel-idpf" to make it clear this is
> > currently an Intel vendor specific driver?  And then when you make it a
> > common standards driver rename it to idpf?  The point being to help make
> > sure users are not confused about whether they got a driver with
> > or without IDPF updates. It's not critical I guess but seems like a good
> > idea. WDYT?
> 
> It would be more disruptive to change the name of the driver. We can update
> the pci device table, module description and possibly driver version when we
> are ready to make this a standard driver.
> So we would prefer not changing the driver name.

Kconfig entry and description too?

-- 
MST

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
