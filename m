Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FE77BEFD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E3114034F;
	Tue, 10 Oct 2023 00:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E3114034F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696898421;
	bh=LITIKInTxGWQ25u0bdWq3smmOt/IJDreddv2rLls5QA=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NRKi9I82bhs9NpKhggEsBig2MWtUdaTLRb3m9U6htubO5hk3Jtnc/un3Z8V8diKlJ
	 eWHqkG4irVqAAiMbMyWEdAvRaUNA7ewHI96PiD/1f+xXqSW0xIv8j7pqcaPHy4NF8W
	 lU6P6rsTPjrpFlZuEWRZkQBemYj2V/c+PCgKQNpwYyWrZ9TxvQP0P6B7mxt5/xd7dW
	 Pv5f2MHEHyUQIdQ82K7Owk/q6WXIAw8vv4gnZVtMIMa+OZzx3DATABfocVb5Vd1+RH
	 rvwjnqOibq3e7tHPgTJxOcUGiamLskThwmyDhT/hUD/vkqivkFUaAVf/3+yi46Nxq4
	 MnRGIwo1OFs3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjjlfhPIHBbH; Tue, 10 Oct 2023 00:40:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 262C64137D;
	Tue, 10 Oct 2023 00:40:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 262C64137D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8BF11BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9478E8142D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9478E8142D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkJh6p_LCMjT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:40:12 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 696DA8141C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 696DA8141C
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 72D045C023A;
 Mon,  9 Oct 2023 20:40:11 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
 by compute5.internal (MEProxy); Mon, 09 Oct 2023 20:40:11 -0400
X-ME-Sender: <xms:a50kZWJA28v956qE8_ZAxw3o0QmJ1Uevq8LRIajoYRpPlRRprw7ftQ>
 <xme:a50kZeKRgGaoGf77uA25ISdWe8clLkSQgf9cgO7axTBhYV1rs0JprGBGfZ110Cl_c
 bkL6AxmiM9nIbvGMjc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrheeggdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpefukhih
 lhgvrhcuofomnhhthihsrggrrhhiuceoshhmodhlihhsthhssehskhihmhdrfhhiqeenuc
 ggtffrrghtthgvrhhnpeeuudevveefueduueelveegheelffegleetfeeikeefudelgfel
 gfetudefuddvvdenucffohhmrghinhepvhihohhsrdhiohdpkhgrphhsihdrfhhinecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshhmodhlihhs
 thhssehskhihmhdrfhhi
X-ME-Proxy: <xmx:a50kZWuBh5cRoUspBouowzmKzOM_Z6F8ncGXj_KLWvy30BP9Y_xp1g>
 <xmx:a50kZbaof6CweFrYVI8uO8sol_bcs1ZNUOF3HwxtSNE5FDZ5JkJeHA>
 <xmx:a50kZdYd-p9wrd47U_wgv7yRlxg24FAahFREWbuDYct_t3fap4U2FQ>
 <xmx:a50kZeBAnQMZWl3f9GOUREpLjHfNconJta4rv0qM21qd1_EGXndm7Q>
Feedback-ID: id05146f6:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 0585C15A0091; Mon,  9 Oct 2023 20:40:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-958-g1b1b911df8-fm-20230927.002-g1b1b911d
MIME-Version: 1.0
Message-Id: <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
In-Reply-To: <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
 <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
