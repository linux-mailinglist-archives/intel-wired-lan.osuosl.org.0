Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6856C7839C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 08:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D041D4056D;
	Tue, 22 Aug 2023 06:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D041D4056D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692684760;
	bh=8brIp5UUtUji8lIGvKw201dcJj7Py5VNtQwlNUwcbHQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QCn32h8dVgrV+fj4oMIuLbSRx0QDZECzIpaEG6NxsUGNIFeVt8PjeP0DwNL5+xMMT
	 eN79R+OSrgP0vpfFbmHRrXb0iss+fGBEM9I2vgEu3XLQwX7yWaIoK3YbAusiAaQGhK
	 LkQTv8fzUT2XoCpHZ2zS+bvTATGSvLdTEhh1bMoZljWpQ2ESNmbuYyQnVkiWdtLneb
	 V12yE13KqhSE77MqjVqBXwp9D4GpuHSOsY+ODrrViTsoCing0lqBj89KZdMiBHY74L
	 B+MGFfO1C27fJiEDl9t3VeAgnbjlfbIPLnWW18Ey1VO34weqSYI1RtC1e/6kaKmIbV
	 Mw7YF4bfdN0Mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6_gCsPfdXA6; Tue, 22 Aug 2023 06:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 624AA400C5;
	Tue, 22 Aug 2023 06:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 624AA400C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9A11BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 06:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0414540463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 06:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0414540463
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9vXGHzrEglT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 06:12:33 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC52E400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 06:12:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC52E400C5
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-99357737980so536634466b.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 23:12:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692684750; x=1693289550;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nnGKiqPMsuE0dn3dn8HBSEXMJR14dLg/QIYHbhb1hzA=;
 b=UeEsQAlj6GWy0D9HJlDT4WMNMNu7XIh5ZzpXKGQeNLgecsjMTQUKVzQsGI5rIppyH1
 FJv0Ymq/1bJKm+2zOnxjZc7pe3vxY1KzRzkarJLlq2Hjk3DieT0lnuZFaLeXek5h11VN
 cIVTjIZv0FfGABPN/1G4hOiCoj1gP0H0CN8DeKLTDtEMYOGTKZ7NROh/zcrFbNRai8eo
 Jqe5scmx7F/4aIxiqkQEqClOlYHPus5uM3x1Pl7RewfRAE6pBEpP6wA8Ijf8B+2zgWSy
 a5bGT/GslhVH5t2ITXQIZ3ZfWa5teeGFdC2U1/BPsnFOUUVC5XXsdt9gSJE0A8pe1xCD
 UJ/A==
X-Gm-Message-State: AOJu0Yy/wZHFSSfi9U2M1Gr7w24LKcAaHiId5AvPi/MYjB5uSUkIfglm
 4BUwhXGKpTpCoMzUULOtsWoJFg==
X-Google-Smtp-Source: AGHT+IHu/WbmGP7KWcvNbRneGmYLiQT6BxNC5f9tAOz1w7bfmERdCTS0JAlpKHE9ZQH+2KoDdYlGKA==
X-Received: by 2002:a17:907:a05c:b0:9a1:bd53:b23 with SMTP id
 gz28-20020a170907a05c00b009a1bd530b23mr357603ejc.14.1692684750049; 
 Mon, 21 Aug 2023 23:12:30 -0700 (PDT)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 k17-20020a1709062a5100b0099bc2d1429csm7722632eje.72.2023.08.21.23.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Aug 2023 23:12:29 -0700 (PDT)
Date: Tue, 22 Aug 2023 08:12:28 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wenjun Wu <wenjun1.wu@intel.com>
Message-ID: <ZORRzEBcUDEjMniz@nanopsycho>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230822034003.31628-1-wenjun1.wu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1692684750; x=1693289550; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nnGKiqPMsuE0dn3dn8HBSEXMJR14dLg/QIYHbhb1hzA=;
 b=EzjR0bYoG5RjWPSEgHJQEmM3Q8tIbOQqqhcDeyMVcpLLDVGYwYLI4dkxqDqtaAbNvw
 5523iqpMhbJqQ1w+36Y6i/d8cq1Ghf/GT2pC48tC54pdD4gw/CI9wECEdijZPLVnddlP
 VnNCYcjcStFMpSWZzybijoaB1GdBPBBMQuLZCjMC9qQbvuaK+mxzxHILqr1ykIH533JJ
 FOlQ8i9/V3Y3WxGjXgH4ZecVejccxi0jraqNhDoDmWac/aFq3zJS64pvGiCtds4/T4av
 im0f/7Sg5tbons4YY2qhFVBdmi9+REQLv2JOz3JD8q+Iomna6uoBMEFKH5Rhc1oLT1LR
 0TPg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=EzjR0bYo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Aug 22, 2023 at 05:39:58AM CEST, wenjun1.wu@intel.com wrote:
>To allow user to configure queue bandwidth, devlink port support
>is added to support devlink port rate API. [1]
>
>Add devlink framework registration/unregistration on iavf driver
>initialization and remove, and devlink port of DEVLINK_PORT_FLAVOUR_VIRTUAL
>is created to be associated iavf netdevice.
>
>iavf rate tree with root node, queue nodes, and leaf node is created
>and registered with devlink rate when iavf adapter is configured, and
>if PF indicates support of VIRTCHNL_VF_OFFLOAD_QOS through VF Resource /
>Capability Exchange.

NACK! Port function is there to configure the VF/SF from the eswitch
side. Yet you use it for the configureation of the actual VF, which is
clear misuse. Please don't


