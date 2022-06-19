Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F109552974
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 04:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6462361029;
	Tue, 21 Jun 2022 02:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6462361029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655779113;
	bh=yJxuivS9Z9tuzA3KhipnTUgqX/baLp/drU5JX8dAUiw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=59DPQ/dhD/llvPr+n1v0kdz9HTDgkW3lo7mwtzM92D/h85+vtrJ2keEUuoa7SQHXQ
	 fMnHckkwfse8VTKcnX3nW07fOcCv6ai2qrT7Qyv9peXR3Pj6jEvUkxAec9JSO+GJmE
	 ZxHXEid553OQnJCAmL+nn7agzjWcJDNeGdioOSxo6WeiM7Ui41lz++xxcNY0kTI2MR
	 X+7yNihIP8GRy2qUZMrppqn+MY0wU1qCs1OwiyREAQM7D4DYTvYfiBLnL87246hBFh
	 Wqf4TqtLdqLFiu9jkJVbnq5g9PhZls8LWoBSEGTj/Di5dCTERSqSlluE1ZSyUnDUGR
	 NY5ncl5hBDG5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DgJHbnIxJCWV; Tue, 21 Jun 2022 02:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4253D6101F;
	Tue, 21 Jun 2022 02:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4253D6101F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF281BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 17:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7CDD600B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 17:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7CDD600B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGFfYA8G1O_o for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jun 2022 17:00:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA4D46003C
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com
 [IPv6:2607:f8b0:4864:20::f29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA4D46003C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 17:00:58 +0000 (UTC)
Received: by mail-qv1-xf29.google.com with SMTP id cu16so12534364qvb.7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 10:00:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P2Pzb/PaJ7Z+/ZicwcRN0lssuLoakMdj+znnhHREnpM=;
 b=fiI6hzagiP4x6yQo5vujVYJi0Sm+l1ofHlRrRB49JrPAJWscwB31AIITdd6IGlGDlx
 6Azwdb7nxtEASvnNJNOnGTK3onA8sn8v8IVBBeTF34JQNJ0naWaGvtqlClP4/Gt+f+Me
 wHx156Z3Rhz/srQMwItVqQd8Qen0aueX4IijKjJ6YP2b7UdwskocmVVsDlQ6+UBDJSJk
 ks+JKPviTAAHFFtHNWK60dhgRlwbcXz/xiyiBq2lG+NeoAmerdaTp53rL/DFFCq0uUB+
 A0fbqXH1NMGACI95fCCddXbp22Nuipft2pgS0Rtx4Rp6jlxsgCg9cyWw+u9hz+xOT71I
 cjhw==
X-Gm-Message-State: AJIora9MP/GamuaUSDL71YcfKHuNm1yLSA3aRLq0s5dSEEVsWkPgKFsY
 C3q1yg7Flu2cZ4CDxk3XNjrV2Lt14DXr9y5zNC13Rw==
X-Google-Smtp-Source: AGRyM1u9BpxR11DJpEOt1YEvxLdgRzei2TxuhlqZv4bFrv9cru4rmZePHEnZXLDUe7k+tLaV38XT+SyxVvcS2YiQbus=
X-Received: by 2002:a05:6214:5187:b0:46b:c045:1a2c with SMTP id
 kl7-20020a056214518700b0046bc0451a2cmr15945097qvb.33.1655658057453; Sun, 19
 Jun 2022 10:00:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
 <2596b2c6-71e4-543f-799f-b4b174c21f31@leemhuis.info>
In-Reply-To: <2596b2c6-71e4-543f-799f-b4b174c21f31@leemhuis.info>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Sun, 19 Jun 2022 19:00:31 +0200
Message-ID: <CAK8fFZ6hS69JMtnvFnLVt9aiWEivZ9-izNgMHtB+KeAWAfaXaQ@mail.gmail.com>
To: Thorsten Leemhuis <regressions@leemhuis.info>
X-Mailman-Approved-At: Tue, 21 Jun 2022 02:38:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P2Pzb/PaJ7Z+/ZicwcRN0lssuLoakMdj+znnhHREnpM=;
 b=I25eIhLsilWbc24M5LzyajgvEN8Sn9jgS4f3qZqIi52kOrXVJAVjoZ54iAUcrfzZUo
 CpT/X7RzR3brNxXXO9hmBWMDc5I/ZaR5dpfE+6ee2ebYKQXwlelu5N6C3MnOCVhY/QXn
 B9nLXoxcWOH3eAmY9ouaMyxn/CZv5WTz5rnes=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=gooddata.com header.i=@gooddata.com
 header.a=rsa-sha256 header.s=google header.b=I25eIhLs
Subject: Re: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6
 (rc=-17) @ 5.18.x
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
Cc: "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 intel-wired-lan@lists.osuosl.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8sCgp5ZXMsIEkgcmV2ZXJ0IHRoYXQgY29tbWl0LiBTdGlsbCB0aGUgcHJvbWlzY3MgY2Fu
bm90IGJlIHNldCBhbmQgdGhlIGRtZXNnCmVycm9yIG1lc3NhZ2UgY2hhbmdlZCB0bzoKLS0tLS0t
LS0tLS0tLS0tCiQgaXAgbGluayBzZXQgZW0xIHByb21pc2Mgb24KJCBkbWVzZwouLi4KaWNlIDAw
MDA6NjM6MDAuMCBlbTE6IEVycm9yIHNldHRpbmcgTXVsdGljYXN0IHByb21pc2N1b3VzIG1vZGUg
b24gVlNJIDYKLi4uCi0tLS0tLS0tLS0tLS0tLQoKSmFyb3NsYXYgUC4KCm5lIDE5LiA2LiAyMDIy
IHYgMTM6NTEgb2Rlc8OtbGF0ZWwgVGhvcnN0ZW4gTGVlbWh1aXMKPHJlZ3Jlc3Npb25zQGxlZW1o
dWlzLmluZm8+IG5hcHNhbDoKCj4KPiBbVExEUjogSSdtIGFkZGluZyB0aGlzIHJlZ3Jlc3Npb24g
cmVwb3J0IHRvIHRoZSBsaXN0IG9mIHRyYWNrZWQKPiByZWdyZXNzaW9uczsgYWxsIHRleHQgZnJv
bSBtZSB5b3UgZmluZCBiZWxvdyBpcyBiYXNlZCBvbiBhIGZldyB0ZW1wbGF0ZXMKPiBwYXJhZ3Jh
cGhzIHlvdSBtaWdodCBoYXZlIGVuY291bnRlcmVkIGFscmVhZHkgYWxyZWFkeSBpbiBzaW1pbGFy
IGZvcm0uXQo+Cj4gSGksIHRoaXMgaXMgeW91ciBMaW51eCBrZXJuZWwgcmVncmVzc2lvbiB0cmFj
a2VyLgo+Cj4gT24gMDkuMDYuMjIgMDg6NTgsIEphcm9zbGF2IFB1bGNoYXJ0IHdyb3RlOgo+ID4K
PiA+IEknbSBzdHJ1Z2dsaW5nIHdpdGggYnJva2VuIG5ldHdvcmsgY29ubmVjdGl2aXR5IGF0IFZN
cyB1c2luZyBsaW51eAo+ID4gYnJpZGdlIGF0IGhvc3QgYWZ0ZXIgdXBkYXRlIG9mIGtlcm5lbCBm
cm9tIDUuMTcueCB0byA1LjE4LnggQCBEZWxsCj4gPiBSNzUwIHNlcnZlciB3aXRoIEU4MTAtWFhW
IE5JQ3MuCj4gPgo+ID4gSSBub3RpY2VkIHRoZSBrZXJuZWwgcmVwb3J0cyAiRXJyb3Igc2V0dGlu
ZyBwcm9taXNjIG1vZGUiIGluIGRtZXNnLgo+ID4KPiA+ICMgZG1lc2cgIHwgZ3JlcCAnRXJyb3Ig
c2V0dGluZyBwcm9taXNjJwo+ID4gWyAgIDI0Ljg2MzU1N10gaWNlIDAwMDA6MzE6MDAuMDogRXJy
b3Igc2V0dGluZyBwcm9taXNjIG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPiA+IFsgICAyNC44Nzgz
NjldIGljZSAwMDAwOjMxOjAwLjA6IEVycm9yIHNldHRpbmcgcHJvbWlzYyBtb2RlIG9uIFZTSSA2
IChyYz0tMTcpCj4gPiBbICAgMjUuMDQ1ODM0XSBpY2UgMDAwMDozMTowMC4wOiBFcnJvciBzZXR0
aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAocmM9LTE3KQo+ID4gWyAgIDI1LjEyOTg0MF0gaWNl
IDAwMDA6YjE6MDAuMDogRXJyb3Igc2V0dGluZyBwcm9taXNjIG1vZGUgb24gVlNJIDYgKHJjPS0x
NykKPiA+IFsgICAyNS4xNDQ0NDBdIGljZSAwMDAwOmIxOjAwLjA6IEVycm9yIHNldHRpbmcgcHJv
bWlzYyBtb2RlIG9uIFZTSSA2IChyYz0tMTcpCj4gPgo+ID4gIyBsc3BjaSAtcyAwMDAwOjMxOjAw
LjAKPiA+IDMxOjAwLjAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRo
ZXJuZXQgQ29udHJvbGxlcgo+ID4gRTgxMC1YWFYgZm9yIFNGUCAocmV2IDAyKQo+ID4gIyBsc3Bj
aSAtcyAwMDAwOmIxOjAwLjAKPiA+IGIxOjAwLjAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwg
Q29ycG9yYXRpb24gRXRoZXJuZXQgQ29udHJvbGxlcgo+ID4gRTgxMC1YWFYgZm9yIFNGUCAocmV2
IDAyKQo+ID4KPiA+IEl0IGlzIGVhc3kgdG8gcmVwcm9kdWNlIGJ5Ogo+ID4gICAjIGlwIGxpbmsg
c2V0IGVtMSBwcm9taXNjIG9uCj4gPiAgICMgZG1lc2cgLVQgfCB0YWlsIC1uIDEKPiA+ICAgW1Ro
dSBKdW4gIDkgMDg6NDg6MTkgMjAyMl0gaWNlIDAwMDA6MzE6MDAuMDogRXJyb3Igc2V0dGluZyBw
cm9taXNjCj4gPiBtb2RlIG9uIFZTSSA2IChyYz0tMTcpCj4gPgo+ID4gQ291bGQgaXQgYmUgYW4g
J2ljZScgZHJpdmVyIGJ1ZyBpbnRyb2R1Y2VkIGluIHRoZSA1LjE4IGtlcm5lbD8KPgo+IENDaW5n
IHRoZSByZWdyZXNzaW9uIG1haWxpbmcgbGlzdCwgYXMgaXQgc2hvdWxkIGJlIGluIHRoZSBsb29w
IGZvciBhbGwKPiByZWdyZXNzaW9ucywgYXMgZXhwbGFpbmVkIGhlcmU6Cj4gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUvcmVwb3J0aW5nLWlzc3Vlcy5o
dG1sCj4KPiBKYXJvc2xhdiwgZGlkIHlvdSB0cnkgdG8gcmV2ZXJ0IHRoZSBjaGFuZ2UgdGhhdCB3
YXMgc3VnZ2VzdGVkIHRvIHlvdSBpbgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9kOTkz
YmJiNi1lNTgzLTVkOTEtNzZjMC04NDFjYzVkYTg2YWZAcm9lY2stdXMubmV0Lwo+IERpZCBpdCBo
ZWxwPwo+Cj4gQW55d2F5OiBUbyBiZSBzdXJlIGJlbG93IGlzc3VlIGRvZXNuJ3QgZmFsbCB0aHJv
dWdoIHRoZSBjcmFja3MKPiB1bm5vdGljZWQsIEknbSBhZGRpbmcgaXQgdG8gcmVnemJvdCwgbXkg
TGludXgga2VybmVsIHJlZ3Jlc3Npb24gdHJhY2tpbmcKPiBib3Q6Cj4KPiAjcmVnemJvdCBeaW50
cm9kdWNlZCB2NS4xNyB0byB2NS4xOAo+ICNyZWd6Ym90IHRpdGxlIG5ldDogaWNlOiBFcnJvciBz
ZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAocmM9LTE3KSBACj4gNS4xOC54Cj4gI3JlZ3pi
b3QgbW9uaXRvcgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUs4ZkZaNjgreFoyWjB2
RFduaWhGOFBlSktFbUV3Q3l5Ri04VzlQQ1pKVGQ4emZwLUFAbWFpbC5nbWFpbC5jb20vCj4gI3Jl
Z3pib3QgbW9uaXRvcgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUs4ZkZaNjFtUTNB
WXBkV2pXdHlVWHpycy1SVk1XNjFtQkxyalJEWEJ4Qi1GOUd6YkFAbWFpbC5nbWFpbC5jb20vCj4g
I3JlZ3pib3QgaWdub3JlLWFjdGl2aXR5Cj4KPiBUaGlzIGlzbid0IGEgcmVncmVzc2lvbj8gVGhp
cyBpc3N1ZSBvciBhIGZpeCBmb3IgaXQgYXJlIGFscmVhZHkKPiBkaXNjdXNzZWQgc29tZXdoZXJl
IGVsc2U/IEl0IHdhcyBmaXhlZCBhbHJlYWR5PyBZb3Ugd2FudCB0byBjbGFyaWZ5IHdoZW4KPiB0
aGUgcmVncmVzc2lvbiBzdGFydGVkIHRvIGhhcHBlbj8gT3IgcG9pbnQgb3V0IEkgZ290IHRoZSB0
aXRsZSBvcgo+IHNvbWV0aGluZyBlbHNlIHRvdGFsbHkgd3Jvbmc/IFRoZW4ganVzdCByZXBseSAt
LSBpZGVhbGx5IHdpdGggYWxzbwo+IHRlbGxpbmcgcmVnemJvdCBhYm91dCBpdCwgYXMgZXhwbGFp
bmVkIGhlcmU6Cj4gaHR0cHM6Ly9saW51eC1yZWd0cmFja2luZy5sZWVtaHVpcy5pbmZvL3RyYWNr
ZWQtcmVncmVzc2lvbi8KPgo+IFJlbWluZGVyIGZvciBkZXZlbG9wZXJzOiBXaGVuIGZpeGluZyB0
aGUgaXNzdWUsIGFkZCAnTGluazonIHRhZ3MKPiBwb2ludGluZyB0byB0aGUgcmVwb3J0ICh0aGUg
bWFpbCB0aGlzIG9uZSByZXBsaWVkIHRvKSwgYXMgdGhlIGtlcm5lbCdzCj4gZG9jdW1lbnRhdGlv
biBjYWxsIGZvcjsgYWJvdmUgcGFnZSBleHBsYWlucyB3aHkgdGhpcyBpcyBpbXBvcnRhbnQgZm9y
Cj4gdHJhY2tlZCByZWdyZXNzaW9ucy4KPgo+IENpYW8sIFRob3JzdGVuICh3ZWFyaW5nIGhpcyAn
dGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlcicgaGF0KQo+Cj4gUC5TLjogQXMg
dGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlciBJIGRlYWwgd2l0aCBhIGxvdCBv
Zgo+IHJlcG9ydHMgYW5kIHNvbWV0aW1lcyBtaXNzIHNvbWV0aGluZyBpbXBvcnRhbnQgd2hlbiB3
cml0aW5nIG1haWxzIGxpa2UKPiB0aGlzLiBJZiB0aGF0J3MgdGhlIGNhc2UgaGVyZSwgZG9uJ3Qg
aGVzaXRhdGUgdG8gdGVsbCBtZSBpbiBhIHB1YmxpYwo+IHJlcGx5LCBpdCdzIGluIGV2ZXJ5b25l
J3MgaW50ZXJlc3QgdG8gc2V0IHRoZSBwdWJsaWMgcmVjb3JkIHN0cmFpZ2h0LgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
