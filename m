Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FFF2FED31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 15:45:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7F4D2079D;
	Thu, 21 Jan 2021 14:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5S4q2aW5a4mr; Thu, 21 Jan 2021 14:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09C3721519;
	Thu, 21 Jan 2021 14:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C349F1BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB2E32079D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZpuhBV4z+NC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 14:44:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 421E22047C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:44:58 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea6e.dynamic.kabel-deutschland.de
 [95.90.234.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3AF9E20645D7C;
 Thu, 21 Jan 2021 15:44:55 +0100 (CET)
To: Eryk Rybak <eryk.roch.rybak@intel.com>
References: <20210121160605.86278-1-eryk.roch.rybak@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <7af14558-2eee-4deb-7ab2-92ba4f1c97f1@molgen.mpg.de>
Date: Thu, 21 Jan 2021 15:44:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210121160605.86278-1-eryk.roch.rybak@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Fix asynchronous tasks
 during driver remove
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
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBFcnlrLAoKClRoZSBkYXRlIG9mIHlvdXIgbWVzc2FnZSBoYXMgYWdhaW4oPykgdGhlIGlu
Y29ycmVjdCB0aW1lIGFuZCBpcyBmcm9tIHRoZSAKZnV0dXJlLCBzbyBpcyBnb2luZyB0byBzdGF5
IGF0IHRoZSB0b3Agb2YgcGVvcGxl4oCZcyBpbmJveGVzIHNvcnRlZCBhZnRlciAKdGltZS4KCgpL
aW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
