Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA84F1A0026
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Apr 2020 23:32:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97BD686472;
	Mon,  6 Apr 2020 21:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t05MBqLZl1vF; Mon,  6 Apr 2020 21:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C79D865DB;
	Mon,  6 Apr 2020 21:32:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1451BF32C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2020 21:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 865CD20486
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2020 21:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zc2zlK5gjSHm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2020 21:31:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 512792045F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2020 21:31:57 +0000 (UTC)
IronPort-SDR: 6mh5K9GL3wgCl7cA6BEbgvAmLvlVkJeAE5AmGjrX5DWWDoLjVl7ZBHfEONKLkF7Vi8IC+jK/4l
 TUONr2iq2XtQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 14:31:56 -0700
IronPort-SDR: m/fVn6agECJv59KKz12eblig3TGwF41rx7ImXQOV97J1Bir4FgkTf7x8f2trq9F5wCFcfTPkj2
 lxCEuoDbjiDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,352,1580803200"; 
 d="scan'208,217";a="239746126"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 06 Apr 2020 14:31:56 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 6 Apr 2020 14:31:55 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.102]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.134]) with mapi id 14.03.0439.000;
 Mon, 6 Apr 2020 14:31:55 -0700
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Kevin Newman <knewman@peak6.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: X550 + ixgbe Reporting "ECC Err" With Strange Regularity...
Thread-Index: AdYMJynuZXPrQwA7S++9EbW3UxM63AAM08Fw
Date: Mon, 6 Apr 2020 21:31:54 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69B107E30@ORSMSX115.amr.corp.intel.com>
References: <MWHPR2201MB1727D9040A0A395978363BB0E9C20@MWHPR2201MB1727.namprd22.prod.outlook.com>
In-Reply-To: <MWHPR2201MB1727D9040A0A395978363BB0E9C20@MWHPR2201MB1727.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] X550 + ixgbe Reporting "ECC Err" With Strange
 Regularity...
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
Content-Type: multipart/mixed; boundary="===============1588483758050761241=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1588483758050761241==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9B4A1B1917080E46B64F07F2989DADD69B107E30ORSMSX115amrcor_"

--_000_9B4A1B1917080E46B64F07F2989DADD69B107E30ORSMSX115amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Unfortunately, the "ECC Error" bit in the ICR is overloaded and could be ca=
used by other things. Do you have a dmesg we can look at? (The whole thing =
from boot to the error?)

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kev=
in Newman
Sent: Monday, April 6, 2020 8:22 AM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] X550 + ixgbe Reporting "ECC Err" With Strange Re=
gularity...

Hi,

I'm seeing a strangely high incidence of the following type of "ECC error" =
on X550 NICs running ixgbe 5.1.0 via kernel 4.15.0:

2020-04-06T08:35:16.077662-05:00 dell-server1 kernel: [155528.916479] ixgbe=
 0000:19:00.1 eno2: Received ECC Err, initiating reset
2020-04-06T08:35:16.077684-05:00 dell-server1 kernel: [155528.916480] ixgbe=
 0000:19:00.0 eno1: Received ECC Err, initiating reset
2020-04-06T08:35:16.077685-05:00 dell-server1 kernel: [155528.916491] ixgbe=
 0000:19:00.0 eno1: Reset adapter
