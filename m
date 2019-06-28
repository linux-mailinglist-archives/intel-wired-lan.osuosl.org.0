Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04324598C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 12:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A35C85D8E;
	Fri, 28 Jun 2019 10:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZlZAHfWzekDi; Fri, 28 Jun 2019 10:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72A5986216;
	Fri, 28 Jun 2019 10:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF7581BF407
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 10:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB25420398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 10:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3d1pq-UDQZt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 10:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id C33471FEAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 10:49:29 +0000 (UTC)
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hgoRb-0003dk-BY
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Jun 2019 10:49:27 +0000
Received: by mail-pg1-f199.google.com with SMTP id n7so3008516pgr.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:49:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Iwcwu8EhYBQtmQq06vx5HeybIZVBqkP7FYte+n7wh10=;
 b=lSm4BR8fFRfpkEKC0lB5ncSJqsgneDeheF9pZzUOukI99mzbR+RbHM5hXowhXfdswI
 BYaArPAR2uVafgP0tjdGeIDYdsFTpGbNz91T8TettfeHhF7nzVosVPfAIZ/8QckigVWn
 gCr96Z7mO7groTmu2Fl43WjdNknuMtrHNMpdNm5G948v02RTZGQfrB27l9GckkzMWc63
 YjoVfci6EfZ2pnIJzaknSKR4HtVsDkoZhzPtDyy4dDfrh28jw4z+7op05Z1TNGZp3hTs
 JAeeHNwFiGqUdOpAMZxRKm2j1UaEOusblvAcwUYKov5MQiyaz95lLl18wmbG9+tYNFO3
 TOew==
X-Gm-Message-State: APjAAAWGBempeQWhTqUsWoDahHKWMSB70mbDjIljHBIX5JPvDGQK3Je/
 ReM5d/YTkkXS8+uq+Ci2NsxhtLLIRBUjkZDVKIkC/zcY/Y9ml4MhDzOh5Nwgf3vawh1kJ3fg/7z
 LPXMvpsSF9S3tIefRZZywCRrArLCh3lY2cuKHc5SP5dVJoSg=
X-Received: by 2002:a17:90a:ad41:: with SMTP id
 w1mr12253098pjv.52.1561718966069; 
 Fri, 28 Jun 2019 03:49:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwHSzLGj7RNMgY9viMUYdktryg7yAm3bRja6SaV/JtanR/yUz2rnrUAgGwDNqp4EnSG/IoeDg==
X-Received: by 2002:a17:90a:ad41:: with SMTP id
 w1mr12253069pjv.52.1561718965820; 
 Fri, 28 Jun 2019 03:49:25 -0700 (PDT)
Received: from 2001-b011-380f-3511-c09f-cbfd-7c09-2630.dynamic-ip6.hinet.net
 (2001-b011-380f-3511-c09f-cbfd-7c09-2630.dynamic-ip6.hinet.net.
 [2001:b011:380f:3511:c09f:cbfd:7c09:2630])
 by smtp.gmail.com with ESMTPSA id b36sm5214620pjc.16.2019.06.28.03.49.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 03:49:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
Date: Fri, 28 Jun 2019 18:49:22 +0800
Message-Id: <1804A45E-71B5-4C41-839C-AF0CFAD0D785@canonical.com>
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
 <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
 <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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

