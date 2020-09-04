Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B113E25DBA9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 16:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B9EA874F4;
	Fri,  4 Sep 2020 14:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 63YICE3++t1Q; Fri,  4 Sep 2020 14:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB5278755B;
	Fri,  4 Sep 2020 14:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 817421BF599
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 14:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 787492000E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 14:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQUOXN3MU5WD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 14:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D7C92010E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 14:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599229686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IwmZ+bkJtm1ptxZ/ECWY3T+CE7HjdpigE1Uh+r6cTW0=;
 b=Tk6FSzMCKjxfwx4ITSy1zBKcFhA/q69wzBDbYyKRTlguE2c4kVBCH9psxWUU6gwjc5Btao
 N5cF+6m2TTJTdJP2gNqwMDiN12W/Yyaj54jfGw5tpJHukQLi76HdsHJGeumhaqYNK/Ins/
 W2wGBMuZh5N3y0TmiMjmomo/et3lVAM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-O8hj-laNPdC0L1rxOxwNlw-1; Fri, 04 Sep 2020 10:28:02 -0400
X-MC-Unique: O8hj-laNPdC0L1rxOxwNlw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21AC1A0BC3;
 Fri,  4 Sep 2020 14:28:00 +0000 (UTC)
Received: from carbon (unknown [10.40.208.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C23B5D9CC;
 Fri,  4 Sep 2020 14:27:53 +0000 (UTC)
Date: Fri, 4 Sep 2020 16:27:51 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, Eric Dumazet
 <eric.dumazet@gmail.com>
Message-ID: <20200904162751.632c4443@carbon>
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAgNCBTZXAgMjAyMCAxNTo1MzoyNSArMDIwMApCasO2cm4gVMO2cGVsIDxiam9ybi50
b3BlbEBnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBteSBtYWNoaW5lIHRoZSAib25lIGNvcmUgc2Nl
bmFyaW8gUnggZHJvcCIgcGVyZm9ybWFuY2Ugd2VudCBmcm9tCj4gfjY1S3BwcyB0byAyMU1wcHMu
IEluIG90aGVyIHdvcmRzLCBmcm9tICJub3QgdXNhYmxlIiB0bwo+ICJ1c2FibGUiLiBZTU1WLgoK
V2UgaGF2ZSBvYnNlcnZlZCB0aGlzIGtpbmQgb2YgZHJvcHBpbmcgb2ZmIGFuIGVkZ2UgYmVmb3Jl
IHdpdGggc29mdGlycQood2hlbiB1c2Vyc3BhY2UgcHJvY2VzcyBydW5zIG9uIHNhbWUgUlgtQ1BV
KSwgYnV0IEkgdGhvdWdodCB0aGF0IEVyaWMKRHVtYXpldCBzb2x2ZWQgaXQgaW4gNGNkMTNjMjFi
MjA3ICgic29mdGlycTogTGV0IGtzb2Z0aXJxZCBkbyBpdHMgam9iIikuCgpJIHdvbmRlciB3aGF0
IG1ha2VzIEFGX1hEUCBkaWZmZXJlbnQgb3IgaWYgdGhlIHByb2JsZW0gaGF2ZSBjb21lIGJhY2s/
CgotLSAKQmVzdCByZWdhcmRzLAogIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKICBNU2MuQ1MsIFBy
aW5jaXBhbCBLZXJuZWwgRW5naW5lZXIgYXQgUmVkIEhhdAogIExpbmtlZEluOiBodHRwOi8vd3d3
LmxpbmtlZGluLmNvbS9pbi9icm91ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
