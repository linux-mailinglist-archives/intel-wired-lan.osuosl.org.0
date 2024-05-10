Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A85278C22D3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 13:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B23C423FE;
	Fri, 10 May 2024 11:09:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ep5AaZpcol61; Fri, 10 May 2024 11:09:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF58842408
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715339370;
	bh=kMwf+DCXvMg1n2aNwOdekgphxaHoyXL6HU0CbhNE4i4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0eOxh+MG6K0M7DdxiIbrFK3xWaX/JiyBV2+C9eOHOHum9qLaqsTe8adhfsCMVgncj
	 gXXBotHo/gn5NpR7taYUHpywTD5A7yWu/2gUYrhb3AVYmMxWXDcGGAN9AuDWU9gMam
	 g6HReBVWxkJ4NxySCwuIPWlOE78wQ8sIKWmRgDeo0oSKqP2Az1PDrBo8UjzQ0UtXmM
	 Mflk61PCl6iKeOqgnXTABoCzyYGxXu+dHPyg0p3i8p0DD3Il5W+1pnSpg3KwFiE8Ds
	 kxomwYRNGwX2jBQfOTrW+5c5Rk4Hnj2Qr2wfE1SIMhW4rwUd57ISwrYwrmPlupkQtl
	 XcHW4aEvurBLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF58842408;
	Fri, 10 May 2024 11:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44FA01BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D4FD42A33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cs2V_WjyrfbV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 11:09:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::333; helo=mail-wm1-x333.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B091642A28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B091642A28
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B091642A28
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:09:25 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-41b21ed19f5so13216915e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 04:09:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715339363; x=1715944163;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kMwf+DCXvMg1n2aNwOdekgphxaHoyXL6HU0CbhNE4i4=;
 b=aN61YmO15misryH1uJCEVZQE0I8OnThPodUVWfoeEJytSUQRy2iWiwuZ/APfMMF6oA
 P/7MtqGoFvBDy5MOndAShyv94+9g5zIQiQ+kfiBTukPR9y9uEU5JTJdpEvYMvxKqlJaw
 f7ErTVi2kpKDyerpdBlUm4YFyyzr4IbJjSGZGZ36y2DerAPvb/RgEXnHv4K8nLzn72Pl
 Q7iNZZOPRAgd0BtuZTZ9zEWR2GmT4VEdwK2O5ATHvsW5YGK5MEA8wFQjXBUmRHHcUXrW
 sKpw9zbWLUinZUDFUAamBX4TdUYKKDu2hUfzuAadO0bn0cTurpuBKk8RG5QDYhJZjTNF
 UcAA==
X-Gm-Message-State: AOJu0YxqWjGurjp2rF3gW6piAglqzbSbmGqVFfJc38cmXi5pIAWMOgTT
 mKGwWjhi7+QaQ7VzukdJoalSOqto/JDQ2tu5lSXXqGZlVSWbRle78oSu9ZsIq6M=
X-Google-Smtp-Source: AGHT+IH7bU+JTVmvtCYb1yGI1ZN7O+t2cgLqlM6omTt5lqwzAFbTeQgMQmETXsC1cB8cknIhS9uEaQ==
X-Received: by 2002:a7b:c8cb:0:b0:418:e6fc:3708 with SMTP id
 5b1f17b1804b1-41feab40c17mr16382645e9.24.1715339363142; 
 Fri, 10 May 2024 04:09:23 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-41fccbe8f74sm60380915e9.8.2024.05.10.04.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 May 2024 04:09:22 -0700 (PDT)
Date: Fri, 10 May 2024 13:09:20 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zj4AYN4uDtL51G1P@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <ZjyxBcVZNbWioRP0@nanopsycho.orion> <Zj3LwDMbktRXk0QX@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj3LwDMbktRXk0QX@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715339363; x=1715944163;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kMwf+DCXvMg1n2aNwOdekgphxaHoyXL6HU0CbhNE4i4=;
 b=Q/vyNEGDqxWsEVySvePe3Zvv/tx+zN3wqoGXoEtBvsiYDtBQkG97tSAVa9zOUiYIP9
 FZseJXlzQMjgKo7WuAgsvGskPP339ePybI8Tpge+j7Q4a6J5Zl+VSOTPZ4bIFNrETN7v
 NjSaPYO0Kmh0nqRzm38YizrkYTK2yNH9bHKK/MHUxAVynD7+MSCre6gk2KUJJLMqTdw9
 A1cLgieqiMgnyzbUGV27wtouWYFn/TpqgmjFyb4zw/jlX9/flgkalroDJREncZqYK4oV
 0extbF0gxqihxWYFiElEEWPwP7pxI2QxWC4FGEtR8mHIxIYLHU9MaB32olJmMOVC7h8H
 9LvA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Q/vyNEGD
