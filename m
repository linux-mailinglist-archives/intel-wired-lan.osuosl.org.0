Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B527D51E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 15:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC5DC846FB;
	Tue, 24 Oct 2023 13:36:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC5DC846FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698154566;
	bh=0q3OKUSOdiVKOeTXMc3eW8NF/J7fBek4TFDUzZErIt4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uB7txVIETBQ3sqNayuALO2InLaWIFJF9TJ+zk6F6lYHEmTzNfj/mBWsdd16X1x/EC
	 zYhIpz5hsstE5BSo28cGMGi+WHz+nA7ypkBHRv6C8zgZ1+8bdQxpmTPVicfW5kzTfu
	 pMuv5V8WVxCnMriNDgHn0jb00DAMMqBaRf6bWBVNz+FYyp0Hbi4rAlA+XLm2PaI6TO
	 FWQKBv64Re6QQjlt0GTD85mPWENJf7wJqrRgdK7DrdddyfciWDTI0r4HAEX8qdcEFj
	 bANVmobwB00LUwI83N9AsdbjWSqemtufRnZDO/Ttb7VblncWD/7ejmYiUizl4xeZja
	 8yQgS0o2hhnWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9aq_5-iAe4nx; Tue, 24 Oct 2023 13:36:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79F4F846F8;
	Tue, 24 Oct 2023 13:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79F4F846F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48EF91BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CFD56FCB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CFD56FCB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qckkttXq_K0P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 13:36:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3363D6FB65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3363D6FB65
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="385949465"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="385949465"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="824285712"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="824285712"
Received: from wasp.igk.intel.com (HELO wasp) ([10.102.20.192])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:35:57 -0700
Date: Tue, 24 Oct 2023 15:10:46 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZTfCVsYtbwSg9nZ/@wasp>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <ZTeveEZ1W/zejDuM@nanopsycho>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZTeveEZ1W/zejDuM@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698154560; x=1729690560;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xQRn7rZeilK2OunzJ4Yh7VMYWV9hIWoDgOVfiQGK9/M=;
 b=l7iOhgOJQSvz+Yera6dHCzbQBhDxjiMvJ6vwVTrXfqkQzgM3IWytuO+X
 5rs6yr8i8ggk7VYe9d6f6xVSLEhCBCM+ILzMF/MQMjCdF73WkOsUF5vj5
 Uf3lxWZSz1at+qo1mGPIwwrUm+8tUESmI4IzhjoOnIdY9TSHMD+fdFuZ9
 oQXxEmPDL7hM2dz0ZiGwwxWa6saqrl2bgTCxHHy8KpWZPwY123a+wa68l
 4yj30yGSIeHGs2cY4KaCPx1aXvh237/ntoIkuHRcLLuOluGQwWKlzZDIU
 8et7g/qMQD4KnuPynKP6YpC5QCwls/MsdaKN1dFLfF/nLfo7v/tsdZgcH
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l7iOhgOJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 00/15] one by one port
 representors creation
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 24, 2023 at 01:50:16PM +0200, Jiri Pirko wrote:
> Tue, Oct 24, 2023 at 01:09:14PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >Hi,
> >
> >Currently ice supports creating port representors only for VFs. For that
> >use case they can be created and removed in one step.
> >
> >This patchset is refactoring current flow to support port representor
> >creation also for subfunctions and SIOV. In this case port representors
> >need to be createad and removed one by one. Also, they can be added and
> >removed while other port representors are running.
> >
> >To achieve that we need to change the switchdev configuration flow.
> >Three first patches are only cosmetic (renaming, removing not used code).
> >Next few ones are preparation for new flow. The most important one
> >is "add VF representor one by one". It fully implements new flow.
> >
> >New type of port representor (for subfunction) will be introduced in
> >follow up patchset.
> 
> Examples please. Show new outputs of devlink commands.
> 
> Thanks!
>

If you mean outputs after refactor to one by one solution nothing
has changed:

# devlink port show (after creating 4 VFs in switchdev mode)
pci/0000:18:00.0/0: type eth netdev ens785f0np0 flavour physical port 0 splittable true lanes 8
pci/0000:18:00.0/2: type eth netdev ens785f0np0_0 flavour pcivf controller 0 pfnum 0 vfnum 0 external false splittable false
pci/0000:18:00.0/4: type eth netdev ens785f0np0_3 flavour pcivf controller 0 pfnum 0 vfnum 3 external false splittable false
pci/0000:18:00.0/5: type eth netdev ens785f0np0_1 flavour pcivf controller 0 pfnum 0 vfnum 1 external false splittable false
pci/0000:18:00.0/6: type eth netdev ens785f0np0_2 flavour pcivf controller 0 pfnum 0 vfnum 2 external false splittable false

According subfunction, it will also be in cover latter for patchset that
is implementing subfunction.

Commands:
# devlink dev eswitch set pci/0000:18:00.0 mode switchdev
# devlink port add pci/0000:18:00.0 flavour pcisf pfnum 0 sfnum 1000
# devlink port function set pci/0000:18:00.0/3 state active

Outputs:
Don't have it saved, will send it here after rebasing subfunction of top
of this one.

Thanks,
Michal

> >
> >Michal Swiatkowski (15):
> >  ice: rename switchdev to eswitch
> >  ice: remove redundant max_vsi_num variable
> >  ice: remove unused control VSI parameter
> >  ice: track q_id in representor
> >  ice: use repr instead of vf->repr
> >  ice: track port representors in xarray
> >  ice: remove VF pointer reference in eswitch code
> >  ice: make representor code generic
> >  ice: return pointer to representor
> >  ice: allow changing SWITCHDEV_CTRL VSI queues
> >  ice: set Tx topology every time new repr is added
> >  ice: realloc VSI stats arrays
> >  ice: add VF representors one by one
> >  ice: adjust switchdev rebuild path
> >  ice: reserve number of CP queues
> >
> > drivers/net/ethernet/intel/ice/ice.h          |  13 +-
> > drivers/net/ethernet/intel/ice/ice_devlink.c  |  29 +
> > drivers/net/ethernet/intel/ice/ice_devlink.h  |   1 +
> > drivers/net/ethernet/intel/ice/ice_eswitch.c  | 562 ++++++++++--------
> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
> > .../net/ethernet/intel/ice/ice_eswitch_br.c   |  22 +-
> > drivers/net/ethernet/intel/ice/ice_lib.c      |  81 ++-
> > drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
> > drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++---
> > drivers/net/ethernet/intel/ice/ice_repr.h     |   9 +-
> > drivers/net/ethernet/intel/ice/ice_sriov.c    |  20 +-
> > drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   4 +-
> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   9 +-
> > drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +-
> > 14 files changed, 553 insertions(+), 422 deletions(-)
> >
> >-- 
> >2.41.0
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
