Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B313800A4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 21:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22FDE879E9;
	Fri,  2 Aug 2019 19:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqKd3zaEfeoH; Fri,  2 Aug 2019 19:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B0E4876F2;
	Fri,  2 Aug 2019 19:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D32B1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 07:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 195AC8698F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 07:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EF0BfKdssTsd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 07:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 87D1C86978
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 07:27:07 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id t187so1378294qke.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2019 00:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=n/fVlaA6BYitJiodJ9o0tWCfpzxaKHH9gHlYbSMNnsg=;
 b=ZBvI0bVe6knQT6x5L7bbmOzwQnmrC8OgXSP812Y/NSY44647E3QVlIFY8RgRmIH98Y
 buyCLX4+jsfznFPgJw68OZ8J9MpnIfZo6qDfJQpAw5G+Fsgy6QOqaYJOmPI32W46RrxP
 Z0mp8oiVmxIpYS7P//nRdxVPHvgZiyEyMO5ERsLuSkcTYGA9SfhifhERA238KmFZG1I2
 faezPuy7ZnzvP3e5yQYm1N8nDFYa3+U6LKsbw8GtiBFNCNZ01xsSVvCCEzcQsZQR5h5f
 Ji4eE7+imbVh6xtCMWMvb+g922vOxi2lt6yh2Kg+j6XbD9A4S5EzN3O5KnfNO5aonY8V
 8rpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n/fVlaA6BYitJiodJ9o0tWCfpzxaKHH9gHlYbSMNnsg=;
 b=N2VnbqjETzjOWo+PFcW1tFhyboKPLscSZWt/UaHrVMM+uLb4P1EgM7py53Gx72itlq
 fFA2U4qA1yhzuV4laddAyLMNrHgMHykQjKcnOCRRLCwNaq3ICYVJCR8r7fZmpi75YAZl
 4nasRAc598teS81RUCRFu7/hGac+c8m+0i4RDDASkrbwefHgeLn+KBwdQK0dl6Bnh11i
 Njn7Sz+B4ymdHk2alIKtGdJQs67YwTP1gfAfgxWIXJuH9HjnfD7dL/cDC4yrDxkF5czy
 m/k0ldWSYHYWXdMklZTprBmmLa3YIS9A3oKXkOmRuaxdJtH+OMZ43xjK+U+P0s5x21f3
 8WLw==
X-Gm-Message-State: APjAAAW0PsUlgqykiyytx2+DICouwfNMoL/W/3vg7I6STOlSNuyblUkH
 xp/fNZ3sVRV3ll6I5dbM1fU6s4WzXfzEwicNoGY=
X-Google-Smtp-Source: APXvYqwG6uI3ycnfVnu4sogNhHYa3FZElfzoqMjVYK2ovZgxntoOJsikibVVo0pzPvk17eNCP8ww/R4Gp10l1Pu3HOE=
X-Received: by 2002:a05:620a:11ac:: with SMTP id
 c12mr87392099qkk.232.1564730826483; 
 Fri, 02 Aug 2019 00:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-4-kevin.laatz@intel.com>
 <CAJ+HfNifxfgycmZFz8eBZq=FZXAgNQezNqUiy3Q1z4JBrUEkew@mail.gmail.com>
 <CAEf4BzbTbX-Teth+4-yiorO-oHp+JhGfW2e08iBoCsBA4JCbMQ@mail.gmail.com>
 <CAJ+HfNhYe_FgV0tGTLzaFGVSiimVnthgESN8Psdtpxw696w0OQ@mail.gmail.com>
 <CAEf4Bzar-KgCjUEfKVeWzcB77xvXDagZFRQKDvWo1o9-JzCirw@mail.gmail.com>
In-Reply-To: <CAEf4Bzar-KgCjUEfKVeWzcB77xvXDagZFRQKDvWo1o9-JzCirw@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 2 Aug 2019 09:26:55 +0200
Message-ID: <CAJ+HfNhQFs4jgJORmdPh6zeJXXMd-9j3YgdSUac3PxRQrGzNDw@mail.gmail.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
X-Mailman-Approved-At: Fri, 02 Aug 2019 19:04:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 03/11] libbpf: add flags
 to umem config
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Kevin Laatz <kevin.laatz@intel.com>,
 ciara.loftus@intel.com, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Netdev <netdev@vger.kernel.org>, Bruce Richardson <bruce.richardson@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyIEF1ZyAyMDE5IGF0IDA5OjE5LCBBbmRyaWkgTmFrcnlpa28gPGFuZHJpaS5uYWty
eWlrb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBBdWcgMSwgMjAxOSBhdCAxMjozNCBB
TSBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBnbWFpbC5jb20+IHdyb3RlOgo+ID4KWy4uLl0K
PiA+Cj4gPiBPbGQgYXBwbGljYXRpb24sIGR5bmFtaWNhbGx5IGxpbmtlZCB0byBuZXcgbGliYnBm
LnNvIHdpbGwgY3Jhc2gsCj4gPiByaWdodD8gT2xkIGFwcGxpY2F0aW9uIHBhc3NlcyBvbGQgdmVy
c2lvbiBvZiB4c2tfdW1lbV9jb25maWcsIGFuZCBuZXcKPiA+IGxpYnJhcnkgYWNjZXNzZXMgKG5v
bi1leGlzdGluZykgZmxhZyBzdHJ1Y3QgbWVtYmVyLgo+Cj4gSSB0aGluayB3ZSBoYXZlIHNpbWls
YXIgcHJvYmxlbXMgZm9yIGFsbCB0aGUgX3hhdHRyIHR5cGUgb2YgY29tbWFuZHMKPiAoYXMgd2Vs
bCBzb21lIG9mIGJ0ZiBzdHVmZiBhY2NlcHRpbmcgZXh0cmEgb3B0cyBzdHJ1Y3RzKS4gSG93IGlz
IHRoaXMKPiBwcm9ibGVtIHNvbHZlZCBpbiBnZW5lcmFsPyBEbyB3ZSB2ZXJzaW9uIHNhbWUgZnVu
Y3Rpb24gbXVsdGlwbGUgdGltZXMsCj4gb25lIGZvciBlYWNoIGFkZGVkIGZpZWxkPyBJdCBmZWVs
cyBsaWtlIHRoZXJlIHNob3VsZCBiZSBzb21lIGJldHRlcgo+IHdheSB0byBoYW5kbGUgdGhpcy4u
Lgo+CgpJZiB0aGUgc2l6ZSBvZiB0aGUgc3RydWN0IHdhcyBwYXNzZWQgYXMgYW4gYXJndW1lbnQg
KGFuZCBleHRyYSBjYXJlIGlzCnRha2VuIHdoZW4gYWRkaW5nIG1lbWJlcnMgdG8gdGhlIHN0cnVj
dCksIGl0IGNvdWxkIGJlIGhhbmRsZWQgdy9vCnZlcnNpb25pbmcuLi4gYnV0IHRoYXQncyBub3Qg
dGhlIGNhc2UgaGVyZS4gOi0oIFZlcnNpb25pbmcgaXMgYSBtZXNzCnRvIGRlYWwgd2l0aCwgc28g
SSdkIGJlIGhhcHB5IGlmIGl0IGNvdWxkIGJlIGF2b2lkZWQuLi4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
