Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AFD6F87FD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 19:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96E6E41F3F;
	Fri,  5 May 2023 17:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96E6E41F3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683309080;
	bh=mGgA49U2jS+dNW2MKS0r1RojsyrHtzz/rgUsBI4NVh8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wETfpMK69o8dOZmXKGPDDT11araqw5qWpe7S7yZGeG9fKdThLh/BwgtThmS3xBLZB
	 LnzFmRUr2loyU5htUj6OeZqGjWxgDTN/6cxCouym7rKgKxvF7d3akMZYXzVsG+a95y
	 oN8vtzd/R76YKhdktCpgzrPaJGtGcPoRW+kVGBn+9cJsufMAFWRQkUvhullla+dRSF
	 IxdFvJOhLuPjWCr6aoMbyaAGcfZ/GAKl/KpxTHdD+aEGZ3vjlV6GfZ4pARCEZLX81r
	 5OKAvVI1NFYI273Ga4hS1yR6lNnoGgE2n7AywzPXUkQdIn5hClPQMANnTyBDq0kkBX
	 ZWW42gpkjBSxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KzPtHP5vsUCk; Fri,  5 May 2023 17:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 180A141F2F;
	Fri,  5 May 2023 17:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 180A141F2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C61691BF38A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 17:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B59B41F20
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 17:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B59B41F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 41Sb-jbakxYv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 17:51:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37AE341F3F
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com
 [IPv6:2607:f8b0:4864:20::a2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37AE341F3F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 17:51:12 +0000 (UTC)
Received: by mail-vk1-xa2f.google.com with SMTP id
 71dfb90a1353d-450144ebda8so243250e0c.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 May 2023 10:51:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683309071; x=1685901071;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QZs9DuF+mfB2GRfLs1tG6vrLqib1mynOJu78i4pDOek=;
 b=dXyCvsohbniKysKNYrRhPcWAGU5vVa6v1FsBaf2l+eHdUIrKJ5XqaeyXTXqDQXApJL
 43lP9mwe5LPIaHZZH13uopVawKpX4fC8q+m8CPBv1c2SemMthLKzMiaC1Adc9v1DDHyF
 YXNL5EVH+zCQ4cXA2b32s2czaeaveKPZjoenjC+mTkp4kaXXod/+569Pc8XsQJO9MOdD
 RVv0iFmvziYjr7OhpeDpT/7zi3BghdYi1W5O2UXaCPr9Wx15jg6i2VWShppHSESng41P
 pyVc4vKDA61c8ak2dndDndEZGAJim99PV24r4DOiY2AxbJ9x/GJwpBrfZ4qFjoERljFz
 Ppdg==
X-Gm-Message-State: AC+VfDxfPKaZxo2vNaseTBYgpCfr+CG8g7HXYufPWbklijLrcy1KMLU8
 OQ8gZju9XFH/+hQOqhr9xqocfEQWIqNYrdcbrPk=
X-Google-Smtp-Source: ACHHUZ5UsMJuHzpmu1GyNvt9nQ8+m1bhJRSXTZp8MPlS+18bC9pniZ1h1XvhYASzrD3/KJVZ+P135V3Uc2JHDl9twHo=
X-Received: by 2002:a1f:3f8a:0:b0:440:5f56:dcc7 with SMTP id
 m132-20020a1f3f8a000000b004405f56dcc7mr743512vka.1.1683309070753; Fri, 05 May
 2023 10:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
 <20230505142144.46622-1-piotrx.skajewski@intel.com>
In-Reply-To: <20230505142144.46622-1-piotrx.skajewski@intel.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 5 May 2023 19:50:58 +0200
Message-ID: <CAA85sZsMdK6xWjf7JdujOhdXjKaLvSjbTjiGRw7n_Y+7afe5Vw@mail.gmail.com>
To: Piotr Skajewski <piotrx.skajewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683309071; x=1685901071;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QZs9DuF+mfB2GRfLs1tG6vrLqib1mynOJu78i4pDOek=;
 b=OJdU4HcYwOgxJvBT/KX3LGyOKKLsi6zdgAhLi+Mxm2dgAiZzm/U85agnDEongpLYM0
 pi5gALk2jQxG3O6yFXh0ZQ1bt8WSkXAj3yggagUPNuPJMTDlq5I7kQyP5U2OQzRp1z3Y
 +hZQa+9mcth+BMNOTf52NH9hYhOEyn4Rw/0J8plkgrwCDSoYti3zTspH0AGQhY61uh7A
 OBamTG6fdohKis356ZZNL4lCiCfQwo176DmrOenPVu/+TcglDY7ihdV3k8nA0Rd79pbK
 ViRH5YWSHyNNG7WJLJliEhLHVJe9Nv0VtcqwpSij/PZOHKYs9zxHRkgWLpstdRtt81ap
 ksqQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=OJdU4HcY
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U29ycnkuLi4gSXQgc2VlbXMgbGlrZSBteSBjaXNjbyBzd2l0Y2ggYm9vdGVkIHdpdGgganVtYm8t
ZnJhbWVzCmRpc2FibGVkIGFmdGVyIGEgcG93ZXIgb3V0YWdlLi4uClRoZSBjb25mIHNheXMgaXQg
c2hvdWxkIGJlIGVuYWJsZWQgLSBidXQgc29tZWhvdyBpdCB3YXNuJ3QgOi8KCk9uIEZyaSwgTWF5
IDUsIDIwMjMgYXQgNDoyM+KAr1BNIFBpb3RyIFNrYWpld3NraQo8cGlvdHJ4LnNrYWpld3NraUBp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcnAgMzAsIDIwMjMgYXQgNzowMSBQTSBJYW4g
S3VtbGllbiA8aWFuLmt1bWxpZW5AZ21haWwuY29tPiB3cm90ZToKPiA+IE9uIFN1biwgQXByIDMw
LCAyMDIzIGF0IDY6MjkgUE0gSmVzc2UgQnJhbmRlYnVyZwo+ID4gPGplc3NlLmJyYW5kZWJ1cmdA
Z21haWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4KPiA+PiBPbiBGcmksIEFwciAyOCwgMjAy
MyBhdCAyOjEzIFBNIElhbiBLdW1saWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20+IHdyb3RlOgo+
ID4+Pgo+ID4+PiBIaSwKPiA+Pj4KPiA+Pj4gU2luY2UgdXBncmFkaW5nIHRvIGtlbmVsIDYuMywg
SSd2ZSBoaXQgYW4gaXNzdWUuLi4KPiA+Pj4KPiA+Pj4gSSBoaXN0b3JpY2FsbHkgdXNlIDlrIGp1
bWJvZnJhbWVzIG9uIG15IG5ldHdvcmsgYXMgc3VjaDoKPiA+Pj4gMzogZW5vMTogPEJST0FEQ0FT
VCxNVUxUSUNBU1QsVVAsTE9XRVJfVVA+IG10dSAxNTAwIHFkaXNjIG1xIHN0YXRlIFVQCj4gPj4+
IGdyb3VwIGRlZmF1bHQgcWxlbiAxMDAwCj4gPj4KPiA+Pgo+ID4+IFRoYW5rcyBmb3IgdGhlIHJl
cG9ydCEgT3VyIHRlYW0gaXMgaW52ZXN0aWdhdGluZywgaG9wZWZ1bGx5IHdlIHdpbGwgYmUgYWJs
ZSB0byByZXByb2R1Y2UgYW5kIGdldCBiYWNrIHRvIHlvdSB0aGlzIHdlZWsuCj4gPj4KPiA+PiBB
IGRldGFpbCB0aGF0IHdvdWxkIGhlbHAgaXMgbHNwY2kgLW5uIC1kIDo6MDIwMCB0byBnZXQgYSBs
aXN0IG9mIHRoZSBhZGFwdGVyIHR5cGUgeW91J3JlIHVzaW5nIGluIGNhc2UgaXQncyByZWxldmFu
dC4KPiA+Cj4gPiAwNjowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jw
b3JhdGlvbiBFdGhlcm5ldAo+ID4gQ29ubmVjdGlvbiBYNTUzIDFHYkUgWzgwODY6MTVlNF0gKHJl
diAxMSkKPiA+IDA2OjAwLjEgRXRoZXJuZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENvcnBv
cmF0aW9uIEV0aGVybmV0Cj4gPiBDb25uZWN0aW9uIFg1NTMgMUdiRSBbODA4NjoxNWU0XSAocmV2
IDExKQo+ID4gMDc6MDAuMCBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9y
YXRpb24gRXRoZXJuZXQKPiA+IENvbm5lY3Rpb24gWDU1MyAxR2JFIFs4MDg2OjE1ZTRdIChyZXYg
MTEpCj4gPiAwNzowMC4xIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3Jh
dGlvbiBFdGhlcm5ldAo+ID4gQ29ubmVjdGlvbiBYNTUzIDFHYkUgWzgwODY6MTVlNF0gKHJldiAx
MSkKPiA+Cj4gPiBldGh0b29sIC1pIGVubzEKPiA+IGRyaXZlcjogaXhnYmUKPiA+IHZlcnNpb246
IDYuMy4wCj4gPiBmaXJtd2FyZS12ZXJzaW9uOiAweDgwMDAwODc3Cj4gPiBleHBhbnNpb24tcm9t
LXZlcnNpb246Cj4gPiBidXMtaW5mbzogMDAwMDowNjowMC4wCj4gPiBzdXBwb3J0cy1zdGF0aXN0
aWNzOiB5ZXMKPiA+IHN1cHBvcnRzLXRlc3Q6IHllcwo+ID4gc3VwcG9ydHMtZWVwcm9tLWFjY2Vz
czogeWVzCj4gPiBzdXBwb3J0cy1yZWdpc3Rlci1kdW1wOiB5ZXMKPiA+IHN1cHBvcnRzLXByaXYt
ZmxhZ3M6IHllcwo+ID4KPiA+Pj4gQnV0IG5vdyB0aGUgbGFyZ2VzdCBmcmFtZSBpIGNhbiBzZW5k
IGlzIDIwMzAgYnl0ZXMgKGllIHBpbmcgLXMgMjAwMikuLi4KPiA+Pj4KPiA+Pj4gSSBkb24ndCBz
ZWUgYW55IHdhcm5pbmcgZnJvbSB0aGUgWERQIHN1YnN5c3RlbSBzbyBJIGFsbW9zdCBhc3N1bWUK
PiA+Pj4gdGhhdCdzIG5vdCBpdC4uLgo+Cj4gQWZ0ZXIgdGVzdCB3ZSBkb24ndCBzZWUgYW55IGRp
c2NyZXBhbmNpZXMgaW4gaG93IGp1bWJvIGZyYW1lcyB3b3JrIGJldHdlZW4gbWVudGlvbmVkIGtl
cm5lbHMuCj4gUGxlYXNlIGFkZCBtb3JlIGRldGFpbHMgYWJvdXQgY29uZmlndXJhdGlvbiB5b3Ug
YXJlIHVzaW5nIGFuZCBzdGVwcyBob3cgdG8gcmVwcm9kdWNlIHRoaXMgaXNzdWUuCj4KPgo+IFRo
YW5rcywKPiBQaW90cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
