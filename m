Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5367FBC52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 15:10:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 631A2402DC;
	Tue, 28 Nov 2023 14:10:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 631A2402DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701180658;
	bh=9YMgjtOt/ICiPhj9EYvheVe/k4hhv1rWKIE/SuC3ljo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qKD4/jqV7SuGrGkbBJH41OLJ3bB2YvdKKPU8IZKBJbBt+Sc20wts2tuh/Vv10TO1Z
	 MWgG/FVbF+zj2KUVrH9GNVfm1vrfdh3JETw1trzWIsTzKnO1LmBOPEETqUZjdK6l8L
	 g+j+rK2zx5xJTZy9uyOBNDCHimux3186WbRcTrFCXL3NuN+vwet0/dwnKBpnzx2YUu
	 xFkAQPcem+M01dOyGy+vTTore4pTt7dMeEUM6j2cPiL2opx6LV6Zpy34xjFN3YDjle
	 /wXI6gSGkB9DwQPKfQ0kqQGi1ErmsKehfRn45H3DkiKz9qLfa9H1sLEFJ3kKMLSno4
	 ar3IS1oiqCQmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id czhnel2nenFE; Tue, 28 Nov 2023 14:10:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E86A940284;
	Tue, 28 Nov 2023 14:10:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E86A940284
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36E5F1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 14:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED28B40A8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 14:10:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED28B40A8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82Q9YusiCt-W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 14:10:49 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 903E740A45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 14:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 903E740A45
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.west.internal (Postfix) with ESMTP id 7D5E33200AB9;
 Tue, 28 Nov 2023 09:01:16 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Tue, 28 Nov 2023 09:01:17 -0500
X-ME-Sender: <xms:q_JlZYZlv8QrFaUYQagZ_FVtRvh81CeIXmbffTMzyxPfXd3x4bR8LA>
 <xme:q_JlZTa6Ms5K2LbXbBWp9xDZnBBc7eOgduPPmdBhgc3oK2yvj7ThwlpW2p0fRMDi-
 HFURjJkP_2AnOmtHp4>
X-ME-Received: <xmr:q_JlZS8lDtS0kGA0hRlslY3AptISKzYOP4W8WIGgujvBo7R9mFFVQ30zI1mW_mV_KMiIFUDvGByBm5pBkDfS3lrdKdSum4rlww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeifedgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepkfffgggfuffvfhevhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefukhih
 lhgvrhcuofomnhhthihsrggrrhhiuceoshhmodhlihhsthhssehskhihmhdrfhhiqeenuc
 ggtffrrghtthgvrhhnpeffteeuuefhkedvleelteeukefhffekfeduudeukeduieeifeek
 jeegteffteekteenucffohhmrghinhepvhihohhsrdhiohdpkhgrphhsihdrfhhipdhkvg
 hrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehsmhdolhhishhtshesshhkhihmrdhfih
X-ME-Proxy: <xmx:q_JlZSp7pU2OxKS67T8XEOxj9LIU1cmacFOHeH3eLuV4s8Y4H3Cv6A>
 <xmx:q_JlZTrxGO_vxyASe36kiEBE0QrZ28DMEIaV3CBIO49Hqgwm1O-qLA>
 <xmx:q_JlZQRut2SkUQfPtAFTeZ_iq0kQM72ZajsM0eMvrOSsyiaMJjGUKw>
 <xmx:q_JlZSUQNjGYhOy9tlgvmJdLy_NegXVHsmUwoH6UalFvLGr2I7hw_Q>
Feedback-ID: i1cc947c0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 28 Nov 2023 09:01:14 -0500 (EST)
Message-ID: <de20185e-26ee-40ec-bce0-7f94fa52f8e8@skym.fi>
Date: Tue, 28 Nov 2023 16:01:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Pang <ipman@amazon.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
 <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
 <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
 <03c9e8a4-5adc-4293-a720-fe4342ed723b@app.fastmail.com>
 <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
