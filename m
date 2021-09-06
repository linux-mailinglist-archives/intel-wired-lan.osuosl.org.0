Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B65401A99
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Sep 2021 13:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CEFA81AA7;
	Mon,  6 Sep 2021 11:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pcxsVi5ETYIB; Mon,  6 Sep 2021 11:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52C9E81A30;
	Mon,  6 Sep 2021 11:31:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F26B81BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 11:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEE5C4028B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 11:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZuUvYgR6EtX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Sep 2021 11:31:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C148840259
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 11:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630927881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ifh2AKn2IYRrBAFZpGRrv4Jn5qIpOvQyMh+sOZEw61k=;
 b=Am5QBo/LK5OE80MTBEkC7dDaHI2pHOuWB+0CNefnoR2PGZOo0HeNtUGJVGNvLsk4NkriLN
 sD9ED8YZmfsxdlpGqc34UvtqC/KLQkj9bdzyJzviLAV/cYnA76Vhwyih0n5kibu8mOnVO3
 QhgFwIoxb27BQZJC1F/bkNzeefhaqQs=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-455-cupQjfjtPp-jLWUo-hDXcw-1; Mon, 06 Sep 2021 07:31:18 -0400
X-MC-Unique: cupQjfjtPp-jLWUo-hDXcw-1
Received: by mail-wr1-f72.google.com with SMTP id
 r11-20020a5d4e4b000000b001575c5ed4b4so1125020wrt.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Sep 2021 04:31:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:cc:subject:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ifh2AKn2IYRrBAFZpGRrv4Jn5qIpOvQyMh+sOZEw61k=;
 b=nnbtD2AkpduUW18XPCWGm1mvRs2yqKxG+6oxeeghORQJN76Hxt6v9X2rhQ0fmMPajj
 urd23fpE/48bzRdgvZxq96amMB7HLONnGajd3/kJVpNkQnYPdssuvG4VJkeBaiq6RK3h
 9RXSZo4wBXCU5ryoFKMgfdCXA4gWrGcYVqe0sdvif+mnl5FaoRsASuwGckrctFFGld2k
 RlAR2QoZtb/h8SvsBxsbG830F1CEH+1hDW9YfBJwsQuYnmEWcXfG5ALWaCB2i0C19ZMB
 Kc2NJoxJ0tNmkVMYzzaz/EwzkagqNXe/NDugRtKJmMB4QBpOTREGwfq6YiwBLs6JOm6H
 2rEQ==
X-Gm-Message-State: AOAM531TjBoP2WoiaspGGul4hR/jaILo2XLOMZ+biHiXyb7TY4yDw8cG
 rT0YQnOizZopNFgxqmo2csfUXKnFfIhvzpRgHqt/7WQ3OdJAsNl9piFvM8VZoSqBQjwA6YWYKyP
 xFN2lLyQOLsOeb4qjS7nY/UUrS6WaNg==
X-Received: by 2002:adf:eb4a:: with SMTP id u10mr12773356wrn.11.1630927877265; 
 Mon, 06 Sep 2021 04:31:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRDD+CFWqGasfoJ4bWw1zXPZwgO49ADZdpw61tpeyBjS5qkitLHCkPuytVwq/iV6MGXa+HdQ==
X-Received: by 2002:adf:eb4a:: with SMTP id u10mr12773300wrn.11.1630927876958; 
 Mon, 06 Sep 2021 04:31:16 -0700 (PDT)
