Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D0B39846
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2019 00:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F8AD85930;
	Fri,  7 Jun 2019 22:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwnUeUgYgaI6; Fri,  7 Jun 2019 22:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 794FC8826A;
	Fri,  7 Jun 2019 22:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 452591BF40D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40F6B2094C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYm7EQf7q-XX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 22:10:09 +0000 (UTC)
X-Greylist: delayed 00:07:20 by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B73220798
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:10:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k187so1347275pga.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Jun 2019 15:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=MkdX1ByPuyyhMx7KgR9Las+8lYde8+TrNn+WFHUY5oA=;
 b=Np0FvSQCXoUcQB/aECH6jnG668iDsuwcUJMnC7GTrGLlxMFHTjAZGwpXYEkzb7h8HL
 K0ol0H621yvFSEi6beo0XqdAcJlVIALl8avTlb6mbS0V8qdV632P//ABtKK0IOSc1Dr4
 JkTOm60PvI8PrORLgcZqWI/CmpxkOdF5ZDmcEnfsTkhXyYwwkKePmt2KtUQSJfsd8P2h
 BFCZuGH6xvY+xd6ToMyncr3eu1hXJM0BiPwoDHTv0h7JA9X6B7spcsDHLITsI+WM/X+B
 J1TJUGzEIgg3biGmH/DVBB2gX88Ru7j7DyRMDVp2O2OJkib8B6ldtXl4x04OGoz657bR
 UDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=MkdX1ByPuyyhMx7KgR9Las+8lYde8+TrNn+WFHUY5oA=;
 b=aqj5MsdE0n4Ublvw8hGH3DI4n8I9YJNWUcvXEe0d1TaUICJJ8W/pfawHZLfcmm2kRP
 kPSS+K73bIJBfKXbk0LxP632ruYqvXhtgHJN1rRYDtzsylZeSJYtw7IMTF8Q2YY9UXOp
 QjgycE+atDejW/jMjYih8VeT65ycx5kxlXVLeMrsdjpJnUnsN9tDFLUvQtL29ac7eO6i
 NLLEPpqbp/ME9PoJbXiubHJ2iH9jtmqggpghWoVp130vlmYGuqgQFpcOPHhtYYXtNma5
 IDLZTS/oWbjwIyTCyaCzwt8OJBeW+dvUDPrLIjKeRLKDy8YG0b4jC7N7GuBJj6CvAaL5
 fzFw==
X-Gm-Message-State: APjAAAVNJzobZAwnG9Q1P94TZ1ZaHl38+eU7YtGJXUFRK3gYN5hHWuYA
 lY1alX8NVkoQdr+gG5x6Wze7bQ==
X-Google-Smtp-Source: APXvYqziT/57xaFqWXj1gqNNaW6lk1L1hsuclKTrQv7CVHbfe52j9M0GLbVRXvAZGNzRQEJhsEsz1g==
X-Received: by 2002:a62:b517:: with SMTP id y23mr63478584pfe.182.1559944968778; 
 Fri, 07 Jun 2019 15:02:48 -0700 (PDT)
Received: from cakuba.netronome.com (wsip-98-171-133-120.sd.sd.cox.net.
 [98.171.133.120])
 by smtp.gmail.com with ESMTPSA id s17sm2308866pfm.74.2019.06.07.15.02.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:02:48 -0700 (PDT)
