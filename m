Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAEB561DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 07:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3905887B08;
	Wed, 26 Jun 2019 05:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4zV-R5s5NumW; Wed, 26 Jun 2019 05:49:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEA0487ADB;
	Wed, 26 Jun 2019 05:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A36931BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 05:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F57C21505
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 05:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xgUYmN7E4kR3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 05:49:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id BB503214FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 05:49:20 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hg0o2-0007jG-4k
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Jun 2019 05:49:18 +0000
Received: by mail-pl1-f199.google.com with SMTP id d2so746139pla.18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:49:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=12ANf5jkxiue7axL1Y5xhLlkcaf3kHXDuZtfoS2gzUA=;
 b=g4U5K4M9a/fwxwzCxayui+y/Z+7XGbvwTSOmtCGWXRp5FKoYw4Ow0cv8VnP5Ucc/JM
 eidLU1N5BWnWJqTYTNabwcw+mUmh5J4fD+LSSuNLXTdRhnIua2ac7CgF2DKb+PBn3/J5
 c+C4dAvMdHMtjJC1V7VmYIIL1FXH7HhObh2yRYY5w/WvaILpolVlH1xnsRF4nc4hpGLc
 w5dkQ3ijTfXyUlxkQuBWKhjS2bfQXAo5isNSsA29v9GveL4YwenGKvRlLCmUvgpTnCqM
 HKayMbAD/KM1iBR4D38cw6yRdtGZ95m6a99f5gitq8FVONc/zH93xflcOFRtVLxLiMiv
 as4A==
X-Gm-Message-State: APjAAAWO83JLD4ZXsnGaKKLMXErl1odi1WS7F8AJ7R6ndXwnWuzw97im
 vcLmiNtdxVxeuTMkrJdWGr3s4ke3NCKDmwIQcgbE/tJwY1vZiYnZQNSpf+NCkMMlIhx6/zESxBU
 5VE5ZHhNcotHaQY5DlRTwOcJSfEinDdBpC/NDLN/YP4KwwBk=
X-Received: by 2002:a17:902:9688:: with SMTP id
 n8mr3116871plp.227.1561528156893; 
 Tue, 25 Jun 2019 22:49:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwee9bWoCIWpnXOMY7SxZkgP4ELM68w+FNl6jhugNxsK+602xd1wI/6pPbktKeAaH3SPdhALQ==
X-Received: by 2002:a17:902:9688:: with SMTP id
 n8mr3116854plp.227.1561528156633; 
 Tue, 25 Jun 2019 22:49:16 -0700 (PDT)
Received: from [10.101.46.178] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id r15sm19728330pfh.121.2019.06.25.22.49.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 22:49:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <dfd57ef4-08bd-53cf-1f0a-86edc5bc0a67@intel.com>
Date: Wed, 26 Jun 2019 13:49:13 +0800
Message-Id: <8C7BCE85-D027-4C0C-BD46-619FAD0E6AB8@canonical.com>
References: <074E1145-A512-4835-9A6D-8FB6634DBD3C@canonical.com>
 <E2D5225B-D683-4895-AC4F-EE01C339262B@canonical.com>
 <95f88f45-fd6c-52e4-de8c-2db1b4c6c04e@intel.com>
 <E8C45269-819C-41E0-A3D3-AA98710DBA4C@canonical.com>
 <dfd57ef4-08bd-53cf-1f0a-86edc5bc0a67@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] Opportunistic S0ix blocked by e1000e when
 ethernet is in use
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXQgNjoyNSBQTSwgTmVmdGluLCBTYXNoYSA8c2FzaGEubmVmdGluQGludGVsLmNvbT4gd3JvdGU6
Cgo+IE9uIDYvMjQvMjAxOSAxODowNiwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPj4gYXQgMTk6NTYs
IE5lZnRpbiwgU2FzaGEgPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+IHdyb3RlOgpbU25pcHBlZF0K
PiBDdXJyZW50IEhXIGhhdmUgYSBsaW1pdGF0aW9uLiBQbGVhc2UsIHRyeSBmb2xsb3cgd29ya2Fy
b3VuZCBvbiB5b3VyICAKPiBwbGF0Zm9ybTogZWNobyAzID4gL3N5cy9rZXJuZWwvZGVidWcvcG1j
X2NvcmUvbHRyX2lnbm9yZQoKWWVzLCB0aGlzIGRvZXMgdGhlIHRyaWNrLgoKT24gNC4xNSBiYXNl
ZCBrZXJuZWwgSSBjYW4gc2VlIHRoZSBTb0MgZW50ZXJzIFBDMTAgYnV0IFNMUF9TMCBpcyBub3Qg
IAphc3NlcnRlZC4KCk9uIG1haW5saW5lIGtlcm5lbCB0aGUgU29DLCBQQzEwIGlzIGhpdCBhbmQg
U0xQX1MwIGlzIGFzc2VydGVkLiBPbmNlIFNMUF9TMCAgCmlzIGFzc2VydGVkIHRoZSBTU0ggY29u
bmVjdGlvbiBiZWNvbWVzIHJlYWxseSBzbHVnZ2lzaC4KCj4+ID4+IFMwaXggc3VwcG9ydCBpcyB1
bmRlciBkaXNjdXNzaW9uIHdpdGggb3VyIGFyY2hpdGVjdHVyZS4gV2Ugd2lsbCB0cnkKPj4+IGVu
YWJsZSBTMGl4IGluIG91ciBlMTAwMGUgT09UIGRyaXZlciBhcyBmaXJzdCBzdGVwLgo+PiBJcyBp
dCBwb3NzaWJsZSB0byBhZGQgRHluYW1pYyBMVFIgYXMgYW4gb3B0aW9uIHNvIHVzZXJzIGFuZCBk
b3duc3RyZWFtICAKPj4gZGlzdHJvcyBjYW4gc3RpbGwgYmVuZWZpdCBmcm9tIGl0Pwo+IEFzIEkg
c2FpZCBiZWZvcmUsIHRoaXMgaXMgbm90IGEgc3RhYmxlIHNvbHV0aW9uLiBObyBndWFyYW50ZWUg
dGhhdCBIVyAgCj4gd2lsbCB3b3JrIGFzIHByb3Blcmx5LgoKQ2FuIHlvdSBkZXNjcmliZSB0aGUg
c3ltcHRvbSBvZiAiSFcgd2lsbCB3b3JrIGFzIHByb3Blcmx54oCdPyBJcyB0aGlzIHRoZSAgCnNs
dWdnaXNoIGNvbm5lY3Rpb24gSSBvYnNlcnZlZD8KCkthaS1IZW5nCgo+PiBLYWktSGVuZwo+Pj4+
IEthaS1IZW5nCj4+Pj4+IEthaS1IZW5nCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+PiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4+
Pj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPj4+PiBodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KPj4+Cj4+PiBUaGFua3MKPj4+IFNh
c2hhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
