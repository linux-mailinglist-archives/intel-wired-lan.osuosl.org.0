Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C70C249842
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 10:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEB4086CDB;
	Wed, 19 Aug 2020 08:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SD8DP2cfDSv; Wed, 19 Aug 2020 08:31:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7078F86C5A;
	Wed, 19 Aug 2020 08:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 071061BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 08:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F2CBE86C4A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 08:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id slUVcj5hDG+S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 08:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2539786C0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 08:31:08 +0000 (UTC)
IronPort-SDR: AS6Y3/bXUNUuGwfmiKfkPL3AodixuqYZY9rsLXw2eYsAB44NsJuJbiv57nt8eg8asGgCCaykqt
 yRGfo+kjHaaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="152688103"
X-IronPort-AV: E=Sophos;i="5.76,330,1592895600"; d="scan'208";a="152688103"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 01:31:07 -0700
IronPort-SDR: nr4QPHBurlUlXmKW2U6aYGO1vaY4Zx4aXEo8b30aHCAt7iBdbwxTZ8t/rq5o4AW8koO9DtWtSA
 dhe5UpMfsCtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,330,1592895600"; d="scan'208";a="497163000"
Received: from skirillo-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.249.32.199])
 by fmsmga006.fm.intel.com with ESMTP; 19 Aug 2020 01:31:04 -0700
To: "Li,Rongqing" <lirongqing@baidu.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
 <4268316b200049d58b9973ec4dc4725c@baidu.com>
 <83e45ec2-1c66-59f6-e817-d4c523879007@intel.com>
 <c3695fc71ca140d08a795bbd32d8522f@baidu.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <c691e3d2-8b16-744c-8918-5be042bd37dc@intel.com>