2020-04-06T08:35:16.090422-05:00 dell-server1 kernel: [155528.930407] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 0 not cleared within the poll=
ing period
2020-04-06T08:35:16.090439-05:00 dell-server1 kernel: [155528.930572] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 1 not cleared within the poll=
ing period
2020-04-06T08:35:16.090440-05:00 dell-server1 kernel: [155528.930721] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 2 not cleared within the poll=
ing period
2020-04-06T08:35:16.090440-05:00 dell-server1 kernel: [155528.930877] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 3 not cleared within the poll=
ing period
2020-04-06T08:35:16.090442-05:00 dell-server1 kernel: [155528.931032] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 4 not cleared within the poll=
ing period
2020-04-06T08:35:16.090443-05:00 dell-server1 kernel: [155528.931188] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 5 not cleared within the poll=
ing period
2020-04-06T08:35:16.094301-05:00 dell-server1 kernel: [155528.933193] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 6 not cleared within the poll=
ing period
2020-04-06T08:35:16.094319-05:00 dell-server1 kernel: [155528.935148] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 7 not cleared within the poll=
ing period
2020-04-06T08:35:16.098055-05:00 dell-server1 kernel: [155528.937064] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 8 not cleared within the poll=
ing period
2020-04-06T08:35:16.098062-05:00 dell-server1 kernel: [155528.938939] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 9 not cleared within the poll=
ing period
2020-04-06T08:35:16.101678-05:00 dell-server1 kernel: [155528.940816] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 10 not cleared within the pol=
ling period
2020-04-06T08:35:16.101685-05:00 dell-server1 kernel: [155528.942620] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 11 not cleared within the pol=
ling period
2020-04-06T08:35:16.106751-05:00 dell-server1 kernel: [155528.944435] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 12 not cleared within the pol=
ling period
2020-04-06T08:35:16.106759-05:00 dell-server1 kernel: [155528.946149] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 13 not cleared within the pol=
ling period
2020-04-06T08:35:16.106760-05:00 dell-server1 kernel: [155528.947827] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 14 not cleared within the pol=
ling period
2020-04-06T08:35:16.109948-05:00 dell-server1 kernel: [155528.949507] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 15 not cleared within the pol=
ling period
2020-04-06T08:35:16.109955-05:00 dell-server1 kernel: [155528.951112] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 16 not cleared within the pol=
ling period
2020-04-06T08:35:16.114513-05:00 dell-server1 kernel: [155528.952707] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 17 not cleared within the pol=
ling period
2020-04-06T08:35:16.114522-05:00 dell-server1 kernel: [155528.954248] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 18 not cleared within the pol=
ling period
2020-04-06T08:35:16.114528-05:00 dell-server1 kernel: [155528.955757] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 19 not cleared within the pol=
ling period
2020-04-06T08:35:16.118763-05:00 dell-server1 kernel: [155528.957271] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 20 not cleared within the pol=
ling period
2020-04-06T08:35:16.118769-05:00 dell-server1 kernel: [155528.958751] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 21 not cleared within the pol=
ling period
2020-04-06T08:35:16.118770-05:00 dell-server1 kernel: [155528.960153] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 22 not cleared within the pol=
ling period
2020-04-06T08:35:16.122679-05:00 dell-server1 kernel: [155528.961525] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 23 not cleared within the pol=
ling period
2020-04-06T08:35:16.122690-05:00 dell-server1 kernel: [155528.962851] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 24 not cleared within the pol=
ling period
2020-04-06T08:35:16.122691-05:00 dell-server1 kernel: [155528.964160] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 25 not cleared within the pol=
ling period
2020-04-06T08:35:16.126155-05:00 dell-server1 kernel: [155528.965440] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 26 not cleared within the pol=
ling period
2020-04-06T08:35:16.126167-05:00 dell-server1 kernel: [155528.966637] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 27 not cleared within the pol=
ling period
2020-04-06T08:35:16.126168-05:00 dell-server1 kernel: [155528.967767] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 28 not cleared within the pol=
ling period
2020-04-06T08:35:16.130187-05:00 dell-server1 kernel: [155528.968913] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 29 not cleared within the pol=
ling period
2020-04-06T08:35:16.130206-05:00 dell-server1 kernel: [155528.969974] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 30 not cleared within the pol=
ling period
2020-04-06T08:35:16.130207-05:00 dell-server1 kernel: [155528.971011] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 31 not cleared within the pol=
ling period
2020-04-06T08:35:16.130208-05:00 dell-server1 kernel: [155528.971998] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 32 not cleared within the pol=
ling period
2020-04-06T08:35:16.134180-05:00 dell-server1 kernel: [155528.972946] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 33 not cleared within the pol=
ling period
2020-04-06T08:35:16.134192-05:00 dell-server1 kernel: [155528.973828] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 34 not cleared within the pol=
ling period
2020-04-06T08:35:16.134193-05:00 dell-server1 kernel: [155528.974679] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 35 not cleared within the pol=
ling period
2020-04-06T08:35:16.134194-05:00 dell-server1 kernel: [155528.975470] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 36 not cleared within the pol=
ling period
2020-04-06T08:35:16.134195-05:00 dell-server1 kernel: [155528.976227] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 37 not cleared within the pol=
ling period
2020-04-06T08:35:16.137630-05:00 dell-server1 kernel: [155528.976933] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 38 not cleared within the pol=
ling period
2020-04-06T08:35:16.137641-05:00 dell-server1 kernel: [155528.977592] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 39 not cleared within the pol=
ling period
2020-04-06T08:35:16.137642-05:00 dell-server1 kernel: [155528.978215] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 40 not cleared within the pol=
ling period
2020-04-06T08:35:16.137643-05:00 dell-server1 kernel: [155528.978796] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 41 not cleared within the pol=
ling period
2020-04-06T08:35:16.137644-05:00 dell-server1 kernel: [155528.979335] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 42 not cleared within the pol=
ling period
2020-04-06T08:35:16.137645-05:00 dell-server1 kernel: [155528.979830] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 43 not cleared within the pol=
ling period
2020-04-06T08:35:16.141629-05:00 dell-server1 kernel: [155528.980314] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 44 not cleared within the pol=
ling period
2020-04-06T08:35:16.141640-05:00 dell-server1 kernel: [155528.980712] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 45 not cleared within the pol=
ling period
2020-04-06T08:35:16.141641-05:00 dell-server1 kernel: [155528.981079] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 46 not cleared within the pol=
ling period
2020-04-06T08:35:16.141642-05:00 dell-server1 kernel: [155528.981433] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 47 not cleared within the pol=
ling period
2020-04-06T08:35:16.141649-05:00 dell-server1 kernel: [155528.981761] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 48 not cleared within the pol=
ling period
2020-04-06T08:35:16.141650-05:00 dell-server1 kernel: [155528.982083] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 49 not cleared within the pol=
ling period
2020-04-06T08:35:16.141651-05:00 dell-server1 kernel: [155528.982414] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 50 not cleared within the pol=
ling period
2020-04-06T08:35:16.141652-05:00 dell-server1 kernel: [155528.982735] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 51 not cleared within the pol=
ling period
2020-04-06T08:35:16.141652-05:00 dell-server1 kernel: [155528.983061] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 52 not cleared within the pol=
ling period
2020-04-06T08:35:16.141722-05:00 dell-server1 kernel: [155528.983390] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 53 not cleared within the pol=
ling period
2020-04-06T08:35:16.141738-05:00 dell-server1 kernel: [155528.983703] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 54 not cleared within the pol=
ling period
2020-04-06T08:35:16.141740-05:00 dell-server1 kernel: [155528.984032] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 55 not cleared within the pol=
ling period
2020-04-06T08:35:16.141748-05:00 dell-server1 kernel: [155528.984375] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 56 not cleared within the pol=
ling period
2020-04-06T08:35:16.145642-05:00 dell-server1 kernel: [155528.984697] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 57 not cleared within the pol=
ling period
2020-04-06T08:35:16.145653-05:00 dell-server1 kernel: [155528.985012] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 58 not cleared within the pol=
ling period
2020-04-06T08:35:16.145654-05:00 dell-server1 kernel: [155528.985316] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 59 not cleared within the pol=
ling period
2020-04-06T08:35:16.145655-05:00 dell-server1 kernel: [155528.985624] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 60 not cleared within the pol=
ling period
2020-04-06T08:35:16.145690-05:00 dell-server1 kernel: [155528.985936] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 61 not cleared within the pol=
ling period
2020-04-06T08:35:16.145691-05:00 dell-server1 kernel: [155528.986246] ixgbe=
 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 62 not cleared within the pol=
