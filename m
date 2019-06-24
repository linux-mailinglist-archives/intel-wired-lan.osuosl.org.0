Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A33F502AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 09:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4174886E6E;
	Mon, 24 Jun 2019 07:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6dnV9G+ZBOX0; Mon, 24 Jun 2019 07:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57B3686F5C;
	Mon, 24 Jun 2019 07:03:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B08C1BF419
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:03:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3358686EA5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHwpLU6GJi6L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 07:03:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1852586E6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:03:24 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hfJ0b-0000cS-H0
 for intel-wired-lan@lists.osuosl.org; Mon, 24 Jun 2019 07:03:21 +0000
Received: by mail-pl1-f199.google.com with SMTP id e95so6836316plb.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 00:03:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VgUEc8232HEbDcNbWBe1DLHeVAFqFByxVy9pHNe5ej4=;
 b=DNjwZdCmcPYzxzBjciwjVt3iZrNZ2zoRYnRvugjbozyGpizoag93ZFXMlIn5okRh4h
 FO/2MwMyoMA+YUSQeZYcbGmFDBqcyxKsUuqd+nAOwIuqOqVkZqxTHJCbHsW4ii4dRQ68
 P/OzV7u26pQ+NQNWmzh/vok6c70D4rISmfZg3blZQBN4AodS4EHfDyr/6agrXOaXYYay
 iLwe2svGbdcQgNbsyqR/j6F8CN0SkLtxvwR3RimnXS5JEdJspIhbQxrAvtkJ1vVpgFZK
 WcBgJUCnuQJQ3wvRwC3NdQkj0NgIGd++2ogcRbc9IVCnscInCGlliy4a96nd2Qo2mXRm
 SjBg==
X-Gm-Message-State: APjAAAXRdVgK55ZRsLq+Cw2lH5ojzSoU40QK+IWIEszjya2ezLZ0XJFt
 UdOc0PnGMOLBwaef7fk7Ze9rj4bYVcNKU88n6rOnLWdI4cRBrwuBZkTdUfKLAiczG9ShZv1leCz
 DqeVdqwTDwREFjmLnJuT24fRaUdzZ942BJ1dn91AVRP8FRu4=
X-Received: by 2002:a17:902:296a:: with SMTP id
 g97mr72320029plb.115.1561359799844; 
 Mon, 24 Jun 2019 00:03:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyShOHIK0XoPW/T+X8rCgw0nfFWgSa/8lV7g4xHQe7ILDTZirejduPKv2P9rOxAqINp3wSXSQ==
X-Received: by 2002:a17:902:296a:: with SMTP id
 g97mr72320003plb.115.1561359799577; 
 Mon, 24 Jun 2019 00:03:19 -0700 (PDT)
Received: from 2001-b011-380f-3511-4d72-4f7c-d6a5-6121.dynamic-ip6.hinet.net
 (2001-b011-380f-3511-4d72-4f7c-d6a5-6121.dynamic-ip6.hinet.net.
 [2001:b011:380f:3511:4d72:4f7c:d6a5:6121])
 by smtp.gmail.com with ESMTPSA id p3sm10353968pgh.90.2019.06.24.00.03.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:03:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <074E1145-A512-4835-9A6D-8FB6634DBD3C@canonical.com>
