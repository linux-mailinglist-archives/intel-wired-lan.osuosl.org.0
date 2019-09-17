Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B94B54D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2019 20:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD31085E85;
	Tue, 17 Sep 2019 18:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tu6vxrkZlNRq; Tue, 17 Sep 2019 18:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B86785E8C;
	Tue, 17 Sep 2019 18:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FC781BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 10:48:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8719584F27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 10:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MuDmudCieo7G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2019 10:48:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F16B184F12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 10:48:37 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id i18so2568991wru.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 03:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2wF2csif6Bxd2Ntfn72EqZLK8iy6fsXfRIhPwvQ9j4I=;
 b=gr0YmGqkSJwboNqKmNcsQ4SUgGrurjCNWd69nS+WzxdGjEgeCi3V5Mig3OsGC7io6o
 JoiKHP37l9a5U347BOvMZT2CNYidI9JXskrumeUUCw1xdO3DVH7zQJui/MdAmBmaX73R
 t6Na5xHGV+SRls06Lx5gv4FInMHPCaR8zW0hz+hS2GNe0IAi7YMCbTWfFlSEHas9fbnJ
 lnn9gyOK0r7220AQ8VGYY8Ga0i2EQT9fLRkHMgF/m3ZrTaj0dueVrMyswzU59ibdHq39
 fGtSnFr/5TsJj0zFjdiueig7ZQHlC1YMtGP1Yu7SAsave69ooi1vzAB0hy4DtSbg7CgF
 p1ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2wF2csif6Bxd2Ntfn72EqZLK8iy6fsXfRIhPwvQ9j4I=;
 b=eOdFSeO620wSMP8BCcNWM9A6v7mQvdtzgNJ7UXOqcVoUEsylE3wSqYJL79UrqTTLye
 49iV2KX8tZz8LrA6zAaAXWxHtmSuTKWShJILDGs6+zNp1/edkwr5YtcelFTh5w+NdV/j
 37kA41tT18nHp3RrTYTVaOjwt/9948DLSDu8DbENe+Rxb9ChBE3CPccims555i+MLrgt
 ZblIQwEkjx4iIOR6/wqZCtDCT+E/TEsJG5SGdy4VsdpbYFWgIQk6EH5mWbanQP7I5olG
 odZsL0uTrjPsunOqDXbiDrAtQNeG4Btd1NPa4UU/9Kg38BryVrYchJKRbQLxJ2uiX3N8
 ubzA==
X-Gm-Message-State: APjAAAWQL+Kx+Hd3NX48lEe8UHU4SqUI17aEY2CJrn9aGHvtVuM2YogB
 KolgUUxniOGxo5cqh8MlLL1Vvlj906cTUZt1YIk=
X-Google-Smtp-Source: APXvYqy5RDe58CzMnsXxoGUvtObPFrVMtDwzQ+giwspQnlLoaacKyDOy5s2PBLONAGvY0LesU95VjbrfQwnhO/6mOpE=
X-Received: by 2002:adf:df81:: with SMTP id z1mr2597191wrl.295.1568717316081; 
 Tue, 17 Sep 2019 03:48:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190905011144.3513-1-kevin.laatz@intel.com>
In-Reply-To: <20190905011144.3513-1-kevin.laatz@intel.com>
From: Maxim Mikityanskiy <maxtram95@gmail.com>
Date: Tue, 17 Sep 2019 13:48:09 +0300
Message-ID: <CAKErNvpe3htU-ETe0y0XQ=SwY047qc3Z3=aHN6g2BbkoGHNNUQ@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>, bjorn.topel@intel.com
X-Mailman-Approved-At: Tue, 17 Sep 2019 18:01:13 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next] i40e: fix xdp handle
 calculations
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
Cc: maximmi@mellanox.com, daniel@iogearbox.net, netdev@vger.kernel.org,
 ciara.loftus@intel.com, ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 jonathan.lemon@gmail.com, bruce.richardson@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBTZXAgNSwgMjAxOSBhdCA0OjExIEFNIEtldmluIExhYXR6IDxrZXZpbi5sYWF0ekBp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gQ3VycmVudGx5LCB3ZSBkb24ndCBhZGQgaGVhZHJvb20gdG8g
