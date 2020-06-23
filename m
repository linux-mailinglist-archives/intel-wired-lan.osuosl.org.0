Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 574AC204DB1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 11:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CADC088651;
	Tue, 23 Jun 2020 09:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0vqKMBUK7cNH; Tue, 23 Jun 2020 09:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31C0B88656;
	Tue, 23 Jun 2020 09:18:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D471D1BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE9ED88651
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ac0XEF1YH2DF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 09:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0915587DB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:18:14 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id v3so12232994wrc.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 02:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UnehdSmJu3VpfmqqB8u47UeykU8okvY4+bNOQYSwr8Y=;
 b=LXQXzQKo3KNPMdDvcV5HlHUhcRzbFF1Da7B4mx8PwhpDuenzllpj0h+FBFzyMx/d7w
 s/2HTzu8Ad/lg0r93LYpCvJUeX7mrcUWVpHq5vT2V5Zv5+HTHl3GoaTakL7cVEqi6OzB
 GQpuNHb521sj235p/EVttwpdZr9p5/99r/7sYbns8TUbPvK4h1lDlm0udpsOYsZbyg0o
 YwvhN8lNAJE4PIfbk92qBCShEnPBkmuEuHRYuRbBSTJbTK+0a0UDkKM3IdDRbzYb8jbg
 dk1LCYKAKm3QMXoo6jhya3IYMQaK/gdewY5c7F1+yY7FNrHQiFo3LSyaCjHli0oRvgum
 10qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UnehdSmJu3VpfmqqB8u47UeykU8okvY4+bNOQYSwr8Y=;
 b=VSiuS1vn6h7cg2VRaTNntTyWJcmYzjXh0OOlk9nldJJXRuC09CPIF6Udj9zTzjLvJf
 LdKxFAG4hzb3mz9+fJUsm5CR0sA/kGYSoMsK+ixM88/9/s29IKZUWGa8qBy4uEAnYyH6
 G4wGpPNFA/1WA9zMG8MVS12xJ/Cr+vqU6eEDOqsEBvFbwOyeqoJeGJL8WyDGYBKIcP8d
 Dsqfj0oHvBSs1axohd1iVUUHMoYiECyDyjfXxB93MgoiegyW2tpd3gDBtrXap1b1kySr
 STfEeqVrc8FLs3txaRFg0b8a4TczC0YU7w1l/FkiaNLW+V89ENsItyeEKe9GjRDQVoYO
 4WXQ==
X-Gm-Message-State: AOAM533sjxZKswleEHRUCoHDHnmAszfuWe1Fie6QgTJ0Cxg0Er0hxZU0
 JB46wivg7K7T0QRMGRNORZ5lIA5YjF+wNolxw/4=
X-Google-Smtp-Source: ABdhPJyrFZVl5DUJzi6r5oHyshLOkeuxgNYAvc4OUslJGSZLmfKskSVrCIXS/U7VciPd3y0DguyDU0iFzo6HHqmQK3Q=
X-Received: by 2002:a5d:504b:: with SMTP id h11mr16878244wrt.160.1592903892270; 
 Tue, 23 Jun 2020 02:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200622090824.41cff8a3@hermes.lan>
 <CAJ+HfNhhpZoeoZC5gS93Lbc5GvDUO9m0RrKNFU=kU0v+AXe=ig@mail.gmail.com>
 <CAJ+HfNgG4dBTf7Ei2CmuedQLnv-nOqpf4Nuep+FB9Oxob+zhdA@mail.gmail.com>
 <CAPydje_AdWjOoS4AJ5BMyFYLEsNciyNv_8YwkEMbO2B+Co0DfA@mail.gmail.com>
