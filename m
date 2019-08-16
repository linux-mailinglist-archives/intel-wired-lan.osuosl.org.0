Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC7B8F890
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 03:46:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 893D886016;
	Fri, 16 Aug 2019 01:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5q-rP6Xg+k4B; Fri, 16 Aug 2019 01:46:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FC0F84D49;
	Fri, 16 Aug 2019 01:46:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C3D51BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 01:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 588BC85F80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 01:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5LY8-GAY3Wf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 01:46:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAA9285F71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 01:46:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 18:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194888459"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 18:46:05 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 15 Aug 2019 18:46:04 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.6]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.63]) with mapi id 14.03.0439.000;
 Thu, 15 Aug 2019 18:46:04 -0700
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] x
Thread-Index: AQHVU7FjE+tC98aWVkCb/rANHu2iBab9AKTA
Date: Fri, 16 Aug 2019 01:46:04 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69AFFB063@ORSMSX115.amr.corp.intel.com>
References: <CAP-MU4MAwQd5bOGpJ=tu4iVB4j4FO6UWbkXg6ox34i7pb5DjQA@mail.gmail.com>
In-Reply-To: <CAP-MU4MAwQd5bOGpJ=tu4iVB4j4FO6UWbkXg6ox34i7pb5DjQA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWNkZmJhNTYtYWI2Zi00NjAzLTg0MWItZjlmZGIyMDliMzc0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ21qa3ZmWCtMYVRcL0tJVHFhM1hrT01RTkpuVytDYmdrSE04NEJCTHNtelc2T3UrWVFHMUpPYjhRcUE5YUVWc1IifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] x
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

x722? x550? Or is it a different part?

I've seen something like this lately, but I'll need to know which Ethernet controller it is before I can narrow it down.

Todd Fujinaka
Software Application Engineer
Datacenter Engineering Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of Shannon Nelson
Sent: Thursday, August 15, 2019 2:35 PM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] x

We've been occasionally seeing some of these messages recently on some of our machines after reboots.  Usually a powercycle clears it up.
Any hints as to what might be going on?

[    2.570012] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
version 5.1.0-k-rh7.5
[    2.570016] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[    4.883541] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
read at offset 40 failed
[    7.112885] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
read at offset 39 failed
[   11.571710] ixgbe 0000:65:00.0: The EEPROM Checksum Is Not Valid
[   11.571916] ixgbe: probe of 0000:65:00.0 failed with error -5
[   13.922688] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
read at offset 40 failed
[   16.152080] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
read at offset 39 failed
[   20.617460] ixgbe 0000:65:00.1: The EEPROM Checksum Is Not Valid
[   20.617639] ixgbe: probe of 0000:65:00.1 failed with error -5


Thanks,
sln


--
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
