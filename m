Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 208C450FAC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C61984AE7;
	Mon, 24 Jun 2019 15:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hrrVNQjSSZUW; Mon, 24 Jun 2019 15:06:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BB7A85AE0;
	Mon, 24 Jun 2019 15:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3211BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A826204D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYYrr1zG5sUE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:06:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D25120377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:06:55 +0000 (UTC)
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hfQYW-0005cu-H1
 for intel-wired-lan@lists.osuosl.org; Mon, 24 Jun 2019 15:06:52 +0000
Received: by mail-pg1-f197.google.com with SMTP id a13so9548646pgw.19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:06:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=y+QoeWvPrccIYvLGropH5jHS2w+2t9wnJi4dhuZVRGQ=;
 b=PqjbxEtO335ry71Ro5DkHOhMqYGrv4Z5xLfzKEEqkqoH1aEhaFmyf17vbBmVYFbrLH
 /sgU0doWtNYj59Z2AxVl0VTESc9fhyPI/vG+Rg+LKtabi1dJuqP5nTZnwNn7HSwrV307
 oezxc6qvGhMq7ORqflQOS8sp8RtaZsf+9HlAFCxCibCQQIu2irxBoX1v0B8rJoZdaJl9
 iRFCgpqvsX+IUKB/i6BacV1PXxpZhST+95dPYeUKyFzNxfepZu74/6JvGHRwla+6MuQO
 eu3wzeqLwbMxLb9hXRRPWL8zLdtEzSNIPCUhpZNuKxewPVkqrXPm5mCCxVIwYTjqoq1t
 tKug==
X-Gm-Message-State: APjAAAXdPoDiiT+FNbOoicZUizrmA5mOUWRnHx0tVr0Kdh6kZ2psJJiU
 Ivma5hkBgqfem0PnWRt30VDizhc2X+rW397yzWYAjMI5FX7LAlj6lZrWfv5ZCa3z8ZI8762AE6l
 81QT2vQAHIgXX2zrB1HIweyyvMmayBw+KhodjgP5A4Jx7DOY=
X-Received: by 2002:a17:902:7891:: with SMTP id
 q17mr529848pll.236.1561388811268; 
 Mon, 24 Jun 2019 08:06:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycqXZEKk6KVYNmdZDrNEMKxNR2NCHwbsqtBSv0eoZBLh8gAr2zeCpglkeBUrZtvGNFYauSHw==
X-Received: by 2002:a17:902:7891:: with SMTP id
 q17mr529820pll.236.1561388810970; 
 Mon, 24 Jun 2019 08:06:50 -0700 (PDT)
Received: from 2001-b011-380f-3511-4d72-4f7c-d6a5-6121.dynamic-ip6.hinet.net
 (2001-b011-380f-3511-4d72-4f7c-d6a5-6121.dynamic-ip6.hinet.net.
 [2001:b011:380f:3511:4d72:4f7c:d6a5:6121])
 by smtp.gmail.com with ESMTPSA id 23sm12968842pfn.176.2019.06.24.08.06.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 08:06:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <95f88f45-fd6c-52e4-de8c-2db1b4c6c04e@intel.com>
Date: Mon, 24 Jun 2019 23:06:44 +0800
Message-Id: <E8C45269-819C-41E0-A3D3-AA98710DBA4C@canonical.com>
References: <074E1145-A512-4835-9A6D-8FB6634DBD3C@canonical.com>
 <E2D5225B-D683-4895-AC4F-EE01C339262B@canonical.com>
 <95f88f45-fd6c-52e4-de8c-2db1b4c6c04e@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXQgMTk6NTYsIE5lZnRpbiwgU2FzaGEgPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+IHdyb3RlOgoK
