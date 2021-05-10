Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1402B378F6E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 15:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CF3360BD7;
	Mon, 10 May 2021 13:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6H8RoxbDb33; Mon, 10 May 2021 13:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FE3060BAB;
	Mon, 10 May 2021 13:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC0F81BF345
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 13:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA21C83B0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 13:16:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChkEr5BZTOlV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 13:16:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 889378399E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 13:16:20 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 o6-20020a05600c4fc6b029015ec06d5269so2481658wmq.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 06:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Sh4i9feljTPFrIfpR/IU/E8n0D3Fda88xyQfypmum7w=;
 b=GfQpYA/u/ESXNzCwhJN35I1L0Sb2vRVeukRNG83W8xG2OMlDA6+i5W0OODo/+LWE9E
 ivWW5//Dci3M+PXPgJnH/odM7KtTO7yjQKrEe7KAvh4E7fvrd/ZuLkJAZP62sWtsDMuB
 AIqgCRqoTLZzj0iGC6/REa3QuGlmZjiRxifV0mZYrMLJSap8JjiujnvbMmFTzTlx+O95
 x9XnwiLNDr5qqWcsdoyW+ETG1hWAlzA+FW12aKJEwh2j5DlnppfpjkE6ahf9DAyZ8V+v
 c4HLN0tsaWZM2+zfMzrOFU3u/mXI98pyg6LlDYSgFBtDuHlk1DmX0lhge4HX1KOLhtwA
 z+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sh4i9feljTPFrIfpR/IU/E8n0D3Fda88xyQfypmum7w=;
 b=Ma9YVN/I+8+f1JMtEvtW1juXeu/eEJXTqPy5B/yGSLgksNX2lpvIWnTVqIoL3trSQ8
 AifBcc8V2KIDVOf9uSDqxJ8FltOLIarP2Je/c3fN76hqBMqhw+qIMrE6Bb3voUEQKMYB
 tWtkU9+0UzmZH/1Nh1g/aKd9ZTZthGhdSOIIGpkB176yowefaJwPPr9x7FZfOme7k/Sv
 bJT+m1db8AZrZkzhT9vrbYZiYFiUhQlPvpdOLkcegLC7ou/lmlES66l3rMWo+JMv3YyY
 xUznCC0YhV7EPYMAEzZFPfnFsQqTnr+hTSZ0UDBeBsOlrBpeuQtOtfBtffCT1y1qmheh
 Zm3g==
X-Gm-Message-State: AOAM530TWb89zfJjsQiDXOsJBKQtqBCCwadzY0FCxjLy6wYX7cS7z6PD
 Li9OgyJlvyfibNb/pNcwskA=
X-Google-Smtp-Source: ABdhPJysoQ4YBpE1J87NsTC/Z24p8NQqGLKPSudpVCmtLwZFhM2Wy0R7/k0aKiXMKdpTI23nPdYVEw==
X-Received: by 2002:a05:600c:47d7:: with SMTP id
 l23mr36980376wmo.95.1620652578722; 
 Mon, 10 May 2021 06:16:18 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id s1sm27945073wmj.8.2021.05.10.06.16.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 06:16:17 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
Date: Mon, 10 May 2021 14:16:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210510135518.305cc03d@coco.lan>
Content-Language: en-GB
X-Mailman-Approved-At: Mon, 10 May 2021 13:53:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/53] Get rid of UTF-8 chars that can
 be mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rdma@vger.kernel.org, x86@kernel.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-sgx@vger.kernel.org, coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMDUvMjAyMSAxMjo1NSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+IFRoZSBt
