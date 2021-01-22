Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19781300351
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 13:37:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF1832E0F2;
	Fri, 22 Jan 2021 12:36:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L3C-z9DocNSk; Fri, 22 Jan 2021 12:36:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 679502E0F0;
	Fri, 22 Jan 2021 12:36:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C730D1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 12:36:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2E7885964
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 12:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l5nssBFOjkRC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jan 2021 12:36:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 56BB3857BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 12:36:54 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aed2b.dynamic.kabel-deutschland.de
 [95.90.237.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DACBA20647925;
 Fri, 22 Jan 2021 13:36:50 +0100 (CET)
To: Yunjian Wang <wangyunjian@huawei.com>
References: <1611314635-25592-1-git-send-email-wangyunjian@huawei.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3d93455e-cfe5-4f03-0b25-bc1c61fb693d@molgen.mpg.de>
Date: Fri, 22 Jan 2021 13:36:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <1611314635-25592-1-git-send-email-wangyunjian@huawei.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: add NULL pointer check
 before calling xdp_rxq_info_reg
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
Cc: netdev@vger.kernel.org, jerry.lilijun@huawei.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, xudingke@huawei.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBZdW5qaWFuLAoKClRoYW5rIHlvdSBmb3IgbG9va2luZyBhdCB0aGVzZSBpc3N1ZS4KCkFt
IDIyLjAxLjIxIHVtIDEyOjIzIHNjaHJpZWIgd2FuZ3l1bmppYW46Cj4gRnJvbTogWXVuamlhbiBX
YW5nIDx3YW5neXVuamlhbkBodWF3ZWkuY29tPgo+IAo+IFRoZSByeF9yaW5nLT5xX3ZlY3RvciBj
b3VsZCBiZSBOVUxMLCBzbyBpdCBuZWVkIHRvIGJlIGNoZWNrZWQgYmVmb3JlCj4gY2FsbGluZyB4
ZHBfcnhxX2luZm9fcmVnLgoKQSBzbWFsbCBuaXQ6IG5lZWQqcyoKCj4gRml4ZXM6IGIwMmU1YTBl
YmIxNzIgKCJ4c2s6IFByb3BhZ2F0ZSBuYXBpX2lkIHRvIFhEUCBzb2NrZXQgUnggcGF0aCIpCj4g
QWRkcmVzc2VzLUNvdmVyaXR5OiAoIkRlcmVmZXJlbmNlIGFmdGVyIG51bGwgY2hlY2siKQo+IFNp
Z25lZC1vZmYtYnk6IFl1bmppYW4gV2FuZyA8d2FuZ3l1bmppYW5AaHVhd2VpLmNvbT4KPiAtLS0K
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyB8IDUgKysr
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21h
aW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+IGlu
ZGV4IDZjYmJlMDljZThhMC4uN2I3NmIzZjQ0OGY3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+IEBAIC02NTg2LDggKzY1ODYsOSBAQCBp
bnQgaXhnYmVfc2V0dXBfcnhfcmVzb3VyY2VzKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVy
LAo+ICAgCXJ4X3JpbmctPm5leHRfdG9fdXNlID0gMDsKPiAgIAo+ICAgCS8qIFhEUCBSWC1xdWV1
ZSBpbmZvICovCj4gLQlpZiAoeGRwX3J4cV9pbmZvX3JlZygmcnhfcmluZy0+eGRwX3J4cSwgYWRh
cHRlci0+bmV0ZGV2LAo+IC0JCQkgICAgIHJ4X3JpbmctPnF1ZXVlX2luZGV4LCByeF9yaW5nLT5x
X3ZlY3Rvci0+bmFwaS5uYXBpX2lkKSA8IDApCj4gKwlpZiAocnhfcmluZy0+cV92ZWN0b3IgJiYg
eGRwX3J4cV9pbmZvX3JlZygmcnhfcmluZy0+eGRwX3J4cSwgYWRhcHRlci0+bmV0ZGV2LAo+ICsJ
CQkJCQkgIHJ4X3JpbmctPnF1ZXVlX2luZGV4LAo+ICsJCQkJCQkgIHJ4X3JpbmctPnFfdmVjdG9y
LT5uYXBpLm5hcGlfaWQpIDwgMCkKClVucmVsYXRlZCwgYnV0IEkgYWx3YXlzIHdvbmRlciwgaWYg
dGhlcmUgc2hvdWxkbuKAmXQgYmUgbW9yZSBsb2dnaW5nIGZvciAKdGhlIGVycm9yIGNhc2VzLgoK
PiAgIAkJZ290byBlcnI7Cj4gICAKPiAgIAlyeF9yaW5nLT54ZHBfcHJvZyA9IGFkYXB0ZXItPnhk
cF9wcm9nOwoKUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+
CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