Date: Fri, 7 Jun 2019 15:02:43 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Patel, Vedang" <vedang.patel@intel.com>
Message-ID: <20190607150243.369f6e2c@cakuba.netronome.com>
In-Reply-To: <FF3C8B8E-421E-4C93-8895-C21A38BB55EE@intel.com>
References: <1559843458-12517-1-git-send-email-vedang.patel@intel.com>
 <1559843458-12517-5-git-send-email-vedang.patel@intel.com>
 <20190606162132.0591cc37@cakuba.netronome.com>
 <FF3C8B8E-421E-4C93-8895-C21A38BB55EE@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/6] taprio: Add support
 for txtime-assist mode.
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCA3IEp1biAyMDE5IDIwOjQyOjU1ICswMDAwLCBQYXRlbCwgVmVkYW5nIHdyb3RlOgo+
ID4gVGhhbmtzIGZvciB0aGUgY2hhbmdlcywgc2luY2UgeW91IG5vdyB2YWxpZGF0ZSBubyB1bmtu
b3duIGZsYWdzIGFyZQo+ID4gcGFzc2VkLCBwZXJoYXBzIHRoZXJlIGlzIG5vIG5lZWQgdG8gY2hl
Y2sgaWYgZmxhZ3MgYXJlID09IH4wPwo+ID4gCj4gPiBJU19FTkFCTEVEKCkgY291bGQganVzdCBk
bzogKGZsYWdzKSAmIFRDQV9UQVBSSU9fQVRUUl9GTEFHX1RYVElNRV9BU1NJU1QKPiA+IE5vPwo+
ID4gICAKPiBUaGlzIGlzIHNwZWNpZmljYWxseSBkb25lIHNvIHRoYXQgdXNlciBkb2VzIG5vdCBo
YXZlIHRvIHNwZWNpZnkgdGhlCj4gb2ZmbG9hZCBmbGFncyB3aGVuIHRyeWluZyB0byBpbnN0YWxs
IHRoZSBhbm90aGVyIHNjaGVkdWxlIHdoaWNoIHdpbGwKPiBiZSBzd2l0Y2hlZCB0byBhdCBhIGxh
dGVyIHBvaW50IG9mIHRpbWUgKGkuZS4gdGhlIGFkbWluIHNjaGVkdWxlCj4gaW50cm9kdWNlZCBp
biBWaW5pY2l1c+KAmSBsYXN0IHNlcmllcykuIFNldHRpbmcgdGFwcmlvX2ZsYWdzIHRvIH4wCj4g
d2lsbCBoZWxwIHVzIGRpc3Rpbmd1aXNoIGJldHdlZW4gdGhlIGZsYWdzIHBhcmFtZXRlciBub3Qg
c3BlY2lmaWVkCj4gYW5kIGZsYWdzIHNldCB0byAwLgoKSSdtIG5vdCBzdXBlciBjbGVhciBvbiB0
aGlzLCBiZWNhdXNlIG9mIGJhY2t3YXJkIGNvbXBhdCB5b3UgaGF2ZSB0bwp0cmVhdCBhdHRyIG5v
dCBwcmVzZW50IGFzIHVuc2V0LiAgTGV0J3Mgc2VlOgoKbmV3IHFkaXNjOgogLSBmbGFncyBhdHRy
ID0gMCAtPiB0eHRpbWUgbm90IHVzZWQKIC0gZmxhZ3MgYXR0ciA9IDEgLT4gdHh0aW1lIHVzZWQK
IC0+IG5vIGZsYWdzIGF0dHIgLT4gdHh0aW1lIG5vdCB1c2VkCmNoYW5nZSBxZGlzYzoKIC0gZmxh
Z3MgYXR0ciA9IG9sZCBmbGFncyBhdHRyIC0+IGxlYXZlIHVuY2hhbmdlZAogLSBmbGFncyBhdHRy
ICE9IG9sZCBmbGFncyBhdHRyIC0+IGVycm9yCiAtIG5vIGZsYWdzIGF0dHIgLT4gbGVhdmUgdHh0
aW1lIHVuY2hhbmdlZAoKRG9lc24ndCB0aGF0IGNvdmVyIHRoZSBjYXNlcz8gIFdlcmUgeW91IHBs
YW5uaW5nIHRvIGhhdmUgbm8gZmxhZyBhdHRyCm9uIGNoYW5nZSBtZWFuIGRpc2FibGVkIHJhdGhl
ciB0aGFuIG5vIGNoYW5nZT8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
