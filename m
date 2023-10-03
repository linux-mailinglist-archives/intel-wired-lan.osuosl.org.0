Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CE67B74D2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 01:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F286418C5;
	Tue,  3 Oct 2023 23:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F286418C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696375538;
	bh=Kr4kshURYcR3BE3HYjc+VKkxIq2yvjVXcJrb3PJi6kc=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bpJslOPkm+qwgZ4TuTlQ2ITlm3b5N8B6boyb6fuS8Zed5JLAgVYX88dO+8vTJY4rN
	 /rDH1yKbU6lrdf8o6gYwdQPrPBlKYpVabxdQ7qwdZP5QJlTfuan5sFHTPSBNpB9F2c
	 Gh0HPHqdId3A0/xU5xa8fX6UAx64b2b19NucBtu298HDjZj5HcCaGfPrUy+HYlhWHH
	 FHYdxBWb+8xOqwjdTTdknBu48jrqVAwhrw0NkhaOfgF09VFZuyKK/5H+a/Y9joq32n
	 ILLFyE8IoB8rWOiq2+3A/qjXIaJaGiMuWVEz4XNiBh9MMjdtGQ8nT6h8j70xCsjHgz
	 uZKvo+mVnlEGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OosEIEBpft5n; Tue,  3 Oct 2023 23:25:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72357418AC;
	Tue,  3 Oct 2023 23:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72357418AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1731BF42D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 23:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7278F82214
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 23:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7278F82214
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0LXPDOmZhcjf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 23:25:31 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1202C82176
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 23:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1202C82176
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id EC23E5C03D2;
 Tue,  3 Oct 2023 19:25:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 03 Oct 2023 19:25:29 -0400
X-ME-Sender: <xms:6aIcZfBzWctnAPA2yTGQBe1QCulvmjiUW7CTURet0z2h3zpMYhYbwA>
 <xme:6aIcZVgZdjx0QkJCTzWmI5EkwGIp0s5KWdgrzNnLbtJBaAvomHfaQX7Qqmwe4xY6s
 7ohjpWKP4b8aSsDWv4>
X-ME-Received: <xmr:6aIcZakyjn0RVfJboq7A5042w1GbUti0Z9dq2i6M8JtjXAgsims8RZbFy1xibkxv3U1P5J8COBkoKRw0aoEr5zaGt1DkxPCmvbQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfeekgddvudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepkfffgggfvfevhffutgfgsehtkeertd
 dtfeejnecuhfhrohhmpefukhihlhgvrhcuofomnhhthihsrggrrhhiuceoshhmodhlihhs
 thhssehskhihmhdrfhhiqeenucggtffrrghtthgvrhhnpeffkeetvdfhjeeitdejvdeive
 ekvdffheefuefhheejveefhedvudevvdffieeiueenucffohhmrghinhepvhihohhsrdhi
 ohenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsmh
 dolhhishhtshesshhkhihmrdhfih
X-ME-Proxy: <xmx:6aIcZRzUvr0CffIcGYFwB4LdQEwYXkqDq4fDaiLN5Pr-lNySSIkvVg>
 <xmx:6aIcZUQ85UogpruNyRqMpJJd2H1rN0C6-6viYL9goqnyDxe4wmfCGA>
 <xmx:6aIcZUZdVt8vrAWL1hj87z6DcXSVke9RbaEt8iauOTZF3E0WSJWFAg>
 <xmx:6aIcZd6bhfJztTis7cpci2udxkeIheda0e2KgM7YYjkHrVNBVts1mw>
