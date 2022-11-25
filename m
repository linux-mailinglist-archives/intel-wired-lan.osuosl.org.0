Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D146386BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Nov 2022 10:50:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 304DB404C4;
	Fri, 25 Nov 2022 09:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 304DB404C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669369857;
	bh=fRj8Ijk3ElIPLLczSSTfH3f9ZPN/3fF9cE2LYax6Eak=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W/T8TkhTsOvR4PgEFBkZCo5xMs7qyJRLt6xMoBvGeE3u3zpZKReJ1zFbUTn57Ix1s
	 qmbe/6h6trvBLT4lIXJTSvZu6d7udVVgF7XQ3B1A2ujp+AAAy+Io7hG1o8W1mhEymN
	 CjTsTNDZonBKVJM9XTZjsx2bO8eSxTSVSvZFmdA61kCxI6bvY27JJjNUijKbkP+9ox
	 yC67bBUxjqxsoLeO5zYvTeQ3IQUvufmeleKWNDuZ+04eMcICqkdGc0cfvrI86KBeOl
	 uvZf5eJVHlx9SrbI+Ejwt8nhIBsgHaLISc8gr9bkI22J5TwMDms6OHoESFsZ9yawLT
	 YkoCPvFYGUtYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e24ueYYP-5wX; Fri, 25 Nov 2022 09:50:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CF6C40459;
	Fri, 25 Nov 2022 09:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CF6C40459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4BE71BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 09:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F4FF8217F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 09:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F4FF8217F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7jf-xoNnQbn2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Nov 2022 09:50:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6FD18215B
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6FD18215B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 09:50:49 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id d20so3528232plr.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 01:50:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bbmEM5qM7x75sPofWy7v3pqSVY2Vhtwdbw54ZhPpgbc=;
 b=HPFcpzwAQuFadqrSU0sXy9e9gy9aJzA4zP5VIb8Tw7QvtaQu0Gk7/xisL+8Su4Bzgj
 6W8Wjex3Os1xP4GRmKJw/TKPQGs/AuC4pKOdkq9huml2HvunY9iWsVOBQJMwtksxHK/o
 dkHY6kjfGLZuXbstYZGB53ZeV9jAdDZdpwzKv+WMCygJ/y5CovJwLWcYoVXdMgD60CRf
 NnJTszo+/aBT7DzI+gjg7uV7mto5Shwc/lSYQ6xr+2VdX2mmeYNjUim/xPuPPRvpvg8R
 C7qMLd4coEHms2J6VoLmBDYeN6HFjyVo8ewAMh6zaC7k0XF54yVCDWSrx8rprCk/nXfw
 9p9A==
X-Gm-Message-State: ANoB5pnckJwNmhnQICE2TmIDts3hxzpH1d0VgwxaF5vAtcw5D6bpv1Q7
 K4DdK7Swd+teLVZaNdQOpP+mqQ==
X-Google-Smtp-Source: AA0mqf4XtwY0PRpNH7k/+GEDUWQA8GTcLYC744EyloOHpW7CdyaARbYWCo+ksrYQLTGwIUm3txp7Gg==
X-Received: by 2002:a17:90a:b703:b0:20d:7716:b05f with SMTP id
 l3-20020a17090ab70300b0020d7716b05fmr30217pjr.104.1669369849113; 
 Fri, 25 Nov 2022 01:50:49 -0800 (PST)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 f9-20020a170902684900b0017f5c7d3931sm2889995pln.282.2022.11.25.01.50.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Nov 2022 01:50:48 -0800 (PST)
Message-ID: <1434bd67-1707-7e43-96b6-d2294ff7f04d@daynix.com>
Date: Fri, 25 Nov 2022 18:50:45 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20221123010926.7924-1-akihiko.odaki@daynix.com>
 <Y34/LDxCnYd6VGJ2@boxer> <4a2d4e3e-5b15-2c58-dc49-92908ab80ad0@daynix.com>
In-Reply-To: <4a2d4e3e-5b15-2c58-dc49-92908ab80ad0@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bbmEM5qM7x75sPofWy7v3pqSVY2Vhtwdbw54ZhPpgbc=;
 b=iCRTTBWxuRvODwOJYcmkFOkuQQgEPD4YOV57I1XT6x/N7GWmst0ZnZCi7YMuuT0J64
 kjIOD2tJUraxz8JF47riqkRk4U8AhE9gFDO1Mfrj2fdNIcftsgpJzbl2uXdR7QC0tQZF
 0x7ZuLz8IiIdAa68cuJUsosh9QLHhEyR+akU32YNINFT9cI+GbD4q4hv8YfmiUt+xkI5
 O6gt7StztbvFRkRafD77gbVXxjqv9KRYNKX1vbcMmpdf7+3XJTbL5o6ac59p+9ujnfHZ
 onQAYUkERIUNZ639SyW2QiCqjrg9kiQSfLu7tqnxfe4pSo/RDvV56F2P4ePMC/uZPfLp
 9XxA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=iCRTTBWx
