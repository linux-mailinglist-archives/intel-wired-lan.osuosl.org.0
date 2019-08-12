Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 512118A99D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 23:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A526385E7C;
	Mon, 12 Aug 2019 21:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMu7k3Pgc8Ru; Mon, 12 Aug 2019 21:48:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D098885E85;
	Mon, 12 Aug 2019 21:48:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96FD71BF29D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 21:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F946826AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 21:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlO1DZYZBaMC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2019 21:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD19F82108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 21:47:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 14:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,379,1559545200"; d="scan'208";a="183690376"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Aug 2019 14:47:57 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 12 Aug 2019 14:47:57 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.6]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.92]) with mapi id 14.03.0439.000;
 Mon, 12 Aug 2019 14:47:57 -0700
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>, Ben Greear
 <greearb@candelatech.com>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs
Thread-Index: AQHVUVOyx3zO1ieLdE+E8S0RaVPJ4ab4COpAgAADQ8A=
Date: Mon, 12 Aug 2019 21:47:56 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69AFF9A2A@ORSMSX115.amr.corp.intel.com>
References: <9e598973-0bca-eda1-c5df-9f3ef16bf700@candelatech.com>
 <9B4A1B1917080E46B64F07F2989DADD69AFF99F3@ORSMSX115.amr.corp.intel.com>
In-Reply-To: <9B4A1B1917080E46B64F07F2989DADD69AFF99F3@ORSMSX115.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDM4ZjJkZjUtNzBiOC00OTgyLTljZWItMzI2ZmYxY2NkZjRlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMnlcL0FvN20xSVBXdU5UVUdZSkNIQXNvRXdyUE5cL0lGNFBaK2R6OEgrc2hMNXY0WHdmVERPaHp4U0VUdWwrSTNZIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs
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

Oh, and someone gave me the standard "check the bios settings" answer too, and enable memory over 8GB. Probably more of a desktop setting than a server setting, but I don't know what system you're running.

Todd Fujinaka
Software Application Engineer
Datacenter Engineering Group
Intel Corporation
todd.fujinaka@intel.com


-----Original Message-----
From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of Fujinaka, Todd
Sent: Monday, August 12, 2019 2:38 PM
To: Ben Greear <greearb@candelatech.com>; intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: Re: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs

We probably need a lot of continguous memory. Offhand, I don't know, but with >1500 queue pairs, we need a lot of memory in general.

I don't think we've had any more than 8 NICs in a system, and when I asked some people how many NICs we can use they gave me a more practical answer: 1 less than the config that makes the system unusable.

I don' t think there is a catch-all answer, so the questions we'd have are:
1) how much memory do you have
2) how many cards do you have in the system
3) how many option roms are in the cards in the system
4) you're not running a 32-bit OS, are you?

Todd Fujinaka
Software Application Engineer
Datacenter Engineering Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of Ben Greear
Sent: Monday, August 12, 2019 2:15 PM
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs

Hello,

I have a user trying to boot up our 4.20+ kernel with 6 4-port 10G NICs in it.

dmesg is full of cma_alloc errors.  I increased CMA space to 32MB, but still no luck.

Any idea how much CMA memory is needed for this config?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