Received: from [192.168.42.238] (3-14-107-185.static.kviknet.dk.
 [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id u26sm7984094wrd.32.2021.09.06.04.31.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Sep 2021 04:31:16 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Feng Zhou <zhoufeng.zf@bytedance.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Jason Xing <xingwanli@kuaishou.com>
References: <20210903064013.9842-1-zhoufeng.zf@bytedance.com>
 <2ee172ab-836c-d464-be59-935030d01f4b@molgen.mpg.de>
 <8ce8de1c-14bf-20ad-00c0-9e0d8ff34b91@bytedance.com>
Message-ID: <318e7f75-287e-148a-cdb0-648b7c36e0a9@redhat.com>
Date: Mon, 6 Sep 2021 13:31:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8ce8de1c-14bf-20ad-00c0-9e0d8ff34b91@bytedance.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [External] Re: [PATCH v2] ixgbe: Fix NULL
 pointer dereference in ixgbe_xdp_setup
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
Cc: ast@kernel.org, zhengqi.arch@bytedance.com, chenying.kernel@bytedance.com,
 wangdongdong.6@bytedance.com, duanxiongchun@bytedance.com,
 daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, brouer@redhat.com, kuba@kernel.org,
 hawk@kernel.org, songmuchun@bytedance.com, magnus.karlsson@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, zhouchengming@bytedance.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgRmVuZyBhbmQgSmFzb24sCgpQbGVhc2Ugbm90aWNlIHRoYXQgeW91IGFyZSBib3RoIGRldmVs
b3BpbmcgcGF0Y2hlcyB0aGF0IGNoYW5nZSB0aGUgaXhnYmUgCmRyaXZlciBpbiByZWxhdGVkIGFy
ZWFzLgoKSmFzb24ncyBwYXRjaDoKICBTdWJqZWN0OiBbUEFUQ0ggdjddIGl4Z2JlOiBsZXQgdGhl
IHhkcGRydiB3b3JrIHdpdGggbW9yZSB0aGFuIDY0IGNwdXMKIApodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyMTA5MDExMDEyMDYuNTAyNzQtMS1rZXJuZWxqYXNvbnhpbmdAZ21haWwuY29t
LwoKV2UgbWlnaHQgbmVlZCBib3RoIGFzIHRoaXMgcGF0Y2ggbG9va3MgbGlrZSBhIGZpeCB0byBh
IHBhbmljLCBhbmQgCkphc29uJ3MgcGF0Y2ggYWxsb3dzIFhEUCBvbiBpeGdiZSB0byB3b3JrIG9u
IG1hY2hpbmVzIHdpdGggbW9yZSB0aGFuIDY0IApDUFVzLgoKLUplc3BlcgoKT24gMDYvMDkvMjAy
MSAwOS40OSwgRmVuZyBaaG91IHdyb3RlOgo+IAo+IOWcqCAyMDIxLzkvNiDkuIvljYgyOjM3LCBQ
YXVsIE1lbnplbCDlhpnpgZM6Cj4+IERlYXIgRmVuZywKPj4KPj4KPj4gQW0gMDMuMDkuMjEgdW0g
MDg6NDAgc2NocmllYiBGZW5nIHpob3U6Cj4+Cj4+IChJZiB5b3UgY2FyZSwgaW4geW91ciBlbWFp
bCBjbGllbnQsIHlvdXIgbGFzdCBuYW1lIGRvZXMgbm90IHN0YXJ0IHdpdGggCj4+IGEgY2FwaXRh
bCBsZXR0ZXIuKQo+Pgo+Pj4gRnJvbTogRmVuZyBaaG91IDx6aG91ZmVuZy56ZkBieXRlZGFuY2Uu
Y29tPgo+Pj4KPj4+IFRoZSBpeGdiZSBkcml2ZXIgY3VycmVudGx5IGdlbmVyYXRlcyBhIE5VTEwg
cG9pbnRlciBkZXJlZmVyZW5jZSB3aXRoCj4+PiBzb21lIG1hY2hpbmUgKG9ubGluZSBjcHVzIDwg
NjMpLiBUaGlzIGlzIGR1ZSB0byB0aGUgZmFjdCB0aGF0IHRoZQo+Pj4gbWF4aW11bSB2YWx1ZSBv
ZiBudW1feGRwX3F1ZXVlcyBpcyBucl9jcHVfaWRzLiBDb2RlIGlzIGluCj4+PiAiaXhnYmVfc2V0
X3Jzc19xdWV1ZXMiIi4KPj4+Cj4+PiBIZXJlJ3MgaG93IHRoZSBwcm9ibGVtIHJlcGVhdHMgaXRz
ZWxmOgo+Pj4gU29tZSBtYWNoaW5lIChvbmxpbmUgY3B1cyA8IDYzKSwgQW5kIHVzZXIgc2V0IG51
bV9xdWV1ZXMgdG8gNjMgdGhyb3VnaAo+Pj4gZXRodG9vbC4gQ29kZSBpcyBpbiB0aGUgIml4Z2Jl
X3NldF9jaGFubmVscyIsCj4+PiBhZGFwdGVyLT5yaW5nX2ZlYXR1cmVbUklOR19GX0ZESVJdLmxp
bWl0ID0gY291bnQ7Cj4+Cj4+IEZvciBiZXR0ZXIgbGVnaWJpbGl0eSwgeW91IG1pZ2h0IHdhbnQg
dG8gaW5kZW50IGNvZGUgKGJsb2NrcykgYnkgZm91ciAKPj4gc3BhY2VzIGFuZCBhZGQgYmxhbmsg
bGluZXMgYXJvdW5kIGl0IChhbHNvIGJlbG93KS4KPj4KPj4+IEl0IGJlY2FtZXMgNjMuCj4+Cj4+
IGJlY29tZXMKPj4KPj4+IFdoZW4gdXNlciB1c2UgeGRwLCAiaXhnYmVfc2V0X3Jzc19xdWV1ZXMi
IHdpbGwgc2V0IHF1ZXVlcyBudW0uCj4+PiBhZGFwdGVyLT5udW1fcnhfcXVldWVzID0gcnNzX2k7
Cj4+PiBhZGFwdGVyLT5udW1fdHhfcXVldWVzID0gcnNzX2k7Cj4+PiBhZGFwdGVyLT5udW1feGRw
X3F1ZXVlcyA9IGl4Z2JlX3hkcF9xdWV1ZXMoYWRhcHRlcik7Cj4+PiBBbmQgcnNzX2kncyB2YWx1
ZSBpcyBmcm9tCj4+PiBmID0gJmFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0ZfRkRJUl07Cj4+
PiByc3NfaSA9IGYtPmluZGljZXMgPSBmLT5saW1pdDsKPj4+IFNvICJudW1fcnhfcXVldWVzIiA+
ICJudW1feGRwX3F1ZXVlcyIsIHdoZW4gcnVuIHRvICJpeGdiZV94ZHBfc2V0dXAiLAo+Pj4gZm9y
IChpID0gMDsgaSA8IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykKPj4+IMKgwqDCoMKgaWYg
KGFkYXB0ZXItPnhkcF9yaW5nW2ldLT54c2tfdW1lbSkKPj4+IGxlYWQgdG8gcGFuaWMuCj4+Cj4+
IGxlYWQqcyo/Cj4+Cj4+PiBDYWxsIHRyYWNlOgo+Pj4gW2V4Y2VwdGlvbiBSSVA6IGl4Z2JlX3hk
cCszNjhdCj4+PiBSSVA6IGZmZmZmZmZmYzAyYTc2YTDCoCBSU1A6IGZmZmY5ZmUxNjIwMmY4ZDDC
oCBSRkxBR1M6IDAwMDEwMjk3Cj4+PiBSQVg6IDAwMDAwMDAwMDAwMDAwMDDCoCBSQlg6IDAwMDAw
MDAwMDAwMDAwMjDCoCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDAKPj4+IFJEWDogMDAwMDAwMDAwMDAw
MDAwMMKgIFJTSTogMDAwMDAwMDAwMDAwMDAxY8KgIFJESTogZmZmZmZmZmZhOTRlYWQ5MAo+Pj4g
UkJQOiBmZmZmOTJmOGYyNGMwYzE4wqDCoCBSODogMDAwMDAwMDAwMDAwMDAwMMKgwqAgUjk6IDAw
MDAwMDAwMDAwMDAwMDAKPj4+IFIxMDogZmZmZjlmZTE2MjAyZjgzMMKgIFIxMTogMDAwMDAwMDAw
MDAwMDAwMMKgIFIxMjogZmZmZjkyZjhmMjRjMDAwMAo+Pj4gUjEzOiBmZmZmOWZlMTYyMDJmYzAx
wqAgUjE0OiAwMDAwMDAwMDAwMDAwMDBhwqAgUjE1OiBmZmZmZmZmZmMwMmE3NTMwCj4+PiBPUklH
X1JBWDogZmZmZmZmZmZmZmZmZmZmZsKgIENTOiAwMDEwwqAgU1M6IDAwMTgKPj4+IMKgIDcgW2Zm
ZmY5ZmUxNjIwMmY4ZjBdIGRldl94ZHBfaW5zdGFsbCBhdCBmZmZmZmZmZmE4OWZiYmNjCj4+PiDC
oCA4IFtmZmZmOWZlMTYyMDJmOTIwXSBkZXZfY2hhbmdlX3hkcF9mZCBhdCBmZmZmZmZmZmE4YTA4
ODA4Cj4+PiDCoCA5IFtmZmZmOWZlMTYyMDJmOTYwXSBkb19zZXRsaW5rIGF0IGZmZmZmZmZmYThh
MjAyMzUKPj4+IDEwIFtmZmZmOWZlMTYyMDJmYTg4XSBydG5sX3NldGxpbmsgYXQgZmZmZmZmZmZh
OGEyMDM4NAo+Pj4gMTEgW2ZmZmY5ZmUxNjIwMmZjNzhdIHJ0bmV0bGlua19yY3ZfbXNnIGF0IGZm
ZmZmZmZmYThhMWE4ZGQKPj4+IDEyIFtmZmZmOWZlMTYyMDJmY2YwXSBuZXRsaW5rX3Jjdl9za2Ig
YXQgZmZmZmZmZmZhOGE3MTdlYgo+Pj4gMTMgW2ZmZmY5ZmUxNjIwMmZkNDBdIG5ldGxpbmtfdW5p
Y2FzdCBhdCBmZmZmZmZmZmE4YTcwZjg4Cj4+PiAxNCBbZmZmZjlmZTE2MjAyZmQ4MF0gbmV0bGlu
a19zZW5kbXNnIGF0IGZmZmZmZmZmYThhNzEzMTkKPj4+IDE1IFtmZmZmOWZlMTYyMDJmZGYwXSBz
b2NrX3NlbmRtc2cgYXQgZmZmZmZmZmZhODlkZjI5MAo+Pj4gMTYgW2ZmZmY5ZmUxNjIwMmZlMDhd
IF9fc3lzX3NlbmR0byBhdCBmZmZmZmZmZmE4OWUxOWM4Cj4+PiAxNyBbZmZmZjlmZTE2MjAyZmYz
MF0gX194NjRfc3lzX3NlbmR0byBhdCBmZmZmZmZmZmE4OWUxYTY0Cj4+PiAxOCBbZmZmZjlmZTE2
MjAyZmYzOF0gZG9fc3lzY2FsbF82NCBhdCBmZmZmZmZmZmE4NDA0MmI5Cj4+PiAxOSBbZmZmZjlm
ZTE2MjAyZmY1MF0gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lIGF0IGZmZmZmZmZmYThj
MDAwOGMKPj4KPj4gUGxlYXNlIGRlc2NyaWJlIHRoZSBmaXggaW4gdGhlIGNvbW1pdCBtZXNzYWdl
Lgo+Pgo+Pj4gRml4ZXM6IDRhOWIzMmYzMGY4MCAoIml4Z2JlOiBmaXggcG90ZW50aWFsIFJYIGJ1
ZmZlciBzdGFydmF0aW9uIGZvcgo+Pj4gQUZfWERQIikKPj4+IFNpZ25lZC1vZmYtYnk6IEZlbmcg
WmhvdSA8emhvdWZlbmcuemZAYnl0ZWRhbmNlLmNvbT4KPj4+IC0tLQo+Pj4gVXBkYXRlcyBzaW5j
ZSB2MToKPj4+IC0gRml4ICJpeGdiZV9tYXhfY2hhbm5lbHMiIGNhbGxiYWNrIHNvIHRoYXQgaXQg
d2lsbCBub3QgYWxsb3cgYSAKPj4+IHNldHRpbmcgb2YKPj4+IHF1ZXVlcyB0byBiZSBoaWdoZXIg
dGhhbiB0aGUgbnVtX29ubGluZV9jcHVzKCkuCj4+PiBtb3JlIGRldGFpbHMgY2FuIGJlIHNlZW4g
ZnJvbSBoZXJlOgo+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2ludGVs
LXdpcmVkLWxhbi9wYXRjaC8yMDIxMDgxNzA3NTQwNy4xMTk2MS0xLXpob3VmZW5nLnpmQGJ5dGVk
YW5jZS5jb20vIAo+Pj4KPj4+IFRoYW5rcyB0byBNYWNpZWogRmlqYWxrb3dza2kgZm9yIHlvdXIg
YWR2aWNlLgo+Pj4KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X2V0aHRvb2wuYyB8IDIgKy0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX21haW4uY8KgwqDCoCB8IDggKysrKysrLS0KPj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9ldGh0b29sLmMgCj4+PiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wuYwo+Pj4gaW5kZXggNGNl
YWNhMGY2Y2UzLi4yMTMyMWQxNjQ3MDggMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV9ldGh0b29sLmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wuYwo+Pj4gQEAgLTMyMDQsNyArMzIwNCw3
IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaXhnYmVfbWF4X2NoYW5uZWxzKHN0cnVjdCAKPj4+IGl4
Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbWF4X2NvbWJpbmVk
ID0gaXhnYmVfbWF4X3Jzc19pbmRpY2VzKGFkYXB0ZXIpOwo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDC
oCAtwqDCoMKgIHJldHVybiBtYXhfY29tYmluZWQ7Cj4+PiArwqDCoMKgIHJldHVybiBtaW5fdChp
bnQsIG1heF9jb21iaW5lZCwgbnVtX29ubGluZV9jcHVzKCkpOwo+Pj4gwqAgfQo+Pj4gwqAgwqAg
c3RhdGljIHZvaWQgaXhnYmVfZ2V0X2NoYW5uZWxzKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFp
bi5jIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMK
Pj4+IGluZGV4IDE0YWVhNDBkYTUwZi4uNWRiNDk2Y2M1MDcwIDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCj4+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKPj4+IEBAIC0xMDExMiw2
ICsxMDExMiw3IEBAIHN0YXRpYyBpbnQgaXhnYmVfeGRwX3NldHVwKHN0cnVjdCBuZXRfZGV2aWNl
IAo+Pj4gKmRldiwgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3Qg
aXhnYmVfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KGRldik7Cj4+PiDCoMKgwqDCoMKg
IHN0cnVjdCBicGZfcHJvZyAqb2xkX3Byb2c7Cj4+PiDCoMKgwqDCoMKgIGJvb2wgbmVlZF9yZXNl
dDsKPj4+ICvCoMKgwqAgaW50IG51bV9xdWV1ZXM7Cj4+PiDCoCDCoMKgwqDCoMKgIGlmIChhZGFw
dGVyLT5mbGFncyAmIElYR0JFX0ZMQUdfU1JJT1ZfRU5BQkxFRCkKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+IEBAIC0xMDE2MSwxMSArMTAxNjIsMTQgQEAgc3RhdGlj
IGludCBpeGdiZV94ZHBfc2V0dXAoc3RydWN0IAo+Pj4gbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3Qg
YnBmX3Byb2cgKnByb2cpCj4+PiDCoMKgwqDCoMKgIC8qIEtpY2sgc3RhcnQgdGhlIE5BUEkgY29u
dGV4dCBpZiB0aGVyZSBpcyBhbiBBRl9YRFAgc29ja2V0IG9wZW4KPj4+IMKgwqDCoMKgwqDCoCAq
IG9uIHRoYXQgcXVldWUgaWQuIFRoaXMgc28gdGhhdCByZWNlaXZpbmcgd2lsbCBzdGFydC4KPj4+
IMKgwqDCoMKgwqDCoCAqLwo+Pj4gLcKgwqDCoCBpZiAobmVlZF9yZXNldCAmJiBwcm9nKQo+Pj4g
LcKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBhZGFwdGVyLT5udW1fcnhfcXVldWVzOyBp
KyspCj4+PiArwqDCoMKgIGlmIChuZWVkX3Jlc2V0ICYmIHByb2cpIHsKPj4+ICvCoMKgwqDCoMKg
wqDCoCBudW1fcXVldWVzID0gbWluX3QoaW50LCBhZGFwdGVyLT5udW1fcnhfcXVldWVzLAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWRhcHRlci0+bnVtX3hkcF9xdWV1ZXMpOwo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBudW1fcXVldWVzOyBpKyspCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoYWRhcHRlci0+eGRwX3JpbmdbaV0tPnhza19wb29sKQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAodm9pZClpeGdiZV94c2tfd2Fr
ZXVwKGFkYXB0ZXItPm5ldGRldiwgaSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWERQX1dBS0VVUF9SWCk7Cj4+PiAr
wqDCoMKgIH0KPj4+IMKgIMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+PiDCoCB9Cj4+Pgo+IFRoYW5r
cyBmb3IgeW91ciBhZHZpY2UuIEkgd2lsbCBtb2RpZnkgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHYz
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