Date: Wed, 19 Aug 2020 10:31:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c3695fc71ca140d08a795bbd32d8522f@baidu.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?562U5aSNOiDnrZTlpI06ICBbUEFUQ0ggMC8y?=
 =?utf-8?q?=5D_intel/xdp_fixes_for_fliping_rx_buffer?=
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOC0xOSAxMDoxNywgTGksUm9uZ3Fpbmcgd3JvdGU6Cj4gCj4gCj4+IC0tLS0t6YKu
5Lu25Y6f5Lu2LS0tLS0KPj4g5Y+R5Lu25Lq6OiBCasO2cm4gVMO2cGVsIFttYWlsdG86Ympvcm4u
dG9wZWxAaW50ZWwuY29tXQo+PiDlj5HpgIHml7bpl7Q6IDIwMjDlubQ45pyIMTnml6UgMTQ6NDUK
Pj4g5pS25Lu25Lq6OiBMaSxSb25ncWluZyA8bGlyb25ncWluZ0BiYWlkdS5jb20+OyBCasO2cm4g
VMO2cGVsCj4+IDxiam9ybi50b3BlbEBnbWFpbC5jb20+Cj4+IOaKhOmAgTogTmV0ZGV2IDxuZXRk
ZXZAdmdlci5rZXJuZWwub3JnPjsgaW50ZWwtd2lyZWQtbGFuCj4+IDxpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZz47IEthcmxzc29uLCBNYWdudXMKPj4gPG1hZ251cy5rYXJsc3NvbkBp
bnRlbC5jb20+OyBicGYgPGJwZkB2Z2VyLmtlcm5lbC5vcmc+OyBNYWNpZWogRmlqYWxrb3dza2kK
Pj4gPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+OyBQaW90ciA8cGlvdHIucmFjenluc2tp
QGludGVsLmNvbT47IE1hY2llago+PiA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+Cj4+
IOS4u+mimDogUmU6IOetlOWkjTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIDAvMl0gaW50ZWwv
eGRwIGZpeGVzIGZvciBmbGlwaW5nIHJ4IGJ1ZmZlcgo+Pgo+PiBPbiAyMDIwLTA4LTE5IDAzOjM3
LCBMaSxSb25ncWluZyB3cm90ZToKPj4gWy4uLl0KPj4gICA+IEhpOgo+PiAgID4KPj4gICA+IFRo
YW5rcyBmb3IgeW91ciBleHBsYW5hdGlvbi4KPj4gICA+Cj4+ICAgPiBCdXQgd2UgY2FuIHJlcHJv
ZHVjZSB0aGlzIGJ1Zwo+PiAgID4KPj4gICA+IFdlIHVzZSBlYnBmIHRvIHJlZGlyZWN0IG9ubHkt
VnhsYW4gcGFja2V0cyB0byBub24temVyb2NvcHkgQUZfWERQLCBGaXJzdCB3ZQo+PiBzZWUgcGFu
aWMgb24gdGNwIHN0YWNrLCBpbiB0Y3BfY29sbGFwc2U6IEJVR19PTihvZmZzZXQgPCAwKTsgaXQg
aXMgdmVyeSBoYXJkIHRvCj4+IHJlcHJvZHVjZS4KPj4gICA+Cj4+ICAgPiBUaGVuIHdlIHVzZSB0
aGUgc2NwIHRvIGRvIHRlc3QsIGFuZCBoYXMgbG90cyBvZiB2eGxhbiBwYWNrZXQgYXQgdGhlIHNh
bWUKPj4gdGltZSwgc2NwIHdpbGwgYmUgYnJva2VuIGZyZXF1ZW50bHkuCj4+ICAgPgo+Pgo+PiBP
ayEgSnVzdCBzbyB0aGF0IEknbSBjZXJ0YWluIG9mIHlvdXIgc2V0dXAuIFlvdSByZWNlaXZlIHBh
Y2tldHMgdG8gYW4gaTQwZSBuZXRkZXYKPj4gd2hlcmUgdGhlcmUncyBhbiBYRFAgcHJvZ3JhbS4g
VGhlIHByb2dyYW0gZG9lcyBYRFBfUEFTUyBvciBYRFBfUkVESVJFQ1QKPj4gdG8gZS5nLiBkZXZt
YXAgZm9yIG5vbi12eGxhbiBwYWNrZXRzLiBIb3dldmVyLCB2eGxhbiBwYWNrZXRzIGFyZSByZWRp
cmVjdGVkIHRvCj4+IEFGX1hEUCBzb2NrZXQocykgaW4gKmNvcHktbW9kZSouIEFtIEkgdW5kZXJz
dGFuZGluZyB0aGF0IGNvcnJlY3Q/Cj4+Cj4gU2ltaWxhciBhcyB5b3VyIGRlc2NyaXB0aW9uLAo+
IAo+IGJ1dCB0aGUgeGRwIHByb2dyYW0gb25seSByZWRpcmVjdHMgdnhsYW4gcGFja2V0cyB0byBh
Zl94ZHAgc29ja2V0LCBvdGhlciBwYWNrZXRzIHdpbGwgZ28gdG8gTGludXgga2VybmVsIG5ldHdv
cmtpbmcgc3RhY2ssIGxpa2Ugc2NwL3NzaCBwYWNrZXRzCj4gCj4gCj4+IEknbSBhc3N1bWluZyB0
aGlzIGlzIGFuIHg4Ni02NCB3aXRoIDRrIHBhZ2Ugc2l6ZSwgcmlnaHQ/IDotKSBUaGUgcGFnZSBm
bGlwcGluZyBpcyBhCj4+IGJpdCBkaWZmZXJlbnQgaWYgdGhlIFBBR0VfU0laRSBpcyBub3QgNGsu
Cj4+Cj4gCj4gV2UgdXNlIDRrIHBhZ2Ugc2l6ZSwgcGFnZSBmbGlwcGluZyBpcyA0aywgd2UgZGlk
IG5vdCBjaGFuZ2UgdGhlIGk0MGUgZHJpdmVycywgNC4xOSBzdGFibGUga2VybmVsCj4KCldvdWxk
IHlvdSBtaW5kIHRlc3Rpbmcgb24gYSBuZXdlciBrZXJuZWw/IFNheSB0aGUgbGF0ZXN0IHN0YWJs
ZSA1LjguMj8KCgo+PiAgID4gV2l0aCB0aGlzIGZpeGVzLCBzY3AgaGFzIG5vdCBiZWVuIGJyb2tl
biBhZ2FpbiwgYW5kIGtlcm5lbCBpcyBub3QgcGFuaWMKPj4gYWdhaW4gID4KPj4KPj4gTGV0J3Mg
ZGlnIGludG8geW91ciBzY2VuYXJpby4KPj4KPj4gQXJlIHlvdSBzYXlpbmcgdGhlIGZvbGxvd2lu
ZzoKPj4KPj4gUGFnZSBBOgo+PiArLS0tLS0tLS0tLS0tCj4+IHwgImZpcnN0IHNrYiIgLS0tLT4g
UnggSFcgcmluZyBlbnRyeSBYCj4+ICstLS0tLS0tLS0tLS0KPj4gfCAic2Vjb25kIHNrYiItLS0t
PiBSeCBIVyByaW5nIGVudHJ5IFgrMSAob3IgWCtuKQo+PiArLS0tLS0tLS0tLS0tCj4+Cj4gCj4g
TGlrZToKPiAKPiBGaXJzdCBza2Igd2lsbCBiZSBpbnRvIHRjcCBzb2NrZXQgcnggcXVldWUKPiAK
PiBTZWNvbmRzIHNrYiBpcyB2eGxhbiBwYWNrZXQsIHdpbGwgYmUgY29weSB0byBhZl94ZHAgc29j
a2V0LCBhbmQgcmVsZWFzZWQuCj4gCj4+IFRoaXMgaXMgYSBzY2VuYXJpbyB0aGF0IHNob3VsZG4n
dCBiZSBhbGxvd2VkLCBiZWNhdXNlIHRoZXJlIGFyZSBub3cgdHdvIHVzZXJzCj4+IG9mIHRoZSBw
YWdlLiBJZiB0aGF0J3MgdGhlIGNhc2UsIHRoZSByZWZjb3VudGluZyBpcyBicm9rZW4uIElzIHRo
YXQgdGhlIGNhc2U/Cj4+Cj4gCj4gVHJ1ZSwgaXQgaXMgYnJva2VuIGZvciBjb3B5IG1vZGUgeHNr
Cj4KCk9rLiBIb3dldmVyLCB0aGUgZml4IGlzIG5vdCBhdm9pZGluZyB0aGUgcGFnZV9mcmFnX2Zy
ZWUsIGJ1dCBmaW5kaW5nIGFuZCAKZml4aW5nIHRoZSByZWZjb3VudCBidWcuIEknbGwgaGF2ZSBh
IGRlZXBlciBsb29rLgoKQnV0IHBsZWFzZSwgdHJ5IHRvIHJlcHJvZHVjZSB3aXRoIGEgbmV3ZXIg
a2VybmVsLgoKClRoYW5rcywKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