>
>[root@localhost ~]# devlink port function rate show
>pci/0000:af:01.0/txq_15: type node parent iavf_root
>pci/0000:af:01.0/txq_14: type node parent iavf_root
>pci/0000:af:01.0/txq_13: type node parent iavf_root
>pci/0000:af:01.0/txq_12: type node parent iavf_root
>pci/0000:af:01.0/txq_11: type node parent iavf_root
>pci/0000:af:01.0/txq_10: type node parent iavf_root
>pci/0000:af:01.0/txq_9: type node parent iavf_root
>pci/0000:af:01.0/txq_8: type node parent iavf_root
>pci/0000:af:01.0/txq_7: type node parent iavf_root
>pci/0000:af:01.0/txq_6: type node parent iavf_root
>pci/0000:af:01.0/txq_5: type node parent iavf_root
>pci/0000:af:01.0/txq_4: type node parent iavf_root
>pci/0000:af:01.0/txq_3: type node parent iavf_root
>pci/0000:af:01.0/txq_2: type node parent iavf_root
>pci/0000:af:01.0/txq_1: type node parent iavf_root
>pci/0000:af:01.0/txq_0: type node parent iavf_root
>pci/0000:af:01.0/iavf_root: type node
>
>
>                         +---------+
>                         |   root  |
>                         +----+----+
>                              |
>            |-----------------|-----------------|
>       +----v----+       +----v----+       +----v----+
>       |  txq_0  |       |  txq_1  |       |  txq_x  |
>       +----+----+       +----+----+       +----+----+
>
>User can configure the tx_max and tx_share of each queue. Once any one of the
>queues are fully configured, VIRTCHNL opcodes of VIRTCHNL_OP_CONFIG_QUEUE_BW
>and VIRTCHNL_OP_CONFIG_QUANTA will be sent to PF to configure queues allocated
>to VF
>
>Example:
>
>1.To Set the queue tx_share:
>devlink port function rate set pci/0000:af:01.0 txq_0 tx_share 100 MBps
>
>2.To Set the queue tx_max:
>devlink port function rate set pci/0000:af:01.0 txq_0 tx_max 200 MBps
>
>3.To Show Current devlink port rate info:
>devlink port function rate function show
>[root@localhost ~]# devlink port function rate show
>pci/0000:af:01.0/txq_15: type node parent iavf_root
>pci/0000:af:01.0/txq_14: type node parent iavf_root
>pci/0000:af:01.0/txq_13: type node parent iavf_root
>pci/0000:af:01.0/txq_12: type node parent iavf_root
>pci/0000:af:01.0/txq_11: type node parent iavf_root
>pci/0000:af:01.0/txq_10: type node parent iavf_root
>pci/0000:af:01.0/txq_9: type node parent iavf_root
>pci/0000:af:01.0/txq_8: type node parent iavf_root
>pci/0000:af:01.0/txq_7: type node parent iavf_root
>pci/0000:af:01.0/txq_6: type node parent iavf_root
>pci/0000:af:01.0/txq_5: type node parent iavf_root
>pci/0000:af:01.0/txq_4: type node parent iavf_root
>pci/0000:af:01.0/txq_3: type node parent iavf_root
>pci/0000:af:01.0/txq_2: type node parent iavf_root
>pci/0000:af:01.0/txq_1: type node parent iavf_root
>pci/0000:af:01.0/txq_0: type node tx_share 800Mbit tx_max 1600Mbit parent iavf_root
>pci/0000:af:01.0/iavf_root: type node
>
>
>[1]https://lore.kernel.org/netdev/20221115104825.172668-1-michal.wilczynski@intel.com/
>
>Change log:
>
>v4:
>- Rearrange the ice_vf_qs_bw structure, put the largest number first
>- Minimize the scope of values
>- Remove the unnecessary brackets
>- Remove the unnecessary memory allocation.
>- Added Error Code and moved devlink registration before aq lock initialization
>- Changed devlink registration for error handling in case of allocation failure
>- Used kcalloc for object array memory allocation and initialization
>- Changed functions & comments for readability
>
>v3:
>- Rebase the code
>- Changed rate node max/share set function description
>- Put variable in local scope
>
>v2:
>- Change static array to flex array
>- Use struct_size helper
>- Align all the error code types in the function
>- Move the register field definitions to the right place in the file
>- Fix coding style
>- Adapted to queue bw cfg and qos cap list virtchnl message with flex array fields
>---
>
>Jun Zhang (3):
>  iavf: Add devlink and devlink port support
>  iavf: Add devlink port function rate API support
>  iavf: Add VIRTCHNL Opcodes Support for Queue bw Setting
>
>Wenjun Wu (2):
>  virtchnl: support queue rate limit and quanta size configuration
>  ice: Support VF queue rate limit and quanta size configuration
>
> drivers/net/ethernet/intel/Kconfig            |   1 +
> drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
> drivers/net/ethernet/intel/iavf/iavf.h        |  19 +
> .../net/ethernet/intel/iavf/iavf_devlink.c    | 377 ++++++++++++++++++
> .../net/ethernet/intel/iavf/iavf_devlink.h    |  38 ++
> drivers/net/ethernet/intel/iavf/iavf_main.c   |  64 ++-
> .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 231 ++++++++++-
> drivers/net/ethernet/intel/ice/ice.h          |   2 +
> drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
> drivers/net/ethernet/intel/ice/ice_common.c   |  19 +
> .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
> drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
> drivers/net/ethernet/intel/ice/ice_virtchnl.c | 310 ++++++++++++++
> drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
> .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
> include/linux/avf/virtchnl.h                  | 119 ++++++
> 18 files changed, 1218 insertions(+), 3 deletions(-)
> create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
> create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h
>
>-- 
>2.34.1
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
