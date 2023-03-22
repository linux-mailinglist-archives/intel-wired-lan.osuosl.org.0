Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D76C54EF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:30:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 940DB417A6;
	Wed, 22 Mar 2023 19:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 940DB417A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679513458;
	bh=R3PGIX49HIubDIQU/q7fp7txAyYC2hsXJsYna1HyEeA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MlveBSBIEwiuJzbVMjHY7Ifce4K1i21KGh2898hTWRzDnbwr9ZcE334nUzKvccDKT
	 CCMRc6enKEWMHcyJ3NbY8M5o21ch+96LZEtm5XcdqF9iFfN8jVAe1RYU9SD/lMc4SM
	 u9SEERFmqRgUXxUA3yFUY3mYLsc/c/6tH9EcMHJZH+9NGTy6APqOxH1jXXzAsVmItJ
	 G5XkMdG7iJbqVaG0H6PG3ojec5tviUWU0hmin0dTh6idch5DHlijEShpPpk0UHpL8i
	 VS8T+Dfb1IKJicXboP+Nf76IJ9ouZ6aPtgN/HpwD3i1HfOrrdiHBXKdzJgqyYjgx8m
	 1bhKpjxHVVHsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Py1cIpbxUT4f; Wed, 22 Mar 2023 19:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C57D401D8;
	Wed, 22 Mar 2023 19:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C57D401D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6ECCA1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F5B7401D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F5B7401D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9n5lXR7cXi8N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:30:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37BF340017
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37BF340017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:30:51 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id eg48so77274943edb.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:30:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679513449;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TrQlaEec5B0ZGmryHZC8OLS4jt5SwKguRICHgHnf1bI=;
 b=bzZPPaesqQ+bS/oCg3qt2DEeYZafT1yeIIcqueVzSBUfExDd43UZWaSSDivdFo35Rb
 p0pVkvpYqqkMniOASfj7uVHEdxCg2lVuhPAu8y8eHjb16WvA3KFSfRkaN6/Rewxh3C4H
 M6omVITJW9c8uVuY6SBmuzckwXnEdZ3kO4jDDTH7wjzS3kmAsRWZWmvm45KXytmRqpXK
 yR7uTncPUWuMYf7OuKhwBDPNekgrxfnggGT+jles6skPWAs+yPcGmfsdmPYhHOToYawg
 ++qm3mYBYC0CLjB4h5QnWTfHq7uAy0BGS1glIhkmAPmqwzW2fPBUnDctW7ic1NevmgHE
 RjtQ==
X-Gm-Message-State: AO0yUKWQLCxLbaEX91NUdmYH92H4WmWLqUYJqkApWmaacu6sJQ9khs7E
 JMpAW99v6dq/W+eM9dPG0FANi2F+jdq97xgEm2E=
X-Google-Smtp-Source: AK7set9q1qs+/E5dlv0SRf2iQTk9JRKsI0pGAVe6/06WLrNMVKgHleemIyGTp6evMQg4J1kF4xkhTZcQvsY1onABpdU=
X-Received: by 2002:a17:906:a288:b0:931:3a19:d835 with SMTP id
 i8-20020a170906a28800b009313a19d835mr3755928ejz.3.1679513448996; Wed, 22 Mar
 2023 12:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
 <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
 <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
 <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
