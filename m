Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5602A736EBB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 16:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D62841B81;
	Tue, 20 Jun 2023 14:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D62841B81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687271745;
	bh=hjhO+w3NlmXzI1Bw5vfLwq61h8LyJ0utqK/VRL/fxoY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MI8/DvyiPCnN1SlBSUHfJiOGVVZki9C3JbXpLI9B2tmmFUffUjxvZqAwYSFlfOXTa
	 4iEThqruHY8v/xRIhJsp9W2BQbw3sxiS171TSxkm1yqo8PbRDoSlEH/GegjHjR5mf1
	 7W+S7i5md02LX/SagYOPQZ1f8x+6JzarUJa0MEPfiLS1FBAxS6f+uo1yrpyUu+bOXG
	 TVGKUB5860XKpkR1TNL8hP6firCYVQDtenBtW7nvNiOaDQWFptrdrmGVuc8nwDl8jQ
	 Uqbg4ia6otxvYnNzH0ftFeb+M+f0V0vX8PR07V5nRLsoc+gwV6wxw/A/E5p7OHoEC6
	 5RdFmi04w234A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qByhiOgPb7wp; Tue, 20 Jun 2023 14:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A72B41B5C;
	Tue, 20 Jun 2023 14:35:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A72B41B5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DA0D1BF405
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 14:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF18941B5C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 14:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF18941B5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yuza_AoKrrbg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 14:35:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AC4A41B41
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AC4A41B41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 14:35:34 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1700B61E5FE06;
 Tue, 20 Jun 2023 16:34:01 +0200 (CEST)
Message-ID: <8bfa3000-3391-546d-5c1e-14163de7f782@molgen.mpg.de>
Date: Tue, 20 Jun 2023 16:34:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20230620123636.1854690-1-kai.heng.feng@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230620123636.1854690-1-kai.heng.feng@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Ignore AER reset when device is
 suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBLYWktSGVuZywNCg0KDQpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCg0KDQpBbSAyMC4w
