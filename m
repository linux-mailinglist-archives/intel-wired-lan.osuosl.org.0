Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1906943B5A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 17:30:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F06060A58;
	Tue, 26 Oct 2021 15:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fay9KqS4N5v2; Tue, 26 Oct 2021 15:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5AC160751;
	Tue, 26 Oct 2021 15:30:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 957871BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 15:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83D7360751
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 15:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4DCWQWRBKmRp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 15:30:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 444CC606CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 15:30:30 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef5c.dynamic.kabel-deutschland.de
 [95.90.239.92])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1ACA761E5FE33;
 Tue, 26 Oct 2021 17:30:27 +0200 (CEST)
Message-ID: <745fff43-4649-ac63-5c6e-6fb3877953c0@molgen.mpg.de>
Date: Tue, 26 Oct 2021 17:30:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
Subject: [Intel-wired-lan] Wrong date/time of messages (was: [PATCH
 intel-next 0/2] ice: ethtool -L fixes)
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
Cc: netdev@vger.kernel.org, marta.a.plantykow@intel.com,
 alexandr.lobakin@intel.com, kuba@kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBJbnRlbCBmb2xrcywKCgpPbiAyNi4xMC4yMSAxODo0NywgTWFjaWVqIEZpamFsa293c2tp
IHdyb3RlOgoKW+KApl0KCk9uY2UgYWdhaW4gbWVzc2FnZXMgd2VyZSBzZW50IHRvIHRoZSBsaXN0
IHdpdGggYSBEYXRlIGZyb20gdGhlIGZ1dHVyZS4gCldoeSBjYW7igJl0IEludGVsIGVtcGxveWVl
cyB3b3JrIG9uIHN5c3RlbXMgd2l0aCBhIGNvcnJlY3QgY2xvY2s/CgpJdOKAmWQgd291bGQgYmUg
Z3JlYXQgaWYgc29tZWJvZHkgZnJvbSBJbnRlbCB3b3VsZCBhdCBsZWFzdCBoYXZlIHRoZSAKY291
cnRlc3kgdG8gYW5hbHl6ZSBhbmQgZml4IHRoZSByb290IGNhdXNlLgoKCktpbmQgcmVnYXJkcywK
ClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
