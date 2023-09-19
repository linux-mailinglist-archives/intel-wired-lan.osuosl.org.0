Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 153CF7A5E59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 11:41:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF58882ED2;
	Tue, 19 Sep 2023 09:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF58882ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695116476;
	bh=QRG92ms+vBFfX/PuVQbekhHukr1gzNO/kugsUKRik24=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UhT4gZeFs56qZvhG7HqEe8+KyUu1t4YxPbGQi424Oq1xtIapb0CyoutKjdsRnMB6Q
	 VpiRSPheTxgxILqpYD/rwaSUyTlzg19V6m3FbdjXEfdDdA9zphhgL9IKODRSyZE6CD
	 99dm93QaKBsIR/t7f3KCr2bloKiFjIqIvDCEtIbbgV9bl9UfTm22L5R8c6ztgQ2FoP
	 Z7atS5stwfWkDOZnOjjJHGvzE+7SSbg4d0nHeL3BB83mMAgEIqwSi/9IHabO5ctWQ3
	 vvIakSgAzpOGLzvK3T1622zb+oKifLenJXDUQ6DOk3HXWJL5/n4g53FMHvNLflGCpD
	 f4ktwJa4Ty/Ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8ggjRIRFQKd; Tue, 19 Sep 2023 09:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A931D82201;
	Tue, 19 Sep 2023 09:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A931D82201
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E21E11BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B67FD82201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:41:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B67FD82201
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5qMnBk_XRqfH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 09:41:06 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5DAB813B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5DAB813B2
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8FE0FB8117B;
 Tue, 19 Sep 2023 09:41:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA312C433C8;
 Tue, 19 Sep 2023 09:40:57 +0000 (UTC)
From: Kalle Valo <kvalo@kernel.org>
To: Ilpo =?utf-8?Q?J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
 <20230918131103.24119-12-ilpo.jarvinen@linux.intel.com>
Date: Tue, 19 Sep 2023 12:40:55 +0300
In-Reply-To: <20230918131103.24119-12-ilpo.jarvinen@linux.intel.com> ("Ilpo
 =?utf-8?Q?J=C3=A4rvinen=22's?= message of "Mon, 18 Sep 2023 16:11:01
 +0300")
Message-ID: <87ediubivs.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695116462;
 bh=m+3hur1NYakFhwVVM9QubHkOlW+nEYeKslg6uKnJKmU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=CML037E+zpEE3oZZc6aRLXqmea6pNid/66KYalApNxJSjydgAg0WstMAoFXN+hJt1
 I4xt00gNzk3Qs290qAspY0vBXL2okCcTREoiXyFqeb4w1okB2ISdofz3iZS2abZOi/
 siE9o8KPpUQfhz5/DuJ2gIDlrC1ONtdyfjpy3JU9vIFH5zWwSOhwWtLNz50zCrdeIM
 ZtOaUscuX6VwtJjEyUmovQxRjGYtisMfGH4dXBoGxZGdkEiYTgdv+nF9l0Y4CtuIBc
 9Wnkbpsu0I7bev8qa0W0yXdxbSZwOtM1rRCXioy1HFeq3udvFr1hpMc6v4rdqTu+6Q
 P0yXf7kKd4jXQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CML037E+
Subject: Re: [Intel-wired-lan] [PATCH v2 11/13] wifi: ath12k: Use
 pci_disable/enable_link_state()
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-mediatek@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>,
 ath12k@lists.infradead.org, linux-pci@vger.kernel.org,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 Bjorn Helgaas <helgaas@kernel.org>, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SWxwbyBKw6RydmluZW4gPGlscG8uamFydmluZW5AbGludXguaW50ZWwuY29tPiB3cml0ZXM6Cgo+
IGF0aDEyayBkcml2ZXIgYWRqdXN0cyBBU1BNIHN0YXRlIGl0c2VsZiB3aGljaCBsZWF2ZXMgQVNQ
TSBzZXJ2aWNlCj4gZHJpdmVyIGluIFBDSSBjb3JlIHVuYXdhcmUgb2YgdGhlIGxpbmsgc3RhdGUg
Y2hhbmdlcyB0aGUgZHJpdmVyCj4gaW1wbGVtZW50ZWQuCj4KPiBDYWxsIHBjaV9kaXNhYmxlX2xp
bmtfc3RhdGUoKSBhbmQgcGNpX2VuYWJsZV9saW5rX3N0YXRlKCkgaW5zdGVhZCBvZgo+IGFkanVz
dGluZyBBU1BNQyBmaWVsZCBpbiBMTktDVEwgZGlyZWN0bHkgaW4gdGhlIGRyaXZlciBhbmQgbGV0
IFBDSSBjb3JlCj4gaGFuZGxlIHRoZSBBU1BNIHN0YXRlIG1hbmFnZW1lbnQuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+CgpB
Y2tlZC1ieTogS2FsbGUgVmFsbyA8a3ZhbG9Aa2VybmVsLm9yZz4KCi0tIApodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2ly
ZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0
aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