YWluIHBvaW50IG9uIHRoaXMgc2VyaWVzIGlzIHRvIHJlcGxhY2UganVzdCB0aGUgb2NjdXJyZW5j
ZXMKPiB3aGVyZSBBU0NJSSByZXByZXNlbnRzIHRoZSBzeW1ib2wgZXF1YWxseSB3ZWxsCgo+IAkt
IFUrMjAxNCAoJ+KAlCcpOiBFTSBEQVNICkVtIGRhc2ggaXMgbm90IHRoZSBzYW1lIHRoaW5nIGFz
IGh5cGhlbi1taW51cywgYW5kIHRoZSBsYXR0ZXIgZG9lcyBub3QKIHNlcnZlICdlcXVhbGx5IHdl
bGwnLiAgUGVvcGxlIHVzZSBlbSBkYXNoZXMgYmVjYXVzZSDigJQgZXZlbiBpbgogbW9ub3NwYWNl
IGZvbnRzIOKAlCB0aGV5IG1ha2UgdGV4dCBlYXNpZXIgdG8gcmVhZCBhbmQgY29tcHJlaGVuZCwg
d2hlbgogdXNlZCBjb3JyZWN0bHkuCkkgYWNjZXB0IHRoYXQgc29tZSBvZiB0aGUgb3RoZXIgZGlz
dGluY3Rpb25zIOKAlCBsaWtlIGVuIGRhc2hlcyDigJQgYXJlCiBuZWVkbGVzc2x5IHBlZGFudGlj
ICh0aG91Z2ggSSBkb24ndCBkb3VidCB0aGVyZSBpcyBzb21lb25lIG91dCB0aGVyZQogd2hvIHdp
bGwgZ2xhZGx5IGRlZmVuZCB0aGVtIHdpdGggdGhlIHNhbWUgZmVydm91ciB3aXRoIHdoaWNoIEkg
YXJndWUKIGZvciB0aGUgZW0gZGFzaCkgYW5kIEkgd291bGRuJ3QgdGFrZSB0aGUgdHJvdWJsZSB0
byB1c2UgdGhlbSBteXNlbGY7CiBidXQgSSB0aGluayB0aGVyZSBpcyBhIHJlYXNvbmFibGUgYXNz
dW1wdGlvbiB0aGF0IHdoZW4gc29tZW9uZSBnb2VzCiB0byB0aGUgZWZmb3J0IG9mIHVzaW5nIGEg
VW5pY29kZSBwdW5jdHVhdGlvbiBtYXJrIHRoYXQgaXMgc2VtYW50aWMKIChyYXRoZXIgdGhhbiBt
ZXJlbHkgdHlwb2dyYXBoaWNhbCksIHRoZXkgcHJvYmFibHkgaGFkIGEgcmVhc29uIGZvcgogZG9p
bmcgc28uCgo+IAktIFUrMjAxOCAoJ+KAmCcpOiBMRUZUIFNJTkdMRSBRVU9UQVRJT04gTUFSSwo+
IAktIFUrMjAxOSAoJ+KAmScpOiBSSUdIVCBTSU5HTEUgUVVPVEFUSU9OIE1BUksKPiAJLSBVKzIw
MWMgKCfigJwnKTogTEVGVCBET1VCTEUgUVVPVEFUSU9OIE1BUksKPiAJLSBVKzIwMWQgKCfigJ0n
KTogUklHSFQgRE9VQkxFIFFVT1RBVElPTiBNQVJLCihUaGVzZSBhcmUgcHVyZWx5IHR5cG9ncmFw
aGljLCBJIGhhdmUgbm8gcHJvYmxlbSB3aXRoIGR1bXBpbmcgdGhlbS4pCgo+IAktIFUrMDBkNyAo
J8OXJyk6IE1VTFRJUExJQ0FUSU9OIFNJR04KUHJlc3VtYWJseSB0aGlzIGlzIGFwcGVhcmluZyBp
biBtYXRoZW1hdGljYWwgZm9ybXVsYWUsIGluIHdoaWNoIGNhc2UKIGNoYW5naW5nIGl0IHRvICd4
JyBsb3NlcyBzZW1hbnRpYyBpbmZvcm1hdGlvbi4KCj4gVXNpbmcgdGhlIGFib3ZlIHN5bWJvbHMg
d2lsbCBqdXN0IHRyaWNrIHRvb2xzIGxpa2UgZ3JlcCBmb3Igbm8gZ29vZAo+IHJlYXNvbi4KTkJT
UCwgc3VyZS4gIFRoYXQgb25lJ3MgcHJvYmFibHkgYW4gYXJ0ZWZhY3Qgb2Ygc29tZSBkb2N1bWVu
dCBmb3JtYXQKIGNvbnZlcnNpb24gc29tZXdoZXJlIGFsb25nIHRoZSBsaW5lLCBhbnl3YXkuCkJ1
dCB3aGF0IGtpbmRzIG9mIHRoaW5ncyB3aXRoIMOXIG9yIOKAlCBpbiBhcmUgZ29pbmcgdG8gYmUg
Z3JlcHQgZm9yPwoKSWYgdGhlcmUgYXJlIGVtIGRhc2hlcyBseWluZyBhcm91bmQgdGhhdCBzZW1h
bnRpY2FsbHkgX3Nob3VsZF8gYmUKIGh5cGhlbi1taW51cyAob25lIG9mIHlvdXIgcGF0Y2hlcyBJ
J3ZlIHNlZW4sIGZvciBpbnN0YW5jZSwgZml4ZXMgYW4KICplbiogZGFzaCBtb29ubGlnaHRpbmcg
YXMgdGhlIG9wdGlvbiBjaGFyYWN0ZXIgaW4gYW4gYGV0aHRvb2xgCiBjb21tYW5kIGxpbmUpLCB0
aGVuIHN1cmUsIGNvbnZlcnQgdGhlbS4KQnV0IGFueSB0aW1lIHNvbWVvbmUgaXMgdXNpbmcgYSBV
bmljb2RlIGNoYXJhY3RlciB0byAqZXhwcmVzcwogc2VtYW50aWNzKiwgZXZlbiBpZiB5b3UgaGFw
cGVuIHRvIHRoaW5rIHRoZSBzZW1hbnRpYyBkaXN0aW5jdGlvbgogaW52b2x2ZWQgaXMgYSBwZWRh
bnRpYyBvciB1bmltcG9ydGFudCBvbmUsIEkgdGhpbmsgeW91IG5lZWQgYW4KIGV4cGxpY2l0IGdy
ZXAgY2FzZSB0byBqdXN0aWZ5IEFTQ0lJZnlpbmcgaXQuCgotZWQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