Feedback-ID: i1cc947c0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Oct 2023 19:25:29 -0400 (EDT)
Message-ID: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
Date: Wed, 4 Oct 2023 02:25:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: netdev@vger.kernel.org
From: =?UTF-8?Q?Skyler_M=c3=a4ntysaari?= <sm+lists@skym.fi>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1696375529; x=1696461929; bh=oM
 6U6gMaV7UCPCFtR8zAHE/UJ2iRKBWMiyAlX2N9yBM=; b=PvhZofSmI+jXB+D076
 DEdzL2gzlq2RORBZVUBHs23Fea4OQfrDfO/TN3af60pKQEu4PgccwqSNOBcPCtvj
 i+GxGk1WQV/Ds94kORLEKDdKCU3aK2t2i9ESure/JPVeNHk+Jpt+CqSi7FiXWB5E
 vxN5Cw1JcdNFVQ/NocZQqDW/mPqQ1D0pmaJcuwuZCcU4Ya+KM1TzHDTBnwEhtNXp
 fWNzeAjbEPrlGK3SPGXuVpGsbWu2Cs48uNUn2RdvnlhVN6IZ/Y85uhemQ5OTSjaF
 oSe9RjAvUvZFIv1udFsQ1COdC8c3Tfzx3xTkiCCQazE4DfB0sFMAyDV9uzCsO2o+
 liRw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1696375529; x=1696461929; bh=o
 M6U6gMaV7UCPCFtR8zAHE/UJ2iRKBWMiyAlX2N9yBM=; b=n/NYqMuQ3/Gh2TKDH
 NiTNblp77tUbd9Js63PVGO6eXclJ6XZVurTlU812qkqhx9EI4OFFNNsGZKTSkJVR
 1u3EAEZD7I3hG2KUpaZCygS9fh3H2GrDD6PPVDw7zAF59diMn4GVzcxh4WvsVyaJ
 aagq4OXjvVtdq+/1JXombXEK/dhhLQXI5dnu0EHVYYWOlph49UORWTIDjTtZAjN7
 6/5bxWHQmOEfTtrmPU4HtVZZfECVfHkq5CGIzrV2LjxtKNshM/MfDzzKJNVd0L0O
 iBuOUe9N4/pz5ZPoZQ7/oTobpb7GeL87XcPFb/pjo4qD/hY58nqCWORRX8xN8Tvl
 HXXDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm3 header.b=PvhZofSm; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=n/NYqMuQ
Subject: [Intel-wired-lan] The difference between linux kernel driver and
 FreeBSD's with Intel X533
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgdGhlcmUsCgpJdCBzZWVtcyB0aGF0IGZvciByZWFzb25zIHVua25vd24gdG8gbWUsIG15IElu
dGVsIFg1MzMgYmFzZWQgMTBHIFNGUCsgCmRvZXNuJ3Qgd2FudCB0byB3b3JrIHdpdGgga2VybmVs
IDYuMS41NSBpbiBWeU9TIDEuNCBub3IgRGViaWFuIDEyIGJ1dCBpdCAKZG9lcyBpbiBPUE5zZW5z
ZSB3aGljaCBpcyBiYXNlZCBvbiBGcmVlQlNEIDEzLjIuCgpIb3cgd291bGQgSSBnbyBhYm91dCBk
ZWJ1Z2dpbmcgdGhpcyBwcm9wZXJseT8gQm90aCBzaWRlcyBzZWUgbGlnaHQsIGJ1dCAKbm8gbGlu
ayB1bmxlc3MgSSdtIHVzaW5nIEZyZWVCU0QuCgpGb3IgcmVmZXJlbmNlIHRoZSB0aHJlYWQgb24g
VnlPUyBmb3J1bXMgcmVnYXJkaW5nIHRoaXM6IApodHRwczovL2ZvcnVtLnZ5b3MuaW8vdC8xMGct
c2ZwLXRyb3VibGUtd2l0aC1saW5raW5nLWludGVsLXg1NTMvMTIyNTMKClAuUyBTb3JyeSBmb3Ig
dGhlIGRvdWJsZSBwb3N0aW5nLCBidXQgbm93IGl0IHNob3VsZCBnbyB0byB0aGUgSW50ZWwgbGlz
dCAKdG9vIHByb3Blcmx5LgoKQmVzdCByZWdhcmRzLApTa3lsZXIgTcOkbnR5c2FhcmkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