Ni4yMyB1bSAxNDozNiBzY2hyaWViIEthaS1IZW5nIEZlbmc6DQo+IFdoZW4gYSBzeXN0ZW0gdGhh
dCBjb25uZWN0cyB0byBhIFRodW5kZXJib2x0IGRvY2sgZXF1aXBwZWQgd2l0aCBJMjI1LA0KPiBJ
MjI1IHN0b3BzIHdvcmtpbmcgYWZ0ZXIgUzMgcmVzdW1lOg0KPiANCj4gWyAgNjA2LjUyNzY0M10g
cGNpZXBvcnQgMDAwMDowMDoxZC4wOiBBRVI6IE11bHRpcGxlIENvcnJlY3RlZCBlcnJvciByZWNl
aXZlZDogMDAwMDowMDoxZC4wDQo+IFsgIDYwNi41Mjc3OTFdIHBjaWVwb3J0IDAwMDA6MDA6MWQu
MDogUENJZSBCdXMgRXJyb3I6IHNldmVyaXR5PUNvcnJlY3RlZCwgdHlwZT1UcmFuc2FjdGlvbiBM
YXllciwgKFJlY2VpdmVyIElEKQ0KPiBbICA2MDYuNTI3Nzk1XSBwY2llcG9ydCAwMDAwOjAwOjFk
LjA6ICAgZGV2aWNlIFs4MDg2OjdhYjBdIGVycm9yIHN0YXR1cy9tYXNrPTAwMDA4MDAwLzAwMDAy
MDAwDQo+IFsgIDYwNi41Mjc4MDBdIHBjaWVwb3J0IDAwMDA6MDA6MWQuMDogICAgWzE1XSBIZWFk
ZXJPRg0KPiBbICA2MDYuNTI3ODA2XSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6IEFFUjogICBFcnJv
ciBvZiB0aGlzIEFnZW50IGlzIHJlcG9ydGVkIGZpcnN0DQo+IFsgIDYwNi41Mjc4NTNdIHBjaWVw
b3J0IDAwMDA6MDc6MDQuMDogUENJZSBCdXMgRXJyb3I6IHNldmVyaXR5PUNvcnJlY3RlZCwgdHlw
ZT1EYXRhIExpbmsgTGF5ZXIsIChSZWNlaXZlciBJRCkNCj4gWyAgNjA2LjUyNzg1Nl0gcGNpZXBv
cnQgMDAwMDowNzowNC4wOiAgIGRldmljZSBbODA4NjowYjI2XSBlcnJvciBzdGF0dXMvbWFzaz0w
MDAwMDA4MC8wMDAwMjAwMA0KPiBbICA2MDYuNTI3ODYxXSBwY2llcG9ydCAwMDAwOjA3OjA0LjA6
ICAgIFsgN10gQmFkRExMUA0KPiBbICA2MDYuNTI3OTMxXSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6
IEFFUjogTXVsdGlwbGUgVW5jb3JyZWN0ZWQgKE5vbi1GYXRhbCkgZXJyb3IgcmVjZWl2ZWQ6IDAw
MDA6MDA6MWQuMA0KPiBbICA2MDYuNTI4MDY0XSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6IFBDSWUg
QnVzIEVycm9yOiBzZXZlcml0eT1VbmNvcnJlY3RlZCAoTm9uLUZhdGFsKSwgdHlwZT1UcmFuc2Fj
dGlvbiBMYXllciwgKFJlcXVlc3RlciBJRCkNCj4gWyAgNjA2LjUyODA2OF0gcGNpZXBvcnQgMDAw
MDowMDoxZC4wOiAgIGRldmljZSBbODA4Njo3YWIwXSBlcnJvciBzdGF0dXMvbWFzaz0wMDEwMDAw
MC8wMDAwNDAwMA0KPiBbICA2MDYuNTI4MDcyXSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6ICAgIFsy
MF0gVW5zdXBSZXEgICAgICAgICAgICAgICAoRmlyc3QpDQo+IFsgIDYwNi41MjgwNzVdIHBjaWVw
b3J0IDAwMDA6MDA6MWQuMDogQUVSOiAgIFRMUCBIZWFkZXI6IDM0MDAwMDAwIDBhMDAwMDUyIDAw
MDAwMDAwIDAwMDAwMDAwDQo+IFsgIDYwNi41MjgwNzldIHBjaWVwb3J0IDAwMDA6MDA6MWQuMDog
QUVSOiAgIEVycm9yIG9mIHRoaXMgQWdlbnQgaXMgcmVwb3J0ZWQgZmlyc3QNCj4gWyAgNjA2LjUy
ODA5OF0gcGNpZXBvcnQgMDAwMDowNDowMS4wOiBQQ0llIEJ1cyBFcnJvcjogc2V2ZXJpdHk9VW5j
b3JyZWN0ZWQgKE5vbi1GYXRhbCksIHR5cGU9VHJhbnNhY3Rpb24gTGF5ZXIsIChSZXF1ZXN0ZXIg
SUQpDQo+IFsgIDYwNi41MjgxMDFdIHBjaWVwb3J0IDAwMDA6MDQ6MDEuMDogICBkZXZpY2UgWzgw
ODY6MTEzNl0gZXJyb3Igc3RhdHVzL21hc2s9MDAzMDAwMDAvMDAwMDAwMDANCj4gWyAgNjA2LjUy
ODEwNV0gcGNpZXBvcnQgMDAwMDowNDowMS4wOiAgICBbMjBdIFVuc3VwUmVxICAgICAgICAgICAg
ICAgKEZpcnN0KQ0KPiBbICA2MDYuNTI4MTA3XSBwY2llcG9ydCAwMDAwOjA0OjAxLjA6ICAgIFsy
MV0gQUNTVmlvbA0KPiBbICA2MDYuNTI4MTEwXSBwY2llcG9ydCAwMDAwOjA0OjAxLjA6IEFFUjog
ICBUTFAgSGVhZGVyOiAzNDAwMDAwMCAwNDAwMDA1MiAwMDAwMDAwMCAwMDAwMDAwMA0KPiBbICA2
MDYuNTI4MTg3XSB0aHVuZGVyYm9sdCAwMDAwOjA1OjAwLjA6IEFFUjogY2FuJ3QgcmVjb3ZlciAo
bm8gZXJyb3JfZGV0ZWN0ZWQgY2FsbGJhY2spDQo+IFsgIDYwNi41NTg3MjldIC0tLS0tLS0tLS0t
LVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQ0KPiBbICA2MDYuNTU4NzI5XSBpZ2MgMDAwMDozODow
MC4wOiBkaXNhYmxpbmcgYWxyZWFkeS1kaXNhYmxlZCBkZXZpY2UNCj4gWyAgNjA2LjU1ODczOF0g
V0FSTklORzogQ1BVOiAwIFBJRDogMjA5IGF0IGRyaXZlcnMvcGNpL3BjaS5jOjIyNDggcGNpX2Rp
c2FibGVfZGV2aWNlKzB4ZjYvMHgxNTANCj4gWyAgNjA2LjU1ODc0M10gTW9kdWxlcyBsaW5rZWQg
aW46IHJmY29tbSBjY20gY21hYyBhbGdpZl9oYXNoIGFsZ2lmX3NrY2lwaGVyIGFmX2FsZyB1c2Jo
aWQgYm5lcCBzbmRfaGRhX2NvZGVjX2hkbWkgc25kX2N0bF9sZWQgc25kX2hkYV9jb2RlY19yZWFs
dGVrIGpveWRldiBzbmRfaGRhX2NvZGVjX2dlbmVyaWMgbGVkdHJpZ19hdWRpbyBiaW5mbXRfbWlz
YyBzbmRfc29mX3BjaV9pbnRlbF90Z2wgc25kX3NvZl9pbnRlbF9oZGFfY29tbW9uIHNuZF9zb2Nf
YWNwaV9pbnRlbF9tYXRjaCBzbmRfc29jX2FjcGkgc25kX3NvY19oZGFjX2hkYSBzbmRfc29mX3Bj
aSBzbmRfc29mX3h0ZW5zYV9kc3AgeDg2X3BrZ190ZW1wX3RoZXJtYWwgc25kX3NvZl9pbnRlbF9o
ZGFfbWxpbmsgaW50ZWxfcG93ZXJjbGFtcCBzbmRfc29mX2ludGVsX2hkYSBzbmRfc29mIHNuZF9z
b2ZfdXRpbHMgc25kX2hkYV9leHRfY29yZSBzbmRfc29jX2NvcmUgc25kX2NvbXByZXNzIHNuZF9o
ZGFfaW50ZWwgY29yZXRlbXAgc25kX2ludGVsX2RzcGNmZyBzbmRfaGRhX2NvZGVjIHNuZF9od2Rl
cCBrdm1faW50ZWwgc25kX2hkYV9jb3JlIGl3bG12bSBubHNfaXNvODg1OV8xIGk5MTUgc25kX3Bj
bSBrdm0gbWFjODAyMTEgY3JjdDEwZGlmX3BjbG11bCBjcmMzMl9wY2xtdWwgaTJjX2FsZ29fYml0
IHV2Y3ZpZGVvIGdoYXNoX2NsbXVsbmlfaW50ZWwgc25kX3NlcSBtZWlfcHhwIGRybV9idWRkeSB2
aWRlb2J1ZjJfdm1hbGxvYyBzY2hfZnFfY29kZWwgc2hhNTEyX3Nzc2UzIGxpYmFyYzQgYWVzbmlf
aW50ZWwgbWVpX2hkY3AgdmlkZW9idWYyX21lbW9wcyBidHVzYiB1dmMgY3J5cHRvX3NpbWQgZHJt
X2Rpc3BsYXlfaGVscGVyIHNuZF9zZXFfZGV2aWNlIGJ0cnRsIHZpZGVvYnVmMl92NGwyIGNyeXB0
ZCBzbmRfdGltZXIgaW50ZWxfcmFwbF9tc3IgYnRiY20gZHJtX2ttc19oZWxwZXIgdmlkZW9kZXYg
aXdsd2lmaSBzbmQgYnRpbnRlbCByYXBsIGlucHV0X2xlZHMgd21pX2Jtb2YgaGlkX3NlbnNvcl8N
Cj4gICByb3RhdGlvbiBidG10ayBoaWRfc2Vuc29yX2FjY2VsXzNkDQo+IFsgIDYwNi41NTg3Nzhd
ICBoaWRfc2Vuc29yX2d5cm9fM2QgaGlkX3NlbnNvcl9hbHMgc3lzY29weWFyZWEgdmlkZW9idWYy
X2NvbW1vbiBpbnRlbF9jc3RhdGUgc2VyaW9fcmF3IHNvdW5kY29yZSBibHVldG9vdGggaGlkX3Nl
bnNvcl90cmlnZ2VyIHRodW5kZXJib2x0IHN5c2ZpbGxyZWN0IGNmZzgwMjExIG1jIG1laV9tZSBp
bmR1c3RyaWFsaW9fdHJpZ2dlcmVkX2J1ZmZlciBzeXNpbWdibHQgcHJvY2Vzc29yX3RoZXJtYWxf
ZGV2aWNlX3BjaSBoaWRfc2Vuc29yX2lpb19jb21tb24gaGlkX211bHRpdG91Y2ggZWNkaF9nZW5l
cmljIHByb2Nlc3Nvcl90aGVybWFsX2RldmljZSBrZmlmb19idWYgY2VjIDgyNTBfZHcgbWVpIGVj
YyBwcm9jZXNzb3JfdGhlcm1hbF9yZmltIGluZHVzdHJpYWxpbyByY19jb3JlIHByb2Nlc3Nvcl90
aGVybWFsX21ib3ggdWNzaV9hY3BpIHByb2Nlc3Nvcl90aGVybWFsX3JhcGwgdHRtIHR5cGVjX3Vj
c2kgaW50ZWxfcmFwbF9jb21tb24gbXNyIHR5cGVjIHZpZGVvIGludDM0MDNfdGhlcm1hbCBpbnQz
NDB4X3RoZXJtYWxfem9uZSBpbnQzNDAwX3RoZXJtYWwgaW50ZWxfaGlkIHdtaSBhY3BpX3BhZCBh
Y3BpX3RoZXJtYWxfcmVsIHNwYXJzZV9rZXltYXAgYWNwaV90YWQgbWFjX2hpZCBwYXJwb3J0X3Bj
IHBwZGV2IGxwIHBhcnBvcnQgZHJtIHJhbW9vcHMgcmVlZF9zb2xvbW9uIGVmaV9wc3RvcmUgaXBf
dGFibGVzIHhfdGFibGVzIGF1dG9mczQgaGlkX3NlbnNvcl9jdXN0b20gaGlkX3NlbnNvcl9odWIg
aW50ZWxfaXNodHBfaGlkIHNwaV9weGEyeHhfcGxhdGZvcm0gaGlkX2dlbmVyaWMgZHdfZG1hYyBk
d19kbWFjX2NvcmUgcnRzeF9wY2lfc2RtbWMgZTEwMDBlIGkyY19pODAxIGlnYyBudm1lIGkyY19z
bWJ1cyBpbnRlbF9scHNzX3BjaSBydHN4X3BjaSBpbnRlbF9pc2hfaXBjIG52bWVfY29yZSBpbnRl
bF9scHNzIHhoY2lfcGNpIGkyY19oaWRfYWNwaSBpbnRlbF9pc2h0cCBpZG1hNjQgeGhjaV9wY2lf
cmVuZXNhcyBpMmNfaGlkDQo+ICAgIGhpZCBwaW5jdHJsX2FsZGVybGFrZQ0KPiBbICA2MDYuNTU4
ODA5XSBDUFU6IDAgUElEOiAyMDkgQ29tbTogaXJxLzEyNC1hZXJkcnYgTm90IHRhaW50ZWQgNi40
LjAtcmM3KyAjMTE5DQo+IFsgIDYwNi41NTg4MTFdIEhhcmR3YXJlIG5hbWU6IEhQIEhQIFpCb29r
IEZ1cnkgMTYgRzkgTW9iaWxlIFdvcmtzdGF0aW9uIFBDLzg5QzYsIEJJT1MgVTk2IFZlci4gMDEu
MDcuMDEgMDQvMDYvMjAyMw0KPiBbICA2MDYuNTU4ODEyXSBSSVA6IDAwMTA6cGNpX2Rpc2FibGVf
ZGV2aWNlKzB4ZjYvMHgxNTANCj4gWyAgNjA2LjU1ODgxNF0gQ29kZTogNGQgODUgZTQgNzUgMDcg
NGMgOGIgYTMgZDAgMDAgMDAgMDAgNDggOGQgYmIgZDAgMDAgMDAgMDAgZTggNWMgZjUgMWYgMDAg
NGMgODkgZTIgNDggYzcgYzcgZjggZTYgMzcgYWUgNDggODkgYzYgZTggOWEgM2UgODYgZmYgPDBm
PiAwYiBlOSAzYyBmZiBmZiBmZiA0OCA4ZCA1NSBlNiBiZSAwNCAwMCAwMCAwMCA0OCA4OSBkZiBl
OCA2MiAwYg0KPiBbICA2MDYuNTU4ODE1XSBSU1A6IDAwMTg6ZmZmZmE3MDA0MGE0ZmNhMCBFRkxB
R1M6IDAwMDEwMjQ2DQo+IFsgIDYwNi41NTg4MTZdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6
IGZmZmY4YWM4NDM0YjIwMDAgUkNYOiAwMDAwMDAwMDAwMDAwMDAwDQo+IFsgIDYwNi41NTg4MTdd
IFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwMDAgUkRJOiAwMDAwMDAw
MDAwMDAwMDAwDQo+IFsgIDYwNi41NTg4MThdIFJCUDogZmZmZmE3MDA0MGE0ZmNjMCBSMDg6IDAw
MDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAwDQo+IFsgIDYwNi41NTg4MThdIFIx
MDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiBmZmZmOGFjODQz
NDM1ZGQwDQo+IFsgIDYwNi41NTg4MThdIFIxMzogZmZmZjhhYzg0Mjc3YzAwMCBSMTQ6IDAwMDAw
MDAwMDAwMDAwMDEgUjE1OiBmZmZmOGFjODQzNGIyMTUwDQo+IFsgIDYwNi41NTg4MTldIEZTOiAg
MDAwMDAwMDAwMDAwMDAwMCgwMDAwKSBHUzpmZmZmOGFjYmQ2YTAwMDAwKDAwMDApIGtubEdTOjAw
MDAwMDAwMDAwMDAwMDANCj4gWyAgNjA2LjU1ODgyMF0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAw
MDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPiBbICA2MDYuNTU4ODIxXSBDUjI6IDAwMDA3Zjk3
NDBiYTI4ZTggQ1IzOiAwMDAwMDAwMWViNDNhMDAwIENSNDogMDAwMDAwMDAwMGY1MGVmMA0KPiBb
ICA2MDYuNTU4ODIyXSBQS1JVOiA1NTU1NTU1NA0KPiBbICA2MDYuNTU4ODIyXSBDYWxsIFRyYWNl
Og0KPiBbICA2MDYuNTU4ODIzXSAgPFRBU0s+DQo+IFsgIDYwNi41NTg4MjVdICA/IHNob3dfcmVn
cysweDc2LzB4OTANCj4gWyAgNjA2LjU1ODgyOF0gID8gcGNpX2Rpc2FibGVfZGV2aWNlKzB4ZjYv
MHgxNTANCj4gWyAgNjA2LjU1ODgzMF0gID8gX193YXJuKzB4OTEvMHgxNjANCj4gWyAgNjA2LjU1
ODgzMl0gID8gcGNpX2Rpc2FibGVfZGV2aWNlKzB4ZjYvMHgxNTANCj4gWyAgNjA2LjU1ODgzNF0g
ID8gcmVwb3J0X2J1ZysweDFiZi8weDFkMA0KPiBbICA2MDYuNTU4ODM4XSBudm1lIG52bWUwOiAy
NC8wLzAgZGVmYXVsdC9yZWFkL3BvbGwgcXVldWVzDQo+IFsgIDYwNi41NTg4MzddICA/IGhhbmRs
ZV9idWcrMHg0Ni8weDkwDQo+IFsgIDYwNi41NTg4NDFdICA/IGV4Y19pbnZhbGlkX29wKzB4MWQv
MHg5MA0KPiBbICA2MDYuNTU4ODQzXSAgPyBhc21fZXhjX2ludmFsaWRfb3ArMHgxZi8weDMwDQo+
IFsgIDYwNi41NTg4NDZdICA/IHBjaV9kaXNhYmxlX2RldmljZSsweGY2LzB4MTUwDQo+IFsgIDYw
Ni41NTg4NDldICBpZ2NfaW9fZXJyb3JfZGV0ZWN0ZWQrMHg0MC8weDcwIFtpZ2NdDQo+IFsgIDYw
Ni41NTg4NTddICByZXBvcnRfZXJyb3JfZGV0ZWN0ZWQrMHhkYi8weDFkMA0KPiBbICA2MDYuNTU4
ODYwXSAgPyBfX3BmeF9yZXBvcnRfbm9ybWFsX2RldGVjdGVkKzB4MTAvMHgxMA0KPiBbICA2MDYu
NTU4ODYyXSAgcmVwb3J0X25vcm1hbF9kZXRlY3RlZCsweDFhLzB4MzANCj4gWyAgNjA2LjU1ODg2
NF0gIHBjaV93YWxrX2J1cysweDc4LzB4YjANCj4gWyAgNjA2LjU1ODg2Nl0gIHBjaWVfZG9fcmVj
b3ZlcnkrMHhiYS8weDM0MA0KPiBbICA2MDYuNTU4ODY4XSAgPyBfX3BmeF9hZXJfcm9vdF9yZXNl
dCsweDEwLzB4MTANCj4gWyAgNjA2LjU1ODg3MF0gIGFlcl9wcm9jZXNzX2Vycl9kZXZpY2VzKzB4
MTY4LzB4MjIwDQo+IFsgIDYwNi41NTg4NzFdICBhZXJfaXNyKzB4MWQzLzB4MWYwDQo+IFsgIDYw
Ni41NTg4NzRdICA/IF9fcGZ4X2lycV90aHJlYWRfZm4rMHgxMC8weDEwDQo+IFsgIDYwNi41NTg4
NzZdICBpcnFfdGhyZWFkX2ZuKzB4MjkvMHg3MA0KPiBbICA2MDYuNTU4ODc3XSAgaXJxX3RocmVh
ZCsweGVlLzB4MWMwDQo+IFsgIDYwNi41NTg4NzhdICA/IF9fcGZ4X2lycV90aHJlYWRfZHRvcisw
eDEwLzB4MTANCj4gWyAgNjA2LjU1ODg3OV0gID8gX19wZnhfaXJxX3RocmVhZCsweDEwLzB4MTAN
Cj4gWyAgNjA2LjU1ODg4MF0gIGt0aHJlYWQrMHhmOC8weDEzMA0KPiBbICA2MDYuNTU4ODgyXSAg
PyBfX3BmeF9rdGhyZWFkKzB4MTAvMHgxMA0KPiBbICA2MDYuNTU4ODg0XSAgcmV0X2Zyb21fZm9y
aysweDI5LzB4NTANCj4gWyAgNjA2LjU1ODg4N10gIDwvVEFTSz4NCj4gWyAgNjA2LjU1ODg4N10g
LS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+IFsgIDYwNi41NzAyMjNdIGk5
MTUgMDAwMDowMDowMi4wOiBbZHJtXSBHVDA6IEh1QzogYXV0aGVudGljYXRlZCENCj4gWyAgNjA2
LjU3MDIyOF0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dIEdUMDogR1VDOiBzdWJtaXNzaW9uIGRp
c2FibGVkDQo+IFsgIDYwNi41NzAyMzFdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSBHVDA6IEdV
QzogU0xQQyBkaXNhYmxlZA0KPiBbICA2MDYuNjYzMDQyXSB4aGNpX2hjZCAwMDAwOjM5OjAwLjA6
IEFFUjogY2FuJ3QgcmVjb3ZlciAobm8gZXJyb3JfZGV0ZWN0ZWQgY2FsbGJhY2spDQo+IFsgIDYw
Ni42NjMxMTFdIHBjaWVwb3J0IDAwMDA6MDA6MWQuMDogQUVSOiBkZXZpY2UgcmVjb3ZlcnkgZmFp
bGVkDQo+IFsgIDYwNi43MjE2NDJdIGl3bHdpZmkgMDAwMDowMDoxNC4zOiBXRlBNX1VNQUNfUERf
Tk9USUZJQ0FUSU9OOiAweDFmDQo+IFsgIDYwNi43MjE2NzddIGl3bHdpZmkgMDAwMDowMDoxNC4z
OiBXRlBNX0xNQUMyX1BEX05PVElGSUNBVElPTjogMHgxZg0KPiBbICA2MDYuNzIxNjg3XSBpd2x3
aWZpIDAwMDA6MDA6MTQuMzogV0ZQTV9BVVRIX0tFWV8wOiAweDkwDQo+IFsgIDYwNi43MjE2OThd
IGl3bHdpZmkgMDAwMDowMDoxNC4zOiBDTlZJX1NDVV9TRVFfREFUQV9EVzk6IDB4MA0KPiBbICA2
MDYuODQyODc3XSB1c2IgMS04OiByZXNldCBoaWdoLXNwZWVkIFVTQiBkZXZpY2UgbnVtYmVyIDMg
dXNpbmcgeGhjaV9oY2QNCj4gWyAgNjA3LjA0ODM0MF0gZ2VuaXJxOiBGbGFncyBtaXNtYXRjaCBp
cnEgMTY0LiAwMDAwMDAwMCAoZW5wNTZzMCkgdnMuIDAwMDAwMDAwIChlbnA1NnMwKQ0KPiBbICA2
MDcuMDUwMzEzXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0NCj4gLi4uDQo+
IFsgIDYwOS4wNjQxNjBdIGlnYyAwMDAwOjM4OjAwLjAgZW5wNTZzMDogUmVnaXN0ZXIgRHVtcA0K
PiBbICA2MDkuMDY0MTY3XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJlZ2lzdGVyIE5hbWUg
ICBWYWx1ZQ0KPiBbICA2MDkuMDY0MTgxXSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IENUUkwg
ICAgICAgICAgICAwODFjMDY0MQ0KPiBbICA2MDkuMDY0MTg4XSBpZ2MgMDAwMDozODowMC4wIGVu
cDU2czA6IFNUQVRVUyAgICAgICAgICA0MDI4MDQwMQ0KPiBbICA2MDkuMDY0MTk1XSBpZ2MgMDAw
MDozODowMC4wIGVucDU2czA6IENUUkxfRVhUICAgICAgICAxMDAwMDBjMA0KPiBbICA2MDkuMDY0
MjAyXSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IE1ESUMgICAgICAgICAgICAxODAxNzk0OQ0K
PiBbICA2MDkuMDY0MjA4XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IElDUiAgICAgICAgICAg
ICA4MDAwMDAxMA0KPiBbICA2MDkuMDY0MjE0XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJD
VEwgICAgICAgICAgICAwNDQwODAyMg0KPiBbICA2MDkuMDY0MjMyXSBpZ2MgMDAwMDozODowMC4w
IGVucDU2czA6IFJETEVOWzAtM10gICAgICAwMDAwMTAwMCAwMDAwMTAwMCAwMDAwMTAwMCAwMDAw
MTAwMA0KPiBbICA2MDkuMDY0MjUxXSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJESFswLTNd
ICAgICAgICAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMA0KPiBbICA2MDkuMDY0
MjcwXSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJEVFswLTNdICAgICAgICAwMDAwMDBmZiAw
MDAwMDBmZiAwMDAwMDBmZiAwMDAwMDBmZg0KPiBbICA2MDkuMDY0Mjg5XSBpZ2MgMDAwMDozODow
MC4wIGVucDU2czA6IFJYRENUTFswLTNdICAgICAwMDA0MDgwOCAwMDA0MDgwOCAwMDA0MDgwOCAw
MDA0MDgwOA0KPiBbICA2MDkuMDY0MzA4XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJEQkFM
WzAtM10gICAgICBmZmM2MjAwMCBmZmY2YjAwMCBmZmY2YzAwMCBmZmY2ZDAwMA0KPiBbICA2MDku
MDY0MzI2XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJEQkFIWzAtM10gICAgICAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMA0KPiBbICA2MDkuMDY0MzMzXSBpZ2MgMDAwMDoz
ODowMC4wIGVucDU2czA6IFRDVEwgICAgICAgICAgICBhNTA0MDBmYQ0KPiBbICA2MDkuMDY0MzUx
XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFREQkFMWzAtM10gICAgICBmZmY2ZDAwMCBmZmNk
ZjAwMCBmZmNlMDAwMCBmZmNlMTAwMA0KPiBbICA2MDkuMDY0MzY5XSBpZ2MgMDAwMDozODowMC4w
IGVucDU2czA6IFREQkFIWzAtM10gICAgICAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMA0KPiBbICA2MDkuMDY0Mzg3XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFRETEVOWzAt
M10gICAgICAwMDAwMTAwMCAwMDAwMTAwMCAwMDAwMTAwMCAwMDAwMTAwMA0KPiBbICA2MDkuMDY0
NDA1XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFRESFswLTNdICAgICAgICAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMA0KPiBbICA2MDkuMDY0NDIzXSBpZ2MgMDAwMDozODow
MC4wIGVucDU2czA6IFREVFswLTNdICAgICAgICAwMDAwMDAwNCAwMDAwMDAwMCAwMDAwMDAwMCAw
MDAwMDAwMA0KPiBbICA2MDkuMDY0NDQxXSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFRYRENU
TFswLTNdICAgICAwMDEwMDEwOCAwMDEwMDEwOCAwMDEwMDEwOCAwMDEwMDEwOA0KPiBbICA2MDku
MDY0NDQ1XSBpZ2MgMDAwMDozODowMC4wIGVucDU2czA6IFJlc2V0IGFkYXB0ZXINCj4gDQo+IFRo
ZSBpc3N1ZSBpcyB0aGF0IHRoZSBQVE0gcmVxdWVzdHMgYXJlIHNlbmRpbmcgYmVmb3JlIGRyaXZl
ciByZXN1bWVzIHRoZQ0KPiBkZXZpY2UuIFNpbmNlIHRoZSBpc3N1ZSBjYW4gYWxzbyBiZSBvYnNl
cnZlZCBvbiBXaW5kb3dzLCBpdCdzIHF1aXRlDQo+IGxpa2VseSBhIGZpcm13YXJlL2hhcmR3YXIg
bGltaXRhdGlvbi4NCg0KaGFyZHdhciplKg0KDQo+IFNvIGF2b2lkIHJlc2V0dGluZyB0aGUgZGV2
aWNlIGlmIGl0J3Mgbm90IHJlc3VtZWQuIE9uY2UgdGhlIGRldmljZSBpcw0KPiBmdWxseSByZXN1
bWVkLCB0aGUgZGV2aWNlIGNhbiB3b3JrIG5vcm1hbGx5Lg0KDQpJdOKAmWQgYmUgZ3JlYXQgaWYg
eW91IGRvY3VtZW50ZWQsIHdoYXQgZG9ja2luZyBzdGF0aW9ucyB5b3UgdGVzdGVkIHRoaXMgd2l0
aC4NCg0KPiBMaW5rOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lk
PTIxNjg1MA0KPiBTaWduZWQtb2ZmLWJ5OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNh
bm9uaWNhbC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jIHwgMyArKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWlu
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiBpbmRleCBm
YTc2NDE5MGYyNzAuLjZhNDZmODg2ZmY0MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnY19tYWluLmMNCj4gQEAgLTY5NjIsNiArNjk2Miw5IEBAIHN0YXRpYyBwY2lf
ZXJzX3Jlc3VsdF90IGlnY19pb19lcnJvcl9kZXRlY3RlZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwN
Cj4gICAJc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsN
Cj4gICAJc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsN
Cj4gICANCj4gKwlpZiAoIXBjaV9pc19lbmFibGVkKHBkZXYpKQ0KPiArCQlyZXR1cm4gMDsNCj4g
Kw0KPiAgIAluZXRpZl9kZXZpY2VfZGV0YWNoKG5ldGRldik7DQo+ICAgDQo+ICAgCWlmIChzdGF0
ZSA9PSBwY2lfY2hhbm5lbF9pb19wZXJtX2ZhaWx1cmUpDQoNCg0KS2luZCByZWdhcmRzLA0KDQpQ
YXVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
