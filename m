Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC905A4278F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 17:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93ABC80C5F;
	Mon, 24 Feb 2025 16:14:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KiO6QMyMh67z; Mon, 24 Feb 2025 16:14:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 527E880C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740413677;
	bh=h/sh9tYzriu7P8K3a6NXodWLaeByYc2pcpFzG1MBuzY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lJdmGNJRibjgLny3fHVV8yKA4ZtB/USAF2Xj2jVx4rZDUyW0lUcanhRD5X3ngMz6v
	 UuhxcaK9J4pm1saOlt1KUiWx5/AO8CIuQ6pyPMp+zQkmfYFQKs9BlUlxz6yQAw3ulv
	 yKQEFyRZI0s+SJnHt36tLRiwbbvo4sIgGLqnLoYSLgSyioVFnNvf56LzezJaCavETR
	 UK4fgezxv0WLEVSp9cEoOxXW3NqIVHFiDWU5/ORe8Bcfmggdby1lEm4gaGSWwYLae0
	 biy7jOeGX8mNfbCRi/x67xkhaIZ6FJTo9hty41oIt8iaCAYKl3SmLrbEn0ptbLnGb/
	 dDqctkjWQD5OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 527E880C48;
	Mon, 24 Feb 2025 16:14:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8623894E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 16:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80FA240C78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 16:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ckVgxMJ-oInW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 16:14:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 40C8B40C96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40C8B40C96
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40C8B40C96
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 16:14:31 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-4394a0c65fcso46273145e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 08:14:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740413669; x=1741018469;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h/sh9tYzriu7P8K3a6NXodWLaeByYc2pcpFzG1MBuzY=;
 b=HXbTsSGpqciL9/Sl04c1++/AMFDsHMueKInJ3N0Tn1Bc1YJ5Ezi9Ckl16PPLPlrQ6j
 uWyDOB9jrXRWhePUtvTw7jbyKqv2AOITZS12rxeBRKRgutABA0/i1eIxmBBwXvX7oG9P
 BMYLs1aiuqptz7Dv1qw9C2VqR5RNKFxzc8tjIJSLQAMU7OeLgHol/FjglEA8+Le1Yj43
 hDsj4scGtWk8ygqjKGDwfOfrP6XouM8dzZvM7zPvIlV3ZHRwlKWYYVyFuEDn2Q9mF/cD
 IyijbaKfJHk8yKfxoPQeLHN41ei0ue3jq/4QnWSxkrJ8ieGytnC2HyE5YWLkBuEFeULR
 WKyQ==
X-Gm-Message-State: AOJu0Yw8X+beatpFxsf6xSV2vkVAlCLXvGbpuH8etTaAQHSbqV83lS9H
 O4ZLMjUqZMdmd2GRZeh5TO4sGlFy1cG0m2JF+QtxZR96O+0cmrmYHqldlfG16Y8=
X-Gm-Gg: ASbGnctNOYubr1AOcq30fXZOKqihVfHkSobpojho0yee8AG/ksoTor5aaaPHK16q0jt
 duONDXn7Yu5ZnfIAvUUkofnvW607teme8Klkg9f+d3Bm0bYSxxxlgFGehjf14BgqthWd/spTpJl
 PcAv3PMOls9fBuaySVTquV/jaobRy9oAQ8hmdol6b/ocKSf2HqObDzxPwec6hu918qRfoEFzPoS
 j+IWSuj0Dt0dgh2l/uUAgO8MFoDEjRJbSWG8pFj7sCq3Y/Hp0pltl/ij/2ErCapPRtJC0cyAR8Q
 P7oo4NaoMw2YUrc1VfcK4SD00W4E+cWQ962XBxhp67PxrY/IFUl1
X-Google-Smtp-Source: AGHT+IGFMuJoexgwJBIAntd1ZqfRe+XRYaboGXOhhAu2dMaG6XTtLfFba5EQSN/nC4WE3rqTZIalwA==
X-Received: by 2002:a05:600c:4f41:b0:439:8b05:66a6 with SMTP id
 5b1f17b1804b1-439ae214327mr109222005e9.22.1740413668842; 
 Mon, 24 Feb 2025 08:14:28 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([208.127.45.13])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38f258b43c9sm32321129f8f.10.2025.02.24.08.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2025 08:14:28 -0800 (PST)