ling period
2020-04-06T08:35:17.037635-05:00 dell-server1 kernel: [155529.877028] ixgbe=
 0000:19:00.1 eno2: Reset adapter
2020-04-06T08:35:17.037648-05:00 dell-server1 kernel: [155529.877044] ixgbe=
 0000:19:00.0 eno1: speed changed to 0 for port eno1
2020-04-06T08:35:17.049728-05:00 dell-server1 kernel: [155529.891566] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 0 not cleared within the poll=
ing period
2020-04-06T08:35:17.049734-05:00 dell-server1 kernel: [155529.891856] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 1 not cleared within the poll=
ing period
2020-04-06T08:35:17.049736-05:00 dell-server1 kernel: [155529.892133] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 2 not cleared within the poll=
ing period
2020-04-06T08:35:17.053617-05:00 dell-server1 kernel: [155529.892410] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 3 not cleared within the poll=
ing period
2020-04-06T08:35:17.053621-05:00 dell-server1 kernel: [155529.892665] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 4 not cleared within the poll=
ing period
2020-04-06T08:35:17.053621-05:00 dell-server1 kernel: [155529.892917] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 5 not cleared within the poll=
ing period
2020-04-06T08:35:17.053622-05:00 dell-server1 kernel: [155529.893170] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 6 not cleared within the poll=
ing period
2020-04-06T08:35:17.053622-05:00 dell-server1 kernel: [155529.893420] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 7 not cleared within the poll=
ing period
2020-04-06T08:35:17.053623-05:00 dell-server1 kernel: [155529.893670] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 8 not cleared within the poll=
ing period
2020-04-06T08:35:17.053625-05:00 dell-server1 kernel: [155529.893921] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 9 not cleared within the poll=
ing period
2020-04-06T08:35:17.053626-05:00 dell-server1 kernel: [155529.894171] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 10 not cleared within the pol=
ling period
2020-04-06T08:35:17.053626-05:00 dell-server1 kernel: [155529.894430] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 11 not cleared within the pol=
ling period
2020-04-06T08:35:17.053627-05:00 dell-server1 kernel: [155529.894688] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 12 not cleared within the pol=
ling period
2020-04-06T08:35:17.053628-05:00 dell-server1 kernel: [155529.894945] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 13 not cleared within the pol=
ling period
2020-04-06T08:35:17.053629-05:00 dell-server1 kernel: [155529.895201] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 14 not cleared within the pol=
ling period
2020-04-06T08:35:17.053630-05:00 dell-server1 kernel: [155529.895458] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 15 not cleared within the pol=
ling period
2020-04-06T08:35:17.053630-05:00 dell-server1 kernel: [155529.895715] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 16 not cleared within the pol=
ling period
2020-04-06T08:35:17.053700-05:00 dell-server1 kernel: [155529.895971] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 17 not cleared within the pol=
ling period
2020-04-06T08:35:17.053722-05:00 dell-server1 kernel: [155529.896235] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 18 not cleared within the pol=
ling period
2020-04-06T08:35:17.057692-05:00 dell-server1 kernel: [155529.896519] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 19 not cleared within the pol=
ling period
2020-04-06T08:35:17.057697-05:00 dell-server1 kernel: [155529.896775] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 20 not cleared within the pol=
ling period
2020-04-06T08:35:17.057698-05:00 dell-server1 kernel: [155529.897029] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 21 not cleared within the pol=
ling period
2020-04-06T08:35:17.057699-05:00 dell-server1 kernel: [155529.897285] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 22 not cleared within the pol=
ling period
2020-04-06T08:35:17.057699-05:00 dell-server1 kernel: [155529.897540] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 23 not cleared within the pol=
ling period
2020-04-06T08:35:17.057700-05:00 dell-server1 kernel: [155529.897796] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 24 not cleared within the pol=
ling period
2020-04-06T08:35:17.057701-05:00 dell-server1 kernel: [155529.898049] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 25 not cleared within the pol=
ling period
2020-04-06T08:35:17.057705-05:00 dell-server1 kernel: [155529.898309] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 26 not cleared within the pol=
ling period
2020-04-06T08:35:17.057706-05:00 dell-server1 kernel: [155529.898562] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 27 not cleared within the pol=
ling period
2020-04-06T08:35:17.057708-05:00 dell-server1 kernel: [155529.898815] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 28 not cleared within the pol=
ling period
2020-04-06T08:35:17.057710-05:00 dell-server1 kernel: [155529.899069] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 29 not cleared within the pol=
ling period
2020-04-06T08:35:17.057711-05:00 dell-server1 kernel: [155529.899322] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 30 not cleared within the pol=
ling period
2020-04-06T08:35:17.057713-05:00 dell-server1 kernel: [155529.899575] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 31 not cleared within the pol=
ling period
2020-04-06T08:35:17.057715-05:00 dell-server1 kernel: [155529.899828] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 32 not cleared within the pol=
ling period
2020-04-06T08:35:17.057716-05:00 dell-server1 kernel: [155529.900082] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 33 not cleared within the pol=
ling period
2020-04-06T08:35:17.061626-05:00 dell-server1 kernel: [155529.900350] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 34 not cleared within the pol=
ling period
2020-04-06T08:35:17.061632-05:00 dell-server1 kernel: [155529.900605] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 35 not cleared within the pol=
ling period
2020-04-06T08:35:17.061633-05:00 dell-server1 kernel: [155529.900859] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 36 not cleared within the pol=
ling period
2020-04-06T08:35:17.061633-05:00 dell-server1 kernel: [155529.901114] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 37 not cleared within the pol=
ling period
2020-04-06T08:35:17.061634-05:00 dell-server1 kernel: [155529.901368] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 38 not cleared within the pol=
ling period
2020-04-06T08:35:17.061635-05:00 dell-server1 kernel: [155529.901622] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 39 not cleared within the pol=
ling period
2020-04-06T08:35:17.061636-05:00 dell-server1 kernel: [155529.901876] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 40 not cleared within the pol=
ling period
2020-04-06T08:35:17.061637-05:00 dell-server1 kernel: [155529.902130] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 41 not cleared within the pol=
ling period
2020-04-06T08:35:17.061641-05:00 dell-server1 kernel: [155529.902383] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 42 not cleared within the pol=
ling period
2020-04-06T08:35:17.061642-05:00 dell-server1 kernel: [155529.902636] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 43 not cleared within the pol=
ling period
2020-04-06T08:35:17.061643-05:00 dell-server1 kernel: [155529.902890] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 44 not cleared within the pol=
ling period
2020-04-06T08:35:17.061643-05:00 dell-server1 kernel: [155529.903145] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 45 not cleared within the pol=
ling period
2020-04-06T08:35:17.061644-05:00 dell-server1 kernel: [155529.903383] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 46 not cleared within the pol=
ling period
2020-04-06T08:35:17.061656-05:00 dell-server1 kernel: [155529.903616] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 47 not cleared within the pol=
ling period
2020-04-06T08:35:17.061658-05:00 dell-server1 kernel: [155529.903836] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 48 not cleared within the pol=
ling period
2020-04-06T08:35:17.061659-05:00 dell-server1 kernel: [155529.904054] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 49 not cleared within the pol=
ling period
2020-04-06T08:35:17.065643-05:00 dell-server1 kernel: [155529.904286] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 50 not cleared within the pol=
ling period
2020-04-06T08:35:17.065655-05:00 dell-server1 kernel: [155529.904510] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 51 not cleared within the pol=
ling period
2020-04-06T08:35:17.065656-05:00 dell-server1 kernel: [155529.904730] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 52 not cleared within the pol=
ling period
2020-04-06T08:35:17.065661-05:00 dell-server1 kernel: [155529.904950] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 53 not cleared within the pol=
ling period
2020-04-06T08:35:17.065662-05:00 dell-server1 kernel: [155529.905170] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 54 not cleared within the pol=
ling period
2020-04-06T08:35:17.065670-05:00 dell-server1 kernel: [155529.905389] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 55 not cleared within the pol=
ling period
2020-04-06T08:35:17.065671-05:00 dell-server1 kernel: [155529.905608] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 56 not cleared within the pol=
ling period
2020-04-06T08:35:17.065672-05:00 dell-server1 kernel: [155529.905827] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 57 not cleared within the pol=
ling period
2020-04-06T08:35:17.065673-05:00 dell-server1 kernel: [155529.906039] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 58 not cleared within the pol=
ling period
2020-04-06T08:35:17.065674-05:00 dell-server1 kernel: [155529.906250] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 59 not cleared within the pol=
ling period
2020-04-06T08:35:17.065674-05:00 dell-server1 kernel: [155529.906462] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 60 not cleared within the pol=
ling period
2020-04-06T08:35:17.065675-05:00 dell-server1 kernel: [155529.906674] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 61 not cleared within the pol=
ling period
2020-04-06T08:35:17.065676-05:00 dell-server1 kernel: [155529.906885] ixgbe=
 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 62 not cleared within the pol=
