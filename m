Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18DDE0C39
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2019 21:06:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4900F81EF5;
	Tue, 22 Oct 2019 19:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6OnL+EOi82g; Tue, 22 Oct 2019 19:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24D5184DF7;
	Tue, 22 Oct 2019 19:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFD2B1BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 19:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAEFE203C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 19:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffHnWBLZaVA1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2019 19:06:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 1874520395
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 19:06:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 12:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="196537830"
Received: from unknown (HELO [10.241.228.168]) ([10.241.228.168])
 by fmsmga008.fm.intel.com with ESMTP; 22 Oct 2019 12:06:19 -0700
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
 <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
 <CAADnVQ+CH1YM52+LfybLS+NK16414Exrvk1QpYOF=HaT4KRaxg@mail.gmail.com>
 <acf69635-5868-f876-f7da-08954d1f690e@intel.com>
 <20191019001449.fk3gnhih4nx724pm@ast-mbp>
 <6f281517-3785-ce46-65de-e2f78576783b@intel.com>
 <20191019022525.w5xbwkav2cpqkfwi@ast-mbp> <877e4zd8py.fsf@toke.dk>
 <CAJ+HfNj07FwmU2GGpUYw56PRwu4pHyHNSkbCOogbMB5zB2QqWA@mail.gmail.com>
 <7642a460-9ba3-d9f7-6cf8-aac45c7eef0d@intel.com>
 <CAADnVQ+jiEO+jnFR-G=xG=zz7UOSBieZbc1NN=sSnAwvPaJjUQ@mail.gmail.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <8956a643-0163-5345-34fa-3566762a2b7d@intel.com>
Date: Tue, 22 Oct 2019 12:06:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAADnVQ+jiEO+jnFR-G=xG=zz7UOSBieZbc1NN=sSnAwvPaJjUQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] FW: [PATCH bpf-next 2/4] xsk: allow AF_XDP
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, Netdev <netdev@vger.kernel.org>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Herbert,
 Tom" <tom.herbert@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMjEvMjAxOSAzOjM0IFBNLCBBbGV4ZWkgU3Rhcm92b2l0b3Ygd3JvdGU6Cj4gT24gTW9u
