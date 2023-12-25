Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C478781DF8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Dec 2023 10:38:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5025440988;
	Mon, 25 Dec 2023 09:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5025440988
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703497086;
	bh=jf1xl4VImNtlVFvQGn2eHkPe+b20B54Lj/0sVDBEOSg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fXXRIRL4aRriQsmxPV5+NBb8fYTyU+TL6UTSe+6fRdDkBTOSatHU/1fYpKVBJDON7
	 kTJyifSHKEvFIcT5joXm9AlN1+SDYvfnn9qN3DqMlrGioEQG9iagtEfEY3I5Cn9lhO
	 cIrCN3gbtdQYyl4uApNSUv7hvlhgEpcbl72h09sW+cR5CidCYVrFtIXvgpJr5tXkyJ
	 ++KWqwfw7IDvVfWz9X7Wg3pMojxohKL2qNp46FqVuD2j4j5Fb7t61zbsUUtGmKjuyI
	 btwWYceL5M92OA0vsc8CmVACCydj56tTpwhH1KVYaAFsMdQHzR8YGVIQ9sBDzXCFln
	 cb0Na4XTlUAbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R283uGUNldpV; Mon, 25 Dec 2023 09:38:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C27C4063C;
	Mon, 25 Dec 2023 09:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C27C4063C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E32FC1BF573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B979060DB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:37:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B979060DB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQVQIvTJldLf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Dec 2023 09:37:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2535560C14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:37:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2535560C14
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6B31060C0A;
 Mon, 25 Dec 2023 09:37:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90587C433C7;
 Mon, 25 Dec 2023 09:37:56 +0000 (UTC)
Date: Mon, 25 Dec 2023 09:37:53 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20231225093753.GG5962@kernel.org>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-15-jesse.brandeburg@intel.com>
 <CAH-L+nPi1yCP+18Z=UJj7E-jeV3W8aWnNXP49SDTVXWEErBqWg@mail.gmail.com>
 <d5cc134a-b8ed-4d4b-96fa-de096c41ada0@intel.com>
 <5a163d97-2989-e5f7-e6ba-6dd346ab4236@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a163d97-2989-e5f7-e6ba-6dd346ab4236@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1703497078;
 bh=VT7eZE4fEAOESZo3WkZqdZMl9CF7e53SYWXugFW5nIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n/o8AXlmnkWXelB/t/qll391r0Lb8ef13A895t4xlqLxNApu5PJNgk1k1XLjlwJrY
 +FQjdGoVfFZR38XAKXv4zlFU5ciTfNSvSNaIY2XtjaPGfqe4dRFadlg6EwcsbpXx9M
 uuFySpvSDIxt0/Mh8IYvK/kx1c/ea9U4hw0Bdadx1oBpEt4OPB4oy3Hm8xzq1aQ/TX
 2QUWS3KqioDISGvsrh0ALwDCKqrvUfRiJ+gvtQh+6clvIR1dIFvFXobnRllkoHACni
 adZNZh10Bo4kQXkLwzSdzF/eqjOrHvyjRDPLsC6WgMuXUiULt1SDm6mFTqZvfXhBjb
 skOQnqCUdYSzQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n/o8AXlm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMDg6MTY6MzhBTSArMDEwMCwgUHJ6ZW1layBLaXRzemVs
IHdyb3RlOgo+IE9uIDEyLzEzLzIzIDE5OjI3LCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+ID4g
UGxlYXNlIGRvbid0IHVzZSBIVE1MIGVtYWlsLCB5b3VyIHJlcGx5IHdhcyBsaWtlbHkgZHJvcHBl
ZCBieSBtb3N0IGxpc3RzCj4gPiB0aGF0IGZpbHRlciBIVE1MLgo+ID4gCj4gPiBPbiAxMi8xMi8y
MDIzIDg6MDYgUE0sIEthbGVzaCBBbmFra3VyIFB1cmF5aWwgd3JvdGU6Cj4gPiA+ICAgICAgLcKg
IMKgIMKgIMKgY2hhbmdlX3R5cGUgPSBGSUVMRF9HRVQoSUNFX0FRX0xMRFBfTUlCX1RZUEVfTSzC
oCBtaWItPnR5cGUpOwo+ID4gPiAgICAgICvCoCDCoCDCoCDCoGNoYW5nZV90eXBlID0gRklFTERf
R0VUKElDRV9BUV9MTERQX01JQl9UWVBFX00sIG1pYi0+dHlwZSk7Cj4gPiA+IAo+ID4gPiBbS2Fs
ZXNoXTogSSBkaWQgbm90IGdldCB3aGF0IGV4YWN0bHkgY2hhbmdlZCBoZXJlPyBJcyB0aGF0IHlv
dSBqdXN0Cj4gPiA+IHJlbW92ZWQgb25lIGV4dHJhIHNwYWNlIGJlZm9yZSBtaWItPnR5cGU/Cj4g
PiAKPiA+IFllcywgdGhlcmUgd2FzIGEgd2hpdGVzcGFjZSBjaGFuZ2UgbWlzc2VkIGluIHRoZSBH
RVQgc2VyaWVzLiBJIGhhZAo+ID4gY2F1Z2h0IGl0IG9ubHkgaGVyZS4gSWYgeW91IGZlZWwgSSBu
ZWVkIHRvIEkgY2FuIHJlc2VuZCB0byBhZGQgYSBjb21tZW50Cj4gPiB0byB0aGUgY29tbWl0IG1l
c3NhZ2UgdGhhdCB0aGlzIHdhcyBhZGRlZCBoZXJlLgo+ID4gCj4gPiAKPiAKPiBJIGd1ZXNzIHRo
YXQgTk9UIHNlbmRpbmcgbmV4dCByZXZpc2lvbiBpcyBvdXIgb25seSBjaGFuY2UgdG8gZml4IHRo
aXMKPiBwYXJ0aWN1bGFyIHdoaXRlIHNwYWNlIGVycm9yIDspCgpJdCB3b3VsZCBiZSBuaWNlIGlm
IHRoZXJlIHdhcyBhIG1lY2hhbmlzbSB0byBmaXggc3VjaCBwcm9ibGVtcy4KClJlZ2FyZGxlc3Mg
b2YgdGhpcyBzaWRlIHRvcGljLCB0aGlzIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUsCndpdGggb3Ig
d2l0aG91dCB0aGUgZXh0cmEgc3BhY2UgcmVtb3ZlZC4KClJldmlld2VkLWJ5OiBTaW1vbiBIb3Jt
YW4gPGhvcm1zQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
