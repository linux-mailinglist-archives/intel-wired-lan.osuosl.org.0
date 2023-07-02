Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBBB744EBE
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Jul 2023 19:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AEE0415F0;
	Sun,  2 Jul 2023 17:24:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AEE0415F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688318696;
	bh=IdzCXYW4fxEKiyYQnB3EFXHwzWktZoqKnRjW2vHsFz4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4vHq9eFh/kezq7d0MILeHLs3cFtg2ZfE2kpFVRk/Coc2TGS/K4H1TKfA2bDqsEV6F
	 gVSVHioSYDhPEcyAlaNTsKCTvL23BfKj00FQ1WvixOGpKtJDvHZZqOTCNwqgwsjfqw
	 k12MQOuvgyzRmz0yg1WjX6dkYId7AJfOXJYDTJ8JKLdV3qpoUNsbitKNbUugKC2nge
	 XSm9ySQdVjcDMnCp2KyE+oCTIUUCWYKaxOHAcKguQj/rzPdPEa5YSA+/cUEv1kIHWX
	 Eldztd7hzJwIc1HGUKGyybxF6yqZsyKTEMhT/PudadU9kkAmaOiGiupFWeeCS20IqX
	 c9wdhkmxStuqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ZjpzoQSxVtE; Sun,  2 Jul 2023 17:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2B9140997;
	Sun,  2 Jul 2023 17:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2B9140997
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC5F41BF276
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 17:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF98C4137D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 17:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF98C4137D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rI_Wi7OKR0eR for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Jul 2023 17:24:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 408A740997
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 408A740997
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 17:24:46 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.83]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MElVH-1qE2ib2zYR-00GMvE; Sun, 02
 Jul 2023 19:24:14 +0200
Message-ID: <e1ff4ee2-01a6-8ed6-325e-1aa2d289faf6@web.de>
Date: Sun, 2 Jul 2023 19:24:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Florian Kauer <florian.kauer@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20230619100858.116286-7-florian.kauer@linutronix.de>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20230619100858.116286-7-florian.kauer@linutronix.de>
X-Provags-ID: V03:K1:+SN9Tr9ojAOvi05wXOQTAWeCqM6uOpXlnGUZ+GTDH+jFpDKH23z
 VpZdfUHiplOjpApxo3G+X7uTJZoNw5xqv81rmipcjYop40m+JR42n89pIF+yComHX48O/li
 bsA5c2/yKyo50PHiFdiFS0SUMQHvJK/FRo99Wxw9mSJKKe893Kl1AyQXJOCDuKdo6VB64XK
 TdqaGf47lKk23mfY6msFA==
UI-OutboundReport: notjunk:1;M01:P0:FLexxRKUzNA=;s6AwRy9e8hIJdm4ItsjxqApm8d3
 W2HpRqoqO1CrOxTU6KT/M3FjM2UfZ8+ze7NaBxPGKHDiFA/aaRBlosz6WrmSI2aOdNuIPw9Vj
 dxFHYXD4O+ssCVxrbZeWC8q7gg2/FaIK/bvkeBSAGCXFboMTiYoUsyT5hmK9mi+IkkQFiVA5S
 B7ewgTAyhLgnH9LH7C+vp08SQp7Xf5YgqTRyPIwNVTa9gPoLXz9IyDtKFWzj1YeWmkx1edmV2
 1wHBRvu4OP59Td7qisf7XmCE3rECzCzc5XjBIIzuaYx2v6IEtoV1vzzShvc8CyLDr3jjxSMEU
 eivUb52p+EaNj/QLcXHpcW+I/iqNphUlm9F9/cZzGF1oDaNKY/A1finasosA75aEl3GRnon6S
 DCRYLg0kI+UDrEE9p+MEPGGOsaxBgLTa6J6u+j1kNQkEl4iEcon0oF5LRp6zmTNiCgiZUes63
 wmnvgUbGO6rz3/OFvpITEPRUIlCM060JwqqSkgdk7yKSYVL2KXXT+rfhBvBpvptjafW1iLWhw
 HeiMq+IzOu8+FHkXcN36DJSgTpzIry2umkZaLB3asb2DGS3mMuDb5t3sJdDkTgjsDn9GeyuSc
 dKfA83lxoZgNz0VYqpGpv1n7NCznQNRbHYLQ8cfa5d80b/Un9NFKz84Z6UmgAFn6j6nBR5Nyq
 RLPoxnOqJUoxIeotAXDiYFO5NIpTO+C3aU97wEMI2KH9Hp+usQNYgL9abCRh+IVGSPHDR0qHj
 1izcF+4qSawoE8Z+PJf9+78T33rfHdPdidTFuQDe2jkAAhnX9BRDIW4lzpuJ0fVgD4Y3zpiVi
 ZnOwrlIaoKZBeH6cuan3tdV1xOg5spdRh83SAH/JD30nT1OHSnrDxSICa/KcbozqWViDQD8IB
 IPFMgAma2lPaPnvTPtQ5ipqxPIRe4xRn+tVJie4XFmOSaXsPqNqKABq/lV+1LLSx/92LQz5BN
 cNgMmg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=web.de; 
 s=s29768273; t=1688318654; x=1688923454; i=markus.elfring@web.de;
 bh=3VZC/lv0zKGCoTmPiEW1r77DIODGvRNRvTVWKJx55CM=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:In-Reply-To;
 b=lcWhT4Oo8i8VAyJnHr1GoBD9s9cdFBcv/FnEwYKhHtsgSyH1vtanSDwJy76GOFgkdnjFcKK
 B4yetPnH/VyUm6G1tuNDVIogD2Opq/QbrhG/rBU++ZgK2TM/qn1rAHkzGEiPexl9HvkDPe8qS
 3bdxXkRlv+NklNT2o/p51DKqNRPmiCS77f8dCv6ItMZZ6FHBhMEuh45yd/kxxgB1cCI/RmF+I
 3qLGHZ9DVbqFOSPtwaajVWOzyzZ1UJnwXYXbwkyfw1BgN44B+T3QIB+jdwOFeQHckZPRKnr5j
 34va/DjCRFhYaXMKBvcE27WKcdspOoVkemsmjTRwJobOD5PFWkfQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=lcWhT4Oo
Subject: Re: [Intel-wired-lan] [PATCH net v2 6/6] igc: Fix inserting of
 empty frame for launchtime
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
Cc: LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

4oCmCj4gVGhpcyBwYXRjaCBkb2VzIG5vdCBvbmx5IGF2b2lkIGFuIHVubmVjZXNzYXJ5IGluc2Vy
dGlvbiwg4oCmCgpXb3VsZCBhbm90aGVyIGltcGVyYXRpdmUgY2hhbmdlIHN1Z2dlc3Rpb24gYmVj
b21lIG1vcmUgZGVzaXJhYmxlIGhlcmU/CgpTZWUgYWxzbzoKaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1l
bnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3Q/aD12Ni40I245NAoKUmVnYXJk
cywKTWFya3VzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
