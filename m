Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26109397927
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 19:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B088E404BF;
	Tue,  1 Jun 2021 17:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b32QNx0lVuHO; Tue,  1 Jun 2021 17:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26398404BC;
	Tue,  1 Jun 2021 17:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 790821BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 17:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71B4D60715
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 17:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIFeYA4qASF1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 17:32:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AE12605D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 17:32:23 +0000 (UTC)
IronPort-SDR: OScqBTruJqCwwWkvuRO0KIbKEJU58de27a0pqrt0w9kzlc/5Ecyi1mW2RVKtJC+1DjIaO5Pp+z
 rHIGwu9VoKbQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="203591787"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="203591787"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 10:32:12 -0700
IronPort-SDR: 9snbrzLiQ+QAUW20++AzX5Hagri11LcaaoFbrophn6qn52Anlw+B/s67wM3kCAGfvMb5MBpLO5
 gjaz/wn4/Z0Q==
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="549812008"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.201.74])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 10:32:11 -0700
Date: Tue, 1 Jun 2021 10:32:10 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: =?UTF-8?Q?J=C4=99drzej?= Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20210601103210.00004ca0@intel.com>
In-Reply-To: <20210602004324.392848-1-jedrzej.jagielski@intel.com>
References: <20210602004324.392848-1-jedrzej.jagielski@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix to various static
 analysis warnings
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SsSZZHJ6ZWogSmFnaWVsc2tpIHdyb3RlOgoKPiBGaXggc3RhdGljIGFuYWx5c2lzIHdhcm5pbmdz
IGZyb20gc3BhcnNlLgoKV2FzIHRoaXMgb24gdG9wIG9mIHRoZSBzZXJpZXMgdGhhdCBJIGhhZCBh
bHJlYWR5IHNlbnQgdXBzdHJlYW0/IEl0IGp1c3QKd2VudCB0byBuZXQtbmV4dCBsYXN0IHdlZWsg
KGFmdGVyIHNldmVyYWwgbW9udGhzKQoKV2hlbiBJIHNlbnQgYSBzZXJpZXMgbGlrZSB0aGlzIGJl
Zm9yZSwgZGF2ZW0gcmVxdWlyZWQgdGhhdCBJIHB1dCBhbGwKdGhlIGZpeGVkIGVycm9ycyBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UgKG5vdCBhIGZ1bGwgdGV4dCwgYnV0IGEKc3VtbWFyeSksIGFuZCBJ
IHRoZW4gcHJvY2VlZGVkIHRvIHB1dCB0aGUgZnVsbCB0ZXh0IG9mIHRoZSBlcnJvcnMgaW4KdGhl
IGNvbW1pdCBtZXNzYWdlIGFmdGVyIGEgInRyaXBsZS1kYXNoIiBzbyB0aGV5IHdvdWxkIGJlIHRo
ZXJlIGZvcgpyZXZpZXdlcnMsIGJ1dCBnb25lIGZyb20gY29tbWl0IGxvZy4KCgo+IAo+IEZpeGVz
OiBlNzkzMDk1ZThhNTcgKCJpNDBlOiBhZGQgcGFyc2luZyBvZiBmbGV4aWJsZSBmaWx0ZXIgZmll
bGRzIGZyb20gdXNlcmRlZiIpCj4gU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIER6aWVkeml1Y2gg
PHN5bHdlc3RlcnguZHppZWR6aXVjaEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmVkcnpl
aiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6
IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jICAgICB8IDE0ICsr
KysrKystLS0tLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0
Y2hubF9wZi5oIHwgIDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDgg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfZXRodG9vbC5jCj4gaW5kZXggM2U4MjJiYWQ0Li5jYmQ2NDBlMGUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKPiBAQCAtMzEzOCw4
ICszMTM4LDggQEAgc3RhdGljIGludCBpNDBlX3BhcnNlX3J4X2Zsb3dfdXNlcl9kYXRhKHN0cnVj
dCBldGh0b29sX3J4X2Zsb3dfc3BlYyAqZnNwLAo+ICAJaWYgKCEoZnNwLT5mbG93X3R5cGUgJiBG
TE9XX0VYVCkpCj4gIAkJcmV0dXJuIDA7Cj4gIAo+IC0JdmFsdWUgPSBiZTY0X3RvX2NwdSgqKChf
X2JlNjQgKilmc3AtPmhfZXh0LmRhdGEpKTsKPiAtCW1hc2sgPSBiZTY0X3RvX2NwdSgqKChfX2Jl
NjQgKilmc3AtPm1fZXh0LmRhdGEpKTsKPiArCXZhbHVlID0gYmU2NF90b19jcHUoKigoX19mb3Jj
ZSBfX2JlNjQgKilmc3AtPmhfZXh0LmRhdGEpKTsKPiArCW1hc2sgPSBiZTY0X3RvX2NwdSgqKChf
X2ZvcmNlIF9fYmU2NCAqKWZzcC0+bV9leHQuZGF0YSkpOwo+ICAKPiAgI2RlZmluZSBJNDBFX1VT
RVJERUZfRkxFWF9XT1JECQlHRU5NQVNLX1VMTCgxNSwgMCkKPiAgI2RlZmluZSBJNDBFX1VTRVJE
RUZfRkxFWF9PRkZTRVQJR0VOTUFTS19VTEwoMzEsIDE2KQo+IEBAIC0zMTgwLDggKzMxODAsOCBA
QCBzdGF0aWMgdm9pZCBpNDBlX2ZpbGxfcnhfZmxvd191c2VyX2RhdGEoc3RydWN0IGV0aHRvb2xf
cnhfZmxvd19zcGVjICpmc3AsCj4gIAlpZiAodmFsdWUgfHwgbWFzaykKPiAgCQlmc3AtPmZsb3df
dHlwZSB8PSBGTE9XX0VYVDsKPiAgCj4gLQkqKChfX2JlNjQgKilmc3AtPmhfZXh0LmRhdGEpID0g
Y3B1X3RvX2JlNjQodmFsdWUpOwo+IC0JKigoX19iZTY0ICopZnNwLT5tX2V4dC5kYXRhKSA9IGNw
dV90b19iZTY0KG1hc2spOwo+ICsJKigoX19mb3JjZSBfX2JlNjQgKilmc3AtPmhfZXh0LmRhdGEp
ID0gY3B1X3RvX2JlNjQodmFsdWUpOwo+ICsJKigoX19mb3JjZSBfX2JlNjQgKilmc3AtPm1fZXh0
LmRhdGEpID0gY3B1X3RvX2JlNjQobWFzayk7Cj4gIH0KPiAgCj4gIC8qKgo+IEBAIC00MTUwLDkg
KzQxNTAsOSBAQCBzdGF0aWMgaW50IGk0MGVfY2hlY2tfZmRpcl9pbnB1dF9zZXQoc3RydWN0IGk0
MGVfdnNpICp2c2ksCj4gIAkJCQkgICAgIHN0cnVjdCBldGh0b29sX3J4X2Zsb3dfc3BlYyAqZnNw
LAo+ICAJCQkJICAgICBzdHJ1Y3QgaTQwZV9yeF9mbG93X3VzZXJkZWYgKnVzZXJkZWYpCj4gIHsK
PiAtCXN0YXRpYyBjb25zdCBfX2JlMzIgaXB2Nl9mdWxsX21hc2tbNF0gPSB7Y3B1X3RvX2JlMzIo
MHhmZmZmZmZmZiksCj4gKwlzdGF0aWMgY29uc3QgX19iZTMyIGlwdjZfZnVsbF9tYXNrWzRdID0g
ewo+ICAJCWNwdV90b19iZTMyKDB4ZmZmZmZmZmYpLCBjcHVfdG9fYmUzMigweGZmZmZmZmZmKSwK
PiAtCQljcHVfdG9fYmUzMigweGZmZmZmZmZmKX07Cj4gKwkJY3B1X3RvX2JlMzIoMHhmZmZmZmZm
ZiksIGNwdV90b19iZTMyKDB4ZmZmZmZmZmYpfTsKClRoaXMgbG9va3MgbGlrZSBqdXN0IGEgd2hp
dGVzcGFjZSBjaGFuZ2UsIHdoeSBpbmNsdWRlIGl0IGluIHRoaXMgcGF0Y2g/Cgo+ICAJc3RydWN0
IGV0aHRvb2xfdGNwaXA2X3NwZWMgKnRjcF9pcDZfc3BlYzsKPiAgCXN0cnVjdCBldGh0b29sX3Vz
cmlwNl9zcGVjICp1c3JfaXA2X3NwZWM7Cj4gIAlzdHJ1Y3QgZXRodG9vbF90Y3BpcDRfc3BlYyAq
dGNwX2lwNF9zcGVjOwo+IEBAIC01NTk5LDcgKzU1OTksNyBAQCBzdGF0aWMgaW50IGk0MGVfc2V0
X2VlZShzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCBzdHJ1Y3QgZXRodG9vbF9lZWUgKmVkYXRh
KQo+ICAJCWNvbmZpZy5lZWVyIHw9IGNwdV90b19sZTMyKEk0MEVfUFJUUE1fRUVFUl9UWF9MUElf
RU5fTUFTSyk7Cj4gIAl9IGVsc2Ugewo+ICAJCWNvbmZpZy5lZWVfY2FwYWJpbGl0eSA9IDA7Cj4g
LQkJY29uZmlnLmVlZXIgJj0gY3B1X3RvX2xlMzIofkk0MEVfUFJUUE1fRUVFUl9UWF9MUElfRU5f
TUFTSyk7Cj4gKwkJY29uZmlnLmVlZXIgJj0gfmNwdV90b19sZTMyKEk0MEVfUFJUUE1fRUVFUl9U
WF9MUElfRU5fTUFTSyk7Cj4gIAl9Cj4gIAo+ICAJLyogQXBwbHkgbW9kaWZpZWQgUEhZIGNvbmZp
Z3VyYXRpb24gKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3ZpcnRjaG5sX3BmLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfdmlydGNobmxfcGYuaAo+IGluZGV4IDQ5NTc1YTY0MC4uZTQwNmZlZTkzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5oCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmgK
PiBAQCAtNzcsNyArNzcsNyBAQCBzdHJ1Y3QgaTQwZV92ZiB7Cj4gIAl1MTYgc3RhZzsKPiAgCj4g
IAlzdHJ1Y3QgdmlydGNobmxfZXRoZXJfYWRkciBkZWZhdWx0X2xhbl9hZGRyOwo+IC0JdTE2IHBv
cnRfdmxhbl9pZDsKPiArCXMxNiBwb3J0X3ZsYW5faWQ7CgpIb3cgY291bGQgdmxhbiBldmVyIGJl
IG5lZ2F0aXZlPyBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSBnb29kIGNoYW5nZSwKaXQgc2VlbXMg
bGlrZSBpdCBtaWdodCBpbnRyb2R1Y2UgYnVncywgbm90IGZpeCB0aGVtLiBBbmQgSSBkb24ndCBr
bm93CndoeSBpdCB3b3VsZCBiZSB1c2VmdWwgb3Igd2h5IHlvdSBtYWRlIHRoZSBjaGFuZ2UuCgo+
ICAJYm9vbCBwZl9zZXRfbWFjOwkvKiBUaGUgVk1NIGFkbWluIHNldCB0aGUgVkYgTUFDIGFkZHJl
c3MgKi8KPiAgCWJvb2wgdHJ1c3RlZDsKPiAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