Subject: Re: [Intel-wired-lan] [PATCH v3] igb: Allocate MSI-X vector when
 testing
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMi8xMS8yNSAxODo0OCwgQWtpaGlrbyBPZGFraSB3cm90ZToKPiAKPiAKPiBPbiAyMDIy
LzExLzI0IDA6NDEsIE1hY2llaiBGaWphbGtvd3NraSB3cm90ZToKPj4gT24gV2VkLCBOb3YgMjMs
IDIwMjIgYXQgMTA6MDk6MjZBTSArMDkwMCwgQWtpaGlrbyBPZGFraSB3cm90ZToKPj4+IFdpdGhv
dXQgdGhpcyBjaGFuZ2UsIHRoZSBpbnRlcnJ1cHQgdGVzdCBmYWlsIHdpdGggTVNJLVggZW52aXJv
bm1lbnQ6Cj4+Pgo+Pj4gJCBzdWRvIGV0aHRvb2wgLXQgZW5wMHMyIG9mZmxpbmUKPj4+IFvCoMKg
IDQzLjkyMTc4M10gaWdiIDAwMDA6MDA6MDIuMDogb2ZmbGluZSB0ZXN0aW5nIHN0YXJ0aW5nCj4+
PiBbwqDCoCA0NC44NTU4MjRdIGlnYiAwMDAwOjAwOjAyLjAgZW5wMHMyOiBpZ2I6IGVucDBzMiBO
SUMgTGluayBpcyBEb3duCj4+PiBbwqDCoCA0NC45NjEyNDldIGlnYiAwMDAwOjAwOjAyLjAgZW5w
MHMyOiBpZ2I6IGVucDBzMiBOSUMgTGluayBpcyBVcCAKPj4+IDEwMDAgTWJwcyBGdWxsIER1cGxl
eCwgRmxvdyBDb250cm9sOiBSWC9UWAo+Pj4gW8KgwqAgNTEuMjcyMjAyXSBpZ2IgMDAwMDowMDow
Mi4wOiB0ZXN0aW5nIHNoYXJlZCBpbnRlcnJ1cHQKPj4+IFvCoMKgIDU2Ljk5Njk3NV0gaWdiIDAw
MDA6MDA6MDIuMCBlbnAwczI6IGlnYjogZW5wMHMyIE5JQyBMaW5rIGlzIFVwIAo+Pj4gMTAwMCBN
YnBzIEZ1bGwgRHVwbGV4LCBGbG93IENvbnRyb2w6IFJYL1RYCj4+PiBUaGUgdGVzdCByZXN1bHQg
aXMgRkFJTAo+Pj4gVGhlIHRlc3QgZXh0cmEgaW5mbzoKPj4+IFJlZ2lzdGVyIHRlc3TCoCAob2Zm
bGluZSnCoMKgwqDCoCAwCj4+PiBFZXByb20gdGVzdMKgwqDCoCAob2ZmbGluZSnCoMKgwqDCoCAw
Cj4+PiBJbnRlcnJ1cHQgdGVzdCAob2ZmbGluZSnCoMKgwqDCoCA0Cj4+PiBMb29wYmFjayB0ZXN0
wqAgKG9mZmxpbmUpwqDCoMKgwqAgMAo+Pj4gTGluayB0ZXN0wqDCoCAob24vb2ZmbGluZSnCoMKg
wqDCoCAwCj4+Pgo+Pj4gSGVyZSwgIjQiIG1lYW5zIGFuIGV4cGVjdGVkIGludGVycnVwdCB3YXMg
bm90IGRlbGl2ZXJlZC4KPj4+Cj4+PiBUbyBmaXggdGhpcywgcm91dGUgSVJRcyBjb3JyZWN0bHkg
dG8gdGhlIGZpcnN0IE1TSS1YIHZlY3RvciBieSBzZXR0aW5nCj4+PiBJVkFSX01JU0MuIEFsc28s
IHNldCBiaXQgMCBvZiBFSU1TIHNvIHRoYXQgdGhlIHZlY3RvciB3aWxsIG5vdCBiZQo+Pj4gbWFz
a2VkLiBUaGUgaW50ZXJydXB0IHRlc3Qgbm93IHJ1bnMgcHJvcGVybHkgd2l0aCB0aGlzIGNoYW5n
ZToKPj4KPj4gTXVjaCBiZXR0ZXIhCj4+Cj4+Pgo+Pj4gJCBzdWRvIGV0aHRvb2wgLXQgZW5wMHMy
IG9mZmxpbmUKPj4+IFvCoMKgIDQyLjc2Mjk4NV0gaWdiIDAwMDA6MDA6MDIuMDogb2ZmbGluZSB0
ZXN0aW5nIHN0YXJ0aW5nCj4+PiBbwqDCoCA1MC4xNDE5NjddIGlnYiAwMDAwOjAwOjAyLjA6IHRl
c3Rpbmcgc2hhcmVkIGludGVycnVwdAo+Pj4gW8KgwqAgNTYuMTYzOTU3XSBpZ2IgMDAwMDowMDow
Mi4wIGVucDBzMjogaWdiOiBlbnAwczIgTklDIExpbmsgaXMgVXAgCj4+PiAxMDAwIE1icHMgRnVs
bCBEdXBsZXgsIEZsb3cgQ29udHJvbDogUlgvVFgKPj4+IFRoZSB0ZXN0IHJlc3VsdCBpcyBQQVNT
Cj4+PiBUaGUgdGVzdCBleHRyYSBpbmZvOgo+Pj4gUmVnaXN0ZXIgdGVzdMKgIChvZmZsaW5lKcKg
wqDCoMKgIDAKPj4+IEVlcHJvbSB0ZXN0wqDCoMKgIChvZmZsaW5lKcKgwqDCoMKgIDAKPj4+IElu
dGVycnVwdCB0ZXN0IChvZmZsaW5lKcKgwqDCoMKgIDAKPj4+IExvb3BiYWNrIHRlc3TCoCAob2Zm
bGluZSnCoMKgwqDCoCAwCj4+PiBMaW5rIHRlc3TCoMKgIChvbi9vZmZsaW5lKcKgwqDCoMKgIDAK
Pj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBa2loaWtvIE9kYWtpIDxha2loaWtvLm9kYWtpQGRheW5p
eC5jb20+Cj4+Cj4+IFNhbWUgY29tbWVudCBhcyBvbiBvdGhlciBwYXRjaCAtIGp1c3RpZnkgd2h5
IHRoZXJlIGlzIG5vIGZpeGVzIHRhZyBhbmQKPj4gc3BlY2lmeSB0aGUgdHJlZSBpbiBzdWJqZWN0
Lgo+IAo+IEkgY291bGRuJ3QgaWRlbnRpZnkgd2hhdCBjb21taXQgaW50cm9kdWNlZCB0aGUgcHJv
YmxlbS4gUGxlYXNlIHNlZToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvZjI0NTcy
MjktODY1YS01N2EwLTk0YTEtYzVjNjNiMmYzMGE1QGRheW5peC5jb20vCgpTb3JyeSwgdGhlIFVS
TCB3YXMgd3JvbmcuIFRoZSBjb3JyZWN0IFVSTCBpczoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bmV0ZGV2L2JlNTYxN2ZlLWQzMzItNDQ3YS1iODM2LWJlYzlhNmM2ZDQyZEBkYXluaXguY29tLwoK
UmVnYXJkcywKQWtpaGlrbyBPZGFraQoKPiAKPiBSZWdhcmRzLAo+IEFraWhpa28gT2Rha2kKPiAK
Pj4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0
b29sLmMgfCAyICsrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9v
bC5jIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+
Pj4gaW5kZXggZTVmM2U3NjgwZGM2Li5mZjkxMWFmMTZhNGIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+Pj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMKPj4+IEBAIC0xNDEzLDYgKzE0
MTMsOCBAQCBzdGF0aWMgaW50IGlnYl9pbnRyX3Rlc3Qoc3RydWN0IGlnYl9hZGFwdGVyIAo+Pj4g
KmFkYXB0ZXIsIHU2NCAqZGF0YSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICpkYXRh
ID0gMTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtMTsKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCB9Cj4+PiArwqDCoMKgwqDCoMKgwqAgd3IzMihFMTAwMF9JVkFSX01JU0Ms
IEUxMDAwX0lWQVJfVkFMSUQgPDwgOCk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgd3IzMihFMTAwMF9F
SU1TLCBCSVQoMCkpOwo+Pj4gwqDCoMKgwqDCoCB9IGVsc2UgaWYgKGFkYXB0ZXItPmZsYWdzICYg
SUdCX0ZMQUdfSEFTX01TSSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNoYXJlZF9pbnQgPSBm
YWxzZTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmVxdWVzdF9pcnEoaXJxLAo+Pj4gLS0g
Cj4+PiAyLjM4LjEKPj4+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
