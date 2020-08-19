Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361CA249522
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 08:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C44E787B39;
	Wed, 19 Aug 2020 06:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9R+g2ZzTWciD; Wed, 19 Aug 2020 06:44:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B439887B2B;
	Wed, 19 Aug 2020 06:44:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EAEF1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 06:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 414D3204E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 06:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRsPn5OflmNv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 06:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B95C204B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 06:44:37 +0000 (UTC)
IronPort-SDR: 8aSkv4Eh7U7h0Lp24v+yY8iK+VZuHtvbMbtJOe3rvTPll8o9MCB13pXAuRCtd3gd8kUmmhJe5X
 ozAjM8Kkr9NQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="239889317"
X-IronPort-AV: E=Sophos;i="5.76,330,1592895600"; d="scan'208";a="239889317"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 23:44:36 -0700
IronPort-SDR: UP/bWo7cvexJr+5xpiXGIF3K+sedaZKf06Sk9pZSmzsB1yW1Bjk6/gql68V9VKeg+yGI7Z06Xj
 mWiOzr0kjyfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,330,1592895600"; d="scan'208";a="497126683"
Received: from skirillo-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.249.32.199])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2020 23:44:33 -0700
To: "Li,Rongqing" <lirongqing@baidu.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
 <4268316b200049d58b9973ec4dc4725c@baidu.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <83e45ec2-1c66-59f6-e817-d4c523879007@intel.com>
Date: Wed, 19 Aug 2020 08:44:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4268316b200049d58b9973ec4dc4725c@baidu.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?562U5aSNOiAgW1BBVENIIDAvMl0gaW50ZWwv?=
 =?utf-8?q?xdp_fixes_for_fliping_rx_buffer?=
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

