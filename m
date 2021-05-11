Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA9C37AB1E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 17:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A06D40379;
	Tue, 11 May 2021 15:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnGuq7kRvGua; Tue, 11 May 2021 15:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2B604028E;
	Tue, 11 May 2021 15:49:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B4931BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09667606A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=embeddedor.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQStu7152pdL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 15:49:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com
 [192.185.47.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB3D66066B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:49:35 +0000 (UTC)
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 6661141413
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 10:49:31 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id gUdXlEd4aAEP6gUdXlEuWx; Tue, 11 May 2021 10:49:31 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=du7TLirKJwuRndTVgzHHBCMXvT6lZMGk+j6j2JK4ikk=; b=jVO4W/UG3fiHMDSm9xE8Ra87k3
 +cgQgqzxJVZdYJVsdqhpoh0FUWz2VDu+NJczDnC8WrpoxH++yGLWMSWG3vY3L4TwcEYXqt/VYGwfS
 Iq31krhyN9/zwtnmsYa6hR2l5qrGI5RbO2Mobfbn1y34LKFCKc6D5eLAQx35mV97uY/wAYMkfgXsp
 VBABL308IUxeJpnKvlfvfqVxAxxg9F58lw2s/1Y7rEoPe1aUmq+ePxI3C45k6ughER11G8y7I7zE2
 mWTQsmaxiHyhKmUDzHzrf4wrxEimMLhzUQ83BNifaZvm0BwlnDyKzNINSGViHnLXpKpL1nFECJa15
 lAWA6ndQ==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:59016
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <gustavo@embeddedor.com>)
 id 1lgUdS-000VgQ-Ji; Tue, 11 May 2021 10:49:26 -0500
To: "Switzer, David" <david.switzer@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20210413190345.GA304933@embeddedor>
 <MW3PR11MB47483A28574E9F2C5517D3C5EB589@MW3PR11MB4748.namprd11.prod.outlook.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <b0749fb9-ff4e-3237-e2f7-b97255545eb0@embeddedor.com>
Date: Tue, 11 May 2021 10:49:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <MW3PR11MB47483A28574E9F2C5517D3C5EB589@MW3PR11MB4748.namprd11.prod.outlook.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1lgUdS-000VgQ-Ji
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:59016
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 40
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: Re: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-bounds warning
 in ixgbe_host_interface_command()
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
Cc: "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Kees Cook <keescook@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgYWxsLAoKT24gNS82LzIxIDAyOjI1LCBTd2l0emVyLCBEYXZpZCB3cm90ZToKPiAKPj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13
aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YKPj4gR3VzdGF2byBBLiBS
LiBTaWx2YQo+PiBTZW50OiBUdWVzZGF5LCBBcHJpbCAxMywgMjAyMSAxMjowNCBQTQo+PiBUbzog
QnJhbmRlYnVyZywgSmVzc2UgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPjsgTmd1eWVuLCBB
bnRob255IEwKPj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVy
IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIKPj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9y
Zz4KPj4gQ2M6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPjsgbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgbGludXgtCj4+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEd1c3Rhdm8gQS4g
Ui4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz47IGludGVsLQo+PiB3aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZzsgbGludXgtaGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZwo+PiBTdWJqZWN0
OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdW25leHRdIGl4Z2JlOiBGaXggb3V0LWJvdW5kcyB3
YXJuaW5nIGluCj4+IGl4Z2JlX2hvc3RfaW50ZXJmYWNlX2NvbW1hbmQoKQo+Pgo+PiBSZXBsYWNl
IHVuaW9uIHdpdGggYSBjb3VwbGUgb2YgcG9pbnRlcnMgaW4gb3JkZXIgdG8gZml4IHRoZSBmb2xs
b3dpbmcgb3V0LW9mLQo+PiBib3VuZHMgd2FybmluZzoKPj4KPj4gIENDIFtNXSAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLm8KPj4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmM6IEluIGZ1bmN0aW9uCj4+IOKAmGl4Z2Jl
X2hvc3RfaW50ZXJmYWNlX2NvbW1hbmTigJk6Cj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX2NvbW1vbi5jOjM3Mjk6MTM6IHdhcm5pbmc6IGFycmF5Cj4+IHN1YnNjcmlw
dCAxIGlzIGFib3ZlIGFycmF5IGJvdW5kcyBvZiDigJh1MzJbMV3igJkge2FrYSDigJh1bnNpZ25l
ZCBpbnRbMV3igJl9IFstV2FycmF5LQo+PiBib3VuZHNdCj4+IDM3MjkgfCAgIGJwLT51MzJhcnJb
YmldID0gSVhHQkVfUkVBRF9SRUdfQVJSQVkoaHcsIElYR0JFX0ZMRVhfTU5HLCBiaSk7Cj4+ICAg
ICAgfCAgIH5+fn5+fn5+fn5efn5+Cj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX2NvbW1vbi5jOjM2ODI6Nzogbm90ZTogd2hpbGUKPj4gcmVmZXJlbmNpbmcg4oCYdTMy
YXJy4oCZCj4+IDM2ODIgfCAgIHUzMiB1MzJhcnJbMV07Cj4+ICAgICAgfCAgICAgICBefn5+fn4K
Pj4KPj4gVGhpcyBoZWxwcyB3aXRoIHRoZSBvbmdvaW5nIGVmZm9ydHMgdG8gZ2xvYmFsbHkgZW5h
YmxlIC1XYXJyYXktYm91bmRzLgo+Pgo+PiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9s
aW51eC9pc3N1ZXMvMTA5Cj4+IENvLWRldmVsb3BlZC1ieTogS2VlcyBDb29rIDxrZWVzY29va0Bj
aHJvbWl1bS5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21p
dW0ub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvYXJz
QGtlcm5lbC5vcmc+Cj4+IC0tLQo+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV9jb21tb24uYyB8IDE2ICsrKysrKystLS0tLS0tLS0KPj4gMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPj4KPiBUZXN0ZWQtYnk6IERhdmUgU3dpdHpl
ciA8ZGF2aWQuc3dpdHplckBpbnRlbC5jb20+CgpUaGFua3MgZm9yIHRoaXMsIERhdmUuIDopCgpC
eSB0aGUgd2F5LCB3ZSBhcmUgYWJvdXQgdG8gYmUgYWJsZSB0byBnbG9iYWxseSBlbmFibGUgLVdh
cnJheS1ib3VuZHMgYW5kLAp0aGlzIGlzIG9uZSBvZiB0aGUgbGFzdCBvdXQtb2YtYm91bmRzIHdh
cm5pbmdzIGluIGxpbnV4LW5leHQuCgpUaGFua3MKLS0KR3VzdGF2bwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
