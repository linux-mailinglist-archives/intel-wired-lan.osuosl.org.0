Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 375797A5E4E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 11:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D103B8234A;
	Tue, 19 Sep 2023 09:40:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D103B8234A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695116434;
	bh=EBRv0AEub9AUvuVtYBgk6OLXOYcyiSIi/LOXselMj8U=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e2kh4beYQBYfWnPiCdzi95ZmgBlxfibGcvEhsHP1RI1bRBYKdzq9FFeoRBepmuuJh
	 DQm6VoyonzkXsNsgknlqFMnotEkJ8RtJD0GiP6N+KPUp/3Xwd4kZwwCtjW4vaA2fmH
	 TSbEM64GkPwsl9GFAi+Sh27+/mYC3Ws0ASfhh2tuZk9ftknG85jtnmwmumSYNnHLfR
	 STX6KAi3pnvLnPSABc9TMd4nes3Eb/twJHSqj8qheQaAOKxk/KdDGNaLmeOy/I4tve
	 KaPc/BiyMC3TBGCo/9IwktMjtAvly09OnLrNJTY+T3nPLiJDql2Rb3O8bSCcuOGRtM
	 l5SeoZm8yD8vw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7J1gr6AUfop6; Tue, 19 Sep 2023 09:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0D1482343;
	Tue, 19 Sep 2023 09:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0D1482343
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E98D1BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12B1B41B97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12B1B41B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dOxcYAN16SA7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 09:40:26 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D90AD409C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 09:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D90AD409C9
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id B1D61CE126A;
 Tue, 19 Sep 2023 09:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A781C433C8;
 Tue, 19 Sep 2023 09:40:17 +0000 (UTC)
From: Kalle Valo <kvalo@kernel.org>
To: Ilpo =?utf-8?Q?J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
 <20230918131103.24119-11-ilpo.jarvinen@linux.intel.com>
Date: Tue, 19 Sep 2023 12:40:15 +0300
In-Reply-To: <20230918131103.24119-11-ilpo.jarvinen@linux.intel.com> ("Ilpo
 =?utf-8?Q?J=C3=A4rvinen=22's?= message of "Mon, 18 Sep 2023 16:11:00
 +0300")
Message-ID: <87il86biww.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695116422;
 bh=1W+RHNKneW2lSWYUJv9c0K/rO7LlJrAh0C1ermQDmPM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=dYfspwzi29ZpE8TGLJJHwniJ0FECLJuib/RKR7Hy666KEaxriDEmslxjOEAfCnaxI
 zSYA1GYxhamjWYym4bPvYUC0Q0AZo6m+HoSLT1vcJjZcDW9mztF0XmpOJr0ar/TGGH
 skHEsbWaGdLXm2gwctjZTyLoOgoEw3OhJeFZUzUki9nbOk0NtDtswAy1g5dQUW3QY0
 2+0yN5bMzBMWMB3PI326g1n40jKV6fIHlDperqFcYLJok93eqXMNMp6qVEZTvF5TcW
 fVAHGI3usWzY5c+WiaPLfbomx7S8Rb0WLMGN7I+YIJv+FDRW0oRn1JRaxRSakGuBrR
 8QyCyIZvKiVnQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dYfspwzi
Subject: Re: [Intel-wired-lan] [PATCH v2 10/13] wifi: ath11k: Use
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
IGF0aDExayBkcml2ZXIgYWRqdXN0cyBBU1BNIHN0YXRlIGl0c2VsZiB3aGljaCBsZWF2ZXMgQVNQ
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