Date: Mon, 24 Jun 2019 15:03:16 +0800
Message-Id: <E2D5225B-D683-4895-AC4F-EE01C339262B@canonical.com>
References: <074E1145-A512-4835-9A6D-8FB6634DBD3C@canonical.com>
To: jeffrey.t.kirsher@intel.com
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] Opportunistic S0ix blocked by e1000e when
 ethernet is in use
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
Cc: intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmVmZnJleSwKCmF0IDE5OjA4LCBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9u
aWNhbC5jb20+IHdyb3RlOgoKPiBIaSBKZWZmcmV5LAo+Cj4gVGhlcmUgYXJlIHNldmVyYWwgcGxh
dGZvcm1zIHRoYXQgdXNlcyBlMTAwMGUgY2Fu4oCZdCBlbnRlciBPcHBvcnR1bmlzdGljICAKPiBT
MGl4IChQQzEwKSB3aGVuIHRoZSBldGhlcm5ldCBoYXMgYSBsaW5rIHBhcnRuZXIuCj4KPiBUaGlz
IGJlaGF2aW9yIGFsc28gZXhpdHMgaW4gb3V0LW9mLXRyZWUgZTEwMDBlIGRyaXZlciAzLjQuMi4x
LCBidXQgc2VlbXMgIAo+IGxpa2UgMy40LjIuMyBmaXhlcyB0aGUgaXNzdWUuCj4KPiBBIHF1aWNr
IGRpZmYgYmV0d2VlbiB0aGUgdHdvIHZlcnNpb25zIHNob3dzIHRoYXQgdGhpcyBjb2RlIHNlY3Rp
b24gbWF5IGJlICAKPiBvdXIgc29sdXRpb246Cj4KPiAgICAgICAgIC8qIFJlYWQgZnJvbSBFWFRD
TkZfQ1RSTCBpbiBlMTAwMF9hY3F1aXJlX3N3ZmxhZ19pY2g4bGFuIGZ1bmN0aW9uCj4gICAgICAg
ICAgKiBtYXkgb2NjdXIgZHVyaW5nIGdsb2JhbCByZXNldCBhbmQgY2F1c2Ugc3lzdGVtIGhhbmcu
Cj4gICAgICAgICAgKiBDb25maWd1cmF0aW9uIHNwYWNlIGFjY2VzcyBjcmVhdGVzIHRoZSBuZWVk
ZWQgZGVsYXkuCj4gICAgICAgICAgKiBXcml0ZSB0byBFMTAwMF9TVFJBUCBSTyByZWdpc3RlciBF
MTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSIHZhbHVlCj4gICAgICAgICAgKiBpbnN1cmVzIGNv
bmZpZ3VyYXRpb24gc3BhY2UgcmVhZCBpcyBkb25lIGJlZm9yZSBnbG9iYWwgcmVzZXQuCj4gICAg
ICAgICAgKi8KPiAgICAgICAgIHBjaV9yZWFkX2NvbmZpZ193b3JkKGh3LT5hZGFwdGVyLT5wZGV2
LCBFMTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSLAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJnBjaV9jZmcpOwo+ICAgICAgICAgZXczMihTVFJBUCwgcGNpX2NmZyk7Cj4gICAgICAg
ICBlX2RiZygiSXNzdWluZyBhIGdsb2JhbCByZXNldCB0byBpY2g4bGFuXG4iKTsKPiAgICAgICAg
IGV3MzIoQ1RSTCwgKGN0cmwgfCBFMTAwMF9DVFJMX1JTVCkpOwo+ICAgICAgICAgLyogY2Fubm90
IGlzc3VlIGEgZmx1c2ggaGVyZSBiZWNhdXNlIGl0IGhhbmdzIHRoZSBoYXJkd2FyZSAqLwo+ICAg
ICAgICAgbXNsZWVwKDIwKTsKPgo+ICAgICAgICAgLyogQ29uZmlndXJhdGlvbiBzcGFjZSBhY2Nl
c3MgaW1wcm92ZSBIVyBsZXZlbCB0aW1lIHN5bmMgbWVjaGFuaXNtLgo+ICAgICAgICAgICogV3Jp
dGUgdG8gRTEwMDBfU1RSQVAgUk8gcmVnaXN0ZXIgRTEwMDBfUENJX1ZFTkRPUl9JRF9SRUdJU1RF
Ugo+ICAgICAgICAgICogdmFsdWUgdG8gaW5zdXJlIGNvbmZpZ3VyYXRpb24gc3BhY2UgcmVhZCBp
cyBkb25lCj4gICAgICAgICAgKiBiZWZvcmUgYW55IGFjY2VzcyB0byBtYWMgcmVnaXN0ZXIuCj4g
ICAgICAgICAgKi8KPiAgICAgICAgIHBjaV9yZWFkX2NvbmZpZ193b3JkKGh3LT5hZGFwdGVyLT5w
ZGV2LCBFMTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgJnBjaV9jZmcpOwo+ICAgICAgICAgZXczMihTVFJBUCwgcGNpX2NmZyk7CgpUdXJu
cyBvdXQgdGhlICJleHRyYSBzYXVjZeKAnSBpcyBub3QgdGhpcyBwYXJ0LCBpdOKAmXMgY2FsbGVk
IOKAnER5bmFtaWMgTFRSICAKc3VwcG9ydOKAnS4KCj4KPiBJcyB0aGVyZSBhbnkgcGxhbiB0byBz
dXBwb3J0IHRoaXMgaW4gdGhlIHVwc3RyZWFtIGtlcm5lbD8KCklzIHRoZXJlIGFueSBwbGFuIHRv
IHN1cHBvcnQgRHluYW1pYyBMVFIgaW4gdXBzdHJlYW0gZTEwMDBlPwoKS2FpLUhlbmcKCj4KPiBL
YWktSGVuZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
