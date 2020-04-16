Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B45731ACD58
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2020 18:16:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B12A861DE;
	Thu, 16 Apr 2020 16:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKOWSlbylgaq; Thu, 16 Apr 2020 16:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 444A18621D;
	Thu, 16 Apr 2020 16:16:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94D611BF301
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 16:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D4492264C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 16:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fCItvENb4JJv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2020 16:16:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 6955E2262F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 16:16:29 +0000 (UTC)
IronPort-SDR: r8oeS/inA7xNQUtePY3nKXwX7MDOnGGVVoKuutjnBB9to9A30+BNKzXPPHQCa7niN5m4oa+X14
 kdxx6LJfL17A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 09:16:28 -0700
IronPort-SDR: jrGFkdxkzsYjAj0KfDKnBw5AvjovutPqsCp8OQ2cxjTXFoRVRsCm8GX7KtL5aDVeGabOvrM4km
 Jl9adQ5CoO5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,391,1580803200"; d="scan'208";a="427889123"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga005.jf.intel.com with ESMTP; 16 Apr 2020 09:16:28 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Apr 2020 09:16:27 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.76]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.248]) with mapi id 14.03.0439.000;
 Thu, 16 Apr 2020 09:16:27 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Andrew Melnichenko <andrew@daynix.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, "Neftin, Sasha" <sasha.neftin@intel.com>
Thread-Topic: Pls provide some advice - e1000e Linux link down
Thread-Index: AQHWEDeFXwmLRSXRp0C6JleDoG3vl6h785IA
Date: Thu, 16 Apr 2020 16:16:26 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
References: <CABcq3pESeM2aF=HP-j4-iu2fwaxF7+mr65zTgFaBK8prmu+srw@mail.gmail.com>
In-Reply-To: <CABcq3pESeM2aF=HP-j4-iu2fwaxF7+mr65zTgFaBK8prmu+srw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Pls provide some advice - e1000e Linux link
 down
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

> From: Andrew Melnichenko <andrew@daynix.com> 
> Sent: Saturday, April 11, 2020 12:56
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Subject: Pls provide some advice - e1000e Linux link down
>
> Yo,
> I'm a humble linux developer, currently I'm researching the issue with e1000e driver that can't handle "link down" on Linux guest(https://bugzilla.redhat.com/show_bug.cgi?id=1707441).
> For now I've found that qemu can't raise LSC interrupts. But, on Windows guests the issue doesn't reproduce.
> I've researched spec and the driver and for now, my main suspicion is still the issue in qemu and I have few hacks for "fixing".
> But because on Windows guests that issue wasn't reproduced and I don't have a "real" device - I have a question:
> Does "real" e1000e with Linux driver detect cable removing? Should I look more the driver?
> Currently I have one hack for the driver that would "fix" the issue(small differences in interrupt clearing).

Adding the e1000e developers and the Intel Wired LAN mailing list...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
