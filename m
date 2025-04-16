Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 586D1A8B40A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 10:39:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B12F9811C4;
	Wed, 16 Apr 2025 08:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDlPyS40oYJr; Wed, 16 Apr 2025 08:39:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B6FB84013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744792755;
	bh=cy8lrhUYXbh/wstrbtier4d1430xfwYguKMBQ7FCrd8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pFUAL3fsukcu2KKx8aC260GXiRN3k6VGA66n2wPmKPK8jiVPXFHKeFoFU6QM/EcpT
	 V+h3MVkZPjcJaPRjbp1V68qc6gdTPKAVfeeiGuKjqbv8YHlIycsxBdkp+Tam1L1Yb7
	 536N5yitgiASMfRC+829hvsZICUiD0B9htaSOr4/1KNAAPSenqD50ExwE6wA5kv3UY
	 u0rIeldxNl6AaTUDAzgWcnY9O3jO6qkVh53jP463nDhbzJa4OGf2TOZCPGFLS7rZUf
	 QotMGFqXPsGG+s3QMNQkhKvwLbvbVlXhES1slgUD2r690E3Ie7iu+5X1QUXHf9Sh7x
	 WG6xn0fG/PvxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B6FB84013;
	Wed, 16 Apr 2025 08:39:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B7476E83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 08:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B42D8411D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 08:39:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qgXUQ7gfGDQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 08:39:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5CA7241384
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CA7241384
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CA7241384
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 08:39:11 +0000 (UTC)
X-CSE-ConnectionGUID: if2sDO4aTxiJj6+ACJh6hQ==
X-CSE-MsgGUID: qDMIoCcdRvmp/bkjJRr+jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="56964225"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="56964225"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 01:39:10 -0700
X-CSE-ConnectionGUID: UlmooonnRjWzijH/ukxW+Q==
X-CSE-MsgGUID: 96hi/cq+QKK9RNtdxa7bBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130334305"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 01:39:08 -0700
Date: Wed, 16 Apr 2025 10:38:48 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, aleksandr.loktionov@intel.com,
 jedrzej.jagielski@intel.com, larysa.zaremba@intel.com
Message-ID: <Z/9smCtvgpqrE6Sb@mev-dev.igk.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
 <97602d95-8465-4e74-bbf3-6e70c7e6373f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97602d95-8465-4e74-bbf3-6e70c7e6373f@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744792751; x=1776328751;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pX+6weCz14O5wsilpAD5fH7Ohv4TXG1wxvEX2Xz6Jy0=;
 b=AD6+SySDSJ9pJlWtt12WTDLwPplho7wRezmySpXbh7FT7rPsIMSPQJOe
 42bXafIQSRs29PA0TtZf2+4TTsDOQFcN6S3+6QvbGCbWysQ6TrTXcfa3f
 ve5IOI3aqSDtIqKPrlQVidpfo5BycnHWSfNNU2fCL+bkdJkgnwmeFqx6j
 XLlXHO+qGGgimflnkeS9meTPMABoEjAIaiepjieYGD8eCmqsX2Tt1Pqcv
 yP8qTxTMlty2/aww28dDztdykgDAIRAasL/3bZRZP59f39KmxrqXZpwMJ
 QR4yGfBB1eeTbSibI76vfo43fDVJkL44awLoUCl4N/glLV0O0Qi5fVNQm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AD6+SySD
Subject: Re: [Intel-wired-lan] [iwl-next v2 0/8] libie: commonize adminq
 structure
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

On Tue, Apr 15, 2025 at 03:59:55PM -0700, Tony Nguyen wrote:
> 
> 
> On 4/10/2025 3:01 AM, Michal Swiatkowski wrote:
> > Hi,
> > 
> > It is a prework to allow reusing some specific Intel code (eq. fwlog).
> > 
> > Move common *_aq_desc structure to libie header and changing
> > it in ice, ixgbe, i40e and iavf.
> > 
> > Only generic adminq commands can be easily moved to common header, as
> > rest is slightly different. Format remains the same. It will be better
> > to correctly move it when it will be needed to commonize other part of
> > the code.
> > 
> > Move *_aq_str() to new libie module (libie_adminq) and use it across
> > drivers. The functions are exactly the same in each driver. Some more
> > adminq helpers/functions can be moved to libie_adminq when needed.
> 
> This doesn't apply anymore after Dave's series [0]. Can you rebase and
> resend?

Sure, I will resend, thanks.

