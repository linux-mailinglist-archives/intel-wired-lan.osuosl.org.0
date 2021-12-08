Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D31E446D655
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 16:01:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C15D83E9B;
	Wed,  8 Dec 2021 15:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTETrjThKqXf; Wed,  8 Dec 2021 15:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EC0983E7D;
	Wed,  8 Dec 2021 15:01:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 514F21BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 07:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BAA860EE8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 07:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uJxAfZ1dEu_m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 07:53:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9A9560635
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 07:53:47 +0000 (UTC)
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.73 with qID 1B87rTS21030330,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
 by rtits2.realtek.com.tw (8.15.2/2.71/5.88) with ESMTPS id 1B87rTS21030330
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 8 Dec 2021 15:53:29 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Wed, 8 Dec 2021 15:53:29 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.15; Wed, 8 Dec 2021 15:53:28 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::65a3:1e23:d911:4b01]) by
 RTEXMBS04.realtek.com.tw ([fe80::65a3:1e23:d911:4b01%5]) with mapi id
 15.01.2308.020; Wed, 8 Dec 2021 15:53:28 +0800
From: Hayes Wang <hayeswang@realtek.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [RFC PATCH 0/4] r8169: support dash
Thread-Index: AQHX5QnDLn6ABzzmpEe3dMh4ox9UtKwaRZuAgAKrunD//4AsAIAD8ppQ///5wgCABkeCEIAA4HSAgADAA+A=
Date: Wed, 8 Dec 2021 07:53:28 +0000
Message-ID: <67d7f6f7b6e84af692bc0a7c4c48bb84@realtek.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
 <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
 <20211130190926.7c1d735d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d3a1e1c469844aa697d6d315c9549eda@realtek.com>
 <20211203070410.1b4abc4d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <e2fd429a489545e7a521283600cb7caa@realtek.com>
 <20211207202101.3a3a93b0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211207202101.3a3a93b0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.177.203]
x-kse-serverinfo: RTEXMBS02.realtek.com.tw, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: =?us-ascii?Q?Clean,_bases:_2021/12/8_=3F=3F_06:28:00?=
x-kse-bulkmessagesfiltering-scan-result: protection disabled
MIME-Version: 1.0
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
X-Mailman-Approved-At: Wed, 08 Dec 2021 15:01:18 +0000
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
> Sent: Wednesday, December 8, 2021 12:21 PM
[...]
> > Could devlink param be used for more than 4 bytes settings?
> > At least the IPv6 address is longer.
> 
> We can add a new devlink sub-command and driver callback in that case.

Excuse me. Do you mean someone will add it? Then, I could use it.
Or, I have to add it.

> > Besides, we need the information of SMBIOS which could
> > be 4K ~ 8K bytes data. Is there any way we could transmit
> > it to firmware?
> 
> Is structure of that data defined by some DMTF standard?
Yes.

Best Regards,
Hayes

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