ling period
2020-04-06T08:35:17.965630-05:00 dell-server1 kernel: [155530.804204] bond0=
: link status definitely down for interface eno1, disabling it
2020-04-06T08:35:17.965648-05:00 dell-server1 kernel: [155530.804272] bond0=
: link status definitely down for interface eno2, disabling it
2020-04-06T08:35:17.965649-05:00 dell-server1 kernel: [155530.804274] bond0=
: now running without any active interface!
2020-04-06T08:35:18.069645-05:00 dell-server1 kernel: [155530.908165] bond0=
: link status definitely down for interface eno2, disabling it
2020-04-06T08:35:22.137624-05:00 dell-server1 kernel: [155534.976629] ixgbe=
 0000:19:00.0 eno1: NIC Link is Up 10 Gbps, Flow Control: None
2020-04-06T08:35:22.141618-05:00 dell-server1 kernel: [155534.979784] bond0=
: link status definitely up for interface eno1, 10000 Mbps full duplex
2020-04-06T08:35:22.141627-05:00 dell-server1 kernel: [155534.979791] bond0=
: first active interface up!
2020-04-06T08:35:23.005627-05:00 dell-server1 kernel: [155535.844845] ixgbe=
 0000:19:00.1 eno2: NIC Link is Up 10 Gbps, Flow Control: None
2020-04-06T08:35:23.077611-05:00 dell-server1 kernel: [155535.915696] bond0=
: link status definitely up for interface eno2, 10000 Mbps full duplex
2020-04-06T08:35:25.256404-05:00 dell-server1 kernel: [155538.083623] ixgbe=
 0000:19:00.0 eno1: Detected Tx Unit Hang
2020-04-06T08:35:25.256418-05:00 dell-server1 kernel: [155538.083623]   Tx =
Queue             <39>
2020-04-06T08:35:25.256419-05:00 dell-server1 kernel: [155538.083623]   TDH=
, TDT             <0>, <d>
2020-04-06T08:35:25.256420-05:00 dell-server1 kernel: [155538.083623]   nex=
t_to_use          <d>
2020-04-06T08:35:25.256421-05:00 dell-server1 kernel: [155538.083623]   nex=
t_to_clean        <0>
2020-04-06T08:35:25.256421-05:00 dell-server1 kernel: [155538.083623] tx_bu=
ffer_info[next_to_clean]
2020-04-06T08:35:25.256422-05:00 dell-server1 kernel: [155538.083623]   tim=
e_stamp           <1025039c7>
2020-04-06T08:35:25.256422-05:00 dell-server1 kernel: [155538.083623]   jif=
fies              <102503cb8>
2020-04-06T08:35:25.256423-05:00 dell-server1 kernel: [155538.083626] ixgbe=
 0000:19:00.0 eno1: Detected Tx Unit Hang
