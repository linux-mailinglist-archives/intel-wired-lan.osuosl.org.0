Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AF7221BFD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 07:33:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CE148AD95;
	Thu, 16 Jul 2020 05:33:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N6esWfG9AJYC; Thu, 16 Jul 2020 05:33:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F4B78AD97;
	Thu, 16 Jul 2020 05:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73C141BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 05:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6793D88CE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 05:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLjEtXmZPETL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 05:33:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx24.baidu.com [111.206.215.185])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7037588CE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 05:33:46 +0000 (UTC)
Received: from BJHW-Mail-Ex13.internal.baidu.com (unknown [10.127.64.36])
 by Forcepoint Email with ESMTPS id 0ED66205AF967BF4EE28;
 Thu, 16 Jul 2020 13:33:38 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Thu, 16 Jul 2020 13:33:38 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Thu, 16 Jul 2020 13:33:31 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Thread-Topic: [Intel-wired-lan] [bug ?] i40e_rx_buffer_flip should not be
 called for redirected xsk copy mode
Thread-Index: AdZQR0EbXNQd8xyJRvWOWMhzMsvatQC0jCIAABEVlZABnAtukABGg5QAABJ4q9A=
Date: Thu, 16 Jul 2020 05:33:31 +0000
Message-ID: <8c3ad8e1f3484d79a09b77170abb5d3f@baidu.com>
References: <2863b548da1d4c369bbd9d6ceb337a24@baidu.com>
 <CAJ8uoz08pyWR43K_zhp6PsDLi0KE=y_4QTs-a7kBA-jkRQksaw@mail.gmail.com>
 <7aac955840df438e99e6681b0ae5b5b8@baidu.com>
 <CAJ8uoz3Qrh7gTtsOPiz=Z_vHEk+ZoC35cEZ1audDNu5G5pogZg@mail.gmail.com>
In-Reply-To: <CAJ8uoz3Qrh7gTtsOPiz=Z_vHEk+ZoC35cEZ1audDNu5G5pogZg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.197.251]
x-baidu-bdmsfe-datecheck: 1_BJHW-Mail-Ex13_2020-07-16 13:33:38:176
MIME-Version: 1.0
Subject: [Intel-wired-lan] =?utf-8?b?562U5aSNOiAgW2J1ZyA/XSBpNDBlX3J4X2J1?=
 =?utf-8?q?ffer=5Fflip_should_not_be_called_for_redirected_xsk_copy_mode?=
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > >
> > > > Thank you RongQing for reporting this. I will take a look at it
> > > > and produce a patch.
> > > >
> > > > /Magnus
> > >
> >
> > Ping
> 
> My apologies RongQing, but it is taking longer than expected due to key people
> being on vacation during this summer period. We are debating weather the
> simple fix you provided covers all cases.
> Hopefully it does, but we just want to make sure. The fix is needed in four
> drivers: the ones you mention plus ice.
> 
> /Magnus

If my RFC patch is suitable for this bug, I will resend it.

should I send four patches for four drivers, or should I send one patch for them?


Thanks

-Li


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
