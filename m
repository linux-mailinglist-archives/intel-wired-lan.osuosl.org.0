Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153F4331BA3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 01:29:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FDD440156;
	Tue,  9 Mar 2021 00:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cuyrNSSYma73; Tue,  9 Mar 2021 00:29:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 509AD40151;
	Tue,  9 Mar 2021 00:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 107C31BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 00:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEAB382EC7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 00:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vy4H72QTRvJY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 00:29:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E17382E43
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 00:29:01 +0000 (UTC)
IronPort-SDR: vv8EuuHVpnZ7OW7ra6COaEnVug3Xps03n7lZKSwKOGM/Jz4zYBG902dojjhb4v+29lahzUin3R
 kL7yH/vknCvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="252157794"
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="252157794"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 16:29:00 -0800
IronPort-SDR: VTEJmat5VXYS+m1Ajl4Dv3Lq5/oqf3HP6Bhj+b5k4Q4gdaCLcDrKBpb1ZSwgF32wdIMngXnJ1o
 /1J57wmWZtOw==
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="403011972"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.213.162.252])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 16:28:59 -0800
Date: Mon, 8 Mar 2021 16:28:58 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: kuba@kernel.org, davem@davemloft.net
Message-ID: <20210308162858.00004535@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next] iavf: refactor plan proposal
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

We plan to refactor the iavf module and would appreciate community and
maintainer feedback on our plans.  We want to do this to realize the
usefulness of the common code module for multiple drivers.  This
proposal aims to avoid disrupting current users.

The steps we plan are something like:
1) Continue upstreaming of the iecm module (common module) and
   the initial feature set for the idpf driver[1] utilizing iecm.
2) Introduce the refactored iavf code as a "new" iavf driver with the
   same device ID, but Kconfig default to =n to enable testing. 
	a. Make this exclusive so if someone opts in to "new" iavf,
	   then it disables the original iavf (?) 
	b. If we do make it exclusive in Kconfig can we use the same
	   name? 
3) Plan is to make the "new" iavf driver the default iavf once
   extensive regression testing can be completed. 
	a. Current proposal is to make CONFIG_IAVF have a sub-option
	   CONFIG_IAVF_V2 that lets the user adopt the new code,
	   without changing the config for existing users or breaking
	   them.

We are looking to make sure that the mode of our refactoring will meet
the community's expectations. Any advice or feedback is appreciated.

Thanks,
Jesse, Alice, Alan

[1]
https://lore.kernel.org/netdev/20200824173306.3178343-1-anthony.l.nguyen@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