Date: Mon, 24 Feb 2025 17:14:24 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, 
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>, 
 Carolina Jubran <cjubran@nvidia.com>
Message-ID: <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1740413669; x=1741018469;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=h/sh9tYzriu7P8K3a6NXodWLaeByYc2pcpFzG1MBuzY=;
 b=JNxcW0SGbbbHTbZko+lakjEcFaxBO9/1vJAS3r6YTAa3gLwAMabtqsG6wTdBZo7nwh
 T2p6OcDO1Gez/ASfzh+4xM482v2t3DlAVlfUfA53SScZeFj+ekGJu3KXGMkkmcvHnU8r
 RU+qLdAFw5Hnn1mbWT+tiLIb4MdVxCtdd69I5DDCIsiGuJ/0sRhjGb5I4QblDkEZn7Dp
 z+NVt823GurcrUQk3OCvc0ZqZG/L7USpbC6DOCELYfR7x8AwNVJqw1uKKsiZsfXg0iPH
 z1BEJXp15Bn/FUIxYICeyIwXPKjzhvkbiJ9U09pNJyfWpO0OH5pFHGoRaJPjGbZPn8V6
 KQog==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=JNxcW0SG
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Feb 19, 2025 at 05:32:54PM +0100, przemyslaw.kitszel@intel.com wrote:
>Add a support for whole device devlink instance. Intented as a entity
>over all PF devices on given physical device.
>
>In case of ice driver we have multiple PF devices (with their devlink
>dev representation), that have separate drivers loaded. However those
>still do share lots of resources due to being the on same HW. Examples
>include PTP clock and RSS LUT. Historically such stuff was assigned to
>PF0, but that was both not clear and not working well. Now such stuff
>is moved to be covered into struct ice_adapter, there is just one instance
>of such per HW.
>
>This patch adds a devlink instance that corresponds to that ice_adapter,
>to allow arbitrage over resources (as RSS LUT) via it (further in the
>series (RFC NOTE: stripped out so far)).
>
>Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>PF0:		pci/0000:00:18.0
>whole-dev:	pci/0000:00:18
>But I made this a param for now (driver is free to pass just "whole-dev").
>
>$ devlink dev # (Interesting part of output only)
>pci/0000:af:00:
>  nested_devlink:
>    pci/0000:af:00.0
>    pci/0000:af:00.1
>    pci/0000:af:00.2
>    pci/0000:af:00.3
>    pci/0000:af:00.4
>    pci/0000:af:00.5
>    pci/0000:af:00.6
>    pci/0000:af:00.7


In general, I like this approach. In fact, I have quite similar
patch/set in my sandbox git.

The problem I didn't figure out how to handle, was a backing entity
for the parent devlink.

You use part of PCI BDF, which is obviously wrong:
1) bus_name/dev_name the user expects to be the backing device bus and
   address on it (pci/usb/i2c). With using part of BDF, you break this
   assumption.
2) 2 PFs can have totally different BDF (in VM for example). Then your
   approach is broken.

I was thinking about having an auxiliary device created for the parent,
but auxiliary assumes it is child. The is upside-down.

I was thinking about having some sort of made-up per-driver bus, like
"ice" of "mlx5" with some thing like DSN that would act as a "dev_name".
I have a patch that introduces:

struct devlink_shared_inst;

struct devlink *devlink_shared_alloc(const struct devlink_ops *ops,
                                     size_t priv_size, struct net *net,
                                     struct module *module, u64 per_module_id,
                                     void *inst_priv,
                                     struct devlink_shared_inst **p_inst);
void devlink_shared_free(struct devlink *devlink,
                        struct devlink_shared_inst *inst);

I took a stab at it here:
https://github.com/jpirko/linux_mlxsw/commits/wip_dl_pfs_parent/
The work is not finished.


Also, I was thinking about having some made-up bus, like "pci_ids",
where instead of BDFs as addresses, there would be DSN for example.

None of these 3 is nice. 

The shared parent entity for PFs (and other Fs) is always reference
counted, first creates, last removes. I feel like this is something
missing in PCI spec. If such beast would exist, very easy to implement
this in devlink. We have all we need in place already.