Date: Tue, 10 Oct 2023 03:39:46 +0300
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
To: "Jesse Brandeburg" <jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm3; t=
 1696898411; x=1696984811; bh=+glOfiTjqfdNldkd4BXd9p9Xrv4mX9YhR9w
 WiKhcj40=; b=2uklJJdDYBEuHQVSNfcdIIkodEDzfPNzishpK8ZkWEv58ixkX1M
 LJv1mxrx5wfoenAW+5Oyp1pJu3Vt7VQ1q3ddYhfW3ZUkO47fOCMfCU3K2A8nIwIt
 hydZmh0DpJHuj2teRd3jX66aTlZZCjP7Tj2EsQpu4pbedLX5Ug2A9p+OLJkFrxLh
 U29unOLhFbaMNJmWKDbFx2z2N/UgmEEa5KJseJT4PIkopIuLIfR7gPGaJioeKF4H
 t8CRrOg5EjANibHPQs9xrV8OmYEg+Cq+8I5CV3ZiLx0/vfX0KQu9dssVy8pc55QJ
 2OWm97KcaOkobdkZRwy5RuQAB2LhodqmbVw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1696898411; x=1696984811; bh=+glOfiTjqfdNldkd4BXd9p9Xrv4mX9YhR9w
 WiKhcj40=; b=aSCO8y8y9nZOgKPNpJmOWtFUrJRKZd0lD7LytkjY7z0XJiU2b3t
 +MB/6AWc41OClpMtCiivRSd7nVyciSPE2rRTfc3oAXEeWWfsPoXo5jgeTWhV80L+
 GB1zT+Hjx4Y8Ndvx6W/6qG4CQQn99Osh80c7b1tZNNWFIpm4Qu7xE61Lrw0Y9BJC
 BiCFxOVUJrYpH3k/mcLF720Q6a9YQRmXhBrNwxk8mhLGYCqhj5aE/RJ772Bc5ZlR
 Pv0MibfgXMksE71hENVS46H9W/Ipooly46id3OmsPyXZkY0mMy9Z0YkaxqkLrmeJ
 KYW4dgJwQElm6DfA1E0Q7Y0gzk2d2nFJ9Wg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm3 header.b=2uklJJdD; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=aSCO8y8y
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMsIGF0IDAyOjUwLCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6
Cj4gT24gTW9uLCBPY3QgOSwgMjAyMywgYXQgMTg6MzMsIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6
Cj4+IE9uIDEwLzQvMjAyMyAxMDowOCBBTSwgU2t5bGVyIE3DpG50eXNhYXJpIHdyb3RlOgo+Pj4+
PiBIaSB0aGVyZSwKPj4+Pj4KPj4+Pj4gSXQgc2VlbXMgdGhhdCBmb3IgcmVhc29ucyB1bmtub3du
IHRvIG1lLCBteSBJbnRlbCBYNTMzIGJhc2VkIDEwRyBTRlArCj4+Pj4+IGRvZXNuJ3Qgd2FudCB0
byB3b3JrIHdpdGgga2VybmVsIDYuMS41NSBpbiBWeU9TIDEuNCBub3IgRGViaWFuIDEyIGJ1dAo+
Pj4+PiBpdCBkb2VzIGluIE9QTnNlbnNlIHdoaWNoIGlzIGJhc2VkIG9uIEZyZWVCU0QgMTMuMi4K
Pj4+Pj4KPj4+Pj4gSG93IHdvdWxkIEkgZ28gYWJvdXQgZGVidWdnaW5nIHRoaXMgcHJvcGVybHk/
IEJvdGggc2lkZXMgc2VlIGxpZ2h0LAo+Pj4+PiBidXQgbm8gbGluayB1bmxlc3MgSSdtIHVzaW5n
IEZyZWVCU0QuCj4+PiBodHRwczovL2ZvcnVtLnZ5b3MuaW8vdC8xMGctc2ZwLXRyb3VibGUtd2l0
aC1saW5raW5nLWludGVsLXg1NTMvMTIyNTMvMTE/dT1zYW1pcDUzNwo+Pgo+PiBIaSBTa3lsZXIs
Cj4+Cj4+IFJlc3BvbnNlIGZyb20gSW50ZWwgdGVhbToKPj4KPj4gSW4gdGhlIGV0aHRvb2wgLW0g
b3V0cHV0IHBhc3RlZCBJIHNlZSBUWCBhbmQgUlggb3B0aWNhbCBwb3dlciBpcyBmaW5lLgo+PiBD
b3VsZCB5b3UgcmVxdWVzdCBmYXVsdCBzdGF0dXMgb24gYm90aCBzaWRlcz8gSnVzdCB3YW50IHRv
IGNoZWNrIGlmIGxpbmsKPj4gaXMgZG93biBiZWNhdXNlIHdlIGFyZSBhdCBsb2NhbC1mYXVsdCBv
ciBsaW5rIHBhcnRuZXIgaXMgYXQgbG9jYWwtZmF1bHQuCj4+Cj4+IHJtbW9kIGl4Z2JlCj4+IG1v
ZHByb2JlIGl4Z2JlCj4+IGV0aHRvb2wgLVMgZXRoMCB8IGdyZXAgZmF1bHQKPj4KPj4gU2luY2Ug
aXQgaXMgMTBHLCBpZiBvdXIgc2lkZSBUWCBpcyBPTiAocG93ZXIgbGV2ZWwgc2F5cyBpdCBpcykg
dGhlbiB3ZQo+PiBzaG91bGQgZXhwZWN0IGxpbmsgcGFydG5lciBSWCB0byBiZSBsb2NrZWQgc28g
Y2Fubm90IGJlIGF0IExvY2FsIEZhdWx0Lgo+Pgo+PiBTa3lsZXIsIHBsZWFzZSBnYXRoZXIgdGhh
dCBldGh0b29sIC1TIGRhdGEgZm9yIHVzLgo+Pgo+PiBKZXNzZQo+Pgo+Pgo+Pgo+PiAKPgo+IEhp
IEplc3NlLAo+Cj4gQXMgdGhlIG90aGVyIHNpZGUgb2YgdGhlIGxpbmsgaXMgYW4gSnVuaXBlciwg
SSdtIG5vdCBxdWl0ZSBzdXJlIGhvdyBJIAo+IHdvdWxkIGdhdGhlciB0aGUgc2FtZSBkYXRhIGZy
b20gaXQgYXMgaXQgZG9lc24ndCBoYXZlIGV0aHRvb2w/Cj4KPiBJIGhhdmUgYWxzbyBzb21ld2hh
dCBnaXZlbiB1cCBob3BlIG9uIGl0IHdvcmtpbmcgb24gVnlPUyBhbmQgaW5zdGVhZCBJIAo+IGFt
IHVzaW5nIE9QTnNlbnNlIGZvciB0aGUgbW9tZW50IGJ1dCBJIHN0aWxsIGhhdmUgVnlPUyBpbnN0
YWxsZWQgYXMgCj4gd2VsbC4KPgo+IFNreWxlcgoKSGkgSmVzc2UsCgpJIGRpZCB2ZXJpZnkgdGhh
dCB0aGUgZ3JlcCBkb2Vzbid0IHlpZWxkIGFueSByZXN1bHRzIG9uIHRoZSBWeU9TIGJveCBhbmQg
YWxsIG9mIHRoZSBkYXRhIHJldHVybmVkIGhhcyBhbiB2YWx1ZSBvZiAwLiBQYXN0ZSBvZiB3aGlj
aCBpcyBoZXJlOiBodHRwczovL3Aua2Fwc2kuZmkvPzRhODJjZWRiNGY0ODAxZWMjRGNFZ0ZNRks3
Y0gxM0VxeXBzWTRaYUhTNXRhZUExelhldm1tVFNWVzNQOXgKCkkgcmVhbGx5IHRoaW5rIHNvbWV0
aGluZyB3ZWlyZCBpcyBnb2luZyBvbiB3aXRoIHRoZSBkcml2ZXIgaW4gTGludXggYXMgb3RoZXJ3
aXNlIHRoZSBzYW1lIGV4YWN0IGNvbmZpZyBvbiBKdW5pcGVyIHdvdWxkbid0IHdvcmsgdGhlcmUg
ZWl0aGVyLiBUaGUgVnlPUyBib3ggYWxzbyBzYXlzIHRoYXQgaXQncyB1bmFibGUgdG8gbW9kaWZ5
IGF1dG9uZWcgc2V0dGluZ3MsIG9yIHNwZWVkL2R1cGxleCBvZiB0aGUgaW50ZXJmYWNlLgoKU2t5
bGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