YXQgMTQ6MjYsIE5lZnRpbiwgU2FzaGEgPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+IHdyb3RlOgoK
PiBPbiA2LzI2LzIwMTkgMDk6MTQsIEthaSBIZW5nIEZlbmcgd3JvdGU6Cj4+IEhpIFNhc2hhCj4+
IGF0IDU6MDkgUE0sIEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4g
d3JvdGU6Cj4+PiBIaSBKZWZmcmV5LAo+Pj4KPj4+IFdl4oCZdmUgZW5jb3VudGVyZWQgYW5vdGhl
ciBpc3N1ZSwgd2hpY2ggY2F1c2VzIG11bHRpcGxlIENSQyBlcnJvcnMgYW5kICAKPj4+IHJlbmRl
cnMgZXRoZXJuZXQgY29tcGxldGVseSB1c2VsZXNzLCBoZXJl4oCZcyB0aGUgbmV0d29yayBzdGF0
czoKPj4gSSBhbHNvIHRyaWVkIGlnbm9yZV9sdHIgZm9yIHRoaXMgaXNzdWUsIHNlZW1zIGxpa2Ug
aXQgYWxsZXZpYXRlcyB0aGUgIAo+PiBzeW1wdG9tIGEgYml0IGZvciBhIHdoaWxlLCB0aGVuIHRo
ZSBuZXR3b3JrIHN0aWxsIGJlY29tZXMgdXNlbGVzcyBhZnRlciAgCj4+IHNvbWUgdXNhZ2UuCj4+
IEFuZCB5ZXMsIGl04oCZcyBhbHNvIGEgV2hpc2tleSBMYWtlIHBsYXRmb3JtLiBXaGF04oCZcyB0
aGUgbmV4dCBzdGVwIHRvICAKPj4gZGVidWcgdGhpcyBwcm9ibGVtPwo+PiBLYWktSGVuZwo+IENS
QyBlcnJvcnMgbm90IHJlbGF0ZWQgdG8gdGhlIExUUi4gUGxlYXNlLCB0cnkgdG8gZGlzYWJsZSB0
aGUgTUUgb24geW91ciAgCj4gcGxhdGZvcm0uIEhvcGUgeW91IGhhdmUgdGhpcyBvcHRpb24gaW4g
QklPUy4gQW5vdGhlciB3YXkgaXMgdG8gY29udGFjdCAgCj4geW91ciBQQyB2ZW5kb3IgYW5kIGFz
ayB0byBwcm92aWRlIE5WTSB3aXRob3V0IE1FLiBMZXQncyBzdGFydCBkZWJ1Z2dpbmcgIAo+IHdp
dGggdGhlc2Ugc3RlcHMuCgpBY2NvcmRpbmcgdG8gT0RNLCB0aGUgTUUgY2FuIGJlIHBoeXNpY2Fs
bHkgZGlzYWJsZWQgYnkgYSBqdW1wZXIuCkJ1dCBhZnRlciBkaXNhYmxpbmcgdGhlIE1FIHRoZSBz
YW1lIGlzc3VlIGNhbiBzdGlsbCBiZSBvYnNlcnZlZC4KCkthaS1IZW5nCgo+Pj4gL3N5cy9jbGFz
cy9uZXQvZW5vMS9zdGF0aXN0aWNzJCBncmVwIC4gKgo+Pj4gY29sbGlzaW9uczowCj4+PiBtdWx0
aWNhc3Q6OTUKPj4+IHJ4X2J5dGVzOjE0OTk4NTEKPj4+IHJ4X2NvbXByZXNzZWQ6MAo+Pj4gcnhf
Y3JjX2Vycm9yczoxMTY1Cj4+PiByeF9kcm9wcGVkOjAKPj4+IHJ4X2Vycm9yczoyMzMwCj4+PiBy
eF9maWZvX2Vycm9yczowCj4+PiByeF9mcmFtZV9lcnJvcnM6MAo+Pj4gcnhfbGVuZ3RoX2Vycm9y
czowCj4+PiByeF9taXNzZWRfZXJyb3JzOjAKPj4+IHJ4X25vaGFuZGxlcjowCj4+PiByeF9vdmVy
X2Vycm9yczowCj4+PiByeF9wYWNrZXRzOjQ3ODkKPj4+IHR4X2Fib3J0ZWRfZXJyb3JzOjAKPj4+
IHR4X2J5dGVzOjg2NDMxMgo+Pj4gdHhfY2Fycmllcl9lcnJvcnM6MAo+Pj4gdHhfY29tcHJlc3Nl
ZDowCj4+PiB0eF9kcm9wcGVkOjAKPj4+IHR4X2Vycm9yczowCj4+PiB0eF9maWZvX2Vycm9yczow
Cj4+PiB0eF9oZWFydGJlYXRfZXJyb3JzOjAKPj4+IHR4X3BhY2tldHM6NzM3MAo+Pj4gdHhfd2lu
ZG93X2Vycm9yczowCj4+Pgo+Pj4gU2FtZSBiZWhhdmlvciBjYW4gYmUgb2JzZXJ2ZWQgb24gYm90
aCBtYWlubGluZSBrZXJuZWwgYW5kIG9uIHlvdXIgIAo+Pj4gZGV2LXF1ZXVlIGJyYW5jaC4KPj4+
IE9UT0gsIHRoZSBzYW1lIGlzc3VlIGNhbuKAmXQgYmUgb2JzZXJ2ZWQgb24gb3V0LW9mLXRyZWUg
ZTEwMDBlLgo+Pj4KPj4+IElzIHRoZXJlIGFueSBwbGFuIHRvIGNsb3NlIHRoZSBnYXAgYmV0d2Vl
biB1cHN0cmVhbSBhbmQgb3V0LW9mLXRyZWUgIAo+Pj4gdmVyc2lvbj8KPj4+Cj4+PiBLYWktSGVu
ZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
