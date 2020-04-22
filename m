Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D921B4CDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 20:49:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3775F87A1A;
	Wed, 22 Apr 2020 18:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TX2lDYDt5bTz; Wed, 22 Apr 2020 18:49:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FA33878F1;
	Wed, 22 Apr 2020 18:49:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 951841BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 18:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 917D986B15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 18:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhyoagWade3R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2020 18:49:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3EC6686AD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 18:49:04 +0000 (UTC)
IronPort-SDR: BtWbM68SFfdvLPl+hP3Wdc9siGirQKwRCrcuOjUAhH92wJ7105pEnw1ShHhP9fQrzvAUgzVLi8
 VC5J0soOWd8g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 11:49:03 -0700
IronPort-SDR: OOddn8lNfVvCxRYGvycsuryfwG3NIjdUNqbUVFuW9WyA4NxKZ3hos/U+YGyyGFwKDBfktmlvn2
 aIMbyJtvqREQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="300999008"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2020 11:49:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Apr 2020 11:49:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Apr 2020 11:49:03 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 22 Apr 2020 11:49:03 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2] i40e: Add a check to see if MFS
 is set
Thread-Index: AQHWGCqu27CHjwmJHU6R5DSEBQNCxaiFfNlw
Date: Wed, 22 Apr 2020 18:49:03 +0000
Message-ID: <38c988b9d043460a804500d8c765af85@intel.com>
References: <20200421221734.503494-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200421221734.503494-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v2] i40e: Add a check to see if MFS
 is set
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
Sent: Tuesday, April 21, 2020 3:18 PM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [net-next v2] i40e: Add a check to see if MFS is set

From: Todd Fujinaka <todd.fujinaka@intel.com>

A customer was chain-booting to provision his systems and one of the steps was setting MFS. MFS isn't cleared by normal warm reboots (clearing requires a GLOBR) and there was no indication of why Jumbo Frame receives were failing.

Add a warning if MFS is set to anything lower than the default.

Signed-off-by: Todd Fujinaka <todd.fujinaka@intel.com>
---
v2: fix the math calculation on accessing the SAH register

 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)



Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
