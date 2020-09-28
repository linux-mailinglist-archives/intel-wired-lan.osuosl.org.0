Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409B27B576
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 21:38:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D1C086FB7;
	Mon, 28 Sep 2020 19:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QLtHOZbVcH6; Mon, 28 Sep 2020 19:38:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E6DD86F95;
	Mon, 28 Sep 2020 19:38:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6EC91BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 19:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A154F86F95
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 19:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YskdfSHRuaQv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 19:03:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [67.231.154.164])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6663686CB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 19:03:56 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.50.137])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 77B5C200BF; Mon, 28 Sep 2020 19:03:55 +0000 (UTC)
Received: from us4-mdac16-58.at1.mdlocal (unknown [10.110.50.151])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 710D26009B; 
 Mon, 28 Sep 2020 19:03:55 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.32])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id BDC04220086;
 Mon, 28 Sep 2020 19:03:54 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 46E2E28007B;
 Mon, 28 Sep 2020 19:03:53 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 28 Sep
 2020 20:03:31 +0100
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
 <20200927194921.344476620@linutronix.de>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <168a1f9e-cba4-69a8-9b29-5c121295e960@solarflare.com>
Date: Mon, 28 Sep 2020 20:03:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200927194921.344476620@linutronix.de>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25674.003
X-TM-AS-Result: No-3.392600-8.000000-10
X-TMASE-MatchedRID: scwq2vQP8OHoSitJVour/fZvT2zYoYOwC/ExpXrHizwZwGrh4y4izL88
 DvjRvF4AxVy/bbd+rAzlMoALbl7BxnAe/yBs2gz+SJA7ysb1rf4KJM4okvH5XoVCSVIDsC6o8FS
 rkmy6/FJuCEgimCyJQyMYmr0rrl/pgl5Rdh8uTQGz5GTUpcs/m3Fa/hQHt1A1+S5C/08hWc0UBy
 nKnmzE5ngVNbMoKNzVH0rosakDCyyvvxILmKK/HIMbH85DUZXyYxU/PH+vZxv6C0ePs7A07Y6HM
 5rqDwqtN237Af2aNF37I73RKjILsWlTLDIPbPGsLoghHcIpC2/UZWTGDxA33ihvJVwuK5sjeBCY
 ZbP6cf5T86emsjutggfap7ehBz6Q4vn0zMfSmjYrbLOj1GuP3A+hgLflG6KEo9QjuF9BKnnfMd6
 s6DDccQ==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.392600-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25674.003
X-MDID: 1601319835-pcw6fPKCBDdo
X-Mailman-Approved-At: Mon, 28 Sep 2020 19:38:22 +0000
Subject: Re: [Intel-wired-lan] [patch 15/35] net: sfc: Replace
 in_interrupt() usage.
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 libertas-dev@lists.infradead.org, brcm80211-dev-list@cypress.com,
 brcm80211-dev-list.pdl@broadcom.com, Ping-Ke Shih <pkshih@realtek.com>,
 Johannes Berg <johannes.berg@intel.com>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Intel
 Linux Wireless <linuxwifi@intel.com>, Russell King <linux@armlinux.org.uk>,
 Matthew
 Wilcox <willy@infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>, Hante
 Meuleman <hante.meuleman@broadcom.com>, Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>, Amitkumar
 Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon
 Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjcvMDkvMjAyMCAyMDo0OSwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgo+IE5vdGUsIHRoYXQg
dGhlIGZpeGVzIHRhZyBpcyBlbXB0eSBhcyBpdCBpcyB1bmNsZWFyIHdoaWNoIG9mIHRoZSBjb21t
aXRzIHRvCj4gYmxhbWUuClNlZW1zIGxpa2UgaXQgc2hvdWxkIGJlCkZpeGVzOiBmMDBiZjIzMDVj
YWIoInNmYzogZG9uJ3QgdXBkYXRlIHN0YXRzIG9uIFZGIHdoZW4gY2FsbGVkIGluIGF0b21pYyBj
b250ZXh0IikKwqBzaW5jZSB0aGF0IGFkZHMgdGhlIGluX2ludGVycnVwdCgpIGNoZWNrIGFuZCB0
aGUgY29kZSBjb25jZXJuZWQKwqBkb2Vzbid0IHNlZW10byBoYXZlIGNoYW5nZWQgYSBncmVhdCBk
ZWFsIHNpbmNlLgoKQW55d2F5LCB0aGlzIGZpeCBsb29rcyBjb3JyZWN0LCBhbmQgeW91IGNhbiBo
YXZlIG15CkFja2VkLWJ5OiBFZHdhcmQgQ3JlZSA8ZWNyZWVAc29sYXJmbGFyZS5jb20+CsKgYnV0
IEkgdGhpbmtpdCBtaWdodCBiZSBjbGVhbmVyIHRvIGF2b2lkIGhhdmluZyB0byBoYXZlIHRoaXMg
dW51c2VkCsKgY2FuX3NsZWVwIGFyZ3VtZW50IG9uIGFsbCB0aGUgTklDcyB0aGF0IGRvbid0IG5l
ZWQgaXQsIGJ5IGluc3RlYWQKwqBhZGRpbmcgYW4gdXBkYXRlX3N0YXRzX2F0b21pYygpIG1lbWJl
ciB0byBzdHJ1Y3QgZWZ4X25pY190eXBlLCB3aGljaArCoGNvdWxkIGJlIHNldCB0byB0aGUgc2Ft
ZSBhcyB1cGRhdGVfc3RhdHMoKSBmb3IgZXZlcnl0aGluZyBleGNlcHQKwqBFRjEwIFZGcyB3aGlj
aCB3b3VsZCBqdXN0IGRvIHRoZSBjYWxsIHRvIGVmeF91cGRhdGVfc3dfc3RhdHMoKS4KSSdsbCBz
ZW5kIGFuIHJmYyBwYXRjaCBlbWJvZHlpbmcgdGhlIGFib3ZlIHNob3J0bHkuLi4KCi1lZApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