> 
> Thanks,
> Tony
> 
> [0] https://lore.kernel.org/intel-wired-lan/20250407191517.767433-1-david.m.ertman@intel.com/
> 
> > v1 --> v2: [1]
> >   * add short descriptions in kdoc (patch 1, 5)
> >   * handle all error types in switch to allow clean build (patch 3)
> > 
> > [1] https://lore.kernel.org/netdev/20250312062426.2544608-1-michal.swiatkowski@linux.intel.com/
> > 
> > Michal Swiatkowski (8):
> >    ice, libie: move generic adminq descriptors to lib
> >    ixgbe: use libie adminq descriptors
> >    i40e: use libie adminq descriptors
> >    iavf: use libie adminq descriptors
> >    libie: add adminq helper for converting err to str
> >    ice: use libie_aq_str
> >    iavf: use libie_aq_str
> >    i40e: use libie_aq_str
> > 
> >   drivers/net/ethernet/intel/Kconfig            |   3 +
> >   drivers/net/ethernet/intel/libie/Kconfig      |   6 +
> >   drivers/net/ethernet/intel/libie/Makefile     |   4 +
> >   drivers/net/ethernet/intel/i40e/i40e_adminq.h |  12 +-
> >   .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 155 +---
> >   .../net/ethernet/intel/i40e/i40e_prototype.h  |  15 +-
> >   drivers/net/ethernet/intel/i40e/i40e_type.h   |   6 +-
> >   drivers/net/ethernet/intel/iavf/iavf_adminq.h |  12 +-
> >   .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |  83 +-
> >   .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
> >   drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
> >   drivers/net/ethernet/intel/ice/ice.h          |   1 -
> >   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 269 +------
> >   drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
> >   drivers/net/ethernet/intel/ice/ice_controlq.h |   8 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +-
> >   .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 226 +-----
> >   include/linux/net/intel/libie/adminq.h        | 306 ++++++++
> >   drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
> >   drivers/net/ethernet/intel/i40e/i40e_client.c |   7 +-
> >   drivers/net/ethernet/intel/i40e/i40e_common.c | 730 ++++++++----------
> >   drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  10 +-
> >   drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   8 +-
> >   .../net/ethernet/intel/i40e/i40e_debugfs.c    |  46 +-
> >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  36 +-
> >   drivers/net/ethernet/intel/i40e/i40e_main.c   | 240 +++---
> >   drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  18 +-
> >   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +-
> >   drivers/net/ethernet/intel/iavf/iavf_adminq.c |  62 +-
> >   drivers/net/ethernet/intel/iavf/iavf_common.c | 110 +--
> >   drivers/net/ethernet/intel/iavf/iavf_main.c   |   5 +-
> >   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
> >   .../net/ethernet/intel/ice/devlink/devlink.c  |  10 +-
> >   .../net/ethernet/intel/ice/devlink/health.c   |   6 +-
> >   drivers/net/ethernet/intel/ice/ice_common.c   | 388 +++++-----
> >   drivers/net/ethernet/intel/ice/ice_controlq.c |  53 +-
> >   drivers/net/ethernet/intel/ice/ice_dcb.c      |  36 +-
> >   drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
> >   drivers/net/ethernet/intel/ice/ice_ddp.c      |  47 +-
> >   drivers/net/ethernet/intel/ice/ice_dpll.c     |  20 +-
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
> >   .../net/ethernet/intel/ice/ice_fw_update.c    |  38 +-
> >   drivers/net/ethernet/intel/ice/ice_fwlog.c    |  16 +-
> >   drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
> >   drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
> >   drivers/net/ethernet/intel/ice/ice_main.c     |  63 +-
> >   drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +-
> >   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
> >   drivers/net/ethernet/intel/ice/ice_sched.c    |  18 +-
> >   drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> >   drivers/net/ethernet/intel/ice/ice_switch.c   |  55 +-
> >   drivers/net/ethernet/intel/ice/ice_vf_mbx.c   |   6 +-
> >   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   6 +-
> >   .../net/ethernet/intel/ice/ice_vlan_mode.c    |   6 +-
> >   .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  24 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 272 +++----
> >   .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |   4 +-
> >   drivers/net/ethernet/intel/libie/adminq.c     |  50 ++
> >   58 files changed, 1570 insertions(+), 2136 deletions(-)
> >   create mode 100644 include/linux/net/intel/libie/adminq.h
> >   create mode 100644 drivers/net/ethernet/intel/libie/adminq.c
> > 
> 
