Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D98558C1EF1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 09:25:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86C506157C;
	Fri, 10 May 2024 07:25:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jIk3HWuDCUNN; Fri, 10 May 2024 07:25:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 274FD6157D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715325926;
	bh=7kmV5JQTvmtOeIYpDkwu67JHFuilAe/JPGUoeJCf4Uo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iasLKcMJld+No9M8ptPyUoQTwIl1g0blHsPwQ/mVi/aVv3k8/gKcarZgy6Zmg3ohv
	 WMofDjhYH7XTpATJ9eF5pDOJvvFpA74hOifIjRh7PEO6VY7LuiXcPGO36rT5RhbQNa
	 QhsA2sEypugvENaGb4LLpHsCGep+WcGd7gUheLClHjpULQVNhqxLzyXt6Ha06tt3lw
	 /gAvjFwhtLMN9SkCv75TyFgqpTGQTYGthbAriQ1gYExRUkgBCoUMgfjpogce4Pbeap
	 5jZ77EAvYw7u9l3Km5ijyYFBZLQuhbFize1I8uW/ZKctJEqjqutfAr+TcBaGZwh2Zm
	 mcrB5cZB2Az1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 274FD6157D;
	Fri, 10 May 2024 07:25:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16E1A1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 07:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C75F8442D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 07:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sbYGVSSoiodP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 07:25:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F419F8442B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F419F8442B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F419F8442B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 07:25:22 +0000 (UTC)
X-CSE-ConnectionGUID: OUbz0GXKTbWmlDOVPlRnrg==
X-CSE-MsgGUID: BA4Dq1gfSom9plq1QigzGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21888845"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="21888845"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 00:25:22 -0700
X-CSE-ConnectionGUID: L7p5aa59S2+ma1cJnenS5w==
X-CSE-MsgGUID: oovQby8BQ+ybk3mjWpwAow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29462093"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 00:25:19 -0700
Date: Fri, 10 May 2024 09:24:48 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zj3LwDMbktRXk0QX@mev-dev>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <ZjyxBcVZNbWioRP0@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZjyxBcVZNbWioRP0@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715325923; x=1746861923;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8JsD0R3pbIpzm+oWXnmTscN5nNN6bxalnHmyIHoPqNw=;
 b=NYnjEFZQNM6ct9JNuxU5y1DyroBEZfZ8JxgPTxAJYYdm9H9xJjMenYLD
 GLEHsMPbIPeD8GmqF9WpKHTgMAgNpcLB2qyz4Eq8zwDtZ2QTIacK/1mCR
 sW/z7o/GT1hKLqK6vKLVPAjxXQ+RdNoZknyWpAryECCux4AI087tRWPN3
 QdxBYtmekRrgZag1ca5yxxKkPh4yDygtX7YEtU/+AtQEwS5wxFMIRekUV
 VVunk1y3lQUcXUz7h/q5SpeGTGGpdbWs5hvbtOAGclh03MHvEETtU5QQW
 6z4tXpDjHQ0acBTr0qGiKBnehUC8JDeoZ1nsiIGfBOzXmPkQHpxGqk9JV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NYnjEFZQ
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

On Thu, May 09, 2024 at 01:18:29PM +0200, Jiri Pirko wrote:
> Tue, May 07, 2024 at 01:45:01PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >Hi,
> >
> >Currently ice driver does not allow creating more than one networking
> >device per physical function. The only way to have more hardware backed
> >netdev is to use SR-IOV.
> >
> >Following patchset adds support for devlink port API. For each new
> >pcisf type port, driver allocates new VSI, configures all resources
> >needed, including dynamically MSIX vectors, program rules and registers
> >new netdev.
> >
> >This series supports only one Tx/Rx queue pair per subfunction.
> >
> >Example commands:
> >devlink port add pci/0000:31:00.1 flavour pcisf pfnum 1 sfnum 1000
> >devlink port function set pci/0000:31:00.1/1 hw_addr 00:00:00:00:03:14
> >devlink port function set pci/0000:31:00.1/1 state active
> >devlink port function del pci/0000:31:00.1/1
> >
> >Make the port representor and eswitch code generic to support
> >subfunction representor type.
> >
> >VSI configuration is slightly different between VF and SF. It needs to
> >be reflected in the code.
> >
> >Most recent previous patchset (not containing port representor for SF
> >support). [1]
> >
> >[1] https://lore.kernel.org/netdev/20240417142028.2171-1-michal.swiatkowski@linux.intel.com/
> >
> 
> 
> I don't understand howcome the patchset is v1, yet there are patches
> that came through multiple iterations alread. Changelog is missing
> completely :/
> 

What is wrong here? There is a link to previous patchset with whole
changlog and links to previous ones. I didn't add changlog here as it is
new patchset (partialy the same as from [1], because of that I added a
link). I can add the changlog from [1] if you want, but for me it can be
missleading.

> 
> >Michal Swiatkowski (7):
> >  ice: treat subfunction VSI the same as PF VSI
> >  ice: create port representor for SF
> >  ice: don't set target VSI for subfunction
> >  ice: check if SF is ready in ethtool ops
> >  ice: netdevice ops for SF representor
> >  ice: support subfunction devlink Tx topology
> >  ice: basic support for VLAN in subfunctions
> >
> >Piotr Raczynski (7):
> >  ice: add new VSI type for subfunctions
> >  ice: export ice ndo_ops functions
> >  ice: add basic devlink subfunctions support
> >  ice: allocate devlink for subfunction
> >  ice: base subfunction aux driver
> >  ice: implement netdev for subfunction
> >  ice: allow to activate and deactivate subfunction
> >
> > drivers/net/ethernet/intel/ice/Makefile       |   2 +
> > .../net/ethernet/intel/ice/devlink/devlink.c  |  48 ++
> > .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
> > .../ethernet/intel/ice/devlink/devlink_port.c | 516 ++++++++++++++++++
> > .../ethernet/intel/ice/devlink/devlink_port.h |  43 ++
> > drivers/net/ethernet/intel/ice/ice.h          |  19 +-
> > drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
> > drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
> > drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 ++-
> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
> > drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
> > drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
> > drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
> > drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
> > drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++++--
> > drivers/net/ethernet/intel/ice/ice_repr.h     |  22 +-
> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 329 +++++++++++
> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
> > .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  |  21 +
> > .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  |  13 +
> > drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> > drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
> > drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> > .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   4 +
> > drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
> > 26 files changed, 1362 insertions(+), 138 deletions(-)
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h
> >
> >-- 
> >2.42.0
> >
> >
