Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF4F2D9FA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 19:55:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C352B871C9;
	Mon, 14 Dec 2020 18:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AAd6Fkk+L2d; Mon, 14 Dec 2020 18:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9763D87126;
	Mon, 14 Dec 2020 18:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D18D41BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C8A758747A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdKKVypyfPNu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 18:54:02 +0000 (UTC)
X-Greylist: delayed 00:13:19 by SQLgrey-1.7.6
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com
 [67.219.246.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D886A86F12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:54:01 +0000 (UTC)
Received: from [100.112.3.43] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-b.us-east-1.aws.symcld.net id 22/43-54546-8A1B7DF5;
 Mon, 14 Dec 2020 18:40:40 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPKsWRWlGSWpSXmKPExsWS8eIhj+6Kjdf
 jDe4eZLH4MOcBo8X/medYLf7Pvc1isfvCDyaLQ+cOMFsceTaV1WLO+RYWi/+3frNanNh8n9Hi
 wrY+VovLu+awWTR1NrFZHFsgZtHy5BGzxe6fkxktZrUsY7W4OOEcq4Ogx6yGXjaPLStvMnlMm
 jmD2WPnrLvsHov3vGTy2LSqk83jZHOpx/t9V9k8Pm+SC+CMYs3MS8qvSGDN2Ni/kr1gj2DFpp
 lvWBsYP/N1MXJxCAn8Z5To/TiFHcJ5wShx+c4qpi5GTg5hgVCJY3+a2EASIgIzmSQuLvzOCFF
 1lFGiY+ZGVhCHWeA1s8T1aWuYQVrYBLQltmz5xQZi8wrYSlze8RAsziKgKnF450lWEFtUIFxi
 /ZKVjBA1ghInZz5hAbE5BWIl7p/ZBnQHB9BQTYn1u/RBwswC4hK3nsxngrDlJZq3zgYbKSGgI
 HG5exMbhJ0gsezlHeYJjIKzkEydhTBpFpJJs5BMWsDIsorRNKkoMz2jJDcxM0fX0MBA19DQSB
 dE6iVW6SbplRbrpiYWl+gCueXFesWVuck5KXp5qSWbGIFxnVLAwL2DceubD3qHGCU5mJREefn
 XXI8X4kvKT6nMSCzOiC8qzUktPsQow8GhJMG7ZQNQTrAoNT21Ii0zB5hiYNISHDxKIrxCwDQj
 xFtckJhbnJkOkTrFqMtx8uCSRcxCLHn5ealS4rxuIDMEQIoySvPgRsDS3SVGWSlhXkYGBgYhn
 oLUotzMElT5V4ziHIxKwryyIKt4MvNK4Da9AjqCCeiIF8cugxxRkoiQkmpgUrl/8rz8MqZPGd
 silz49nX//6uuFEitariQf2vQsfSLfndWbUu4oOHms5q/KNP0/c8/lLypyJ9R9n104ZZ7PPan
 6OTPr0hurSoU/68VU2D44ayF3mPVdXd6h9qvTm0JfP9ZydzlyYmJibWRqspj6/wvvnHMv68Uf
 23Bxc1MOw1wmY8UXFiuUQrmeGK3NNnoXl/n9z9rWCOWOuQ+/LVvMwbbPtc3xrsCfK3lBD5peL
 5yzPuTCLOOT15ffXXvS/GJLqM1+B4EVX22Ce+fdqNjtt9Fxi6HfO+4KR7e3NwO65/wTvezVvO
 drsfSSs5k53FG1mQtuy9Suz5Jw8+3OKJye5RwiW6gUe+fiPUUn/bvL+ZVYijMSDbWYi4oTAQ5
 sVcHyAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-15.tower-386.messagelabs.com!1607971239!240127!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 2545 invoked from network); 14 Dec 2020 18:40:40 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-15.tower-386.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 14 Dec 2020 18:40:40 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id C85F91614D85C50BF915;
 Mon, 14 Dec 2020 13:40:39 -0500 (EST)
Received: from localhost.localdomain (10.38.98.145) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Mon, 14 Dec
 2020 10:40:38 -0800
To: Mario Limonciello <mario.limonciello@dell.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, David
 Miller <davem@davemloft.net>, Aaron Ma <aaron.ma@canonical.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
 <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
 <PS2PR03MB37505A15D3C9B7505D679D7BBDC70@PS2PR03MB3750.apcprd03.prod.outlook.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <ae436f90-45b8-ba70-be57-d17641c4f79d@lenovo.com>
Date: Mon, 14 Dec 2020 13:40:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <PS2PR03MB37505A15D3C9B7505D679D7BBDC70@PS2PR03MB3750.apcprd03.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.38.98.145]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Mailman-Approved-At: Mon, 14 Dec 2020 18:55:21 +0000
Subject: Re: [Intel-wired-lan] Fw: [External] Re: [PATCH v4 0/4] Improve
 s0ix flows for systems i219LM
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
Cc: Netdev <netdev@vger.kernel.org>,
 "Perry.Yuan@dell.com" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 "Yijun.Shen@dell.com" <Yijun.Shen@dell.com>, Jakub Kicinski <kuba@kernel.org>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIEhhbnMKCk9uIDE0LzEyLzIwMjAgMTM6MzEsIE1hcmsgUGVhcnNvbiB3cm90ZToKPiAK
PiAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAqRnJvbToqIEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJl
ZGhhdC5jb20+Cj4gKlNlbnQ6KiBEZWNlbWJlciAxNCwgMjAyMCAxMzoyNAo+ICpUbzoqIE1hcmlv
IExpbW9uY2llbGxvIDxtYXJpby5saW1vbmNpZWxsb0BkZWxsLmNvbT47IEplZmYgS2lyc2hlcgo+
IDxqZWZmcmV5LnQua2lyc2hlckBpbnRlbC5jb20+OyBUb255IE5ndXllbiA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+Owo+IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnIDxpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz47Cj4gRGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+Owo+IE1hcmsgUGVh
cnNvbiA8bXBlYXJzb25AbGVub3ZvLmNvbT4KPiAqQ2M6KiBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsKPiBOZXRkZXYgPG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc+OyBBbGV4YW5kZXIgRHV5Y2sKPiA8YWxleGFuZGVyLmR1eWNrQGdtYWls
LmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBTYXNoYQo+IE5ldGZpbiA8
c2FzaGEubmVmdGluQGludGVsLmNvbT47IEFhcm9uIEJyb3duIDxhYXJvbi5mLmJyb3duQGludGVs
LmNvbT47Cj4gU3RlZmFuIEFzc21hbm4gPHNhc3NtYW5uQHJlZGhhdC5jb20+OyBkYXJjYXJpQHJl
ZGhhdC5jb20KPiA8ZGFyY2FyaUByZWRoYXQuY29tPjsgWWlqdW4uU2hlbkBkZWxsLmNvbSA8WWlq
dW4uU2hlbkBkZWxsLmNvbT47Cj4gUGVycnkuWXVhbkBkZWxsLmNvbSA8UGVycnkuWXVhbkBkZWxs
LmNvbT47IGFudGhvbnkud29uZ0BjYW5vbmljYWwuY29tCj4gPGFudGhvbnkud29uZ0BjYW5vbmlj
YWwuY29tPgo+ICpTdWJqZWN0OiogW0V4dGVybmFsXSBSZTogW1BBVENIIHY0IDAvNF0gSW1wcm92
ZSBzMGl4IGZsb3dzIGZvciBzeXN0ZW1zCj4gaTIxOUxNCj4gwqAKPiBIaSBBbGwsCj4gCjxzbmlw
Pgo+IAo+ICMjIwo+IAo+IEkndmUgYWRkZWQgTWFyayBQZWFyc29uIGZyb20gTGVub3ZvIHRvIHRo
ZSBDYyBzbyB0aGF0IExlbm92bwo+IGNhbiBpbnZlc3RpZ2F0ZSB0aGlzIGlzc3VlIGZ1cnRoZXIu
Cj4gCj4gTWFyaywgdGhpcyB0aHJlYWQgaXMgYWJvdXQgYW4gaXNzdWUgd2l0aCBlbmFibGluZyBT
MGl4IHN1cHBvcnQgZm9yCj4gZTEwMDBlIChpMjE5bG0pIGNvbnRyb2xsZXJzLiBUaGlzIHdhcyBl
bmFibGVkIGluIHRoZSBrZXJuZWwgYQo+IHdoaWxlIGFnbywgYnV0IHRoZW4gZ290IGRpc2FibGVk
IGFnYWluIG9uIHZQcm8gLyBBTVQgZW5hYmxlZAo+IHN5c3RlbXMgYmVjYXVzZSBvbiBzb21lIHN5
c3RlbXMgKExlbm92byBYMUM3IGFuZCBub3cgYWxzbyBYMUM4KQo+IHRoaXMgbGVhZCB0byBzdXNw
ZW5kL3Jlc3VtZSBpc3N1ZXMuCj4gCj4gV2hlbiBBTVQgaXMgYWN0aXZlIHRoZW4gdGhlcmUgaXMg
YSBoYW5kb3ZlciBoYW5kc2hha2UgZm9yIHRoZQo+IE9TIHRvIGdldCBhY2Nlc3MgdG8gdGhlIGV0
aGVybmV0IGNvbnRyb2xsZXIgZnJvbSB0aGUgTUUuIFRoZQo+IEludGVsIGZvbGtzIGhhdmUgY2hl
Y2tlZCBhbmQgdGhlIFdpbmRvd3MgZHJpdmVyIGlzIHVzaW5nIGEgdGltZW91dAo+IG9mIDEgc2Vj
b25kIGZvciB0aGlzIGhhbmRzaGFrZSwgeWV0IG9uIExlbm92byBzeXN0ZW1zIHRoaXMgaXMKPiB0
YWtpbmcgMiBzZWNvbmRzLiBUaGlzIGxpa2VseSBoYXMgc29tZXRoaW5nIHRvIGRvIHdpdGggdGhl
Cj4gTUUgZmlybXdhcmUgb24gdGhlc2UgTGVub3ZvIG1vZGVscywgY2FuIHlvdSBnZXQgdGhlIGZp
cm13YXJlCj4gdGVhbSBhdCBMZW5vdm8gdG8gaW52ZXN0aWdhdGUgdGhpcyBmdXJ0aGVyID8KQWJz
b2x1dGVseSAtIEknbGwgYXNrIHRoZW0gdG8gbG9vayBpbnRvIHRoaXMgYWdhaW4uCgpXZSBkaWQg
dHJ5IHRvIG1ha2UgcHJvZ3Jlc3Mgd2l0aCB0aGlzIHByZXZpb3VzbHkgLSBidXQgaXQgZ290IGEg
Yml0CnN0dWNrIGFuZCBoZW5jZSB0aGUgbmVlZCBmb3IgdGhlc2UgcGF0Y2hlcy4uLi5idXQgSSBi
ZWxpZXZlIHRoaW5ncyBtYXkKaGF2ZSBjaGFuZ2VkIGEgYml0IHNvIGl0J3Mgd29ydGggdHJ5aW5n
IGFnYWluCgpNYXJrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
