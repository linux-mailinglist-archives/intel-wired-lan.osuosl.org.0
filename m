Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4692CF6AF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 23:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75C0187DCE;
	Fri,  4 Dec 2020 22:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HvO3SHRQrHd; Fri,  4 Dec 2020 22:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9428087DCB;
	Fri,  4 Dec 2020 22:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55CE21BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F00887A3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_1Q8VSnjkht for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 22:20:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D3F4187A35
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:20:12 +0000 (UTC)
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@iogearbox.net>)
 id 1klJQi-0000Ap-GR; Fri, 04 Dec 2020 23:19:56 +0100
Received: from [85.7.101.30] (helo=pc-9.home)
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1klJQi-000WQ1-4q; Fri, 04 Dec 2020 23:19:56 +0100
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net> <87pn3p7aiv.fsf@toke.dk>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <eb305a4f-c189-6b32-f718-6e709ef0fa55@iogearbox.net>
Date: Fri, 4 Dec 2020 23:19:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87pn3p7aiv.fsf@toke.dk>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.4/26007/Thu Dec  3 14:13:31 2020)
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, netdev@vger.kernel.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvNC8yMCA2OjIwIFBNLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gRGFu
aWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgpbLi4uXQo+PiBXZSB0
cmllZCB0byBzdGFuZGFyZGl6ZSBvbiBhIG1pbmltdW0gZ3VhcmFudGVlZCBhbW91bnQsIGJ1dCB1
bmZvcnR1bmF0ZWx5IG5vdAo+PiBldmVyeW9uZSBzZWVtcyB0byBpbXBsZW1lbnQgaXQsIGJ1dCBJ
IHRoaW5rIGl0IHdvdWxkIGJlIHZlcnkgdXNlZnVsIHRvIHF1ZXJ5Cj4+IHRoaXMgZnJvbSBhcHBs
aWNhdGlvbiBzaWRlLCBmb3IgZXhhbXBsZSwgY29uc2lkZXIgdGhhdCBhbiBhcHAgaW5zZXJ0cyBh
IEJQRgo+PiBwcm9nIGF0IFhEUCBkb2luZyBjdXN0b20gZW5jYXAgc2hvcnRseSBiZWZvcmUgWERQ
X1RYIHNvIGl0IHdvdWxkIGJlIHVzZWZ1bCB0bwo+PiBrbm93IHdoaWNoIG9mIHRoZSBkaWZmZXJl
bnQgZW5jYXBzIGl0IGltcGxlbWVudHMgYXJlIHJlYWxpc3RpY2FsbHkgcG9zc2libGUgb24KPj4g
dGhlIHVuZGVybHlpbmcgWERQIHN1cHBvcnRlZCBkZXYuCj4gCj4gSG93IG1hbnkgZGlzdGluY3Qg
dmFsdWVzIGFyZSB0aGVyZSBpbiByZWFsaXR5PyBFbm91Z2ggdG8gZXhwcmVzcyB0aGlzIGluCj4g
YSBmZXcgZmxhZ3MgKFhEUF9IRUFEUk9PTV8xMjgsIFhEUF9IRUFEUk9PTV8xOTIsIGV0Yz8pLCBv
ciBkb2VzIGl0IG5lZWQKPiBhbiBhZGRpdGlvbmFsIGZpZWxkIHRvIGdldCB0aGUgZXhhY3QgdmFs
dWU/IElmIHdlIGltcGxlbWVudCB0aGUgbGF0dGVyCj4gd2UgYWxzbyBydW4gdGhlIHJpc2sgb2Yg
cGVvcGxlIGFjdHVhbGx5IGltcGxlbWVudGluZyBhbGwgc29ydHMgb2Ygd2VpcmQKPiB2YWx1ZXMs
IHdoZXJlYXMgaWYgd2UgY29uc3RyYWluIGl0IHRvIGEgZmV3IGRpc3RpbmN0IHZhbHVlcyBpdCdz
IGVhc2llcgo+IHRvIHB1c2ggYmFjayBhZ2FpbnN0IGFkZGluZyBuZXcgdmFsdWVzIChhcyBpdCds
bCBiZSBvYnZpb3VzIGZyb20gdGhlCj4gYWRkaXRpb24gb2YgbmV3IGZsYWdzKS4KCkl0J3Mgbm90
IGV2ZXJ5d2hlcmUgc3RyYWlnaHQgZm9yd2FyZCB0byBkZXRlcm1pbmUgdW5mb3J0dW5hdGVseSwg
c2VlIGFsc28gWzAsMV0KYXMgc29tZSBkYXRhIHBvaW50cyB3aGVyZSBKZXNwZXIgbG9va2VkIGlu
dG8gaW4gdGhlIHBhc3QsIHNvIGluIHNvbWUgY2FzZXMgaXQKbWlnaHQgZGlmZmVyIGRlcGVuZGlu
ZyBvbiB0aGUgYnVpbGQvcnVudGltZSBjb25maWcuLgoKICAgWzBdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2JwZi8xNTg5NDUzMTQ2OTguOTcwMzUuNTI4NjgyNzk1MTIyNTU3ODQ2Ny5zdGdpdEBm
aXJlc291bC8KICAgWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2JwZi8xNTg5NDUzNDY0OTQu
OTcwMzUuMTI4MDk0MDA0MTQ1NjYwNjE4MTUuc3RnaXRAZmlyZXNvdWwvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
