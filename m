Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8523B70AD33
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 May 2023 11:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 004B060BE9;
	Sun, 21 May 2023 09:21:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 004B060BE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684660900;
	bh=gtkwrvSusinXXi03y/Aj+k5z79TCyK8CYAHXaOPmX/k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=plDY6B3KV3lkr4xCf3KmvgzlNme/Ro9TTI62vLu4Pmrqxe1agYvBhK1FWTSAh/kry
	 LvjFPTdtXlsmkANaZTwoRZmXAZBThKmg/ZNdAuGjK8BEtlyCfzEvShaANRD6hzAS80
	 Mk5CImr8nDP2lAgyuRzsKhgcyjJc+JPQ7jd8zN9x9WOUDtIhpwa7jP5rw9E4dhVVUx
	 +Rzs+RCrNzdw0Di7sYWwUe2mWpqTeiqFAqSPTqLxkV7aspuXQ+sWIz1653WilXC8BB
	 86bfLdUCvxyHqKB8u5TC1vQ/OT5bUT0TkzbwdSQDbEy9jJAwpdnEbM0mHQXo97R3GY
	 xZ0So6jkX6T2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXgpq27NwZSi; Sun, 21 May 2023 09:21:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E2B460BB6;
	Sun, 21 May 2023 09:21:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E2B460BB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAE0F1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 09:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B27C98266D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 09:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B27C98266D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GclTS-j20WiP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 May 2023 09:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CE3E8234A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CE3E8234A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 09:21:31 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-121-YCPhXkabM32egL0IrdHbow-1; Sun, 21 May 2023 05:21:28 -0400
X-MC-Unique: YCPhXkabM32egL0IrdHbow-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3097ebd267dso462898f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 02:21:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684660887; x=1687252887;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x3g3aQcnmbrJVCV2d6q556xVnveXmKbQ1XA+jcIMHIs=;
 b=DCdGD7jMiKZ2qVaPk6aA82KKlacmrHBSqW2dgmKEkPgRygaYcdzGv0yXW++roODM6a
 NUQtJZLwMs39HCHdgY/csnQPSMbJ6JfQHisZlQHCBE1Y1b/TcTgEKaAxuae+pVJzt8BC
 tE0xMO94gtrCDelWRArp2R7OcNXY98MgACNb4JWbD7AfIhibYDHJwmP74hRZYEi7qTDJ
 a3Hg5EOH8ptx7u+5IToJWt5VNOoW6AJUbeXU6AhIWIwgYjL5c6uZM7DPYQpEJfH11wa2
 /8z5lT4moxaEOmVeAC8v5csYHVzKisjOJbU1lBAZYiyjV8T5IYAfYyVX7b2g2kMsJUMi
 nQCg==
X-Gm-Message-State: AC+VfDyKwvFx5xORULRk+YaY+YZGxy0jwBp0NVbx4a6zJ94AVcAGqGiH
 oaD5r9Y3MQn9orVvBLIVq3KL6KfDGzon+UFVs6p+iMv5+Hw1OckH39xL/W7IIrlQvqnTzOoKpGO
 V5vcb89Y8uqGShOlQUdyWrAhbk0OPOg==
X-Received: by 2002:adf:f48a:0:b0:309:48eb:cdf9 with SMTP id
 l10-20020adff48a000000b0030948ebcdf9mr4783549wro.38.1684660887616; 
 Sun, 21 May 2023 02:21:27 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Am96kBS0gZnQmAV189AcZbdMbzVv+JePcNcmnlmKbPxD7/O3O/4Fgu09ri+ms+CY+ZmC7pw==
X-Received: by 2002:adf:f48a:0:b0:309:48eb:cdf9 with SMTP id
 l10-20020adff48a000000b0030948ebcdf9mr4783529wro.38.1684660887294; 
 Sun, 21 May 2023 02:21:27 -0700 (PDT)
Received: from redhat.com ([2.52.11.67]) by smtp.gmail.com with ESMTPSA id
 e5-20020a5d4e85000000b003047dc162f7sm4143486wru.67.2023.05.21.02.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 May 2023 02:21:26 -0700 (PDT)
Date: Sun, 21 May 2023 05:21:22 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20230521051826-mutt-send-email-mst@kernel.org>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <20230519013710-mutt-send-email-mst@kernel.org>
 <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
