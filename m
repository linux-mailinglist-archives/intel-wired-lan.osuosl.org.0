Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B570C2CF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 17:55:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BA5C60B83;
	Mon, 22 May 2023 15:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BA5C60B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684770944;
	bh=wPh7p5/+o7Qt5WWNs8/RwcPvOIA73ssC1t4ss5ujnHc=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hDXCULugiHeGnlAilqogOi4GZ4FDkTOjWXDKyX6OQqyQzzVW8tjWb2fNxNEvxov42
	 TB5ioduicSWxhUzbODyzJoIZ/kOicGXhiqGaFHVEFNOsMXqAnBJbDdSmgilxps7Gy8
	 oGAqFWRnJ6gS4sfUbyRMKkf25Th+f7e+UITzoH/zWMkOyKuaYTolaQcdH9/yah4PTY
	 0CnaoH29A1RJ8Mr1UndkxUojbOGxE8AWXDXEOnRIX4Ozg78jdlE3K7OwqGAOLJoipF
	 tpbY/vM5RnM5u8TEqQtV7QjkWqXzuorC80SRfuJmRWExhTS5B0bygfMlmlYC0CH/Gr
	 8Bv3395WsHv0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBw1Tx-_Tz4e; Mon, 22 May 2023 15:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFDD860B3B;
	Mon, 22 May 2023 15:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFDD860B3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 033F31BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD60E41D85
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD60E41D85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bj4iTJgEAA9M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 15:55:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5646541D7E
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5646541D7E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:55:36 +0000 (UTC)
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www62.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.94.2) (envelope-from <daniel@iogearbox.net>)
 id 1q17sN-000HgE-IO; Mon, 22 May 2023 17:55:11 +0200
Received: from [85.1.206.226] (helo=linux.home)
 by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1q17sM-000UFQ-IZ; Mon, 22 May 2023 17:55:10 +0200
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-15-larysa.zaremba@intel.com>
 <ee1ad4f2-34ab-4377-14d5-532cb0687180@redhat.com> <ZGJnFxzDTV2qE4zZ@lincoln>
 <b9a879b2-bb62-ba18-0bdd-5c126a1086a9@intel.com>
 <a37db72f-2e83-c838-7c81-8f01a5a0df32@redhat.com>
 <5b817d49-eefa-51c9-3b51-01f1dba17d42@intel.com>
 <fed6ef09-0f5b-8c3d-0484-bb0995d09282@redhat.com>
 <d53f0150-d74b-7cf6-8fe7-324131b43982@intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <106900e6-ab94-b37f-dc9d-f0a4242bb90f@iogearbox.net>
