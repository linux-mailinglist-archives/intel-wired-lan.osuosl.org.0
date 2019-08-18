Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 772159198D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Aug 2019 22:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E328520338;
	Sun, 18 Aug 2019 20:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jx9E3N8WsK5a; Sun, 18 Aug 2019 20:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D204C20421;
	Sun, 18 Aug 2019 20:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 770281BF47D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2019 20:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 730A62033E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2019 20:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id foj86BCkiL8J for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Aug 2019 20:36:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 68D5F20338
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2019 20:36:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 13:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,402,1559545200"; d="scan'208";a="353058023"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga005.jf.intel.com with ESMTP; 18 Aug 2019 13:36:34 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 18 Aug 2019 13:36:34 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.6]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.208]) with mapi id 14.03.0439.000;
 Sun, 18 Aug 2019 13:36:34 -0700
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>
Thread-Topic: [Intel-wired-lan] x
Thread-Index: AQHVU7FjE+tC98aWVkCb/rANHu2iBab9AKTAgAB/UwCAAPjZ4A==
Date: Sun, 18 Aug 2019 20:36:33 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69AFFBD76@ORSMSX115.amr.corp.intel.com>
References: <CAP-MU4MAwQd5bOGpJ=tu4iVB4j4FO6UWbkXg6ox34i7pb5DjQA@mail.gmail.com>
 <9B4A1B1917080E46B64F07F2989DADD69AFFB063@ORSMSX115.amr.corp.intel.com>
 <CAP-MU4PKYRP0SpxDC7SgRGCjWAyyu0vHh5W5YAsjf=JseRkAqg@mail.gmail.com>
In-Reply-To: <CAP-MU4PKYRP0SpxDC7SgRGCjWAyyu0vHh5W5YAsjf=JseRkAqg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2I1NTZlMTAtY2U2Yy00MTI3LWFkMWQtZTdlYzgyMDliYzM5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYVI0RU5yc0ZIS3NFNGpXWFc4dmVJTkNaeUI2cVZvUHFocys5SlpWbjcxT1NyTVpvRWlhQ1dSV2IxK0d3bVIwZiJ9
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The problem should be fixed with an NVM update but I'm unsure if your NVM already has the fix. Let me make sure with the Product AE.

However, you're going to have to go directly to Cisco for the NVM updates since the cards look like they're from Cisco.

Todd Fujinaka
Software Application Engineer
Datacenter Engineering Group
Intel Corporation
todd.fujinaka@intel.com


-----Original Message-----
From: Shannon Nelson [mailto:shannon.lee.nelson@gmail.com] 
Sent: Thursday, August 15, 2019 7:19 PM
To: Fujinaka, Todd <todd.fujinaka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] x

On Thu, Aug 15, 2019 at 6:46 PM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> x722? x550? Or is it a different part?
>
> I've seen something like this lately, but I'll need to know which Ethernet controller it is before I can narrow it down.

Sorry about that short Subject text and lack of info... someone was passing this info to me in the midst of two or three other things going on and I hit <send> before I finished the text.

Since that's ixgbe printing the complaints, I'm pretty sure it isn't anything x722-ish.  I don't have access to the actual machine, but it is the same as this one:

65:00.0 Ethernet controller: Intel Corporation Ethernet Controller 10G X550T (rev 01)
Subsystem: Cisco Systems Inc Device 01a3
Capabilities: [e0] Vital Product Data
Product Name: Cisco  X550-TX 10 Gig
Read-only fields:
[PN] Part number: X550-TX
[V0] Vendor specific: MAP 1.86 V0.02 PHY 2.B.B MAC 3.15 [MN] Manufacture ID: 11 37 [RV] Reserved: checksum good, 0 byte(s) reserved

# ethtool -i eno1
driver: ixgbe
version: 5.1.0-k
firmware-version: 0x80000af9, 0.385.33

We have a bunch of these machines, and I'm told we're seeing this off and on in several of them.

sln


>
> Todd Fujinaka
> Software Application Engineer
> Datacenter Engineering Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On 
> Behalf Of Shannon Nelson
> Sent: Thursday, August 15, 2019 2:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] x
>
> We've been occasionally seeing some of these messages recently on some of our machines after reboots.  Usually a powercycle clears it up.
> Any hints as to what might be going on?
>
> [    2.570012] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
> version 5.1.0-k-rh7.5
> [    2.570016] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> [    4.883541] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
> read at offset 40 failed
> [    7.112885] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
> read at offset 39 failed
> [   11.571710] ixgbe 0000:65:00.0: The EEPROM Checksum Is Not Valid
> [   11.571916] ixgbe: probe of 0000:65:00.0 failed with error -5
> [   13.922688] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
> read at offset 40 failed
> [   16.152080] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
> read at offset 39 failed
> [   20.617460] ixgbe 0000:65:00.1: The EEPROM Checksum Is Not Valid
> [   20.617639] ixgbe: probe of 0000:65:00.1 failed with error -5
>
>
> Thanks,
> sln
>
>
> --
> ==============================================
> Mr. Shannon Nelson         Parents can't afford to be squeamish.
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan



--
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