LCBPY3QgMjEsIDIwMTkgYXQgMToxMCBQTSBTYW11ZHJhbGEsIFNyaWRoYXIKPiA8c3JpZGhhci5z
YW11ZHJhbGFAaW50ZWwuY29tPiB3cm90ZToKPj4KPj4gT24gMTAvMjAvMjAxOSAxMDoxMiBBTSwg
QmrDtnJuIFTDtnBlbCB3cm90ZToKPj4+IE9uIFN1biwgMjAgT2N0IDIwMTkgYXQgMTI6MTUsIFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+
IEFsZXhlaSBTdGFyb3ZvaXRvdiA8YWxleGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JpdGVz
Ogo+Pj4+Cj4+Pj4+IE9uIEZyaSwgT2N0IDE4LCAyMDE5IGF0IDA1OjQ1OjI2UE0gLTA3MDAsIFNh
bXVkcmFsYSwgU3JpZGhhciB3cm90ZToKPj4+Pj4+IE9uIDEwLzE4LzIwMTkgNToxNCBQTSwgQWxl
eGVpIFN0YXJvdm9pdG92IHdyb3RlOgo+Pj4+Pj4+IE9uIEZyaSwgT2N0IDE4LCAyMDE5IGF0IDEx
OjQwOjA3QU0gLTA3MDAsIFNhbXVkcmFsYSwgU3JpZGhhciB3cm90ZToKPj4+Pj4+Pj4KPj4+Pj4+
Pj4gUGVyZiByZXBvcnQgZm9yICJBRl9YRFAgZGVmYXVsdCByeGRyb3AiIHdpdGggcGF0Y2hlZCBr
ZXJuZWwgLSBtaXRpZ2F0aW9ucyBPTgo+Pj4+Pj4+PiA9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pj4+Pj4+
PiBTYW1wbGVzOiA0NEsgb2YgZXZlbnQgJ2N5Y2xlcycsIEV2ZW50IGNvdW50IChhcHByb3guKTog
Mzg1MzIzODk1NDEKPj4+Pj4+Pj4gT3ZlcmhlYWQgIENvbW1hbmQgICAgICAgICAgU2hhcmVkIE9i
amVjdCAgICAgICAgICAgICAgU3ltYm9sCj4+Pj4+Pj4+ICAgICAgMTUuMzElICBrc29mdGlycWQv
MjggICAgIFtpNDBlXSAgICAgICAgICAgICAgICAgICAgIFtrXSBpNDBlX2NsZWFuX3J4X2lycV96
Ywo+Pj4+Pj4+PiAgICAgIDEwLjUwJSAga3NvZnRpcnFkLzI4ICAgICBicGZfcHJvZ184MGI1NWQ4
YTc2MzAzNzg1ICBba10gYnBmX3Byb2dfODBiNTVkOGE3NjMwMzc4NQo+Pj4+Pj4+PiAgICAgICA5
LjQ4JSAgeGRwc29jayAgICAgICAgICBbaTQwZV0gICAgICAgICAgICAgICAgICAgICBba10gaTQw
ZV9jbGVhbl9yeF9pcnFfemMKPj4+Pj4+Pj4gICAgICAgOC42MiUgIHhkcHNvY2sgICAgICAgICAg
eGRwc29jayAgICAgICAgICAgICAgICAgICAgWy5dIG1haW4KPj4+Pj4+Pj4gICAgICAgNy4xMSUg
IGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIHhza19yY3YK
Pj4+Pj4+Pj4gICAgICAgNS44MSUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAg
ICAgICAgICAgW2tdIHhkcF9kb19yZWRpcmVjdAo+Pj4+Pj4+PiAgICAgICA0LjQ2JSAgeGRwc29j
ayAgICAgICAgICBicGZfcHJvZ184MGI1NWQ4YTc2MzAzNzg1ICBba10gYnBmX3Byb2dfODBiNTVk
OGE3NjMwMzc4NQo+Pj4+Pj4+PiAgICAgICAzLjgzJSAgeGRwc29jayAgICAgICAgICBba2VybmVs
LnZtbGludXhdICAgICAgICAgICBba10geHNrX3Jjdgo+Pj4+Pj4+Cj4+Pj4+Pj4gd2h5IGV2ZXJ5
dGhpbmcgaXMgZHVwbGljYXRlZD8KPj4+Pj4+PiBTYW1lIGNvZGUgcnVucyBpbiBkaWZmZXJlbnQg
dGFza3MgPwo+Pj4+Pj4KPj4+Pj4+IFllcy4gbG9va3MgbGlrZSB0aGVzZSBmdW5jdGlvbnMgcnVu
IGZyb20gYm90aCB0aGUgYXBwKHhkcHNvY2spIGNvbnRleHQgYW5kIGtzb2Z0aXJxZCBjb250ZXh0
Lgo+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+PiAgICAgICAyLjgxJSAga3NvZnRpcnFkLzI4ICAgICBb
a2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gYnBmX3hkcF9yZWRpcmVjdF9tYXAKPj4+Pj4+
Pj4gICAgICAgMi43OCUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAg
ICAgW2tdIHhza19tYXBfbG9va3VwX2VsZW0KPj4+Pj4+Pj4gICAgICAgMi40NCUgIHhkcHNvY2sg
ICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIHhkcF9kb19yZWRpcmVjdAo+
Pj4+Pj4+PiAgICAgICAyLjE5JSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAg
ICAgICAgICBba10gX194c2tfbWFwX3JlZGlyZWN0Cj4+Pj4+Pj4+ICAgICAgIDEuNjIlICBrc29m
dGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSB4c2tfdW1lbV9wZWVr
X2FkZHIKPj4+Pj4+Pj4gICAgICAgMS41NyUgIHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxp
bnV4XSAgICAgICAgICAgW2tdIHhza191bWVtX3BlZWtfYWRkcgo+Pj4+Pj4+PiAgICAgICAxLjMy
JSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gZG1hX2Rp
cmVjdF9zeW5jX3NpbmdsZV9mb3JfY3B1Cj4+Pj4+Pj4+ICAgICAgIDEuMjglICB4ZHBzb2NrICAg
ICAgICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSBicGZfeGRwX3JlZGlyZWN0X21h
cAo+Pj4+Pj4+PiAgICAgICAxLjE1JSAgeGRwc29jayAgICAgICAgICBba2VybmVsLnZtbGludXhd
ICAgICAgICAgICBba10gZG1hX2RpcmVjdF9zeW5jX3NpbmdsZV9mb3JfZGV2aWNlCj4+Pj4+Pj4+
ICAgICAgIDEuMTIlICB4ZHBzb2NrICAgICAgICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAg
IFtrXSB4c2tfbWFwX2xvb2t1cF9lbGVtCj4+Pj4+Pj4+ICAgICAgIDEuMDYlICB4ZHBzb2NrICAg
ICAgICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSBfX3hza19tYXBfcmVkaXJlY3QK
Pj4+Pj4+Pj4gICAgICAgMC45NCUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAg
ICAgICAgICAgW2tdIGRtYV9kaXJlY3Rfc3luY19zaW5nbGVfZm9yX2RldmljZQo+Pj4+Pj4+PiAg
ICAgICAwLjc1JSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBb
a10gX194ODZfaW5kaXJlY3RfdGh1bmtfcmF4Cj4+Pj4+Pj4+ICAgICAgIDAuNjYlICBrc29mdGly
cWQvMjggICAgIFtpNDBlXSAgICAgICAgICAgICAgICAgICAgIFtrXSBpNDBlX2NsZWFuX3Byb2dy
YW1taW5nX3N0YXR1cwo+Pj4+Pj4+PiAgICAgICAwLjY0JSAga3NvZnRpcnFkLzI4ICAgICBba2Vy
bmVsLnZtbGludXhdICAgICAgICAgICBba10gbmV0X3J4X2FjdGlvbgo+Pj4+Pj4+PiAgICAgICAw
LjY0JSAgc3dhcHBlciAgICAgICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gaW50
ZWxfaWRsZQo+Pj4+Pj4+PiAgICAgICAwLjYyJSAga3NvZnRpcnFkLzI4ICAgICBbaTQwZV0gICAg
ICAgICAgICAgICAgICAgICBba10gaTQwZV9uYXBpX3BvbGwKPj4+Pj4+Pj4gICAgICAgMC41NyUg
IHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIGRtYV9kaXJl
Y3Rfc3luY19zaW5nbGVfZm9yX2NwdQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBQZXJmIHJlcG9ydCBmb3Ig
IkFGX1hEUCBkaXJlY3Qgcnhkcm9wIiB3aXRoIHBhdGNoZWQga2VybmVsIC0gbWl0aWdhdGlvbnMg
T04KPj4+Pj4+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4+Pj4+Pj4gU2FtcGxlczogNDZLIG9mIGV2
ZW50ICdjeWNsZXMnLCBFdmVudCBjb3VudCAoYXBwcm94Lik6IDM4Mzg3MDE4NTg1Cj4+Pj4+Pj4+
IE92ZXJoZWFkICBDb21tYW5kICAgICAgICAgIFNoYXJlZCBPYmplY3QgICAgICAgICAgICAgU3lt
Ym9sCj4+Pj4+Pj4+ICAgICAgMjEuOTQlICBrc29mdGlycWQvMjggICAgIFtpNDBlXSAgICAgICAg
ICAgICAgICAgICAgW2tdIGk0MGVfY2xlYW5fcnhfaXJxX3pjCj4+Pj4+Pj4+ICAgICAgMTQuMzYl
ICB4ZHBzb2NrICAgICAgICAgIHhkcHNvY2sgICAgICAgICAgICAgICAgICAgWy5dIG1haW4KPj4+
Pj4+Pj4gICAgICAxMS41MyUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAg
ICAgICBba10geHNrX3Jjdgo+Pj4+Pj4+PiAgICAgIDExLjMyJSAgeGRwc29jayAgICAgICAgICBb
aTQwZV0gICAgICAgICAgICAgICAgICAgIFtrXSBpNDBlX2NsZWFuX3J4X2lycV96Ywo+Pj4+Pj4+
PiAgICAgICA0LjAyJSAgeGRwc29jayAgICAgICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAg
IFtrXSB4c2tfcmN2Cj4+Pj4+Pj4+ICAgICAgIDIuOTElICBrc29mdGlycWQvMjggICAgIFtrZXJu
ZWwudm1saW51eF0gICAgICAgICAgW2tdIHhkcF9kb19yZWRpcmVjdAo+Pj4+Pj4+PiAgICAgICAy
LjQ1JSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgIFtrXSB4c2tf
dW1lbV9wZWVrX2FkZHIKPj4+Pj4+Pj4gICAgICAgMi4xOSUgIHhkcHNvY2sgICAgICAgICAgW2tl
cm5lbC52bWxpbnV4XSAgICAgICAgICBba10geHNrX3VtZW1fcGVla19hZGRyCj4+Pj4+Pj4+ICAg
ICAgIDIuMDglICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgW2td
IGJwZl9kaXJlY3RfeHNrCj4+Pj4+Pj4+ICAgICAgIDIuMDclICBrc29mdGlycWQvMjggICAgIFtr
ZXJuZWwudm1saW51eF0gICAgICAgICAgW2tdIGRtYV9kaXJlY3Rfc3luY19zaW5nbGVfZm9yX2Nw
dQo+Pj4+Pj4+PiAgICAgICAxLjUzJSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhd
ICAgICAgICAgIFtrXSBkbWFfZGlyZWN0X3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UKPj4+Pj4+Pj4g
ICAgICAgMS4zOSUgIHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICBb
a10gZG1hX2RpcmVjdF9zeW5jX3NpbmdsZV9mb3JfZGV2aWNlCj4+Pj4+Pj4+ICAgICAgIDEuMjIl
ICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgW2tdIHhkcF9nZXRf
eHNrX2Zyb21fcWlkCj4+Pj4+Pj4+ICAgICAgIDEuMTIlICBrc29mdGlycWQvMjggICAgIFtpNDBl
XSAgICAgICAgICAgICAgICAgICAgW2tdIGk0MGVfY2xlYW5fcHJvZ3JhbW1pbmdfc3RhdHVzCj4+
Pj4+Pj4+ICAgICAgIDAuOTYlICBrc29mdGlycWQvMjggICAgIFtpNDBlXSAgICAgICAgICAgICAg
ICAgICAgW2tdIGk0MGVfbmFwaV9wb2xsCj4+Pj4+Pj4+ICAgICAgIDAuOTUlICBrc29mdGlycWQv
MjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgW2tdIG5ldF9yeF9hY3Rpb24KPj4+Pj4+
Pj4gICAgICAgMC44OSUgIHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAg
ICBba10geGRwX2RvX3JlZGlyZWN0Cj4+Pj4+Pj4+ICAgICAgIDAuODMlICBzd2FwcGVyICAgICAg
ICAgIFtpNDBlXSAgICAgICAgICAgICAgICAgICAgW2tdIGk0MGVfY2xlYW5fcnhfaXJxX3pjCj4+
Pj4+Pj4+ICAgICAgIDAuNzAlICBzd2FwcGVyICAgICAgICAgIFtrZXJuZWwudm1saW51eF0gICAg
ICAgICAgW2tdIGludGVsX2lkbGUKPj4+Pj4+Pj4gICAgICAgMC42NiUgIHhkcHNvY2sgICAgICAg
ICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICBba10gZG1hX2RpcmVjdF9zeW5jX3NpbmdsZV9m
b3JfY3B1Cj4+Pj4+Pj4+ICAgICAgIDAuNjAlICB4ZHBzb2NrICAgICAgICAgIFtrZXJuZWwudm1s
aW51eF0gICAgICAgICAgW2tdIGJwZl9kaXJlY3RfeHNrCj4+Pj4+Pj4+ICAgICAgIDAuNTAlICBr
c29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgW2tdIHhza191bWVtX2Rp
c2NhcmRfYWRkcgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBCYXNlZCBvbiB0aGUgcGVyZiByZXBvcnRzIGNv
bXBhcmluZyBBRl9YRFAgZGVmYXVsdCBhbmQgZGlyZWN0IHJ4ZHJvcCwgd2UgY2FuIHNheSB0aGF0
Cj4+Pj4+Pj4+IEFGX1hEUCBkaXJlY3Qgcnhkcm9wIGNvZGVwYXRoIGlzIGF2b2lkaW5nIHRoZSBv
dmVyaGVhZCBvZiBnb2luZyB0aHJvdWdoIHRoZXNlIGZ1bmN0aW9ucwo+Pj4+Pj4+PiAgICBicGZf
cHJvZ194eHgKPj4+Pj4+Pj4gICAgICAgICAgICBicGZfeGRwX3JlZGlyZWN0X21hcAo+Pj4+Pj4+
PiAgICB4c2tfbWFwX2xvb2t1cF9lbGVtCj4+Pj4+Pj4+ICAgICAgICAgICAgX194c2tfbWFwX3Jl
ZGlyZWN0Cj4+Pj4+Pj4+IFdpdGggQUZfWERQIGRpcmVjdCwgeHNrX3JjdigpIGlzIGRpcmVjdGx5
IGNhbGxlZCB2aWEgYnBmX2RpcmVjdF94c2soKSBpbiB4ZHBfZG9fcmVkaXJlY3QoKQo+Pj4+Pj4+
Cj4+Pj4+Pj4gSSBkb24ndCB0aGluayB5b3UncmUgaWRlbnRpZnlpbmcgdGhlIG92ZXJoZWFkIGNv
cnJlY3RseS4KPj4+Pj4+PiB4c2tfbWFwX2xvb2t1cF9lbGVtIGlzIDElCj4+Pj4+Pj4gYnV0IGJw
Zl94ZHBfcmVkaXJlY3RfbWFwKCkgc3VwcG9zZSB0byBjYWxsIF9feHNrX21hcF9sb29rdXBfZWxl
bSgpCj4+Pj4+Pj4gd2hpY2ggaXMgYSBkaWZmZXJlbnQgZnVuY3Rpb246Cj4+Pj4+Pj4gZmZmZmZm
ZmY4MTQ5M2ZlMCBUIF9feHNrX21hcF9sb29rdXBfZWxlbQo+Pj4+Pj4+IGZmZmZmZmZmODE0OTJl
ODAgdCB4c2tfbWFwX2xvb2t1cF9lbGVtCj4+Pj4+Pj4KPj4+Pj4+PiAxMCUgZm9yIGJwZl9wcm9n
XzgwYjU1ZDhhNzYzMDM3ODUgaXMgaHVnZS4KPj4+Pj4+PiBJdCdzIHRoZSBhY3R1YWwgY29kZSBv
ZiB0aGUgcHJvZ3JhbSBfd2l0aG91dF8gYW55IGhlbHBlcnMuCj4+Pj4+Pj4gSG93IGRvZXMgdGhl
IHByb2dyYW0gYWN0dWFsbHkgbG9vaz8KPj4+Pj4+Cj4+Pj4+PiBJdCBpcyB0aGUgeGRwIHByb2dy
YW0gdGhhdCBpcyBsb2FkZWQgdmlhIHhza19sb2FkX3hkcF9wcm9nKCkgaW4gdG9vbHMvbGliL2Jw
Zi94c2suYwo+Pj4+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvYnBmL2JwZi1uZXh0LmdpdC90cmVlL3Rvb2xzL2xpYi9icGYveHNrLmMjbjI2OAo+Pj4+
Pgo+Pj4+PiBJIHNlZS4gTG9va3MgbGlrZSBtYXBfZ2VuX2xvb2t1cCB3YXMgbmV2ZXIgaW1wbGVt
ZW50ZWQgZm9yIHhza21hcC4KPj4+Pj4gSG93IGFib3V0IGFkZGluZyBpdCBmaXJzdCB0aGUgd2F5
IGFycmF5X21hcF9nZW5fbG9va3VwKCkgaXMgaW1wbGVtZW50ZWQ/Cj4+Pj4+IFRoaXMgd2lsbCBl
YXNpbHkgZ2l2ZSAyeCBwZXJmIGdhaW4uCj4+Pj4KPj4+PiBJIGd1ZXNzIHdlIHNob3VsZCBpbXBs
ZW1lbnQgdGhpcyBmb3IgZGV2bWFwcyBhcyB3ZWxsIG5vdyB0aGF0IHdlIGFsbG93Cj4+Pj4gbG9v
a3VwcyBpbnRvIHRob3NlLgo+Pj4+Cj4+Pj4gSG93ZXZlciwgaW4gdGhpcyBwYXJ0aWN1bGFyIGV4
YW1wbGUsIHRoZSBsb29rdXAgZnJvbSBCUEYgaXMgbm90IGFjdHVhbGx5Cj4+Pj4gbmVlZGVkLCBz
aW5jZSBicGZfcmVkaXJlY3RfbWFwKCkgd2lsbCByZXR1cm4gYSBjb25maWd1cmFibGUgZXJyb3Ig
dmFsdWUKPj4+PiB3aGVuIHRoZSBtYXAgbG9va3VwIGZhaWxzIChmb3IgZXhhY3RseSB0aGlzIHVz
ZSBjYXNlKS4KPj4+Pgo+Pj4+IFNvIHJlcGxhY2luZzoKPj4+Pgo+Pj4+IGlmIChicGZfbWFwX2xv
b2t1cF9lbGVtKCZ4c2tzX21hcCwgJmluZGV4KSkKPj4+PiAgICAgICByZXR1cm4gYnBmX3JlZGly
ZWN0X21hcCgmeHNrc19tYXAsIGluZGV4LCAwKTsKPj4+Pgo+Pj4+IHdpdGggc2ltcGx5Cj4+Pj4K
Pj4+PiByZXR1cm4gYnBmX3JlZGlyZWN0X21hcCgmeHNrc19tYXAsIGluZGV4LCBYRFBfUEFTUyk7
Cj4+Pj4KPj4+PiB3b3VsZCBzYXZlIHRoZSBjYWxsIHRvIHhza19tYXBfbG9va3VwX2VsZW0oKS4K
Pj4+Pgo+Pj4KPj4+IFRoYW5rcyBmb3IgdGhlIHJlbWluZGVyISBJIGp1c3Qgc3VibWl0dGVkIGEg
cGF0Y2guIFN0aWxsLCBkb2luZyB0aGUKPj4+IG1hcF9nZW5fbG9va3VwKCkgIGZvciB4c2svZGV2
bWFwcyBzdGlsbCBtYWtlcyBzZW5zZSEKPj4+Cj4+Cj4+IEkgdHJpZWQgQmpvcm4ncyBwYXRjaCB0
aGF0IGF2b2lkcyB0aGUgbG9va3VwcyBpbiB0aGUgQlBGIHByb2cuCj4+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL25ldGRldi8yMDE5MTAyMTEwNTkzOC4xMTgyMC0xLWJqb3JuLnRvcGVsQGdtYWls
LmNvbS8KPj4KPj4gV2l0aCB0aGlzIHBhdGNoIEkgYW0gYWxzbyBzZWVpbmcgYXJvdW5kIDMtNCUg
aW5jcmVhc2UgaW4geGRwc29jayByeGRyb3AgcGVyZm9ybWFuY2UgYW5kCj4+IHRoZSBwZXJmIHJl
cG9ydCBsb29rcyBsaWtlIHRoaXMuCj4+Cj4+IFNhbXBsZXM6IDQ0SyBvZiBldmVudCAnY3ljbGVz
JywgRXZlbnQgY291bnQgKGFwcHJveC4pOiAzODc0OTk2NTIwNAo+PiBPdmVyaGVhZCAgQ29tbWFu
ZCAgICAgICAgICBTaGFyZWQgT2JqZWN0ICAgICAgICAgICAgICBTeW1ib2wKPj4gICAgIDE2LjA2
JSAga3NvZnRpcnFkLzI4ICAgICBbaTQwZV0gICAgICAgICAgICAgICAgICAgICBba10gaTQwZV9j
bGVhbl9yeF9pcnFfemMKPj4gICAgIDEwLjE4JSAga3NvZnRpcnFkLzI4ICAgICBicGZfcHJvZ18z
YzgyNTFjN2UwZmVmOGRiICBba10gYnBmX3Byb2dfM2M4MjUxYzdlMGZlZjhkYgo+PiAgICAgMTAu
MTUlICB4ZHBzb2NrICAgICAgICAgIFtpNDBlXSAgICAgICAgICAgICAgICAgICAgIFtrXSBpNDBl
X2NsZWFuX3J4X2lycV96Ywo+PiAgICAgMTAuMDYlICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwu
dm1saW51eF0gICAgICAgICAgIFtrXSB4c2tfcmN2Cj4+ICAgICAgNy40NSUgIHhkcHNvY2sgICAg
ICAgICAgeGRwc29jayAgICAgICAgICAgICAgICAgICAgWy5dIG1haW4KPj4gICAgICA1Ljc2JSAg
a3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10geGRwX2RvX3Jl
ZGlyZWN0Cj4+ICAgICAgNC41MSUgIHhkcHNvY2sgICAgICAgICAgYnBmX3Byb2dfM2M4MjUxYzdl
MGZlZjhkYiAgW2tdIGJwZl9wcm9nXzNjODI1MWM3ZTBmZWY4ZGIKPj4gICAgICAzLjY3JSAgeGRw
c29jayAgICAgICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10geHNrX3Jjdgo+PiAg
ICAgIDMuMDYlICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtr
XSBicGZfeGRwX3JlZGlyZWN0X21hcAo+PiAgICAgIDIuMzQlICBrc29mdGlycWQvMjggICAgIFtr
ZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSBfX3hza19tYXBfcmVkaXJlY3QKPj4gICAgICAy
LjMzJSAgeGRwc29jayAgICAgICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10geGRw
X2RvX3JlZGlyZWN0Cj4+ICAgICAgMS42OSUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxp
bnV4XSAgICAgICAgICAgW2tdIHhza191bWVtX3BlZWtfYWRkcgo+PiAgICAgIDEuNjklICB4ZHBz
b2NrICAgICAgICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSB4c2tfdW1lbV9wZWVr
X2FkZHIKPj4gICAgICAxLjQyJSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAg
ICAgICAgICBba10gZG1hX2RpcmVjdF9zeW5jX3NpbmdsZV9mb3JfY3B1Cj4+ICAgICAgMS4xOSUg
IHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIGJwZl94ZHBf
cmVkaXJlY3RfbWFwCj4+ICAgICAgMS4xMyUgIHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxp
bnV4XSAgICAgICAgICAgW2tdIGRtYV9kaXJlY3Rfc3luY19zaW5nbGVfZm9yX2RldmljZQo+PiAg
ICAgIDAuOTUlICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtr
XSBkbWFfZGlyZWN0X3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UKPj4gICAgICAwLjkyJSAgc3dhcHBl
ciAgICAgICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gaW50ZWxfaWRsZQo+PiAg
ICAgIDAuOTIlICB4ZHBzb2NrICAgICAgICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtr
XSBfX3hza19tYXBfcmVkaXJlY3QKPj4gICAgICAwLjgwJSAga3NvZnRpcnFkLzI4ICAgICBba2Vy
bmVsLnZtbGludXhdICAgICAgICAgICBba10gX194ODZfaW5kaXJlY3RfdGh1bmtfcmF4Cj4+ICAg
ICAgMC43MyUgIGtzb2Z0aXJxZC8yOCAgICAgW2k0MGVdICAgICAgICAgICAgICAgICAgICAgW2td
IGk0MGVfY2xlYW5fcHJvZ3JhbW1pbmdfc3RhdHVzCj4+ICAgICAgMC43MSUgIGtzb2Z0aXJxZC8y
OCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIF9feHNrX21hcF9sb29rdXBfZWxl
bQo+PiAgICAgIDAuNjMlICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAg
ICAgIFtrXSBuZXRfcnhfYWN0aW9uCj4+ICAgICAgMC42MiUgIGtzb2Z0aXJxZC8yOCAgICAgW2k0
MGVdICAgICAgICAgICAgICAgICAgICAgW2tdIGk0MGVfbmFwaV9wb2xsCj4+ICAgICAgMC41OCUg
IHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIGRtYV9kaXJl
Y3Rfc3luY19zaW5nbGVfZm9yX2NwdQo+Pgo+PiBTbyB3aXRoIHRoaXMgcGF0Y2ggYXBwbGllZCwg
ZGlyZWN0IHJlY2VpdmUgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQgY29tZXMgZG93biBmcm9tIDQ2
JSB0byA0MiUuCj4+IEkgdGhpbmsgaXQgaXMgc3RpbGwgc3Vic3RhbnRpYWwgZW5vdWdoIHRvIHBy
b3ZpZGUgYW4gb3B0aW9uIHRvIGFsbG93IGRpcmVjdCByZWNlaXZlIGZvcgo+PiBjZXJ0YWluIHVz
ZSBjYXNlcy4gSWYgaXQgaXMgT0ssIGkgY2FuIHJlLXNwaW4gYW5kIHN1Ym1pdCB0aGUgcGF0Y2hl
cyBvbiB0b3Agb2YgdGhlIGxhdGVzdCBicGYtbmV4dAo+IAo+IEkgdGhpbmsgaXQncyB0b28gZWFy
bHkgdG8gY29uc2lkZXIgc3VjaCBkcmFzdGljIGFwcHJvYWNoLgo+IFRoZSBydW4tdGltZSBwZXJm
b3JtYW5jZSBvZiBYRFAgcHJvZ3JhbSBzaG91bGQgYmUgdGhlIHNhbWUgYXMgQyBjb2RlLgo+IFNv
bWV0aGluZyBmaXNoeSBpbiB0aGVzZSBudW1iZXJzLCBzaW5jZSBzcGVuZGluZyAxMCUgY3B1IGlu
IGZldyBsb2Fkcwo+IGFuZCBzaW5nbGUgY2FsbCB0byBicGZfeGRwX3JlZGlyZWN0X21hcCgpIGp1
c3Qgbm90IHJpZ2h0LgoKT0suIEhlcmUgaXMgYW5vdGhlciBkYXRhIHBvaW50IHRoYXQgc2hvd3Mg
dGhlIHBlcmYgcmVwb3J0IHdpdGggdGhlIHNhbWUgdGVzdCBidXQgQ1BVIG1pdGlnYXRpb25zCnR1
cm5lZCBPRkYuIEhlcmUgYnBmX3Byb2cgb3ZlcmhlYWQgZ29lcyBkb3duIGZyb20gYWxtb3N0ICgx
MC4xOCArIDQuNTEpJSB0byAoMy4yMyArIDEuNDQlKS4KCiAgIDIxLjQwJSAga3NvZnRpcnFkLzI4
ICAgICBbaTQwZV0gICAgICAgICAgICAgICAgICAgICBba10gaTQwZV9jbGVhbl9yeF9pcnFfemMK
ICAgMTQuMTMlICB4ZHBzb2NrICAgICAgICAgIFtpNDBlXSAgICAgICAgICAgICAgICAgICAgIFtr
XSBpNDBlX2NsZWFuX3J4X2lycV96YwogICAgOC4zMyUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5l
bC52bWxpbnV4XSAgICAgICAgICAgW2tdIHhza19yY3YKICAgIDYuMDklICBrc29mdGlycWQvMjgg
ICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSB4ZHBfZG9fcmVkaXJlY3QKICAgIDUu
MTklICB4ZHBzb2NrICAgICAgICAgIHhkcHNvY2sgICAgICAgICAgICAgICAgICAgIFsuXSBtYWlu
CiAgICAzLjQ4JSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBb
a10gYnBmX3hkcF9yZWRpcmVjdF9tYXAKICAgIDMuMjMlICBrc29mdGlycWQvMjggICAgIGJwZl9w
cm9nXzNjODI1MWM3ZTBmZWY4ZGIgIFtrXSBicGZfcHJvZ18zYzgyNTFjN2UwZmVmOGRiCiAgICAz
LjA2JSAga3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gX194
c2tfbWFwX3JlZGlyZWN0CiAgICAyLjcyJSAgeGRwc29jayAgICAgICAgICBba2VybmVsLnZtbGlu
dXhdICAgICAgICAgICBba10geGRwX2RvX3JlZGlyZWN0CiAgICAyLjI3JSAgeGRwc29jayAgICAg
ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10geHNrX3JjdgogICAgMi4xMCUgIHhk
cHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIHhza191bWVtX3Bl
ZWtfYWRkcgogICAgMi4wOSUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAg
ICAgICAgW2tdIHhza191bWVtX3BlZWtfYWRkcgogICAgMS44OSUgIGtzb2Z0aXJxZC8yOCAgICAg
W2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIGRtYV9kaXJlY3Rfc3luY19zaW5nbGVfZm9y
X2NwdQogICAgMS40NCUgIHhkcHNvY2sgICAgICAgICAgYnBmX3Byb2dfM2M4MjUxYzdlMGZlZjhk
YiAgW2tdIGJwZl9wcm9nXzNjODI1MWM3ZTBmZWY4ZGIKICAgIDEuMzYlICB4ZHBzb2NrICAgICAg
ICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSBicGZfeGRwX3JlZGlyZWN0X21hcAog
ICAgMS4zMSUgIGtzb2Z0aXJxZC8yOCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2td
IGRtYV9kaXJlY3Rfc3luY19zaW5nbGVfZm9yX2RldmljZQogICAgMS4zMCUgIHhkcHNvY2sgICAg
ICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIF9feHNrX21hcF9yZWRpcmVjdAog
ICAgMS4yMyUgIHhkcHNvY2sgICAgICAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2td
IGRtYV9kaXJlY3Rfc3luY19zaW5nbGVfZm9yX2RldmljZQogICAgMC45NyUgIGtzb2Z0aXJxZC8y
OCAgICAgW2tlcm5lbC52bWxpbnV4XSAgICAgICAgICAgW2tdIF9feHNrX21hcF9sb29rdXBfZWxl
bQogICAgMC45MCUgIGtzb2Z0aXJxZC8yOCAgICAgW2k0MGVdICAgICAgICAgICAgICAgICAgICAg
W2tdIGk0MGVfY2xlYW5fcHJvZ3JhbW1pbmdfc3RhdHVzCiAgICAwLjgxJSAgeGRwc29jayAgICAg
ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gZG1hX2RpcmVjdF9zeW5jX3Npbmds
ZV9mb3JfY3B1CiAgICAwLjc2JSAgc3dhcHBlciAgICAgICAgICBbaTQwZV0gICAgICAgICAgICAg
ICAgICAgICBba10gaTQwZV9jbGVhbl9yeF9pcnFfemMKICAgIDAuNzUlICBzd2FwcGVyICAgICAg
ICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSBpbnRlbF9pZGxlCiAgICAwLjU5JSAg
a3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10gbmV0X3J4X2Fj
dGlvbgoKU28gYSBtYWpvciBjb21wb25lbnQgb2YgdGhlIGJwZl9wcm9nIG92ZXJoZWFkIHNlZW1z
IHRvIGJlIGR1ZSB0byB0aGUgQ1BVIHZ1bG5lcmFiaWxpdHkgbWl0aWdhdGlvbnMuClRoZSBvdGhl
ciBjb21wb25lbnQgaXMgdGhlIGJwZl94ZHBfcmVkaXJlY3RfbWFwKCkgY29kZXBhdGguCgpMZXQg
bWUga25vdyBpZiBpdCBoZWxwcyB0byBjb2xsZWN0IGFueSBvdGhlciBkYXRhIHRoYXQgc2hvdWxk
IGZ1cnRoZXIgaGVscCB3aXRoIHRoZSBwZXJmIGFuYWx5c2lzLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