In-Reply-To: <CAPydje_AdWjOoS4AJ5BMyFYLEsNciyNv_8YwkEMbO2B+Co0DfA@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 23 Jun 2020 11:18:00 +0200
Message-ID: <CAJ+HfNjOUsJAOMmz6wq3zoxRQ5HtBjFzkJ64eCWiPWxkFWDGnQ@mail.gmail.com>
To: Yahui Chen <goodluckwillcomesoon@gmail.com>
Subject: Re: [Intel-wired-lan] Fw: [Bug 208275] New: kernel hang
 occasionally while running the sample of xdpsock
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMyBKdW4gMjAyMCBhdCAwNTo0NSwgWWFodWkgQ2hlbiA8Z29vZGx1Y2t3aWxsY29t
ZXNvb25AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpLCBCam9ybiwgVGhhbmsgeW91ciByZXNwb25z
ZS4KPiBDb3VsZCB5b3UgZGVzY3JpYmUgaXQgbW9yZSBjbGVhcmx5PyBJIGNhbiBub3QgZ2V0IGl0
IGV4YWN0bHkuCj4gVGh4Lgo+CgpXaGVuIFhEUCBpcyBlbmFibGVkLCB0aGUgaXhnYmUgTklDIGRv
ZXMgYSAoc29tZXdoYXQgaGVhdnkpCnJlY29uZmlndXJhdGlvbi4gRHVyaW5nIHRoZSByZWNvbmZp
Z3VyYXRpb24sIGZvciBzb21lIHJlYXNvbiwgdGhlCnJ4X2J1ZmZlci0+cGFnZSBpcyBOVUxMIGlu
IHRoZSBmb2xsb3dpbmcgY2FsbCBjaGFpbjoKICBpeGdiZV9kb3duKCktPml4Z2JlX2NsZWFuX2Fs
bF9yeF9yaW5ncygpLT5peGdiZV9jbGVhbl9yeF9yaW5nKCktPl9fcGFnZV9mcmFnX2NhY2hlX2Ry
YWluKCkKClRoaXMgcmVzdWx0cyBpbiB0aGF0IHdoZW4gX19wYWdlX2ZyYWdfY2FjaGVfZHJhaW4o
KSB3YW50IHRvIHRvdWNoIHRoZQpyZWZlcmVuY2UgY291bnRlciwgeW91IGdldCBhIE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZS4KClsyNzc5OTQuMzI5MTQ1XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMzQKLi4uClsyNzc5OTQuMzI5
NDI4XSBSSVA6IDAwMTA6X19wYWdlX2ZyYWdfY2FjaGVfZHJhaW4rMHg1LzB4NDAKWzI3Nzk5NC4z
Mjk0NjNdIENvZGU6IGQyIGZmIGZmIDMxIGY2IDg0IGMwIDc0IDA0IDBmIGI2IDczIDUxIDQ4IDg5
IGRmCmU4IDcwIGZmIGZmIGZmIGViIGRjIDQ4IDgzIGViIDAxIGViIGQwIDBmIDFmIDg0IDAwIDAw
IDAwIDAwIDAwIDBmIDFmCjQ0IDAwIDAwIDxmMD4gMjkgNzcgMzQgNzQgMDEgYzMgNDggOGIgMDcg
NTUgNDggODkgZTUgYTkgMDAgMDAgMDEgMDAgNzQKMGYgMGYKCjJhOiogICAgZjAgMjkgNzcgMzQg
ICAgICAgICAgICAgIGxvY2sgc3ViICVlc2ksMHgzNCglcmRpKSAgICAgICAgPC0tCnRyYXBwaW5n
IGluc3RydWN0aW9uCgpJIHRyaWVkIHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUsIGJ1dCB3aXRob3V0
IHN1Y2Nlc3Mgc28gZmFyLiBJJ2xsIGtlZXAKbG9va2luZyBmb3IgdGhlIGJ1Zy4gSG9wZWZ1bGx5
IHNvbWVvbmUgZnJvbSBJbnRlbCB3aXRoIGJldHRlciBpbnNpZ2h0CmludG8gaXhnYmUgY2FuIGhl
bHAhCgoKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
