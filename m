Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3C43C7167
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 15:45:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26CA460871;
	Tue, 13 Jul 2021 13:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ukTpXwYe-xTU; Tue, 13 Jul 2021 13:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 420E260839;
	Tue, 13 Jul 2021 13:45:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 303C61BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 13:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27F2782ACA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 13:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UzG1j5q9Dofu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jul 2021 13:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F5ED827A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 13:45:24 +0000 (UTC)
Received: from [192.168.1.18] (unknown [222.129.38.167])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 08DE1405E6; 
 Tue, 13 Jul 2021 13:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626183922;
 bh=XFchaAmc9L6ZJAbgvoritLLDGb3RUOvHfIzleghA+mI=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type;
 b=habbnrJBNcH29BI7CQh8bNqPF/4LUngU9TvbzFiOCYIGJuBzIWvsI16wSn29vO9/o
 2PMGpzdlTGZLSp8joo0aiJkCC4tHsoe4gzSPN8fxq39b0ap1od9qrZUUTBeO+NlhvB
 bAFsl6roxPoTV18hoIdUyjCeu9n7bTq3mNve10yqVUfIps5vjT7XNrjLDxShl20w2r
 Qg6V+AN9o438AqKbrJldHbtRBTlvXWimys19reH0SEsxDpG2MsYbJ8EEKOHs9Y63OU
 htdhkg538ytmoern4qT72H8mtHrTgvN7g5CUFUnHIheh9w4FsihIEdt1lEk1EDrMh4
 IOJdkDFyleHTw==
To: "Neftin, Sasha" <sasha.neftin@intel.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Edri, Michael" <michael.edri@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Shalev, Avi" <avi.shalev@intel.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210702045120.22855-2-aaron.ma@canonical.com>
 <613e2106-940a-49ed-6621-0bb00bc7dca5@intel.com>
 <ad3d2d01-1d0a-8887-b057-e6a9531a05f4@canonical.com>
 <f9f9408e-9ba3-7ed9-acc2-1c71913b04f0@intel.com>
 <96106dfe-9844-1d9d-d865-619d78a0d150@canonical.com>
 <47117935-10d6-98e0-5894-ba104912ce25@intel.com>
From: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <1a539d4d-10b4-5b9b-31e7-6aec57120356@canonical.com>
Date: Tue, 13 Jul 2021 21:45:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <47117935-10d6-98e0-5894-ba104912ce25@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: wait for the MAC copy when
 enabled MAC passthrough
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDcvOC8yMSAxMjoyNCBQTSwgTmVmdGluLCBTYXNoYSB3cm90ZToKPiBJwqB3b3VsZMKgdG/C
oGxpa2XCoHN1Z2dlc3TCoGNoZWNraW5nwqB0aGXCoGZvbGxvd2luZ8KgZGlyZWN0aW9uOgo+IDEu
IHByaW5jaXBhbCBxdWVzdGlvbjogY2FuIHdlIHVwZGF0ZSB0aGUgbmV0ZGV2IGRldmljZSBhZGRy
ZXNzIGFmdGVyIGl0IGlzwqBhbHJlYWR5wqBzZXTCoGR1cmluZ8KgcHJvYmU/wqBJwqBtZWFudMKg
cGVyZm9ybcKgYW5vdGhlcjoKPiBtZW1jcHkobmV0ZGV2LT5kZXZfYWRkcizCoGh3LT5tYWMuYWRk
cizCoG5ldGRldi0+YWRkcl9sZW4pwqB1cMKgdG/CoGRlbWFuZAoKVXBkYXRpbmcgTUFDIGFkZHIg
bWF5IHdvcmsuCkV2ZW4gYXQgdGhlIGVuZCBvZiBwcm9iZSwgaXQgc3RpbGwgZ290IHRoZSB3cm9u
ZyBNQUMgYWRkcmVzcywgZGVsYXkgaXMgc3RpbGwgbmVlZGVkLgoKQWFyb24KCj4gMi4gV2UgbmVl
ZCB0byB3b3JrIHdpdGggSW50ZWwncyBmaXJtd2FyZSBlbmdpbmVlci9ncm91cCBhbmQgZGVmaW5l
IHRoZSBtZXNzYWdlL2V2ZW50OsKgTUFDwqBhZGRyZXNzaXPCoGNoYW5nZWTCoGFuZMKgc2hvdWxk
wqBiZcKgdXBkYXRlZC4KPiBBcyBJIGtub3cgTU5HIEZXIHVwZGF0ZXMgc2hhZG93IHJlZ2lzdGVy
cy4gU2luY2Ugc2hhZG93IHJlZ2lzdGVycyBhcmUgZGlmZmVyZW50IGZyb20gUkFML1JBSCByZWdp
c3RlcnMgLSBpdCBjb3VsZCBiZSBhIG5vdGlmaWNhdGlvbiB0aGF0IHRoZSBNQUPCoGFkZHJlc3PC
oGNoYW5nZWQuwqBMZXQnc8KgY2hlY2vCoGl0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
