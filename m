Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7ED4650C4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 16:04:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5CB3408D0;
	Wed,  1 Dec 2021 15:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7v20vl_xOVqH; Wed,  1 Dec 2021 15:04:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF1E14040B;
	Wed,  1 Dec 2021 15:04:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C5031BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 03:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04D4B408FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 03:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aYUcNnn0OBKO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 03:03:51 +0000 (UTC)
X-Greylist: delayed 00:06:37 by SQLgrey-1.8.0
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 263E6408F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 03:03:50 +0000 (UTC)
X-SpamFilter-By: ArmorX SpamTrap 5.73 with qID 1B12v1QH1016468,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36503.realtek.com.tw[172.21.6.25])
 by rtits2.realtek.com.tw (8.15.2/2.71/5.88) with ESMTPS id 1B12v1QH1016468
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 1 Dec 2021 10:57:01 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTEXH36503.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 10:57:01 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 10:57:01 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::e095:6756:b2cf:3baa]) by
 RTEXMBS04.realtek.com.tw ([fe80::e095:6756:b2cf:3baa%5]) with mapi id
 15.01.2308.015; Wed, 1 Dec 2021 10:57:01 +0800
From: Hayes Wang <hayeswang@realtek.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [RFC PATCH 0/4] r8169: support dash
Thread-Index: AQHX5QnDLn6ABzzmpEe3dMh4ox9UtKwaRZuAgAKrunA=
Date: Wed, 1 Dec 2021 02:57:00 +0000
Message-ID: <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
 <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.177.203]
x-kse-serverinfo: RTEXDAG02.realtek.com.tw, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: =?us-ascii?Q?Clean,_bases:_2021/11/30_=3F=3F_11:16:00?=
x-kse-bulkmessagesfiltering-scan-result: protection disabled
MIME-Version: 1.0
X-KSE-ServerInfo: RTEXH36503.realtek.com.tw, 9
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
X-Mailman-Approved-At: Wed, 01 Dec 2021 15:04:30 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/4] r8169: support dash
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 nic_swsd <nic_swsd@realtek.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org>
> Sent: Tuesday, November 30, 2021 2:00 AM
> Subject: Re: [RFC PATCH 0/4] r8169: support dash
> 
> On Mon, 29 Nov 2021 18:13:11 +0800 Hayes Wang wrote:
> > These patches are used to support dash for RTL8111EP and
> > RTL8111FP(RTL81117).
> 
> If I understand correctly DASH is a DMTF standard for remote control.
> 
> Since it's a standard I think we should have a common way of
> configuring it across drivers.

Excuse me. I am not familiar with it.
What document or sample code could I start?

> Is enable/disable the only configuration
> that we will need?

I don't think I could answer it before I understand the above way
you mentioned.

> We don't use sysfs too much these days, can we move the knob to
> devlink, please? (If we only need an on/off switch generic devlink param
> should be fine).

Thanks. I would study devlink.

Best Regards,
Hayes

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