2020-04-06T08:35:25.256424-05:00 dell-server1 kernel: [155538.083626]   Tx =
Queue             <35>
2020-04-06T08:35:25.256425-05:00 dell-server1 kernel: [155538.083626]   TDH=
, TDT             <0>, <6>
2020-04-06T08:35:25.256425-05:00 dell-server1 kernel: [155538.083626]   nex=
t_to_use          <6>
2020-04-06T08:35:25.256425-05:00 dell-server1 kernel: [155538.083626]   nex=
t_to_clean        <0>
2020-04-06T08:35:25.256439-05:00 dell-server1 kernel: [155538.083626] tx_bu=
ffer_info[next_to_clean]
2020-04-06T08:35:25.256440-05:00 dell-server1 kernel: [155538.083626]   tim=
e_stamp           <1025039e0>
2020-04-06T08:35:25.256441-05:00 dell-server1 kernel: [155538.083626]   jif=
fies              <102503cb8>
2020-04-06T08:35:25.256443-05:00 dell-server1 kernel: [155538.083629] ixgbe=
 0000:19:00.0 eno1: Detected Tx Unit Hang
2020-04-06T08:35:25.256444-05:00 dell-server1 kernel: [155538.083629]   Tx =
Queue             <52>
2020-04-06T08:35:25.256445-05:00 dell-server1 kernel: [155538.083629]   TDH=
, TDT             <0>, <3>
2020-04-06T08:35:25.256445-05:00 dell-server1 kernel: [155538.083629]   nex=
t_to_use          <3>
2020-04-06T08:35:25.256449-05:00 dell-server1 kernel: [155538.083629]   nex=
t_to_clean        <0>
2020-04-06T08:35:25.256450-05:00 dell-server1 kernel: [155538.083629] tx_bu=
ffer_info[next_to_clean]
2020-04-06T08:35:25.256451-05:00 dell-server1 kernel: [155538.083629]   tim=
e_stamp           <102503a08>
2020-04-06T08:35:25.256453-05:00 dell-server1 kernel: [155538.083629]   jif=
fies              <102503cb8>
2020-04-06T08:35:25.256454-05:00 dell-server1 kernel: [155538.083632] ixgbe=
 0000:19:00.0 eno1: Detected Tx Unit Hang
2020-04-06T08:35:25.256456-05:00 dell-server1 kernel: [155538.083632]   Tx =
Queue             <56>
2020-04-06T08:35:25.256458-05:00 dell-server1 kernel: [155538.083632]   TDH=
, TDT             <0>, <4>
2020-04-06T08:35:25.256460-05:00 dell-server1 kernel: [155538.083632]   nex=
t_to_use          <4>
2020-04-06T08:35:25.256461-05:00 dell-server1 kernel: [155538.083632]   nex=
t_to_clean        <0>
2020-04-06T08:35:25.256463-05:00 dell-server1 kernel: [155538.083632] tx_bu=
ffer_info[next_to_clean]
2020-04-06T08:35:25.256464-05:00 dell-server1 kernel: [155538.083632]   tim=
e_stamp           <1025039f0>
2020-04-06T08:35:25.256467-05:00 dell-server1 kernel: [155538.083632]   jif=
fies              <102503cb8>
2020-04-06T08:35:25.256469-05:00 dell-server1 kernel: [155538.083634] ixgbe=
 0000:19:00.0 eno1: Detected Tx Unit Hang