T24gMjAyMC0wOC0xOSAwMzozNywgTGksUm9uZ3Fpbmcgd3JvdGU6ClsuLi5dCiA+IEhpOgogPgog
PiBUaGFua3MgZm9yIHlvdXIgZXhwbGFuYXRpb24uCiA+CiA+IEJ1dCB3ZSBjYW4gcmVwcm9kdWNl
IHRoaXMgYnVnCiA+CiA+IFdlIHVzZSBlYnBmIHRvIHJlZGlyZWN0IG9ubHktVnhsYW4gcGFja2V0
cyB0byBub24temVyb2NvcHkgQUZfWERQLCAKRmlyc3Qgd2Ugc2VlIHBhbmljIG9uIHRjcCBzdGFj
aywgaW4gdGNwX2NvbGxhcHNlOiBCVUdfT04ob2Zmc2V0IDwgMCk7IGl0IAppcyB2ZXJ5IGhhcmQg
dG8gcmVwcm9kdWNlLgogPgogPiBUaGVuIHdlIHVzZSB0aGUgc2NwIHRvIGRvIHRlc3QsIGFuZCBo
YXMgbG90cyBvZiB2eGxhbiBwYWNrZXQgYXQgdGhlIApzYW1lIHRpbWUsIHNjcCB3aWxsIGJlIGJy
b2tlbiBmcmVxdWVudGx5LgogPgoKT2shIEp1c3Qgc28gdGhhdCBJJ20gY2VydGFpbiBvZiB5b3Vy
IHNldHVwLiBZb3UgcmVjZWl2ZSBwYWNrZXRzIHRvIGFuCmk0MGUgbmV0ZGV2IHdoZXJlIHRoZXJl
J3MgYW4gWERQIHByb2dyYW0uIFRoZSBwcm9ncmFtIGRvZXMgWERQX1BBU1Mgb3IKWERQX1JFRElS
RUNUIHRvIGUuZy4gZGV2bWFwIGZvciBub24tdnhsYW4gcGFja2V0cy4gSG93ZXZlciwgdnhsYW4K
cGFja2V0cyBhcmUgcmVkaXJlY3RlZCB0byBBRl9YRFAgc29ja2V0KHMpIGluICpjb3B5LW1vZGUq
LiBBbSBJCnVuZGVyc3RhbmRpbmcgdGhhdCBjb3JyZWN0PwoKSSdtIGFzc3VtaW5nIHRoaXMgaXMg
YW4geDg2LTY0IHdpdGggNGsgcGFnZSBzaXplLCByaWdodD8gOi0pIFRoZSBwYWdlCmZsaXBwaW5n
IGlzIGEgYml0IGRpZmZlcmVudCBpZiB0aGUgUEFHRV9TSVpFIGlzIG5vdCA0ay4KCiA+IFdpdGgg
dGhpcyBmaXhlcywgc2NwIGhhcyBub3QgYmVlbiBicm9rZW4gYWdhaW4sIGFuZCBrZXJuZWwgaXMg
bm90IApwYW5pYyBhZ2FpbgogPgoKTGV0J3MgZGlnIGludG8geW91ciBzY2VuYXJpby4KCkFyZSB5
b3Ugc2F5aW5nIHRoZSBmb2xsb3dpbmc6CgpQYWdlIEE6CistLS0tLS0tLS0tLS0KfCAiZmlyc3Qg
c2tiIiAtLS0tPiBSeCBIVyByaW5nIGVudHJ5IFgKKy0tLS0tLS0tLS0tLQp8ICJzZWNvbmQgc2ti
Ii0tLS0+IFJ4IEhXIHJpbmcgZW50cnkgWCsxIChvciBYK24pCistLS0tLS0tLS0tLS0KClRoaXMg
aXMgYSBzY2VuYXJpbyB0aGF0IHNob3VsZG4ndCBiZSBhbGxvd2VkLCBiZWNhdXNlIHRoZXJlIGFy
ZSBub3cKdHdvIHVzZXJzIG9mIHRoZSBwYWdlLiBJZiB0aGF0J3MgdGhlIGNhc2UsIHRoZSByZWZj
b3VudGluZyBpcwpicm9rZW4uIElzIHRoYXQgdGhlIGNhc2U/CgpDaGVjayBvdXQgaTQwZV9jYW5f
cmV1c2VfcnhfcGFnZSgpLiBUaGUgaWRlYSB3aXRoIHBhZ2UgZmxpcHBpbmcvcmV1c2UKaXMgdGhh
dCB0aGUgcGFnZSBpcyBvbmx5IHJldXNlZCBpZiB0aGVyZSBpcyBvbmx5IG9uZSB1c2VyLgoKID4g
U2VlbSB5b3VyIGV4cGxhbmF0aW9uIGlzIHVuYWJsZSB0byBzb2x2ZSBteSBhbmFseXNpczoKID4K
ID4gICAgICAgICAxLiBmaXJzdCBza2IgaXMgbm90IGZvciB4c2ssIGFuZCBmb3J3YXJkZWQgdG8g
YW5vdGhlciBkZXZpY2UKID4gICAgICAgICAgICBvciBzb2NrZXQgcXVldWUKClRoZSBkYXRhIGZv
ciB0aGUgImZpcnN0IHNrYiIgcmVzaWRlcyBvbiBhIHBhZ2U6CkE6CistLS0tLS0tLS0tLS0KfCAi
Zmlyc3Qgc2tiIgorLS0tLS0tLS0tLS0tCnwgdG8gYmUgcmV1c2VkCistLS0tLS0tLS0tLS0KcmVm
Y291bnQgPj4xCgogPiAgICAgICAgIDIuIHNlY29uZHMgc2tiIGlzIGZvciB4c2ssIGNvcHkgZGF0
YSB0byB4c2sgbWVtb3J5LCBhbmQgcGFnZQogPiAgICAgICAgICAgIG9mIHNrYi0+ZGF0YSBpcyBy
ZWxlYXNlZAoKTm90ZSB0aGF0IHBhZ2UgQiAhPSBwYWdlIEEuCgpCOgorLS0tLS0tLS0tLS0tCnwg
dG8gYmUgcmV1c2VkL29yIHVzZWQgYnkgdGhlIHN0YWNrCistLS0tLS0tLS0tLS0KfCAic2Vjb25k
IHNrYiBmb3IgeHNrIgorLS0tLS0tLS0tLS0tCnJlZmNvdW50ID4+MQoKZGF0YSBpcyBjb3BpZWQg
dG8gc29ja2V0LCBwYWdlX2ZyYWdfZnJlZSgpIGlzIGNhbGxlZCwgYW5kIHRoZSBwYWdlCmNvdW50
IGlzIGRlY3JlYXNlZC4gVGhlIGRyaXZlciB3aWxsIHRoZW4gY2hlY2sgaWYgdGhlIHBhZ2UgY2Fu
IGJlCnJldXNlZC4gSWYgbm90LCBpdCdzIGZyZWVkIHRvIHRoZSBwYWdlIGFsbG9jYXRvci4KCiA+
ICAgICAgICAgMy4gcnhfYnVmZiBpcyByZXVzYWJsZSBzaW5jZSBvbmx5IGZpcnN0IHNrYiBpcyBp
biBpdCwgYnV0CiA+ICAgICAgICAgICAgKl9yeF9idWZmZXJfZmxpcCB3aWxsIG1ha2UgdGhhdCBw
YWdlX29mZnNldCBpcyBzZXQgdG8KID4gICAgICAgICAgICBmaXJzdCBza2IgZGF0YQoKSSdtIGhh
dmluZyB0cm91YmxlIGdyYXNwaW5nIGhvdyB0aGlzIGlzIHBvc3NpYmxlLiBNb3JlIHRoYW4gb25l
IHVzZXIKaW1wbGllcyB0aGF0IGl0IHdvbnQgYmUgcmV1c2VkLiBJZiB0aGlzIGlzIHBvc3NpYmxl
LCB0aGUKcmVjb3VudGluZy9yZXVzZSBtZWNoYW5pc20gaXMgYnJva2VuLCBhbmQgdGhhdCBpcyB3
aGF0IHNob3VsZCBiZQpmaXhlZC4KClRoZSBBRl9YRFAgcmVkaXJlY3Qgc2hvdWxkIG5vdCBoYXZl
IHNlbWFudGljcyBkaWZmZXJlbnQgZnJvbSwgc2F5LApkZXZtYXAgcmVkaXJlY3QuIEl0J3MganVz
dCB0aGF0IHRoZSBwYWdlX2ZyYWdfZnJlZSgpIGlzIGNhbGxlZCBlYXJsaWVyCmZvciBBRl9YRFAs
IGluc3RlYWQgb2YgZnJvbSBpNDBlX2NsZWFuX3R4X2lycSgpIGFzIHRoZSBjYXNlIGZvcgpkZXZt
YXAvWERQX1RYLgoKID4gICAgICAgICA0LiB0aGVuIHJldXNlIHJ4IGJ1ZmZlciwgZmlyc3Qgc2ti
IHdoaWNoIHN0aWxsIGlzIGxpdmluZwogPiAgICAgICAgICAgIHdpbGwgYmUgY29ycnVwdGVkLgog
PgogPgogPiBUaGUgcm9vdCBjYXVzZSBpcyBkaWZmZXJlbmNlIHlvdSBzYWlkIHVwcGVyLCBzbyBJ
IG9ubHkgZml4ZXMgZm9yIApub24temVyb2NvcHkgQUZfWERQCiA+CgpJIGhhdmUgb25seSBhZGRy
ZXNzZWQgbm9uLXplcm9jb3B5LCBzbyB3ZSdyZSBvbiB0aGUgc2FtZSBwYWdlIChwdW4KaW50ZW5k
ZWQpIGhlcmUhCgoKQmrDtnJuCgogPiAtTGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
