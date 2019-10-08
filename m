Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA812CF596
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 11:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55C4E87683;
	Tue,  8 Oct 2019 09:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXUIaBETbbf8; Tue,  8 Oct 2019 09:04:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3940875FD;
	Tue,  8 Oct 2019 09:04:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 672961BF337
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 09:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5EE4522636
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 09:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2U07CFjKgNP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 09:04:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B7FF22274
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 09:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570525445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7LiTc03LkyuPHndVZx+YUwXgw6EiaRzqV7jwSwvnOpk=;
 b=dai5ikeBhZ9dqlZRunnGAEwtrOCukz6QMfIsMWLVRcSJd7uGc9EwP/9exckNcZ0twk4x4w
 zjLnd1DHCKaym7mioV/QUesHwFBgZFy8oLoCXNzzR9BxRSNWbZWi2K05ahXigc2zCMQWR4
 cvI/uTo7DwDD5l0KNHSKERA+zh67m/U=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-Y5GSE0fsPVWYIulITe28Vg-1; Tue, 08 Oct 2019 05:04:03 -0400
Received: by mail-ed1-f70.google.com with SMTP id l5so10758366edr.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 02:04:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=7LiTc03LkyuPHndVZx+YUwXgw6EiaRzqV7jwSwvnOpk=;
 b=Pl5oDIKnIbzi5bRn91K82nWrx5Dq31RpmUPR5ireQ1AVMG2sTUDqYWDbH0t+bgJE/q
 j5gi7gugK5ULUcXVn+R/upiMSq1Q8EzpURU+Clr8TtRoWZlEJN9RZvPnufFFODsxWtWD
 7Si3ziaes53nV6YpVSRhRJ47iQ0c0N0CnYDJcB0vecz8W8FeeVDCuQg5tl3uFkx92o2s
 OPgxp/C1/QiEQOVaZ6n350Uxja3cc3B6bWNybYKFmeKU7L0ehMESBBPGQlobFOwKT10o
 ka3Nm4eQMIEoalMza88cXJddjJ1xuvwNaKU/SKSZ0dtTf8oF+o8TRD35xcfCzRY4xZ0O
 V7KA==
X-Gm-Message-State: APjAAAXaisBrontwhrZMeuYHn6pdS6/+7TH9bBOL8NitG9pAGA/6h0Ag
 CRfv2mKn92aCZ5U7cAdj2XjmyoRQOhpnMud38rAQfSGQ/8499uHBCpVvs0y8hN9+ZQZr2gnUA39
 2ZlH2qeRuFz0+VxkUAGc1ZbydLaWvQA==
X-Received: by 2002:a17:906:4910:: with SMTP id
 b16mr26878687ejq.301.1570525442167; 
 Tue, 08 Oct 2019 02:04:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8TcSRNTMv0iuCzK8zElHlrqwUttIOMympRata1iDWQHbT79yuK/s2FdSOFlHE1wLapUhP4w==
X-Received: by 2002:a17:906:4910:: with SMTP id
 b16mr26878663ejq.301.1570525441907; 
 Tue, 08 Oct 2019 02:04:01 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id l19sm3806147edb.50.2019.10.08.02.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 02:04:01 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B884C18063D; Tue,  8 Oct 2019 11:04:00 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
In-Reply-To: <CAJ+HfNhcvRP34L3px6ipAsCiZdvLXG02brecwB=T-sXMaT5yRw@mail.gmail.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <875zkzn2pj.fsf@toke.dk>
 <CAJ+HfNhcvRP34L3px6ipAsCiZdvLXG02brecwB=T-sXMaT5yRw@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 08 Oct 2019 11:04:00 +0200
Message-ID: <878spvlibj.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: Y5GSE0fsPVWYIulITe28Vg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: maciej.fijalkowski@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, tom.herbert@intel.com,
 Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFR1ZSwg
OCBPY3QgMjAxOSBhdCAwODo1OSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhh
dC5jb20+IHdyb3RlOgo+Pgo+PiBTcmlkaGFyIFNhbXVkcmFsYSA8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPiB3cml0ZXM6Cj4+Cj4+ID4gIGludCB4ZHBfZG9fcmVkaXJlY3Qoc3RydWN0IG5l
dF9kZXZpY2UgKmRldiwgc3RydWN0IHhkcF9idWZmICp4ZHAsCj4+ID4gICAgICAgICAgICAgICAg
ICAgc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZykKPj4gPiAgewo+PiA+ICAgICAgIHN0cnVjdCBi
cGZfcmVkaXJlY3RfaW5mbyAqcmkgPSB0aGlzX2NwdV9wdHIoJmJwZl9yZWRpcmVjdF9pbmZvKTsK
Pj4gPiAgICAgICBzdHJ1Y3QgYnBmX21hcCAqbWFwID0gUkVBRF9PTkNFKHJpLT5tYXApOwo+PiA+
ICsgICAgIHN0cnVjdCB4ZHBfc29jayAqeHNrOwo+PiA+ICsKPj4gPiArICAgICB4c2sgPSB4ZHBf
Z2V0X2RpcmVjdF94c2socmkpOwo+PiA+ICsgICAgIGlmICh4c2spCj4+ID4gKyAgICAgICAgICAg
ICByZXR1cm4geHNrX3Jjdih4c2ssIHhkcCk7Cj4+Cj4+IFRoaXMgaXMgYSBuZXcgYnJhbmNoIGFu
ZCBhIHJlYWQgYmFycmllciBpbiB0aGUgWERQX1JFRElSRUNUIGZhc3QgcGF0aC4KPj4gV2hhdCdz
IHRoZSBwZXJmb3JtYW5jZSBpbXBhY3Qgb2YgdGhhdCBmb3Igbm9uLVhTSyByZWRpcmVjdD8KPj4K
Pgo+IFRoZSBkZXBlbmRlbnQtcmVhZC1iYXJyaWVyIGluIFJFQURfT05DRT8gQW5vdGhlciBicmFu
Y2ggLS0gbGVhdmUgdGhhdAo+IHRvIHRoZSBicmFuY2gtcHJlZGljdG9yIGFscmVhZHkhIDstKSBO
bywgeW91J3JlIHJpZ2h0LCBwZXJmb3JtYW5jZQo+IGltcGFjdCBoZXJlIGlzIGludGVyZXN0aW5n
LiBJIGd1ZXNzIHRoZSBzYW1lIHN0YXRpY19icmFuY2ggY291bGQgYmUKPiB1c2VkIGhlcmUgYXMg
d2VsbC4uLgoKSW4gYW55IGNhc2UsIHNvbWUgbWVhc3VyZW1lbnRzIHRvIHNlZSB0aGUgaW1wYWN0
IChvciBsYWNrIHRoZXJlb2YpIHdvdWxkCmJlIHVzZWZ1bCA6KQoKLVRva2UKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