In-Reply-To: <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 22 Mar 2023 12:30:37 -0700
Message-ID: <CAADnVQLC7ma7SWPOcjXhsZ2N0OyVtBr7TzCoT-_Dn+zQ2DEyWg@mail.gmail.com>
To: Stanislav Fomichev <sdf@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679513449;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TrQlaEec5B0ZGmryHZC8OLS4jt5SwKguRICHgHnf1bI=;
 b=F5qfAd61GgyM+ravQ2cpL0YIlB6d/Jxc/GQJXNn8B+WLlAmss/Ykt4wOHyfdVRt7p9
 747Evf56A/huI57j4TISAid9yUv2x0VQL3o7mqEq0WtXW+R2OQOnGpC3QkRqkRh1LuDT
 cp/7gCKbpROBt8r4KIZQkp6glIy0UHdQdx/o/EwyVddaMUgQNZ0jkgrVI35EzWEfkp4u
 He6kL5dNrA7fGQob9/Vffh3JxBuEl5nALyJkL1J4M81uv+eJLujXYUXB3MUgTpqPFUVH
 IyIQhkmBCuah6C5W8r/9r/HNBZGimx4iTfg7TxOkeW6ouKgrlOMyyYi3pQUk4Px53Lxg
 kqrA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=F5qfAd61
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
Cc: xdp-hints@xdp-project.net, Martin KaFai Lau <martin.lau@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MjPigK9QTSBTdGFuaXNsYXYgRm9taWNoZXYgPHNk
ZkBnb29nbGUuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDEyOjE34oCv
UE0gQWxleGVpIFN0YXJvdm9pdG92Cj4gPGFsZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdy
b3RlOgo+ID4KPiA+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDEyOjAw4oCvUE0gU3RhbmlzbGF2
IEZvbWljaGV2IDxzZGZAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFdlZCwgTWFy
IDIyLCAyMDIzIGF0IDk6MDfigK9BTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPiA+ID4gPGFsZXhlaS5z
dGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gV2VkLCBNYXIg
MjIsIDIwMjMgYXQgOTowNeKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiA+ID4gPiA8amJy
b3VlckByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4KPiA+
ID4gPiA+IE9uIDIxLzAzLzIwMjMgMTkuNDcsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiA+
ID4gPiA+ID4gT24gVHVlLCBNYXIgMjEsIDIwMjMgYXQgNjo0N+KAr0FNIEplc3BlciBEYW5nYWFy
ZCBCcm91ZXIKPiA+ID4gPiA+ID4gPGJyb3VlckByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gPiA+
ID4+Cj4gPiA+ID4gPiA+PiBXaGVuIGRyaXZlciBkZXZlbG9wZXJzIGFkZCBYRFAtaGludHMga2Z1
bmNzIGZvciBSWCBoYXNoIGl0IGlzCj4gPiA+ID4gPiA+PiBwcmFjdGljYWwgdG8gcHJpbnQgdGhl
IHJldHVybiBjb2RlIGluIGJwZl9wcmludGsgdHJhY2UgcGlwZSBsb2cuCj4gPiA+ID4gPiA+Pgo+
ID4gPiA+ID4gPj4gUHJpbnQgaGFzaCB2YWx1ZSBhcyBhIGhleCB2YWx1ZSwgYm90aCBBRl9YRFAg
dXNlcnNwYWNlIGFuZCBicGZfcHJvZywKPiA+ID4gPiA+ID4+IGFzIHRoaXMgbWFrZXMgaXQgZWFz
aWVyIHRvIHNwb3QgcG9vciBxdWFsaXR5IGhhc2hlcy4KPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+
PiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNv
bT4KPiA+ID4gPiA+ID4+IC0tLQo+ID4gPiA+ID4gPj4gICAuLi4vdGVzdGluZy9zZWxmdGVzdHMv
YnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jICB8ICAgIDkgKysrKysrLS0tCj4gPiA+ID4gPiA+
PiAgIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyAgICAgIHwg
ICAgNSArKysrLQo+ID4gPiA+ID4gPj4gICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPj4gZGlmZiAtLWdpdCBh
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPiA+
ID4gPj4gaW5kZXggNDBjMTdhZGJmNDgzLi5jZTA3MDEwZTRkNDggMTAwNjQ0Cj4gPiA+ID4gPiA+
PiAtLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRh
LmMKPiA+ID4gPiA+ID4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94
ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPiA+ID4gPj4gQEAgLTc3LDEwICs3NywxMyBAQCBpbnQgcngo
c3RydWN0IHhkcF9tZCAqY3R4KQo+ID4gPiA+ID4gPj4gICAgICAgICAgICAgICAgICBtZXRhLT5y
eF90aW1lc3RhbXAgPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICov
Cj4gPiA+ID4gPiA+PiAgICAgICAgICB9Cj4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPj4gLSAgICAg
ICBpZiAoIWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoKSkKPiA+
ID4gPiA+ID4+IC0gICAgICAgICAgICAgICBicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhfaGFzaCB3
aXRoICV1IiwgbWV0YS0+cnhfaGFzaCk7Cj4gPiA+ID4gPiA+PiAtICAgICAgIGVsc2UKPiA+ID4g
PiA+ID4+ICsgICAgICAgcmV0ID0gYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEt
PnJ4X2hhc2gpOwo+ID4gPiA+ID4gPj4gKyAgICAgICBpZiAocmV0ID49IDApIHsKPiA+ID4gPiA+
ID4+ICsgICAgICAgICAgICAgICBicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhfaGFzaCB3aXRoIDB4
JTA4WCIsIG1ldGEtPnJ4X2hhc2gpOwo+ID4gPiA+ID4gPj4gKyAgICAgICB9IGVsc2Ugewo+ID4g
PiA+ID4gPj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInJ4X2hhc2ggbm90LWF2YWlsIGVy
cm5vOiVkIiwgcmV0KTsKPiA+ID4gPiA+ID4+ICAgICAgICAgICAgICAgICAgbWV0YS0+cnhfaGFz
aCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPiA+ID4gPiA+
ID4+ICsgICAgICAgfQo+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4+ICAgICAgICAgIHJldHVybiBi
cGZfcmVkaXJlY3RfbWFwKCZ4c2ssIGN0eC0+cnhfcXVldWVfaW5kZXgsIFhEUF9QQVNTKTsKPiA+
ID4gPiA+ID4+ICAgfQo+ID4gPiA+ID4gPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPiA+ID4gPj4gaW5kZXggNDAwYmZlMTlhYmZlLi5mM2Vj
MDdjY2RjOTUgMTAwNjQ0Cj4gPiA+ID4gPiA+PiAtLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9icGYveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4gPiA+ID4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPiA+ID4gPj4gQEAgLTMsNiArMyw5
IEBACj4gPiA+ID4gPiA+PiAgIC8qIFJlZmVyZW5jZSBwcm9ncmFtIGZvciB2ZXJpZnlpbmcgWERQ
IG1ldGFkYXRhIG9uIHJlYWwgSFcuIEZ1bmN0aW9uYWwgdGVzdAo+ID4gPiA+ID4gPj4gICAgKiBv
bmx5LCBkb2Vzbid0IHRlc3QgdGhlIHBlcmZvcm1hbmNlLgo+ID4gPiA+ID4gPj4gICAgKgo+ID4g
PiA+ID4gPj4gKyAqIEJQRi1wcm9nIGJwZl9wcmludGsgaW5mbyBvdXRvdXQgY2FuIGJlIGFjY2Vz
cyB2aWEKPiA+ID4gPiA+ID4+ICsgKiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3Bp
cGUKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gcy9vdXRvdXQvb3V0cHV0Lwo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4KPiA+ID4gPiA+IEZpeGVkIGluIFYzCj4gPiA+ID4gPgo+ID4gPiA+ID4gPiBCdXQg
bGV0J3MgbWF5YmUgZHJvcCBpdD8gSWYgeW91IHdhbnQgdG8gbWFrZSBpdCBtb3JlIHVzYWJsZSwg
bGV0J3MKPiA+ID4gPiA+ID4gaGF2ZSBhIHNlcGFyYXRlIHBhdGNoIHRvIGVuYWJsZSB0cmFjaW5n
IGFuZCBwZXJpb2RpY2FsbHkgZHVtcCBpdCB0bwo+ID4gPiA+ID4gPiB0aGUgY29uc29sZSBpbnN0
ZWFkIChhcyBwcmV2aW91c2x5IGRpc2N1c3NlZCkuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQ2F0J2lu
ZyAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUgd29yayBmb3IgbWUgcmVnYXJk
bGVzcyBvZgo+ID4gPiA+ID4gc2V0dGluZyBpbgo+ID4gPiA+ID4gL3N5cy9rZXJuZWwvZGVidWcv
dHJhY2luZy9ldmVudHMvYnBmX3RyYWNlL2JwZl90cmFjZV9wcmludGsvZW5hYmxlCj4gPiA+ID4g
Pgo+ID4gPiA+ID4gV2UgbGlrZWx5IG5lZWQgYSBmb2xsb3d1cCBwYXRjaCB0aGF0IGFkZHMgYSBC
UEYgY29uZmlnIHN3aXRjaCB0aGF0IGNhbgo+ID4gPiA+ID4gZGlzYWJsZSBicGZfcHJpbnRrIGNh
bGxzLCBiZWNhdXNlIHRoaXMgYWRkcyBvdmVyaGVhZCBhbmQgdGh1cyBhZmZlY3RzCj4gPiA+ID4g
PiB0aGUgdGltZXN0YW1wcy4KPiA+ID4gPgo+ID4gPiA+IE5vLiBUaGlzIGlzIGJ5IGRlc2lnbi4K
PiA+ID4gPiBEbyBub3QgdXNlIGJwZl9wcmludGsqIGluIHByb2R1Y3Rpb24uCj4gPiA+Cj4gPiA+
IEJ1dCB0aGF0J3Mgbm90IGZvciB0aGUgcHJvZHVjdGlvbj8geGRwX2h3X21ldGFkYXRhIGlzIGEg
c21hbGwgdG9vbCB0bwo+ID4gPiB2ZXJpZnkgdGhhdCB0aGUgbWV0YWRhdGEgYmVpbmcgZHVtcGVk
IGlzIGNvcnJlY3QgKGR1cmluZyB0aGUKPiA+ID4gZGV2ZWxvcG1lbnQpLgo+ID4gPiBXZSBoYXZl
IGEgcHJvcGVyIChsZXNzIHZlcmJvc2UpIHNlbGZ0ZXN0IGluCj4gPiA+IHtwcm9ncyxwcm9nX3Rl
c3RzfS94ZHBfbWV0YWRhdGEuYyAob3ZlciB2ZXRoKS4KPiA+ID4gVGhpcyB4ZHBfaHdfbWV0YWRh
dGEgd2FzIHN1cHBvc2VkIHRvIGJlIHVzZWQgZm9yIHJ1bm5pbmcgaXQgYWdhaW5zdAo+ID4gPiB0
aGUgcmVhbCBoYXJkd2FyZSwgc28gaGF2aW5nIGFzIG11Y2ggZGVidWdnaW5nIGF0IGhhbmQgYXMg
cG9zc2libGUKPiA+ID4gc2VlbXMgaGVscGZ1bD8gKGF0IGxlYXN0IGl0IHdhcyBoZWxwZnVsIHRv
IG1lIHdoZW4gcGxheWluZyB3aXRoIG1seDQpCj4gPgo+ID4gVGhlIG9ubHkgdXNlIG9mIGJwZl9w
cmludGsgaXMgZm9yIGRlYnVnZ2luZyBvZiBicGYgcHJvZ3MgdGhlbXNlbHZlcy4KPiA+IEl0IHNo
b3VsZCBub3QgYmUgdXNlZCBpbiBhbnkgdG9vbC4KPgo+IEhtbSwgZ29vZCBwb2ludC4gSSBndWVz
cyBpdCBhbHNvIG1lYW5zIHdlIHdvbid0IGhhdmUgdG8gbWVzcyB3aXRoCj4gZW5hYmxpbmcvZHVt
cGluZyBmdHJhY2UgKGFuZCBkb24ndCBuZWVkIHRoaXMgY29tbWVudCBhYm91dCBjYXQnaW5nIHRo
ZQo+IGZpbGUpLgo+IEplc3BlciwgbWF5YmUgd2UgY2FuIGluc3RlYWQgcGFzcyB0aGUgc3RhdHVz
IG9mIHRob3NlCj4gYnBmX3hkcF9tZXRhZGF0YV94eHgga2Z1bmNzIHZpYSAnc3RydWN0IHhkcF9t
ZXRhJz8gQW5kIGR1bXAgdGhpcyBpbmZvCj4gZnJvbSB0aGUgdXNlcnNwYWNlIGlmIG5lZWRlZC4K
ClRoZXJlIGFyZSBzbyBtYW55IG90aGVyIHdheXMgZm9yIGJwZiBwcm9nIHRvIGNvbW11bmljYXRl
IHdpdGggdXNlciBzcGFjZS4KVXNlIHJpbmdidWYsIHBlcmZfZXZlbnQgYnVmZmVyLCBnbG9iYWwg
dmFycywgbWFwcywgZXRjLgp0cmFjZV9waXBlIGlzIGRlYnVnIG9ubHkgYmVjYXVzZSBpdCdzIGds
b2JhbCBhbmQgd2lsbCBjb25mbGljdCB3aXRoCmFsbCBvdGhlciBkZWJ1ZyBzZXNzaW9ucy4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
