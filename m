Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA15331FCB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 08:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D1E16F5B2;
	Tue,  9 Mar 2021 07:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xhWqMoQXaJjI; Tue,  9 Mar 2021 07:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98A8E6F4F9;
	Tue,  9 Mar 2021 07:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D32361BF981
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 07:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDCC647E1F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 07:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YrjQG2mXgcMO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 07:30:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76C78475AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 07:30:08 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 n11-20020a05600c4f8bb029010e5cf86347so329452wmq.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Mar 2021 23:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4vBUhrxGgI51ZZlWqm46T/WJc2GXwjczIDInhwRSI/A=;
 b=gs9QQVH28i3oen5qAxwkyKMFSucE5G2sBQu442e0h0KxaObHcruEnLd+R+ABx/cjeZ
 9zIlvYK++86N5DPiyZBMwb6iHiwhMZWnpRvV8l7ZCZ8A8OFZx/hLgAuTK5w1GzNTBayC
 g41JnAHgHbf0LDwH7KkR1Nx4WFPP9UcmUswGA+AraZ+u74FhkFwBmZgLRYK6SuPCK6Nv
 xLe78qlDDVqxtwtOnBRYWeF9sHapM/khc+tlf6O9UuUf51JkUr7h0jLQjR0IDSTFFeGK
 XVJKKh8TZjqSC4NvTU2dFWC0uGG8YjkgWYegmoNKCABhayvFtDRAaNLaNN0TiYkzZAMd
 s0rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4vBUhrxGgI51ZZlWqm46T/WJc2GXwjczIDInhwRSI/A=;
 b=jmNXBHGqY5+BfbAPwPpdEe48hQviP6pive9zxP7UIZq1DpgOKD/WFnU40Dpxo4/1JB
 eZy7UFKGolzw1RSD8WFegXOJJF9K1tepJmikkvTEo9Wve6HigktNZSV6w3KAeUW5Z/UN
 KTaaOwLcUUlun4OJMnSdS1tPs7sQA+MTZmBRSJlLDCd11noe08glkCJTHv17LKnEBsvJ
 Ytf/YnnLVxiNz3VyDv0mpI6kAj6krw7lCZQbzWD6ckLg0aOFekPoyT6eyMEzt8cjNjDC
 9aM5A9vpajrgd3iCYdVhim5sbKQC1dYq+kS561EGJCrZSk9e0xorvUa3+ToSigMazv3B
 7SQg==
X-Gm-Message-State: AOAM5332ROz6Xgh8fK9FcdFOlsDiFyykNhS5of3jqUhgjVV4q5wkYYRi
 vZ59I8VaXjUtT+NkIw/zQajg2XFhK0hMb745mcI=
X-Google-Smtp-Source: ABdhPJx2IWuDmJBvKFegs727UrdA3ssKH6Xk1k4YM0DngfyAmZ3tgO3on9cbDqKnR/o7Mq4na5e4hTFgXkQgqJm/psw=
X-Received: by 2002:a1c:7714:: with SMTP id t20mr2415722wmi.107.1615275006555; 
 Mon, 08 Mar 2021 23:30:06 -0800 (PST)
MIME-Version: 1.0
References: <161523611656.36376.3641992659589167121.stgit@localhost.localdomain>
In-Reply-To: <161523611656.36376.3641992659589167121.stgit@localhost.localdomain>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 9 Mar 2021 08:29:55 +0100
Message-ID: <CAJ+HfNiDZ+iw50W-N9KprHDygzMZcrTteX1KVpmXC0dafDi-RA@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] [net PATCH] ixgbe: Fix NULL pointer
 dereference in ethtool loopback test
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
Cc: Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCA4IE1hciAyMDIxIGF0IDIxOjQyLCBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhhbmRlci5k
dXlja0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5k
ZXJkdXlja0BmYi5jb20+Cj4KPiBUaGUgaXhnYmUgZHJpdmVyIGN1cnJlbnRseSBnZW5lcmF0ZXMg
YSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2hlbgo+IHBlcmZvcm1pbmcgdGhlIGV0aHRvb2wg
bG9vcGJhY2sgdGVzdC4gVGhpcyBpcyBkdWUgdG8gdGhlIGZhY3QgdGhhdCB0aGVyZQo+IGlzbid0
IGEgcV92ZWN0b3IgYXNzb2NpYXRlZCB3aXRoIHRoZSB0ZXN0IHJpbmcgd2hlbiBpdCBpcyBzZXR1
cCBhcwo+IGludGVycnVwdHMgYXJlIG5vdCBub3JtYWxseSBhZGRlZCB0byB0aGUgdGVzdCByaW5n
cy4KPgo+IFRvIGFkZHJlc3MgdGhpcyBJIGhhdmUgYWRkZWQgY29kZSB0aGF0IHdpbGwgY2hlY2sg
Zm9yIGEgcV92ZWN0b3IgYmVmb3JlCj4gcmV0dXJuaW5nIGEgbmFwaV9pZCB2YWx1ZS4gSWYgYSBx
X3ZlY3RvciBpcyBub3QgcHJlc2VudCBpdCB3aWxsIHJldHVybiBhCj4gdmFsdWUgb2YgMC4KPgo+
IEZpeGVzOiBiMDJlNWEwZWJiMTcgKCJ4c2s6IFByb3BhZ2F0ZSBuYXBpX2lkIHRvIFhEUCBzb2Nr
ZXQgUnggcGF0aCIpCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXJk
dXlja0BmYi5jb20+CgpUaGFua3MgQWxleCEKCkFja2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9y
bi50b3BlbEBpbnRlbC5jb20+CgpJJ2xsIGxvb2sgaW50byBpZiB0aGlzIGFwcGxpZXMgdG8gdGhl
IG90aGVyIEludGVsIGRyaXZlcnMgYXMgd2VsbC4KCgpCasO2cm4KWy4uLl0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