2020-04-06T08:35:25.256470-05:00 dell-server1 kernel: [155538.083634]   Tx =
Queue             <55>
(...and this process repeats itself, even after rmmod'ing ixgbe and modprob=
e'ing it back...)

The reason I say it's a high incidence is that we have about 100 of these N=
ICs and have already seen it on 4 or 5 of them. 3 of them were on 19.0 firm=
ware when it happened but this latest one was on 19.5 firmware when it happ=
ened.

I'm skeptical of this "ECC Err" that triggers it since they're all fairly n=
ew servers and having bad memory on that many NICs is still abnormally high=
. In that same vein, the main system DIMMs don't report any errors or anyth=
ing to indicate that there are multi-bit or even single-bit errors going on=
.

Are there any further diagnostic tools I could use to figure out what's goi=
ng on here? I can't seem to reproduce the issue by sending high packet load=
 at the cards or anything. Or is this a bug that you all are aware of?


Thanks!

-Kevin



________________________________
See http://www.peak6.com/email_disclaimer/ for terms and conditions related=
 to this email

--_000_9B4A1B1917080E46B64F07F2989DADD69B107E30ORSMSX115amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Unfortunately, the &#8220;ECC Error&#8221; bit in th=
e ICR is overloaded and could be caused by other things. Do you have a dmes=
g we can look at? (The whole thing from boot to the error?)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:black">Todd Fujinaka</span><=
/b><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,=
serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;color:black">Softwar=
e Application Engineer</span><span style=3D"color:black"><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;color:black">Data Ce=
nter Group</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;color:black">Intel C=
orporation</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:10.0pt;color:black">todd=
.fujinaka@intel.com</span></u><u><span style=3D"color:black"><o:p></o:p></s=
pan></u></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Intel-wired-lan &lt;intel-wired-lan-bou=
nces@osuosl.org&gt;
<b>On Behalf Of </b>Kevin Newman<br>
<b>Sent:</b> Monday, April 6, 2020 8:22 AM<br>
<b>To:</b> intel-wired-lan@lists.osuosl.org<br>
<b>Subject:</b> [Intel-wired-lan] X550 &#43; ixgbe Reporting &quot;ECC Err&=
quot; With Strange Regularity...<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m seeing a strangely high incidence of the f=
ollowing type of &#8220;ECC error&#8221; on X550 NICs running ixgbe 5.1.0 v=
ia kernel 4.15.0:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.077662-05:00 dell-server1 kernel=
: [155528.916479] ixgbe 0000:19:00.1 eno2: Received ECC Err, initiating res=
et<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.077684-05:00 dell-server1 kernel=
: [155528.916480] ixgbe 0000:19:00.0 eno1: Received ECC Err, initiating res=
et<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.077685-05:00 dell-server1 kernel=
: [155528.916491] ixgbe 0000:19:00.0 eno1: Reset adapter<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.090422-05:00 dell-server1 kernel=
: [155528.930407] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 0 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.090439-05:00 dell-server1 kernel=
: [155528.930572] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 1 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.090440-05:00 dell-server1 kernel=
: [155528.930721] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 2 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.090440-05:00 dell-server1 kernel=
: [155528.930877] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 3 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.090442-05:00 dell-server1 kernel=
: [155528.931032] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 4 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.090443-05:00 dell-server1 kernel=
: [155528.931188] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 5 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.094301-05:00 dell-server1 kernel=
: [155528.933193] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 6 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.094319-05:00 dell-server1 kernel=
: [155528.935148] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 7 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.098055-05:00 dell-server1 kernel=
: [155528.937064] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 8 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.098062-05:00 dell-server1 kernel=
: [155528.938939] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 9 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.101678-05:00 dell-server1 kernel=
: [155528.940816] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 10 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.101685-05:00 dell-server1 kernel=
: [155528.942620] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 11 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.106751-05:00 dell-server1 kernel=
: [155528.944435] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 12 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.106759-05:00 dell-server1 kernel=
: [155528.946149] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 13 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.106760-05:00 dell-server1 kernel=
: [155528.947827] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 14 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.109948-05:00 dell-server1 kernel=
: [155528.949507] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 15 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.109955-05:00 dell-server1 kernel=
: [155528.951112] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 16 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.114513-05:00 dell-server1 kernel=
: [155528.952707] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 17 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.114522-05:00 dell-server1 kernel=
: [155528.954248] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 18 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.114528-05:00 dell-server1 kernel=
: [155528.955757] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 19 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.118763-05:00 dell-server1 kernel=
: [155528.957271] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 20 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.118769-05:00 dell-server1 kernel=
: [155528.958751] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 21 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.118770-05:00 dell-server1 kernel=
: [155528.960153] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 22 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.122679-05:00 dell-server1 kernel=
: [155528.961525] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 23 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.122690-05:00 dell-server1 kernel=
: [155528.962851] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 24 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.122691-05:00 dell-server1 kernel=
: [155528.964160] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 25 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.126155-05:00 dell-server1 kernel=
: [155528.965440] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 26 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.126167-05:00 dell-server1 kernel=
: [155528.966637] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 27 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.126168-05:00 dell-server1 kernel=
: [155528.967767] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 28 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.130187-05:00 dell-server1 kernel=
: [155528.968913] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 29 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.130206-05:00 dell-server1 kernel=
: [155528.969974] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 30 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.130207-05:00 dell-server1 kernel=
: [155528.971011] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 31 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.130208-05:00 dell-server1 kernel=
: [155528.971998] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 32 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.134180-05:00 dell-server1 kernel=
: [155528.972946] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 33 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.134192-05:00 dell-server1 kernel=
: [155528.973828] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 34 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.134193-05:00 dell-server1 kernel=
: [155528.974679] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 35 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.134194-05:00 dell-server1 kernel=
: [155528.975470] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 36 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.134195-05:00 dell-server1 kernel=
: [155528.976227] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 37 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.137630-05:00 dell-server1 kernel=
: [155528.976933] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 38 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.137641-05:00 dell-server1 kernel=
: [155528.977592] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 39 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.137642-05:00 dell-server1 kernel=
: [155528.978215] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 40 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.137643-05:00 dell-server1 kernel=
: [155528.978796] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 41 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.137644-05:00 dell-server1 kernel=
: [155528.979335] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 42 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.137645-05:00 dell-server1 kernel=
: [155528.979830] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 43 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141629-05:00 dell-server1 kernel=
: [155528.980314] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 44 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141640-05:00 dell-server1 kernel=
: [155528.980712] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 45 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141641-05:00 dell-server1 kernel=
: [155528.981079] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 46 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141642-05:00 dell-server1 kernel=
: [155528.981433] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 47 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141649-05:00 dell-server1 kernel=
: [155528.981761] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 48 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141650-05:00 dell-server1 kernel=
: [155528.982083] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 49 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141651-05:00 dell-server1 kernel=
: [155528.982414] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 50 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141652-05:00 dell-server1 kernel=
: [155528.982735] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 51 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141652-05:00 dell-server1 kernel=
: [155528.983061] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 52 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141722-05:00 dell-server1 kernel=
: [155528.983390] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 53 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141738-05:00 dell-server1 kernel=
: [155528.983703] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 54 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141740-05:00 dell-server1 kernel=
: [155528.984032] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 55 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.141748-05:00 dell-server1 kernel=
: [155528.984375] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 56 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.145642-05:00 dell-server1 kernel=
: [155528.984697] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 57 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.145653-05:00 dell-server1 kernel=
: [155528.985012] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 58 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.145654-05:00 dell-server1 kernel=
: [155528.985316] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 59 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.145655-05:00 dell-server1 kernel=
: [155528.985624] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 60 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.145690-05:00 dell-server1 kernel=
: [155528.985936] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 61 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:16.145691-05:00 dell-server1 kernel=
: [155528.986246] ixgbe 0000:19:00.0 eno1: RXDCTL.ENABLE on Rx queue 62 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.037635-05:00 dell-server1 kernel=
: [155529.877028] ixgbe 0000:19:00.1 eno2: Reset adapter<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.037648-05:00 dell-server1 kernel=
: [155529.877044] ixgbe 0000:19:00.0 eno1: speed changed to 0 for port eno1=
<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.049728-05:00 dell-server1 kernel=
: [155529.891566] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 0 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.049734-05:00 dell-server1 kernel=
: [155529.891856] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 1 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.049736-05:00 dell-server1 kernel=
: [155529.892133] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 2 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053617-05:00 dell-server1 kernel=
: [155529.892410] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 3 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053621-05:00 dell-server1 kernel=
: [155529.892665] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 4 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053621-05:00 dell-server1 kernel=
: [155529.892917] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 5 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053622-05:00 dell-server1 kernel=
: [155529.893170] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 6 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053622-05:00 dell-server1 kernel=
: [155529.893420] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 7 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053623-05:00 dell-server1 kernel=
: [155529.893670] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 8 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053625-05:00 dell-server1 kernel=
: [155529.893921] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 9 not =
cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053626-05:00 dell-server1 kernel=
: [155529.894171] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 10 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053626-05:00 dell-server1 kernel=
: [155529.894430] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 11 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053627-05:00 dell-server1 kernel=
: [155529.894688] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 12 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053628-05:00 dell-server1 kernel=
: [155529.894945] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 13 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053629-05:00 dell-server1 kernel=
: [155529.895201] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 14 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053630-05:00 dell-server1 kernel=
: [155529.895458] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 15 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053630-05:00 dell-server1 kernel=
: [155529.895715] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 16 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053700-05:00 dell-server1 kernel=
: [155529.895971] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 17 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.053722-05:00 dell-server1 kernel=
: [155529.896235] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 18 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057692-05:00 dell-server1 kernel=
: [155529.896519] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 19 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057697-05:00 dell-server1 kernel=
: [155529.896775] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 20 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057698-05:00 dell-server1 kernel=
: [155529.897029] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 21 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057699-05:00 dell-server1 kernel=
: [155529.897285] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 22 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057699-05:00 dell-server1 kernel=
: [155529.897540] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 23 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057700-05:00 dell-server1 kernel=
: [155529.897796] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 24 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057701-05:00 dell-server1 kernel=
: [155529.898049] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 25 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057705-05:00 dell-server1 kernel=
: [155529.898309] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 26 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057706-05:00 dell-server1 kernel=
: [155529.898562] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 27 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057708-05:00 dell-server1 kernel=
: [155529.898815] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 28 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057710-05:00 dell-server1 kernel=
: [155529.899069] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 29 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057711-05:00 dell-server1 kernel=
: [155529.899322] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 30 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057713-05:00 dell-server1 kernel=
: [155529.899575] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 31 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057715-05:00 dell-server1 kernel=
: [155529.899828] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 32 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.057716-05:00 dell-server1 kernel=
: [155529.900082] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 33 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061626-05:00 dell-server1 kernel=
: [155529.900350] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 34 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061632-05:00 dell-server1 kernel=
: [155529.900605] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 35 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061633-05:00 dell-server1 kernel=
: [155529.900859] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 36 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061633-05:00 dell-server1 kernel=
: [155529.901114] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 37 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061634-05:00 dell-server1 kernel=
: [155529.901368] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 38 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061635-05:00 dell-server1 kernel=
: [155529.901622] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 39 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061636-05:00 dell-server1 kernel=
: [155529.901876] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 40 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061637-05:00 dell-server1 kernel=
: [155529.902130] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 41 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061641-05:00 dell-server1 kernel=
: [155529.902383] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 42 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061642-05:00 dell-server1 kernel=
: [155529.902636] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 43 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061643-05:00 dell-server1 kernel=
: [155529.902890] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 44 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061643-05:00 dell-server1 kernel=
: [155529.903145] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 45 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061644-05:00 dell-server1 kernel=
: [155529.903383] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 46 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061656-05:00 dell-server1 kernel=
: [155529.903616] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 47 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061658-05:00 dell-server1 kernel=
: [155529.903836] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 48 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.061659-05:00 dell-server1 kernel=
: [155529.904054] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 49 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065643-05:00 dell-server1 kernel=
: [155529.904286] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 50 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065655-05:00 dell-server1 kernel=
: [155529.904510] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 51 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065656-05:00 dell-server1 kernel=
: [155529.904730] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 52 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065661-05:00 dell-server1 kernel=
: [155529.904950] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 53 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065662-05:00 dell-server1 kernel=
: [155529.905170] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 54 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065670-05:00 dell-server1 kernel=
: [155529.905389] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 55 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065671-05:00 dell-server1 kernel=
: [155529.905608] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 56 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065672-05:00 dell-server1 kernel=
: [155529.905827] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 57 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065673-05:00 dell-server1 kernel=
: [155529.906039] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 58 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065674-05:00 dell-server1 kernel=
: [155529.906250] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 59 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065674-05:00 dell-server1 kernel=
: [155529.906462] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 60 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065675-05:00 dell-server1 kernel=
: [155529.906674] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 61 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.065676-05:00 dell-server1 kernel=
: [155529.906885] ixgbe 0000:19:00.1 eno2: RXDCTL.ENABLE on Rx queue 62 not=
 cleared within the polling period<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.965630-05:00 dell-server1 kernel=
: [155530.804204] bond0: link status definitely down for interface eno1, di=
sabling it<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.965648-05:00 dell-server1 kernel=
: [155530.804272] bond0: link status definitely down for interface eno2, di=
sabling it<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:17.965649-05:00 dell-server1 kernel=
: [155530.804274] bond0: now running without any active interface!<o:p></o:=
p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:18.069645-05:00 dell-server1 kernel=
: [155530.908165] bond0: link status definitely down for interface eno2, di=
sabling it<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:22.137624-05:00 dell-server1 kernel=
: [155534.976629] ixgbe 0000:19:00.0 eno1: NIC Link is Up 10 Gbps, Flow Con=
trol: None<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:22.141618-05:00 dell-server1 kernel=
: [155534.979784] bond0: link status definitely up for interface eno1, 1000=
0 Mbps full duplex<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:22.141627-05:00 dell-server1 kernel=
: [155534.979791] bond0: first active interface up!<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:23.005627-05:00 dell-server1 kernel=
: [155535.844845] ixgbe 0000:19:00.1 eno2: NIC Link is Up 10 Gbps, Flow Con=
trol: None<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:23.077611-05:00 dell-server1 kernel=
: [155535.915696] bond0: link status definitely up for interface eno2, 1000=
0 Mbps full duplex<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256404-05:00 dell-server1 kernel=
: [155538.083623] ixgbe 0000:19:00.0 eno1: Detected Tx Unit Hang<o:p></o:p>=
</p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256418-05:00 dell-server1 kernel=
: [155538.083623]&nbsp;&nbsp; Tx Queue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;39&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256419-05:00 dell-server1 kernel=
: [155538.083623]&nbsp;&nbsp; TDH, TDT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;0&gt;, &lt;d&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256420-05:00 dell-server1 kernel=
: [155538.083623]&nbsp;&nbsp; next_to_use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &lt;d&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256421-05:00 dell-server1 kernel=
: [155538.083623]&nbsp;&nbsp; next_to_clean&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &lt;0&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256421-05:00 dell-server1 kernel=
: [155538.083623] tx_buffer_info[next_to_clean]<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256422-05:00 dell-server1 kernel=
: [155538.083623]&nbsp;&nbsp; time_stamp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &lt;1025039c7&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256422-05:00 dell-server1 kernel=
: [155538.083623]&nbsp;&nbsp; jiffies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;102503cb8&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256423-05:00 dell-server1 kernel=
: [155538.083626] ixgbe 0000:19:00.0 eno1: Detected Tx Unit Hang<o:p></o:p>=
</p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256424-05:00 dell-server1 kernel=
: [155538.083626]&nbsp;&nbsp; Tx Queue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;35&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256425-05:00 dell-server1 kernel=
: [155538.083626]&nbsp;&nbsp; TDH, TDT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;0&gt;, &lt;6&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256425-05:00 dell-server1 kernel=
: [155538.083626]&nbsp;&nbsp; next_to_use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &lt;6&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256425-05:00 dell-server1 kernel=
: [155538.083626]&nbsp;&nbsp; next_to_clean&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &lt;0&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256439-05:00 dell-server1 kernel=
: [155538.083626] tx_buffer_info[next_to_clean]<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256440-05:00 dell-server1 kernel=
: [155538.083626]&nbsp;&nbsp; time_stamp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &lt;1025039e0&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256441-05:00 dell-server1 kernel=
: [155538.083626]&nbsp;&nbsp; jiffies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;102503cb8&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256443-05:00 dell-server1 kernel=
: [155538.083629] ixgbe 0000:19:00.0 eno1: Detected Tx Unit Hang<o:p></o:p>=
</p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256444-05:00 dell-server1 kernel=
: [155538.083629]&nbsp;&nbsp; Tx Queue &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;52&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256445-05:00 dell-server1 kernel=
: [155538.083629]&nbsp;&nbsp; TDH, TDT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;0&gt;, &lt;3&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256445-05:00 dell-server1 kernel=
: [155538.083629]&nbsp;&nbsp; next_to_use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &lt;3&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256449-05:00 dell-server1 kernel=
: [155538.083629]&nbsp;&nbsp; next_to_clean&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &lt;0&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256450-05:00 dell-server1 kernel=
: [155538.083629] tx_buffer_info[next_to_clean]<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256451-05:00 dell-server1 kernel=
: [155538.083629]&nbsp;&nbsp; time_stamp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &lt;102503a08&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256453-05:00 dell-server1 kernel=
: [155538.083629]&nbsp;&nbsp; jiffies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;102503cb8&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256454-05:00 dell-server1 kernel=
: [155538.083632] ixgbe 0000:19:00.0 eno1: Detected Tx Unit Hang<o:p></o:p>=
</p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256456-05:00 dell-server1 kernel=
: [155538.083632]&nbsp;&nbsp; Tx Queue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;56&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256458-05:00 dell-server1 kernel=
: [155538.083632]&nbsp;&nbsp; TDH, TDT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;0&gt;, &lt;4&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256460-05:00 dell-server1 kernel=
: [155538.083632]&nbsp;&nbsp; next_to_use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &lt;4&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256461-05:00 dell-server1 kernel=
: [155538.083632]&nbsp;&nbsp; next_to_clean&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &lt;0&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256463-05:00 dell-server1 kernel=
: [155538.083632] tx_buffer_info[next_to_clean]<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256464-05:00 dell-server1 kernel=
: [155538.083632]&nbsp;&nbsp; time_stamp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &lt;1025039f0&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256467-05:00 dell-server1 kernel=
: [155538.083632]&nbsp;&nbsp; jiffies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;102503cb8&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256469-05:00 dell-server1 kernel=
: [155538.083634] ixgbe 0000:19:00.0 eno1: Detected Tx Unit Hang<o:p></o:p>=
</p>
<p class=3D"MsoNormal">2020-04-06T08:35:25.256470-05:00 dell-server1 kernel=
: [155538.083634]&nbsp;&nbsp; Tx Queue&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;55&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">(&#8230;and this process repeats itself, even after =
rmmod&#8217;ing ixgbe and modprobe&#8217;ing it back&#8230;)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The reason I say it&#8217;s a high incidence is that=
 we have about 100 of these NICs and have already seen it on 4 or 5 of them=
. 3 of them were on 19.0 firmware when it happened but this latest one was =
on 19.5 firmware when it happened.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m skeptical of this &#8220;ECC Err&#8221; th=
at triggers it since they&#8217;re all fairly new servers and having bad me=
mory on that many NICs is still abnormally high. In that same vein, the mai=
n system DIMMs don&#8217;t report any errors or anything to indicate
 that there are multi-bit or even single-bit errors going on.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Are there any further diagnostic tools I could use t=
o figure out what&#8217;s going on here? I can&#8217;t seem to reproduce th=
e issue by sending high packet load at the cards or anything. Or is this a =
bug that you all are aware of?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Kevin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#20365A"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
<p class=3D"MsoNormal">See <a href=3D"http://www.peak6.com/email_disclaimer=
/">http://www.peak6.com/email_disclaimer/</a> for terms and conditions rela=
ted to this email<o:p></o:p></p>
</div>
</body>
</html>

--_000_9B4A1B1917080E46B64F07F2989DADD69B107E30ORSMSX115amrcor_--

--===============1588483758050761241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1588483758050761241==--