In-Reply-To: <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1701180075; x=1701266475; bh=6vF59PxESXUjV9xUIONgSBrgXrMurptqSOj
 leVxnrMY=; b=hkKHtTYAkE6b70DBAEnPDw4L3VDRuhOeTHqIZAFH+Yu4F4YqvRi
 bjNq1PKCeA4KHG6e9jnPcfs8ytnzacucgbzzFBwUVmU5bVWP5LytLwcYIF/zbpEf
 tWh8zcOgk13FkngVBaV6ofp9qv06ytEf8mswITl64V/k8oQX5cqGD7u1F5Y2wFk4
 HB8EBdzsm3lZvChgYkDFAGS6G4ZComIMGFkQS++/Zrk1gooWMFDy8ExYOY9L8c2H
 PxXlV9hIUM6L1EEBrnZQ6q9jwEVSD/VrUkdXziYNYKBf+YMFxxLWOnu1lLp+ZZYJ
 VCcvJ/022tbYS58SE9+f/NYCYyg/9IZF9kA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1701180075; x=1701266475; bh=6vF59PxESXUjV9xUIONgSBrgXrMurptqSOj
 leVxnrMY=; b=m9q8YAtC+TxldhVKClaxWliv+9Bk4uENSnP4ZsDK5GBFra+myTv
 +Rh/3e8uEB9dWkdaaFjq1vK1ScmcoQSBTXQrZl8+2YpxGTRfGyPXhMw0/2e5wyvb
 YIhnQjPiRqpEffYTh8PXJn5TSJ9ATSKt8zcs0I3L+dgps48A1zM8v621GFUSeZpO
 adE33L8/r8cBHW7UDOWaiS10FT2raIDWek5KIyhSpByqSV7csb3N+e8YyFIvvroR
 R4oe/MWfyc9K/3c+dM7Fx7aokV8wnfPx38t3L7qWeWv08/dJOQbpkQ5+CUOQVdM0
 jjZWAgf8W1z4h69y8lFaX2efKkhgkMPV75g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm2 header.b=hkKHtTYA; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=m9q8YAtC
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
Cc: Jordan Crouse <jorcrous@amazon.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMjgvMjMgMDQ6MjAsIEl2YW4gUGFuZyB3cm90ZToKPiBPbiBXZWQsIE9jdCAxOCwgMjAy
MyBhdCAwOTo1MDozNVBNICswMzAwLCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6Cj4+IE9uIFR1
ZSwgT2N0IDEwLCAyMDIzLCBhdCAwMzozOSwgU2t5bGVyIE3DpG50eXNhYXJpIHdyb3RlOgo+Pj4g
T24gVHVlLCBPY3QgMTAsIDIwMjMsIGF0IDAyOjUwLCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6
Cj4+Pj4gT24gTW9uLCBPY3QgOSwgMjAyMywgYXQgMTg6MzMsIEplc3NlIEJyYW5kZWJ1cmcgd3Jv
dGU6Cj4+Pj4+IE9uIDEwLzQvMjAyMyAxMDowOCBBTSwgU2t5bGVyIE3DpG50eXNhYXJpIHdyb3Rl
Ogo+Pj4+Pj4+PiBIaSB0aGVyZSwKPj4+Pj4+Pj4KPj4+Pj4+Pj4gSXQgc2VlbXMgdGhhdCBmb3Ig
cmVhc29ucyB1bmtub3duIHRvIG1lLCBteSBJbnRlbCBYNTMzIGJhc2VkIDEwRyBTRlArCj4+Pj4+
Pj4+IGRvZXNuJ3Qgd2FudCB0byB3b3JrIHdpdGgga2VybmVsIDYuMS41NSBpbiBWeU9TIDEuNCBu
b3IgRGViaWFuIDEyIGJ1dAo+Pj4+Pj4+PiBpdCBkb2VzIGluIE9QTnNlbnNlIHdoaWNoIGlzIGJh
c2VkIG9uIEZyZWVCU0QgMTMuMi4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSG93IHdvdWxkIEkgZ28gYWJv
dXQgZGVidWdnaW5nIHRoaXMgcHJvcGVybHk/IEJvdGggc2lkZXMgc2VlIGxpZ2h0LAo+Pj4+Pj4+
PiBidXQgbm8gbGluayB1bmxlc3MgSSdtIHVzaW5nIEZyZWVCU0QuCj4+Pj4+PiBodHRwczovL2Zv
cnVtLnZ5b3MuaW8vdC8xMGctc2ZwLXRyb3VibGUtd2l0aC1saW5raW5nLWludGVsLXg1NTMvMTIy
NTMvMTE/dT1zYW1pcDUzNwo+Pj4+Pgo+Pj4+PiBIaSBTa3lsZXIsCj4+Pj4+Cj4+Pj4+IFJlc3Bv
bnNlIGZyb20gSW50ZWwgdGVhbToKPj4+Pj4KPj4+Pj4gSW4gdGhlIGV0aHRvb2wgLW0gb3V0cHV0
IHBhc3RlZCBJIHNlZSBUWCBhbmQgUlggb3B0aWNhbCBwb3dlciBpcyBmaW5lLgo+Pj4+PiBDb3Vs
ZCB5b3UgcmVxdWVzdCBmYXVsdCBzdGF0dXMgb24gYm90aCBzaWRlcz8gSnVzdCB3YW50IHRvIGNo
ZWNrIGlmIGxpbmsKPj4+Pj4gaXMgZG93biBiZWNhdXNlIHdlIGFyZSBhdCBsb2NhbC1mYXVsdCBv
ciBsaW5rIHBhcnRuZXIgaXMgYXQgbG9jYWwtZmF1bHQuCj4+Pj4+Cj4+Pj4+IHJtbW9kIGl4Z2Jl
Cj4+Pj4+IG1vZHByb2JlIGl4Z2JlCj4+Pj4+IGV0aHRvb2wgLVMgZXRoMCB8IGdyZXAgZmF1bHQK
Pj4+Pj4KPj4+Pj4gU2luY2UgaXQgaXMgMTBHLCBpZiBvdXIgc2lkZSBUWCBpcyBPTiAocG93ZXIg
bGV2ZWwgc2F5cyBpdCBpcykgdGhlbiB3ZQo+Pj4+PiBzaG91bGQgZXhwZWN0IGxpbmsgcGFydG5l
ciBSWCB0byBiZSBsb2NrZWQgc28gY2Fubm90IGJlIGF0IExvY2FsIEZhdWx0Lgo+Pj4+Pgo+Pj4+
PiBTa3lsZXIsIHBsZWFzZSBnYXRoZXIgdGhhdCBldGh0b29sIC1TIGRhdGEgZm9yIHVzLgo+Pj4+
Pgo+Pj4+PiBKZXNzZQo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+Cj4+Pj4gSGkgSmVzc2Us
Cj4+Pj4KPj4+PiBBcyB0aGUgb3RoZXIgc2lkZSBvZiB0aGUgbGluayBpcyBhbiBKdW5pcGVyLCBJ
J20gbm90IHF1aXRlIHN1cmUgaG93IEkKPj4+PiB3b3VsZCBnYXRoZXIgdGhlIHNhbWUgZGF0YSBm
cm9tIGl0IGFzIGl0IGRvZXNuJ3QgaGF2ZSBldGh0b29sPwo+Pj4+Cj4+Pj4gSSBoYXZlIGFsc28g
c29tZXdoYXQgZ2l2ZW4gdXAgaG9wZSBvbiBpdCB3b3JraW5nIG9uIFZ5T1MgYW5kIGluc3RlYWQg
SQo+Pj4+IGFtIHVzaW5nIE9QTnNlbnNlIGZvciB0aGUgbW9tZW50IGJ1dCBJIHN0aWxsIGhhdmUg
VnlPUyBpbnN0YWxsZWQgYXMKPj4+PiB3ZWxsLgo+Pj4+Cj4+Pj4gU2t5bGVyCj4+Pgo+Pj4gSGkg
SmVzc2UsCj4+Pgo+Pj4gSSBkaWQgdmVyaWZ5IHRoYXQgdGhlIGdyZXAgZG9lc24ndCB5aWVsZCBh
bnkgcmVzdWx0cyBvbiB0aGUgVnlPUyBib3gKPj4+IGFuZCBhbGwgb2YgdGhlIGRhdGEgcmV0dXJu
ZWQgaGFzIGFuIHZhbHVlIG9mIDAuIFBhc3RlIG9mIHdoaWNoIGlzIGhlcmU6Cj4+PiBodHRwczov
L3Aua2Fwc2kuZmkvPzRhODJjZWRiNGY0ODAxZWMjRGNFZ0ZNRks3Y0gxM0VxeXBzWTRaYUhTNXRh
ZUExelhldm1tVFNWVzNQOXgKPj4+Cj4+PiBJIHJlYWxseSB0aGluayBzb21ldGhpbmcgd2VpcmQg
aXMgZ29pbmcgb24gd2l0aCB0aGUgZHJpdmVyIGluIExpbnV4IGFzCj4+PiBvdGhlcndpc2UgdGhl
IHNhbWUgZXhhY3QgY29uZmlnIG9uIEp1bmlwZXIgd291bGRuJ3Qgd29yayB0aGVyZSBlaXRoZXIu
Cj4+PiBUaGUgVnlPUyBib3ggYWxzbyBzYXlzIHRoYXQgaXQncyB1bmFibGUgdG8gbW9kaWZ5IGF1
dG9uZWcgc2V0dGluZ3MsIG9yCj4+PiBzcGVlZC9kdXBsZXggb2YgdGhlIGludGVyZmFjZS4KPj4+
Cj4+PiBTa3lsZXIKPj4KPj4gSXQgaGFzIGJlZW4gIHZlcmlmaWVkIHRoYXQgdGhlIGRyaXZlciBp
biBrZXJuZWwgdmVyc2lvbiA1LjQuMjU1IHNlZW1zIHRvIHdvcmsgYWthIDEuMyBWeU9TLiAgUG9z
dCBmcm9tIGFub3RoZXIgdXNlciBpbiB0aGUgc2FtZSB0aHJlYWQgYWJvdXQgaXQ6IGh0dHBzOi8v
Zm9ydW0udnlvcy5pby90LzEwZy1zZnAtdHJvdWJsZS13aXRoLWxpbmtpbmctaW50ZWwteDU1My8x
MjI1My80Ngo+Pgo+PiBJIGhhdmUgYWxzbyB2ZXJpZmllZCB0aGF0IHRoZSBvdXQtb2YtdHJlZSBp
eGdiZSBkcml2ZXIgZG9lcyB3b3JrLCBidXQgaW4ta2VybmVsIGRvZXNuJ3QgaW4ga2VybmVsIDYu
MS41OC4KPj4KPj4gUGxlYXNlIHNoYXJlIHRoZXNlIGZpbmRpbmdzIHdpdGggdGhlIGNvcnJlY3Qg
SW50ZWwgdGVhbSBzbyB0aGF0IHRoaXMgY291bGQgYmUgZml4ZWQuCj4+Cj4+IC0gU2t5bGVyCj4+
Cj4gCj4gSGkgU2t5bGVyLCBKZXNzZSwKPiAKPiBJIGNhbWUgYWNyb3NzIHRoaXMgdmVyeSBzaW1p
bGFyIGlzc3VlIHdoZW4gdXBncmFkaW5nIG91ciBuZXR3b3JraW5nIGdlYXIKPiBmcm9tIGtlcm5l
bCA1LjE1IHRvIDYuMS4gT3VyIDEwRyBsaW5rIGZhaWxzIHdpdGggdGhlIGluLXRyZWUgNi4xIGl4
Z2JlCj4gZHJpdmVyIGJ1dCB3b3JrcyB3aXRoIHRoZSBvdXQtb2YtdHJlZSA1LnggdmVyc2lvbnMu
IEkgZm91bmQgdGhhdCBteSBsaW5rCj4gaXNzdWVzIHdlcmUgcmVsYXRlZCB0byB0aGlzIGNvbW1p
dDoKPiAKPiBpeGdiZTogTWFudWFsIEFOLTM3IGZvciB0cm91Ymxlc29tZSBsaW5rIHBhcnRuZXJz
IGZvciBYNTUwIFNGSQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3N0YWJsZS9saW51eC5naXQvY29tbWl0Lz9oPXY2LjEuNjMmaWQ9NTY1NzM2MDQ4YmQ1
Zjk4ODg5OTA1Njk5OTNjNmI2YmZkZjZkY2I2ZAo+IAo+IFNwZWNpZmljYWxseSwgb3VyIDEwRyBs
aW5rIHdvcmtzIHdoZW4gYm90aCBzaWRlcyBvZiB0aGUgZmliZXIgYXJlCj4gcnVubmluZyB0aGUg
aW4tdHJlZSA2LjEgaXhnYmUgZHJpdmVyIHdpdGggdGhpcyBhdXRvbmVnb3RpYXRpb24gY2hhbmdl
Lgo+IE91ciBsaW5rIGFsc28gd29ya3Mgd2hlbiBib3RoIHNpZGVzIGFyZSBydW5uaW5nIHRoZSA1
LnggaXhnYmUgZHJpdmVycwo+IHdpdGhvdXQgdGhpcyBjb21taXQuIEl0IGZhaWxzLCBob3dldmVy
LCB3aGVuIG9ubHkgb25lIHNpZGUgaGFzIHRoaXMKPiBjb21taXQuIE91ciBjdXJyZW50IHNldHVw
IGNvbXBpbGVzIHRoZSBpbi10cmVlIDYuMSBpeGdiZSBkcml2ZXIgd2l0aAo+IHRoaXMgY29tbWl0
IHJldmVydGVkLCBmb3IgY29tcGF0aWJpbGl0eSB3aXRoIG91ciB2YXJ5aW5nIGhhcmR3YXJlLgo+
IAo+IEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpZiBhbnlvbmUgY2FuIGNyb3NzLWNoZWNrIG15IGNs
YWltIHdpdGggdGhlaXIKPiBoYXJkd2FyZSBhcyB3ZWxsLiBBbHNvLCB3b3VsZCBhbnlvbmUgYmUg
YWJsZSB0byBoZWxwIGV4cGxhaW4gd2hhdCBzb21lCj4gb2YgdGhvc2UgcmVnaXN0ZXJzIGFuZCBy
ZWdfdmFsIGJlaW5nIHdyaXR0ZW4gYXJlIGRvaW5nPwo+IAo+IC1JdmFuCj4gCgoKSGkgSXZhbiwK
Ckl0IHNlZW1zIHRoYXQgZm9yIHdoYXRldmVyIHJlYXNvbiwgeW91ciByZXBseSBkb2VzIG5vdCBh
cHBlYXIgb24gdGhlIGxpc3RzPwoKUC5TIFNvcnJ5IGZvciB0aGUgZG91YmxlIHBvc3RpbmcgaWYg
eW91IHNlZSB0aGlzIHR3aWNlLiBJdCB3YXNuJ3Qgc2VudCAKdG8gSXZhbiBjb3JyZWN0bHkgdGhl
IGZpcnN0IHRyeS4KCi0gU2t5bGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
