Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA598C24CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 14:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8710D42033;
	Fri, 10 May 2024 12:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B2uS2d26h37u; Fri, 10 May 2024 12:27:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4370D41FE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715344043;
	bh=6nROrCakES0EVE3OjVvdADCeVqQVMEdwPHdph7gFnDo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bZX1fSG5mPl+jGyhvLheGz1Y6dk1aQ0pxsm3OiQalIaxzZSKMivz7ZXhdHN0CVqCx
	 Ek35AYcrLp10liGJhpxkqeHkjlD/yLWQZ3d2nlAV6ch/m1Yj5AOYQ51IO0/0AA615b
	 YigwJzwmaFZ7eJUgwq0Odo5kwomwYW5YyzhRLtxi/I1LkqwgQpPOicVpONFnbR6w0Q
	 rFf+UP5K3weDaI/H4O2DsqIfRtJP/ba0Z82iuEsuZ/FhYYbkBhboH8UQImaRB/vhno
	 iRBwpzVrR4ghznl7AyoxwOQYe4Q4sECcFyQJNwNXCWmCiv0sSmnf8D24zwp+1grKLy
	 FiTJ82/JrhBUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4370D41FE5;
	Fri, 10 May 2024 12:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB73D1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6FD78449D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INJmrUkZBcOv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 12:27:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF4968449A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF4968449A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF4968449A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:27:19 +0000 (UTC)
X-CSE-ConnectionGUID: n32zjSIvRMus1hbROdZFng==
X-CSE-MsgGUID: 2TjiicUXREqnySzRDbZsqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11448559"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11448559"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:27:19 -0700
X-CSE-ConnectionGUID: j3N3MwOeReK7huCho3WGBg==
X-CSE-MsgGUID: pOF2BCpvRButj3Hp/or91g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29618221"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:27:16 -0700
Date: Fri, 10 May 2024 14:26:44 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zj4ShOiyrGQK8J6p@mev-dev>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <ZjyxBcVZNbWioRP0@nanopsycho.orion> <Zj3LwDMbktRXk0QX@mev-dev>
 <Zj4AYN4uDtL51G1P@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj4AYN4uDtL51G1P@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715344040; x=1746880040;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3QOPJukGU6uFHgR5tNYJ36zcuIs6vwSXJ/cY9HhVQL4=;
 b=RlLCLxC7+VhlCcpitcuUpXWqEpS/3QXw1ffir7kpW7aOyRLl7OWGueyq
 ZhOLZDFv5CPA8h8ZKi5AZIjDfvuJ2XDoU8kfBUmWUiLSlEqunV3rDtvZY
 43Xlp+ZQMon4lIRTga21+ksup63i0eTTkHpZ6ddbCdJwpqAEL5gpwm3bB
 03mpzJOFBbIr1NAwUoUI10HJc1bYd8R9Xg+Sb+M27D5MUJhtY/7+XOCTW
 d0sbaI8S4sV8jy0pIYaMazBHLBdRrRT/EnjMkcLDdzH2KWGb4H+yj+KFe
 11cZqJrjPAMKCk9177dTYQEKXZUAioI0ITtFpHeiZd/RfcmjEYS7qUSy0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RlLCLxC7
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, mateusz.polchlopek@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com, jiri@nvidia.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com, michal.kubiak@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 10, 2024 at 01:09:20PM +0200, Jiri Pirko wrote:
> Fri, May 10, 2024 at 09:24:48AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Thu, May 09, 2024 at 01:18:29PM +0200, Jiri Pirko wrote:
> >> Tue, May 07, 2024 at 01:45:01PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >Hi,
> >> >
> >> >Currently ice driver does not allow creating more than one networking
> >> >device per physical function. The only way to have more hardware backed
> >> >netdev is to use SR-IOV.
> >> >
> >> >Following patchset adds support for devlink port API. For each new
> >> >pcisf type port, driver allocates new VSI, configures all resources
> >> >needed, including dynamically MSIX vectors, program rules and registers
> >> >new netdev.
> >> >
> >> >This series supports only one Tx/Rx queue pair per subfunction.
> >> >
> >> >Example commands:
> >> >devlink port add pci/0000:31:00.1 flavour pcisf pfnum 1 sfnum 1000
> >> >devlink port function set pci/0000:31:00.1/1 hw_addr 00:00:00:00:03:14
> >> >devlink port function set pci/0000:31:00.1/1 state active
> >> >devlink port function del pci/0000:31:00.1/1
> >> >
> >> >Make the port representor and eswitch code generic to support
> >> >subfunction representor type.
> >> >
> >> >VSI configuration is slightly different between VF and SF. It needs to
> >> >be reflected in the code.
> >> >
> >> >Most recent previous patchset (not containing port representor for SF
> >> >support). [1]
> >> >
> >> >[1] https://lore.kernel.org/netdev/20240417142028.2171-1-michal.swiatkowski@linux.intel.com/
> >> >
> >> 
> >> 
> >> I don't understand howcome the patchset is v1, yet there are patches
> >> that came through multiple iterations alread. Changelog is missing
> >> completely :/
> >> 
> >
> >What is wrong here? There is a link to previous patchset with whole
> >changlog and links to previous ones. I didn't add changlog here as it is
> >new patchset (partialy the same as from [1], because of that I added a
> >link). I can add the changlog from [1] if you want, but for me it can be
> >missleading.
> 
> It's always good to see what you changed if you send modified patches.
> That's all.
> 

I will paste previous changelog in next version so.

> 
> >
> >> 
> >> >Michal Swiatkowski (7):
> >> >  ice: treat subfunction VSI the same as PF VSI
> >> >  ice: create port representor for SF
> >> >  ice: don't set target VSI for subfunction
> >> >  ice: check if SF is ready in ethtool ops
> >> >  ice: netdevice ops for SF representor
> >> >  ice: support subfunction devlink Tx topology
> >> >  ice: basic support for VLAN in subfunctions
> >> >
> >> >Piotr Raczynski (7):
> >> >  ice: add new VSI type for subfunctions
> >> >  ice: export ice ndo_ops functions
> >> >  ice: add basic devlink subfunctions support
> >> >  ice: allocate devlink for subfunction
> >> >  ice: base subfunction aux driver
> >> >  ice: implement netdev for subfunction
> >> >  ice: allow to activate and deactivate subfunction
> >> >
> >> > drivers/net/ethernet/intel/ice/Makefile       |   2 +
> >> > .../net/ethernet/intel/ice/devlink/devlink.c  |  48 ++
> >> > .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
> >> > .../ethernet/intel/ice/devlink/devlink_port.c | 516 ++++++++++++++++++
> >> > .../ethernet/intel/ice/devlink/devlink_port.h |  43 ++
> >> > drivers/net/ethernet/intel/ice/ice.h          |  19 +-
> >> > drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
> >> > drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
> >> > drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 ++-
> >> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
> >> > drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
> >> > drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
> >> > drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
> >> > drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
> >> > drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++++--
> >> > drivers/net/ethernet/intel/ice/ice_repr.h     |  22 +-
> >> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 329 +++++++++++
> >> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
> >> > .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  |  21 +
> >> > .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  |  13 +
> >> > drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> >> > drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
> >> > drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> >> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> >> > .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   4 +
> >> > drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
> >> > 26 files changed, 1362 insertions(+), 138 deletions(-)
> >> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> >> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
> >> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h
> >> >
> >> >-- 
> >> >2.42.0
> >> >
> >> >
