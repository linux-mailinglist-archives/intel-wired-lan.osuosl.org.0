Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B484954BF97
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 04:12:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 553AB8336D;
	Wed, 15 Jun 2022 02:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lcVgwBpLImXe; Wed, 15 Jun 2022 02:12:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69A2F823CF;
	Wed, 15 Jun 2022 02:12:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E875D1BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 02:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3CC240383
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 02:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_jKO1cncPWa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 02:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m15112.mail.126.com (m15112.mail.126.com [220.181.15.112])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8441B4002B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 02:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Mime-Version:Subject:From:Date:Message-Id; bh=+KQC1
 LILuSTroDP1tAYm+Qsg49hiURemCd4BNP0dj7k=; b=fWxMrZJwQAXU319xH93qp
 yeWUbsVMEzkJOMA1ijhICipOXDPjuroyozcBcjJDuUpq6aePlykGaaftaR7tLiHu
 Pfi+mEz5/1TG6AZFxUNzT+KdBrlsi5Iv5s3BAM1sY1FSamJfp2Yfz661qQthvQJe
 c5eSGXcZAG6lNFEIlBLGu4=
Received: from smtpclient.apple (unknown [117.136.39.91])
 by smtp2 (Coremail) with SMTP id DMmowABHqva9P6liev4WDQ--.29305S2;
 Wed, 15 Jun 2022 10:11:11 +0800 (CST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
From: =?utf-8?B?5qKB56S85a2m?= <lianglixuehao@126.com>
In-Reply-To: <20220614181914.4cd8fe97@kernel.org>
Date: Wed, 15 Jun 2022 10:11:07 +0800
Message-Id: <F4C0C492-49D3-4B91-B2B4-D216220D421A@126.com>
References: <20220610023922.74892-1-lianglixuehao@126.com>
 <cbfb5d1a-dadd-efe5-b5d9-de9f483e44b2@intel.com>
 <20220614181914.4cd8fe97@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailer: Apple Mail (2.3696.80.82.1.1)
X-CM-TRANSID: DMmowABHqva9P6liev4WDQ--.29305S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JryfZw1fZw4xuF43tFy3CFg_yoWfJrXE9r
 s5ur1UXw1DGr9IkwsxKrWYvr97XFyDAFyvv390qFZrX3s5Za17uw1DJa4xXas3trWvgr4D
 KFnFgr1IgF9IvjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUUbTmPUUUUU==
X-Originating-IP: [117.136.39.91]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/xtbBGhAhFl-HZTKBuQABsL
Subject: Re: [Intel-wired-lan] [PATCH v6] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, lianglixue@greatwall.com.cn,
 Netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QXMgYWxleGFuZGVyLmR1eWNrQGdtYWlsLmNvbSBzYWlkLCAiYWxsb3dfdW5zdXBwb3J0ZWRfc2Zw
IiBpbiBpeGdiZV9tYWluLmMsIAphbmQgSSBhbHNvIG5vdGljZWQgImVlcHJvbV9iYWRfY3N1bV9h
bGxvdyIgaW4gZTEwMC5jLCBhcmUgYWxsIGluIHRoZSBmb3JtIG9mIG1vZHVsZSBwYXJhbWV0ZXJz
LgoKSWYgdGhlIGludmFsaWQgTUFDIGFkZHJlc3MgaXMgYXV0b21hdGljYWxseSByZXBsYWNlZCB3
aXRoIGEgcmFuZG9tIE1BQyBhZGRyZXNzLCAKb3RoZXIgcHJvYmxlbXMgY2F1c2VkIGJ5IHRoZSBy
YW5kb20gTUFDIGFkZHJlc3MgbWF5IGJlIGRpZmZpY3VsdCB0byBkZWJ1Zy4gClVzaW5nIG1vZHVs
ZSBwYXJhbWV0ZXJzIGNhbiBtYWtlIGl0IGVhc3kgZm9yIHVzZXJzIHRvIGNvcnJlY3QgaW52YWxp
ZCBNQUMgYWRkcmVzc2VzIAp3aXRob3V0IGNhdXNpbmcgdGhlIGFib3ZlIHByb2JsZW1zCgo+IDIw
MjLlubQ25pyIMTXml6UgMDk6MTnvvIxKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPiDl
hpnpgZPvvJoKPiAKPiBPbiBUdWUsIDE0IEp1biAyMDIyIDEyOjA5OjAyIC0wNzAwIFRvbnkgTmd1
eWVuIHdyb3RlOgo+Pj4gQWRkIHRoZSBtb2R1bGUgcGFyYW1ldGVyICJhbGxvd19pbnZhbGlkX21h
Y19hZGRyZXNzIiB0byBjb250cm9sIHRoZSAgCj4+IAo+PiBuZXRkZXYgbWFpbnRhaW5lcnM6Cj4+
IAo+PiBJIGtub3cgdGhlIHVzZSBvZiBtb2R1bGUgcGFyYW1ldGVycyBpcyBleHRyZW1lbHkgZnJv
d25lZCB1cG9uLiBJcyB0aGlzIGEgCj4+IHVzZS9leGNlcHRpb24gdGhhdCB3b3VsZCBiZSBhbGxv
d2VkPwo+IAo+IEkgdGhpbmsgc28sIEkgZG9uJ3Qgc2VlIGEgZGlmZmVyZW50IHdheSBoZXJlLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