PiBPbiA2LzI0LzIwMTkgMTA6MDMsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+IEhpIEplZmZyZXks
Cj4+IGF0IDE5OjA4LCBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+
IHdyb3RlOgo+Pj4gSGkgSmVmZnJleSwKPj4+Cj4+PiBUaGVyZSBhcmUgc2V2ZXJhbCBwbGF0Zm9y
bXMgdGhhdCB1c2VzIGUxMDAwZSBjYW7igJl0IGVudGVyIE9wcG9ydHVuaXN0aWMgIAo+Pj4gUzBp
eCAoUEMxMCkgd2hlbiB0aGUgZXRoZXJuZXQgaGFzIGEgbGluayBwYXJ0bmVyLgo+Pj4KPj4+IFRo
aXMgYmVoYXZpb3IgYWxzbyBleGl0cyBpbiBvdXQtb2YtdHJlZSBlMTAwMGUgZHJpdmVyIDMuNC4y
LjEsIGJ1dCAgCj4+PiBzZWVtcyBsaWtlIDMuNC4yLjMgZml4ZXMgdGhlIGlzc3VlLgo+Pj4KPj4+
IEEgcXVpY2sgZGlmZiBiZXR3ZWVuIHRoZSB0d28gdmVyc2lvbnMgc2hvd3MgdGhhdCB0aGlzIGNv
ZGUgc2VjdGlvbiBtYXkgIAo+Pj4gYmUgb3VyIHNvbHV0aW9uOgo+Pj4KPj4+ICAgICAgICAgLyog
UmVhZCBmcm9tIEVYVENORl9DVFJMIGluIGUxMDAwX2FjcXVpcmVfc3dmbGFnX2ljaDhsYW4gZnVu
Y3Rpb24KPj4+ICAgICAgICAgICogbWF5IG9jY3VyIGR1cmluZyBnbG9iYWwgcmVzZXQgYW5kIGNh
dXNlIHN5c3RlbSBoYW5nLgo+Pj4gICAgICAgICAgKiBDb25maWd1cmF0aW9uIHNwYWNlIGFjY2Vz
cyBjcmVhdGVzIHRoZSBuZWVkZWQgZGVsYXkuCj4+PiAgICAgICAgICAqIFdyaXRlIHRvIEUxMDAw
X1NUUkFQIFJPIHJlZ2lzdGVyIEUxMDAwX1BDSV9WRU5ET1JfSURfUkVHSVNURVIgdmFsdWUKPj4+
ICAgICAgICAgICogaW5zdXJlcyBjb25maWd1cmF0aW9uIHNwYWNlIHJlYWQgaXMgZG9uZSBiZWZv
cmUgZ2xvYmFsIHJlc2V0Lgo+Pj4gICAgICAgICAgKi8KPj4+ICAgICAgICAgcGNpX3JlYWRfY29u
ZmlnX3dvcmQoaHctPmFkYXB0ZXItPnBkZXYsIEUxMDAwX1BDSV9WRU5ET1JfSURfUkVHSVNURVIs
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZwY2lfY2ZnKTsKPj4+ICAgICAgICAg
ZXczMihTVFJBUCwgcGNpX2NmZyk7Cj4+PiAgICAgICAgIGVfZGJnKCJJc3N1aW5nIGEgZ2xvYmFs
IHJlc2V0IHRvIGljaDhsYW5cbiIpOwo+Pj4gICAgICAgICBldzMyKENUUkwsIChjdHJsIHwgRTEw
MDBfQ1RSTF9SU1QpKTsKPj4+ICAgICAgICAgLyogY2Fubm90IGlzc3VlIGEgZmx1c2ggaGVyZSBi
ZWNhdXNlIGl0IGhhbmdzIHRoZSBoYXJkd2FyZSAqLwo+Pj4gICAgICAgICBtc2xlZXAoMjApOwo+
Pj4KPj4+ICAgICAgICAgLyogQ29uZmlndXJhdGlvbiBzcGFjZSBhY2Nlc3MgaW1wcm92ZSBIVyBs
ZXZlbCB0aW1lIHN5bmMgbWVjaGFuaXNtLgo+Pj4gICAgICAgICAgKiBXcml0ZSB0byBFMTAwMF9T
VFJBUCBSTyByZWdpc3RlciBFMTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSCj4+PiAgICAgICAg
ICAqIHZhbHVlIHRvIGluc3VyZSBjb25maWd1cmF0aW9uIHNwYWNlIHJlYWQgaXMgZG9uZQo+Pj4g
ICAgICAgICAgKiBiZWZvcmUgYW55IGFjY2VzcyB0byBtYWMgcmVnaXN0ZXIuCj4+PiAgICAgICAg
ICAqLwo+Pj4gICAgICAgICBwY2lfcmVhZF9jb25maWdfd29yZChody0+YWRhcHRlci0+cGRldiwg
RTEwMDBfUENJX1ZFTkRPUl9JRF9SRUdJU1RFUiwKPj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJnBjaV9jZmcpOwo+Pj4gICAgICAgICBldzMyKFNUUkFQLCBwY2lfY2ZnKTsKPj4gVHVy
bnMgb3V0IHRoZSAiZXh0cmEgc2F1Y2XigJ0gaXMgbm90IHRoaXMgcGFydCwgaXTigJlzIGNhbGxl
ZCDigJxEeW5hbWljIExUUiAgCj4+IHN1cHBvcnTigJ0uCj4+ID4+Cj4+PiBJcyB0aGVyZSBhbnkg
cGxhbiB0byBzdXBwb3J0IHRoaXMgaW4gdGhlIHVwc3RyZWFtIGtlcm5lbD8KPj4gSXMgdGhlcmUg
YW55IHBsYW4gdG8gc3VwcG9ydCBEeW5hbWljIExUUiBpbiB1cHN0cmVhbSBlMTAwMGU/Cj4gRHlu
YW1pYyBMVFIgaXMgbm90IHN0YWJsZSBzb2x1dGlvbi4gU28sIHdlIGNhbiBub3QgcHV0IHRoaXMg
c29sdXRpb24gdG8gIAo+IHVwc3RyZWFtLiBJIGhvcGUgd2Ugd2lsbCBiZSBhYmxlIHRvIGZpeCB0
aGlzIGluIEhXIGZvciBhIGZ1dHVyZSBwcm9qZWN0cy4KCkRvZXMgdGhpcyBtZWFuIGN1cnJlbnQg
Z2VuZXJhdGlvbiBoYXJkd2FyZSB3b27igJl0IGdldCB0aGUgZml4PwoKPiBTMGl4IHN1cHBvcnQg
aXMgdW5kZXIgZGlzY3Vzc2lvbiB3aXRoIG91ciBhcmNoaXRlY3R1cmUuIFdlIHdpbGwgdHJ5ICAK
PiBlbmFibGUgUzBpeCBpbiBvdXIgZTEwMDBlIE9PVCBkcml2ZXIgYXMgZmlyc3Qgc3RlcC4KCklz
IGl0IHBvc3NpYmxlIHRvIGFkZCBEeW5hbWljIExUUiBhcyBhbiBvcHRpb24gc28gdXNlcnMgYW5k
IGRvd25zdHJlYW0gIApkaXN0cm9zIGNhbiBzdGlsbCBiZW5lZml0IGZyb20gaXQ/CgpLYWktSGVu
ZwoKPj4gS2FpLUhlbmcKPj4+IEthaS1IZW5nCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPj4g
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCj4KPiBUaGFua3MKPiBTYXNoYQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
