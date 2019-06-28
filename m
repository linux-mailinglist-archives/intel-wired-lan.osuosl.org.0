Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28454591E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 05:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4155886101;
	Fri, 28 Jun 2019 03:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oP+pD0z4J2SZ; Fri, 28 Jun 2019 03:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BA178754B;
	Fri, 28 Jun 2019 03:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 910DA1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C6918435A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LxYrHWyC9boL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 03:20:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E377584320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:20:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 20:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="170632769"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jun 2019 20:20:30 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Jun 2019 20:20:30 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.13]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 20:20:29 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] e1000e: PCIm function state support
Thread-Index: AQHVK2Pf/M6+0xA0iUqpIGEwR7xctqas8B0AgAN50EA=
Date: Fri, 28 Jun 2019 03:20:29 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B5493@ORSMSX103.amr.corp.intel.com>
References: <20190625143911.37284-1-vitaly.lifshits@intel.com>
 <e54d6835-84bc-17bb-de59-d87c53bd5bb4@intel.com>
In-Reply-To: <e54d6835-84bc-17bb-de59-d87c53bd5bb4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjEyYWIwZjEtMGQ2OS00MzYzLThjOGYtNGRhZWNhZWViNmY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaVArUTF6akpDTVpiZVwvTU92MTMxRHhXS2RcLyt6WHYwbndVZkNGREVsbG93Uk0zVHpORFlFSDlhSSszOXRiWVA4In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: PCIm function state support
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

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of
> Neftin, Sasha
> Sent: Tuesday, June 25, 2019 8:15 AM
> To: Lifshits, Vitaly <vitaly.lifshits@intel.com>; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: PCIm function state support
> 
> On 6/25/2019 17:39, Vitaly Lifshits wrote:
> > Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime
> > 			pm for platform with D0i3")
> > When disconnecting the cable and reconnecting it the NIC
> > enters DMoff state. This caused wrong link indication
> > and duplex mismatch. This bug is described in:
> > https://bugzilla.redhat.com/show_bug.cgi?id=1689436
> >
> > Checking PCIm function state and performing PHY reset after a
> > timeout in watchdog task solves this issue.
> >
> > Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > ---
> >
> > V2: Fixed typos in commit massage
> > V3: Fixed minor typo
> > ---
> >   drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
> >   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++-
> >   2 files changed, 20 insertions(+), 1 deletion(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