Subject: Re: [Intel-wired-lan] [iwl-next v1 00/14] ice: support devlink
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, May 10, 2024 at 09:24:48AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, May 09, 2024 at 01:18:29PM +0200, Jiri Pirko wrote:
>> Tue, May 07, 2024 at 01:45:01PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >Hi,
>> >
>> >Currently ice driver does not allow creating more than one networking
>> >device per physical function. The only way to have more hardware backed
>> >netdev is to use SR-IOV.
>> >
>> >Following patchset adds support for devlink port API. For each new
>> >pcisf type port, driver allocates new VSI, configures all resources
>> >needed, including dynamically MSIX vectors, program rules and registers
>> >new netdev.
>> >
>> >This series supports only one Tx/Rx queue pair per subfunction.
>> >
>> >Example commands:
>> >devlink port add pci/0000:31:00.1 flavour pcisf pfnum 1 sfnum 1000
>> >devlink port function set pci/0000:31:00.1/1 hw_addr 00:00:00:00:03:14
>> >devlink port function set pci/0000:31:00.1/1 state active
>> >devlink port function del pci/0000:31:00.1/1
>> >
>> >Make the port representor and eswitch code generic to support
>> >subfunction representor type.
>> >
>> >VSI configuration is slightly different between VF and SF. It needs to
>> >be reflected in the code.
>> >
>> >Most recent previous patchset (not containing port representor for SF
>> >support). [1]
>> >
>> >[1] https://lore.kernel.org/netdev/20240417142028.2171-1-michal.swiatkowski@linux.intel.com/
>> >
>> 
>> 
>> I don't understand howcome the patchset is v1, yet there are patches
>> that came through multiple iterations alread. Changelog is missing
>> completely :/
>> 
>
>What is wrong here? There is a link to previous patchset with whole
>changlog and links to previous ones. I didn't add changlog here as it is
>new patchset (partialy the same as from [1], because of that I added a
>link). I can add the changlog from [1] if you want, but for me it can be
>missleading.

It's always good to see what you changed if you send modified patches.
That's all.


>
>> 
>> >Michal Swiatkowski (7):
>> >  ice: treat subfunction VSI the same as PF VSI
>> >  ice: create port representor for SF
>> >  ice: don't set target VSI for subfunction
>> >  ice: check if SF is ready in ethtool ops
>> >  ice: netdevice ops for SF representor
>> >  ice: support subfunction devlink Tx topology
>> >  ice: basic support for VLAN in subfunctions
>> >
>> >Piotr Raczynski (7):
>> >  ice: add new VSI type for subfunctions
>> >  ice: export ice ndo_ops functions
>> >  ice: add basic devlink subfunctions support
>> >  ice: allocate devlink for subfunction
>> >  ice: base subfunction aux driver
>> >  ice: implement netdev for subfunction
>> >  ice: allow to activate and deactivate subfunction
>> >
>> > drivers/net/ethernet/intel/ice/Makefile       |   2 +
>> > .../net/ethernet/intel/ice/devlink/devlink.c  |  48 ++
>> > .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
>> > .../ethernet/intel/ice/devlink/devlink_port.c | 516 ++++++++++++++++++
>> > .../ethernet/intel/ice/devlink/devlink_port.h |  43 ++
>> > drivers/net/ethernet/intel/ice/ice.h          |  19 +-
>> > drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
>> > drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
>> > drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 ++-
>> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
>> > drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
>> > drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
>> > drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
>> > drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
>> > drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++++--
>> > drivers/net/ethernet/intel/ice/ice_repr.h     |  22 +-
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 329 +++++++++++
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
>> > .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  |  21 +
>> > .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  |  13 +
>> > drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
>> > drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
>> > drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
>> > .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   4 +
>> > drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
>> > 26 files changed, 1362 insertions(+), 138 deletions(-)
>> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
>> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
>> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h
>> >
>> >-- 
>> >2.42.0
>> >
>> >
