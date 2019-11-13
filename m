Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D8FFAEF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2019 11:51:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A0D886406;
	Wed, 13 Nov 2019 10:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34ue3DQOMIoY; Wed, 13 Nov 2019 10:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2BA286460;
	Wed, 13 Nov 2019 10:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E4BD1BF358
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 10:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A55385D8D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 10:51:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X1vibDM9NIIC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2019 10:51:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 781E485D3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 10:51:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 02:51:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="287842269"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga001.jf.intel.com with ESMTP; 13 Nov 2019 02:51:06 -0800
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 13 Nov 2019 10:51:05 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.40]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.227]) with mapi id 14.03.0439.000;
 Wed, 13 Nov 2019 10:51:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [e1000-patches] [PATCH] igb: read flash with
 iomem=strict
Thread-Index: AdWZWSjrQqOLFIcHSR+WSfDHQRCkZgAMwJ8AAAFjZIAAH5e2IA==
Date: Wed, 13 Nov 2019 10:51:04 +0000
Message-ID: <0EF347314CF65544BA015993979A29CDB4EDF0D2@IRSMSX102.ger.corp.intel.com>
References: <0EF347314CF65544BA015993979A29CDB4ED9024@IRSMSX102.ger.corp.intel.com>
 <498edf36e634b9590fd7f58fa7febde226bb3e6e.camel@intel.com>
 <20191112114249.00002280@intel.com>
In-Reply-To: <20191112114249.00002280@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTA1YmMwOGYtN2UxYy00NmNjLTkwNTMtOWFmOWQzZjQwMzViIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT2h6Smh0TzlXS0dKRzZOWUthWnZ2dU1MTTZRbU5PenBBSnB0cURLSkZkK2QzM1ZydGRpUXNNUVE0RUQzMDdmdyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [e1000-patches] [PATCH] igb: read flash with
 iomem=strict
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
Cc: "Ludkiewicz, Adam" <adam.ludkiewicz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Jesse Brandeburg <jesse.brandeburg@intel.com> 
Sent: Tuesday, November 12, 2019 8:45 PM
To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Michael, Alice <alice.michael@intel.com>; intel-wired-lan@lists.osuosl.org; Ludkiewicz, Adam <adam.ludkiewicz@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [e1000-patches] [PATCH] igb: read flash with iomem=strict

On Tue, 12 Nov 2019 11:05:38 -0800 Jeff wrote:
> On Tue, 2019-11-12 at 13:03 +0000, Loktionov, Aleksandr wrote:
> > When Secure Boot is enabled access to the /dev/mem is forbidden for 
> > user- space applications and clients are reporting inability to use 
> > tools in Secure Boot Mode. The way to perform NVM update is to use igb driver.
> > Currently 1G Linux Base Driver has API which allows only EEPROM access.
> > There is a need to extend IOCTL API to allow NVM and registers access.
> > These defines are necessary for NVM access functions.
> > 
> > Signed-off-by: Adam Ludkiewicz <adam.ludkiewicz@intel.com>
> > ---
> 
> This patch only adds defines and macros which are not being used in 
> the driver currently.  It appears you are missing the code to actually 
> use these defines.  Your missing the changes that Adam made to 
> igb_ethtool.c, which are currently being reviewed internally.
> 
> Since this is an incomplete patch, I will drop it from the queue and 
> will await a v2 of the patch that has the complete changes needed in the driver.

Not only that, but this is the same code that was just rejected for the ice driver. I think we should NOT be trying to push this upstream, knowing that it will likely be rejected.

But it's almost the same code tat was already accepted and upstreamed for ixbge.

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