dGhlIGhhbmRsZSBpbiBpNDBlX3pjYV9mcmVlLAo+IGk0MGVfYWxsb2NfYnVmZmVyX3Nsb3dfemMg
YW5kIGk0MGVfYWxsb2NfYnVmZmVyX3pjLiBUaGUgYWRkaXRpb24gb2YgdGhlCj4gaGVhZHJvb20g
dG8gdGhlIGhhbmRsZSB3YXMgcmVtb3ZlZCBpbgo+IGNvbW1pdCAyZjg2YzgwNmE4YTggKCJpNDBl
OiBtb2RpZnkgZHJpdmVyIGZvciBoYW5kbGluZyBvZmZzZXRzIiksCgpIaSwgaXQgbG9va3MgdG8g
bWUgdGhhdCBoZWFkcm9vbSBpcyBzdGlsbCBicm9rZW4gYWZ0ZXIgdGhpcyBjb21taXQuCmk0MGVf
cnVuX3hkcF96YyBhZGRzIGl0IGEgc2Vjb25kIHRpbWUsIGkuZS46CgoxLiB4ZHAtPmhhbmRsZSBh
bHJlYWR5IGhhcyB0aGUgaGVhZHJvb20gYWRkZWQgKGFmdGVyIHRoaXMgcGF0Y2gpLgoKMi4gYnBm
X3Byb2dfcnVuX3hkcCguLi4pOwoKMy4gdTY0IG9mZnNldCA9IHVtZW0tPmhlYWRyb29tOwogICBv
ZmZzZXQgKz0geGRwLT5kYXRhIC0geGRwLT5kYXRhX2hhcmRfc3RhcnQ7CiAgIHhkcC0+aGFuZGxl
ID0geHNrX3VtZW1fYWRqdXN0X29mZnNldCh1bWVtLCB4ZHAtPmhhbmRsZSwgb2Zmc2V0KTsKClN0
ZXAgMyBhZGRzIHRoZSBoZWFkcm9vbSBvbmUgZXh0cmEgdGltZS4KCkkgZGlkbid0IGxvb2sgYXQg
aXhnYmUsIGl0IG1pZ2h0IGFsc28gbmVlZCB0byBiZSBmaXhlZC4KCj4gd2hpY2gKPiB3aWxsIGJy
ZWFrIHRoaW5ncyB3aGVuIGhlYWRyb29tIGlzIG5vbi16ZXJvLiBUaGlzIHBhdGNoIGZpeGVzIHRo
aXMgYW5kIHVzZXMKPiB4c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0IHRvIGFkZCBpdCBhcHByb3ByaXRl
bHkgYmFzZWQgb24gdGhlIG1vZGUgYmVpbmcgcnVuLgo+Cj4gRml4ZXM6IDJmODZjODA2YThhOCAo
Imk0MGU6IG1vZGlmeSBkcml2ZXIgZm9yIGhhbmRsaW5nIG9mZnNldHMiKQo+IFJlcG9ydGVkLWJ5
OiBCam9ybiBUb3BlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEtl
dmluIExhYXR6IDxrZXZpbi5sYWF0ekBpbnRlbC5jb20+Cj4gQWNrZWQtYnk6IEJqw7ZybiBUw7Zw
ZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3hzay5jIHwgNyArKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX3hzay5jCj4gaW5kZXggZWFjYTYxNjJhNmU2Li4wMzczYmM2YzdlNjEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gQEAgLTI2
Nyw3ICsyNjcsNyBAQCBzdGF0aWMgYm9vbCBpNDBlX2FsbG9jX2J1ZmZlcl96YyhzdHJ1Y3QgaTQw
ZV9yaW5nICpyeF9yaW5nLAo+ICAgICAgICAgYmktPmFkZHIgPSB4ZHBfdW1lbV9nZXRfZGF0YSh1
bWVtLCBoYW5kbGUpOwo+ICAgICAgICAgYmktPmFkZHIgKz0gaHI7Cj4KPiAtICAgICAgIGJpLT5o
YW5kbGUgPSBoYW5kbGU7Cj4gKyAgICAgICBiaS0+aGFuZGxlID0geHNrX3VtZW1fYWRqdXN0X29m
ZnNldCh1bWVtLCBoYW5kbGUsIHVtZW0tPmhlYWRyb29tKTsKPgo+ICAgICAgICAgeHNrX3VtZW1f
ZGlzY2FyZF9hZGRyKHVtZW0pOwo+ICAgICAgICAgcmV0dXJuIHRydWU7Cj4gQEAgLTMwNCw3ICsz
MDQsNyBAQCBzdGF0aWMgYm9vbCBpNDBlX2FsbG9jX2J1ZmZlcl9zbG93X3pjKHN0cnVjdCBpNDBl
X3JpbmcgKnJ4X3JpbmcsCj4gICAgICAgICBiaS0+YWRkciA9IHhkcF91bWVtX2dldF9kYXRhKHVt
ZW0sIGhhbmRsZSk7Cj4gICAgICAgICBiaS0+YWRkciArPSBocjsKPgo+IC0gICAgICAgYmktPmhh
bmRsZSA9IGhhbmRsZTsKPiArICAgICAgIGJpLT5oYW5kbGUgPSB4c2tfdW1lbV9hZGp1c3Rfb2Zm
c2V0KHVtZW0sIGhhbmRsZSwgdW1lbS0+aGVhZHJvb20pOwo+Cj4gICAgICAgICB4c2tfdW1lbV9k
aXNjYXJkX2FkZHJfcnEodW1lbSk7Cj4gICAgICAgICByZXR1cm4gdHJ1ZTsKPiBAQCAtNDY5LDcg
KzQ2OSw4IEBAIHZvaWQgaTQwZV96Y2FfZnJlZShzdHJ1Y3QgemVyb19jb3B5X2FsbG9jYXRvciAq
YWxsb2MsIHVuc2lnbmVkIGxvbmcgaGFuZGxlKQo+ICAgICAgICAgYmktPmFkZHIgPSB4ZHBfdW1l
bV9nZXRfZGF0YShyeF9yaW5nLT54c2tfdW1lbSwgaGFuZGxlKTsKPiAgICAgICAgIGJpLT5hZGRy
ICs9IGhyOwo+Cj4gLSAgICAgICBiaS0+aGFuZGxlID0gKHU2NCloYW5kbGU7Cj4gKyAgICAgICBi
aS0+aGFuZGxlID0geHNrX3VtZW1fYWRqdXN0X29mZnNldChyeF9yaW5nLT54c2tfdW1lbSwgKHU2
NCloYW5kbGUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
eF9yaW5nLT54c2tfdW1lbS0+aGVhZHJvb20pOwo+ICB9Cj4KPiAgLyoqCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
