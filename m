Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBA8D35F9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 02:29:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F34B87FCD;
	Fri, 11 Oct 2019 00:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oWqhHld7XylJ; Fri, 11 Oct 2019 00:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BFE787FE8;
	Fri, 11 Oct 2019 00:29:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8A521BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D57598876A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2-dl+fMcnuD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 00:29:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36D4F88744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:29:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 17:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="277958063"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga001.jf.intel.com with ESMTP; 10 Oct 2019 17:29:27 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 17:29:27 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.216]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 17:29:26 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Josh Hunt <johunt@akamai.com>, Alexander Duyck
 <alexander.duyck@gmail.com>, "Bowers, AndrewX" <andrewx.bowers@intel.com>
Thread-Topic: [PATCH 0/3] igb, ixgbe, i40e UDP segmentation offload support
Thread-Index: AQHVf7AvEuwAIS+ExU2JBy/0UpLthKdU2m0AgAArTAD//428AIAAd+iA//+K9NA=
Date: Fri, 11 Oct 2019 00:29:26 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9714C792@ORSMSX103.amr.corp.intel.com>
References: <1570658777-13459-1-git-send-email-johunt@akamai.com>
 <CAKgT0UdBPYRnwAuOGhCBAJSRhdHcnw28Tznr0GPAtqe-JWFjTQ@mail.gmail.com>
 <cd8ac880-61fe-b064-6271-993e8c6eee65@akamai.com>
 <CAKgT0UfXgzur2TGv1dNw0PQXAP0C=bNoJY6gnthASeQrHr66AA@mail.gmail.com>
 <0e0e706c-4ce9-c27a-af55-339b4eb6d524@akamai.com>
 <309B89C4C689E141A5FF6A0C5FB2118B9714C727@ORSMSX103.amr.corp.intel.com>
 <71a74c86-18b6-5c6a-8663-e558c43af682@akamai.com>
In-Reply-To: <71a74c86-18b6-5c6a-8663-e558c43af682@akamai.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjEzY2JiODEtYjllOC00ZDY3LWFlN2YtODFlNjQzYWRmMDk4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS3l0SDJKS2RwNzhWcVdnYXF3VXJKbzVCdzVNRVNqbjV5WjVHV1BXbnRSYUpVSzg5OUlHaklta0RWc3JWM1VjeSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 0/3] igb, ixgbe,
 i40e UDP segmentation offload support
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
Cc: Netdev <netdev@vger.kernel.org>, Willem de Bruijn <willemb@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Josh Hunt [mailto:johunt@akamai.com]
> Sent: Thursday, October 10, 2019 5:28 PM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; Alexander Duyck
> <alexander.duyck@gmail.com>; Bowers, AndrewX
> <andrewx.bowers@intel.com>
> Cc: Netdev <netdev@vger.kernel.org>; Willem de Bruijn
> <willemb@google.com>; intel-wired-lan <intel-wired-lan@lists.osuosl.org>
> Subject: Re: [PATCH 0/3] igb, ixgbe, i40e UDP segmentation offload support
> 
> On 10/10/19 5:21 PM, Brown, Aaron F wrote:
> > Adding Andrew as he is most likely going to be testing this patch.
> >
> > Unfortunately my mail server flags attached scripts as potential threats and
> strips them out.  Can you resent it as an tar file?  I don't believe it's smart
> enough to open up tar and flag it as a script.
> >
> 
> Hi Aaron
> 
> It looks like the netdev archive has the file. Can you try grabbing it
> from here?

Yes, I can.  Thanks.

> 
> https://lore.kernel.org/netdev/0e0e706c-4ce9-c27a-af55-
> 339b4eb6d524@akamai.com/2-udpgso_bench.sh
> 
> If that doesn't work I can try your tar workaround.
> 
> Thanks
> Josh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
