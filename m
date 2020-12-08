Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDC32D2939
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 11:51:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDD4D85B55;
	Tue,  8 Dec 2020 10:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JfXTnIltEI9I; Tue,  8 Dec 2020 10:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 890E485C20;
	Tue,  8 Dec 2020 10:51:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B19BC1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 10:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD0E685B6F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 10:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DaXxE615DZ-6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 10:51:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8554085B55
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 10:51:41 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af449.dynamic.kabel-deutschland.de
 [95.90.244.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 36F3020647B77;
 Tue,  8 Dec 2020 11:51:38 +0100 (CET)
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <3dcb78c0-b4cf-8686-20d6-3cd766e7fb1a@molgen.mpg.de>
 <20201208154119.106511-1-piotr.kwapulinski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <16512022-0b85-5b60-6767-f9b9b6e9cb9f@molgen.mpg.de>
Date: Tue, 8 Dec 2020 11:51:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201208154119.106511-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v8] i40e: add support for PTP external
 synchronization clock
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 richardcochran@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQaW90ciwKCgpBbSAwOC4xMi4yMCB1bSAxNjo0MSBzY2hyaWViIFBpb3RyIEt3YXB1bGlu
c2tpOgoKW+KApl0KCllvdXIgcGF0Y2ggaXMgZnJvbSB0aGUgZnV0dXJlLiBPciBpcyBpdCB5b3Vy
IHN0cmF0ZWd5IHRvIGtlZXAgaXQgYXQgdGhlIAp0b3Agb2YgdGhlIGluYm94IG9mIHRoZSByZWNp
cGllbnRzLiA7LSkKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