Date: Mon, 22 May 2023 17:55:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d53f0150-d74b-7cf6-8fe7-324131b43982@intel.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.8/26915/Mon May 22 09:23:18 2023)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=iogearbox.net; s=default2302; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
 bh=3XGsqEuFdWjxpRIwiAwzbMYLJommpBUmf64o8Q70T54=; b=T3DhWwZvaaFpz7BUKGUYfo2SjO
 mnHOu0gFWqbJdNvvfVMzsr7HWt0aV5MpevFsuyJDWdKAo8zr+5Rr3x+VXBd7yRgncbklJv2GjuJE3
 t2VSzBIMvOhxun/YpvaQFaAGsDsRp6wyc394DMMtDoEB8tgIWkvIcOAgv4NdzapSXJ0iQCe54RrPd
 0zPEZgqJx3JbokWMmV+2Ogv8aCbxI9qghhH2GTaSbJzclGz2cCUQYjURJYo+VbsDvxjitAIFTXL5r
 6iyrrvcncV1twi+CoqplMGnBBFpIZ34k0ah6ZLAyhs3Hzf4qz8B01wfMdibZXOOQCYQn9Jyzya9HV
 lJdNJQmw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net
 header.a=rsa-sha256 header.s=default2302 header.b=T3DhWwZv
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 14/15] net,
 xdp: allow metadata > 32
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8yMi8yMyA1OjI4IFBNLCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPiBGcm9tOiBKZXNw
ZXIgRGFuZ2FhcmQgQnJvdWVyIDxqYnJvdWVyQHJlZGhhdC5jb20+Cj4gRGF0ZTogTW9uLCAyMiBN
YXkgMjAyMyAxMzo0MTo0MyArMDIwMAo+PiBPbiAxOS8wNS8yMDIzIDE4LjM1LCBBbGV4YW5kZXIg
TG9iYWtpbiB3cm90ZToKPj4+IEZyb206IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGpicm91ZXJA
cmVkaGF0LmNvbT4KPj4+IERhdGU6IFR1ZSwgMTYgTWF5IDIwMjMgMTc6MzU6MjcgKzAyMDAKPiAK
PiBbLi4uXQo+IAo+PiBOb3QgdGFsa2luZyBhYm91dCB5b3VyIGNoYW5nZXMgKGluIHRoaXMgcGF0
Y2gpLgo+Pgo+PiBJJ20gcmVhbGl6aW5nIHRoYXQgU0tCcyB1c2luZyBtZXRhZGF0YSBhcmVhIHdp
bGwgaGF2ZSBhIHBlcmZvcm1hbmNlIGhpdAo+PiBkdWUgdG8gYWNjZXNzaW5nIGFub3RoZXIgY2Fj
aGVsaW5lICh0aGUgbWV0YV9sZW4gaW4gc2tiX3NoYXJlZF9pbmZvKS4KPj4KPj4gSUlSQyBEYW5p
ZWwgY29tcGxhaW5lZCBhYm91dCB0aGlzIHBlcmZvcm1hbmNlIGhpdCAoaW4gdGhlIHBhc3QpLCBJ
IGd1ZXNzCj4+IHRoaXMgZXhwbGFpbnMgaXQuwqAgSUlSQyBDaWxpdW0gY2hhbmdlZCB0byB1c2Ug
cGVyY3B1IHZhcmlhYmxlcy9kYXRhc3RvcmUKPj4gdG8gd29ya2Fyb3VuZCB0aGlzLgo+IAo+IFdo
eSBzaG91bGQgd2UgY29tcGFyZSBtZXRhZGF0YSBvZiBza2JzIG9uIEdSTyBhbnl3YXk/IEkgd2Fz
IGRpc2FibGluZyBpdAo+IHRoZSBvbGQgaGludHMgc2VyaWVzIChjb25kaXRpb25hbGx5LCBpZiBk
cml2ZXIgYXNrcyksIG1vcmVvdmVyLi4uCj4gLi4uaWYgbWV0YWRhdGEgY29udGFpbnMgZnVsbCBj
aGVja3N1bSwgR1JPIHdpbGwgYmUgYnJva2VuIGNvbXBsZXRlbHkgZHVlCj4gdG8gdGhpcyBjb21w
YXJpc29uIChvciBhbnkgb3RoZXIgZnJhbWUtdW5pcXVlIGZpZWxkcy4gVkxBTiB0YWdzIGFuZAo+
IGhhc2hlcyBhcmUgb2theSkuCgpUaGlzIGlzIHdoZW4gQlBGIHByb2cgb24gWERQIHBvcHVsYXRl
cyBtZXRhZGF0YSB3aXRoIGN1c3RvbSBkYXRhIHdoZW4gaXQKd2FudHMgdG8gdHJhbnNmZXIgaW5m
b3JtYXRpb24gZnJvbSBYRFAgdG8gc2tiIGFrYSB0YyBCUEYgcHJvZyBzaWRlLiBwZXJjcHUKZGF0
YSBzdG9yZSBtYXkgbm90IHdvcmsgaGVyZSBhcyBpdCBpcyBub3QgZ3VhcmFudGVlZCB0aGF0IHNr
YiBtaWdodCBlbmQgdXAKb24gc2FtZSBDUFUuCgo+Pj4gVGhlIHdob2xlIHhkcF9tZXRhbGVuX2lu
dmFsaWQoKSBnZXRzIGV4cGFuZGVkIGludG86Cj4+Pgo+Pj4gIMKgwqDCoMKgcmV0dXJuIChtZXRh
bGVuICUgNCkgfHwgbWV0YWxlbiA+IDI1NTsKPj4+Cj4+PiBhdCBjb21waWxlLXRpbWUuIEFsbCB0
aG9zZSB0eXBlb2Ygc2hlbmFuaWdhbnMgYXJlIG9ubHkgdG8gbm90IG9wZW4tY29kZQo+Pj4gbWV0
YV9sZW4ncyB0eXBlL3NpemUvbWF4Lgo+Pj4KPj4+Pgo+Pj4+IEJ1dCBvbmx5IHVzZSBmb3IgU0tC
cyB0aGF0IGdldHMgY3JlYXRlZCBmcm9tIHhkcCB3aXRoIG1ldGFkYXRhLCByaWdodD8KPj4+Pgo+
Pgo+PiBOb3JtYWwgbmV0c3RhY2sgcHJvY2Vzc2luZyBhY3R1YWxseSBhY2Nlc3MgdGhpcyBza2Jf
c2hpbmZvLT5tZXRhX2xlbiBpbgo+PiBncm9fbGlzdF9wcmVwYXJlKCkuwqAgQXMgdGhlIGNhbGxl
ciBkZXZfZ3JvX3JlY2VpdmUoKSBsYXRlciBhY2Nlc3Mgb3RoZXIKPj4gbWVtb3J5IGluIHNrYl9z
aGFyZWRfaW5mbywgdGhlbiB0aGUgR1JPIGNvZGUgcGF0aCBhbHJlYWR5IHRha2VzIHRoaXMgaGl0
Cj4+IHRvIGJlZ2luIHdpdGguCj4gCj4gWW91IGFjY2VzcyBza2Jfc2hpbmZvKCkgb2Z0ZW4gZXZl
biBiZWZvcmUgcnVubmluZyBYRFAgcHJvZ3JhbSwgZm9yCj4gZXhhbXBsZSwgd2hlbiBhIGZyYW1l
IGlzIG11bHRpLWJ1ZmZlci4gUGx1cyBIVyB0aW1lc3RhbXBzIGFyZSBhbHNvCj4gdGhlcmUsIGFu
ZCBzbyBvbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
