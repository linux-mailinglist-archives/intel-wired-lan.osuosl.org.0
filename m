Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D762C1A399B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 20:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D4F787F08;
	Thu,  9 Apr 2020 18:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQXUIYzwiCBs; Thu,  9 Apr 2020 18:11:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C508987F0C;
	Thu,  9 Apr 2020 18:11:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA8F81BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 18:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A70C487E46
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 18:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOVGM6SmgacF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2020 18:11:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F134581F55
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 18:11:05 +0000 (UTC)
IronPort-SDR: qMV2sVRuaZL7PzW3P7obugXZwuHudOJ4HuEmhv43SYwc+tTqJozQCb4svJdthnuNGw3PIFcDje
 W3ORu3IYZpHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 11:09:56 -0700
IronPort-SDR: kz9ttCCJYMy1yFZkH32DX/+HuNrv4odTxCQd1byOxnFFzY10mqVVtWN5QmBe8LRHHlcf6rZYae
 45Ow8u/t1xYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="275918962"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 09 Apr 2020 11:09:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Apr 2020 11:09:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Apr 2020 11:09:55 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 9 Apr 2020 11:09:55 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2] i40e: Add a check to see if
 MFS is set
Thread-Index: AQHWDSmLgXKILhLmgEmctdwmFZkHKKhxGYow
Date: Thu, 9 Apr 2020 18:09:55 +0000
Message-ID: <4f171aed2dcd4c229ebd5dd5d26c13cb@intel.com>
References: <20200407221139.2233977-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200407221139.2233977-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue v2] i40e: Add a check to see if
 MFS is set
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jeff Kirsher
Sent: Tuesday, April 7, 2020 3:12 PM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [next-queue v2] i40e: Add a check to see if MFS is set

From: Todd Fujinaka <todd.fujinaka@intel.com>

A customer was chain-booting to provision his systems and one of the steps was setting MFS. MFS isn't cleared by normal warm reboots (clearing requires a GLOBR) and there was no indication of why Jumbo Frame receives were failing.

Add a warning if MFS is set to anything lower than the default.

Signed-off-by: Todd Fujinaka <todd.fujinaka@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: added missing defines

 drivers/net/ethernet/intel/i40e/i40e_main.c     | 9 +++++++++
 drivers/net/ethernet/intel/i40e/i40e_register.h | 8 ++++++++
 2 files changed, 17 insertions(+)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