MIME-Version: 1.0
In-Reply-To: <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684660889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=x3g3aQcnmbrJVCV2d6q556xVnveXmKbQ1XA+jcIMHIs=;
 b=DR4Aakd2mkJM+eswziuO2cuyNrQ+5Oe6+zP0NQG/QfsQfzThWQMMecoGSaoGxCxNkBVhXB
 swC5hH+Rij4xXLpXIv9mL6DBOl5E9R7rFpEpVPfPjDCkdW9O1J0qZ7njOwtf8PjEm68Aof
 icmg7K6EoSlDoKhLd+p1B6g2CtbtmK0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DR4Aakd2
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

On Fri, May 19, 2023 at 10:36:00AM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 5/18/2023 10:49 PM, Michael S. Tsirkin wrote:
> > On Thu, May 18, 2023 at 04:26:24PM -0700, Samudrala, Sridhar wrote:
> > > 
> > > 
> > > On 5/18/2023 10:10 AM, Michael S. Tsirkin wrote:
> > > > On Thu, May 18, 2023 at 09:19:31AM -0700, Samudrala, Sridhar wrote:
> > > > > 
> > > > > 
> > > > > On 5/11/2023 11:34 PM, Michael S. Tsirkin wrote:
> > > > > > On Mon, May 08, 2023 at 12:43:11PM -0700, Emil Tantilov wrote:
> > > > > > > This patch series introduces the Intel Infrastructure Data Path Function
> > > > > > > (IDPF) driver. It is used for both physical and virtual functions. Except
> > > > > > > for some of the device operations the rest of the functionality is the
> > > > > > > same for both PF and VF. IDPF uses virtchnl version2 opcodes and
> > > > > > > structures defined in the virtchnl2 header file which helps the driver
> > > > > > > to learn the capabilities and register offsets from the device
> > > > > > > Control Plane (CP) instead of assuming the default values.
> > > > > > 
> > > > > > So, is this for merge in the next cycle?  Should this be an RFC rather?
> > > > > > It seems unlikely that the IDPF specification will be finalized by that
> > > > > > time - how are you going to handle any specification changes?
> > > > > 
> > > > > Yes. we would like this driver to be merged in the next cycle(6.5).
> > > > > Based on the community feedback on v1 version of the driver, we removed all
> > > > > references to OASIS standard and at this time this is an intel vendor
> > > > > driver.
> > > > > 
> > > > > Links to v1 and v2 discussion threads
> > > > > https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/
> > > > > https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/
> > > > > 
> > > > > The v1->v2 change log reflects this update.
> > > > > v1 --> v2: link [1]
> > > > >    * removed the OASIS reference in the commit message to make it clear
> > > > >      that this is an Intel vendor specific driver
> > > > 
> > > > Yes this makes sense.
> > > > 
> > > > 
> > > > > Any IDPF specification updates would be handled as part of the changes that
> > > > > would be required to make this a common standards driver.
> > > > 
> > > > 
> > > > So my question is, would it make sense to update Kconfig and module name
> > > > to be "ipu" or if you prefer "intel-idpf" to make it clear this is
> > > > currently an Intel vendor specific driver?  And then when you make it a
> > > > common standards driver rename it to idpf?  The point being to help make
> > > > sure users are not confused about whether they got a driver with
> > > > or without IDPF updates. It's not critical I guess but seems like a good
> > > > idea. WDYT?
> > > 
> > > It would be more disruptive to change the name of the driver. We can update
> > > the pci device table, module description and possibly driver version when we
> > > are ready to make this a standard driver.
> > > So we would prefer not changing the driver name.
> > 
> > Kconfig entry and description too?
> > 
> 
> The current Kconfig entry has Intel references.
> 
> +config IDPF
> +	tristate "Intel(R) Infrastructure Data Path Function Support"
> +	depends on PCI_MSI
> +	select DIMLIB
> +	help
> +	  This driver supports Intel(R) Infrastructure Processing Unit (IPU)
> +	  devices.
> 
> It can be updated with Intel references removed when the spec becomes
> standard and meets the community requirements.

Right, name says IDPF support help says IPU support.
Also config does not match name.

Do you want:


config INTEL_IDPF
	tristate "Intel(R) Infrastructure Data Path Function Support"

and should help say

	  This driver supports Intel(R) Infrastructure Data Path Function
	  devices.
?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
