Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DDD7A5E47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 11:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F9FB82B3E;
	Tue, 19 Sep 2023 09:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F9FB82B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695116416;
	bh=vRFu1LA+CjnJVhfleyvAYAObZH67gTxWTQZ/L6Js4HI=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qYLje4H9272WHS5s2yRUeS4qqvsU/Pfxi0Lyy68z4d4eOEAwyOk0jn34uUukfeujz
	 ron4geY9KGTjUObrp36Fe83jZ6y4MPLji1IZ5Tdt1JYe5aDknk8czJkxK0o5PPpMCI
	 MkTJE0WtjuLkdXdKMi1GqlgDQ2dG9s+tesdzotm856a5cAsXD4TnxVv4lTwYk9JWOC
	 XFpBYT8qMJV/fwge70Ue4/9dcZy7oBHUtrVI3qJVOfk3vmGf08hYqSNZB1AILqT/yl
	 Wwgl0EG+ntemyLcN7VX29w1BQOMn4axrd4LKtv2wYnJoC+S/v9OJdqwirI3mxgiwpO
	 6ERO4qFAU0Lpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2yHppxc2zfHm; Tue, 19 Sep 2023 09:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8ADA813B2;
	Tue, 19 Sep 2023 09:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8ADA813B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2393C1BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 085D4416D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 085D4416D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdtgxBc2ro7E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 09:40:07 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 95A0E405CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95A0E405CF
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 27C2BCE12B1;
 Tue, 19 Sep 2023 09:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD7CC433C7;
 Tue, 19 Sep 2023 09:39:56 +0000 (UTC)
From: Kalle Valo <kvalo@kernel.org>
To: Ilpo =?utf-8?Q?J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
 <20230918131103.24119-10-ilpo.jarvinen@linux.intel.com>
Date: Tue, 19 Sep 2023 12:39:54 +0300
In-Reply-To: <20230918131103.24119-10-ilpo.jarvinen@linux.intel.com> ("Ilpo
 =?utf-8?Q?J=C3=A4rvinen=22's?= message of "Mon, 18 Sep 2023 16:10:59
 +0300")
Message-ID: <87msxibixh.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695116401;
 bh=xUSE25r0oJ3f4NH79rN7650LsxSaeIDs03u0Ela0NkA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=B+8j6J653S7hN/P0sDXLfkZCrkXWcs/201tlLesCMKYeS27mE3L8IG2qk7AAKg+2e
 BUNS5NZm5JBAjTmq3GDLC5ye8CNJyMrm7azjWAk6bw0E2F+XLRY4x0wrGB2V5MhQGZ
 Ki0ZQJyaFcYSLGRFN9mojUPq91NN2dkqHVrCNogaFKSg+IjPuz9iWRlTBiZhZra0L8
 2tygmWZJ+rUn+kQ9Qe2QrFu6h8s1oXtGd3sVDtGq9oQHu1k/JNmlsa4Ct7tWxiDVH+
 e2yjQ23XCx79G/cwJvFmU478618R+x80XBRSqQcOjr+y9gCP5/il85H44EBc/vWHwF
 CBum4FD6nQBdg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=B+8j6J65
Subject: Re: [Intel-wired-lan] [PATCH v2 09/13] wifi: ath10k: Use
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
IGF0aDEwayBkcml2ZXIgYWRqdXN0cyBBU1BNIHN0YXRlIGl0c2VsZiB3aGljaCBsZWF2ZXMgQVNQ
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
