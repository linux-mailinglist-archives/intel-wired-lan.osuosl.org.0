Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2BD68867E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 19:30:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AFA741CF3;
	Thu,  2 Feb 2023 18:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AFA741CF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675362632;
	bh=3RcUM15/ksAvoKhrn5eudOES/x0Mzy/MZpHvKLTRLHA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zK/rL5ePSW7/VMH+6oLePS8nDWdLF0eoviImJtQaYg9qrm+uVKM1L0pWMEqjBPcae
	 hyz/+RByy45NWsLRmveuKOooeTaKG5Ps6NO5+nMPffo/moj3pBtD/xXGIRsxXeLuHA
	 nhSNKSenRxEILKJbYOmuKw5qK1R9UjMuw8z9rBeqmQSJkOzKdUaz9bYVhZroHna/JN
	 vQ1Qbd6WmJsyYaP+Cu1tYBq9ZBned2BTnQ+Flvuhnf2k2UrrWBHyWBIYs5b9dwHlt5
	 FuGDZPg5QCWQqL+vAsxdF3scjBtIyzQ+E/TEbR1atBKoGVoH0DuBOrfy5c6C9jpVIJ
	 vWfCrLVLDkSzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0swlISENv7e; Thu,  2 Feb 2023 18:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC24841CDA;
	Thu,  2 Feb 2023 18:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC24841CDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B43C01BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 17:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C147611CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 17:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C147611CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLGadlEX-77a for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 17:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFEEA611E3
Received: from mail.as397444.net (mail.as397444.net [69.59.18.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFEEA611E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 17:34:10 +0000 (UTC)
Received: by mail.as397444.net with esmtpsa (TLS1.3) (Exim)
 (envelope-from <ntp-lists@mattcorallo.com>) id 1pNdTI-007EJt-26;
 Thu, 02 Feb 2023 17:34:04 +0000
Message-ID: <9ae5285e-30d3-a49c-c67d-3cec61a1fb87@bluematt.me>
Date: Thu, 2 Feb 2023 09:34:04 -0800
MIME-Version: 1.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Miroslav Lichvar <mlichvar@redhat.com>, intel-wired-lan@lists.osuosl.org
References: <20230201143643.2624559-1-mlichvar@redhat.com>
 <7654b674-1589-8e1f-338e-4556dc716f48@intel.com>
From: Matt Corallo <ntp-lists@mattcorallo.com>
In-Reply-To: <7654b674-1589-8e1f-338e-4556dc716f48@intel.com>
X-DKIM-Note: Keys used to sign are likely public at
 https://as397444.net/dkim/mattcorallo.com
X-DKIM-Note: For more info, see https://as397444.net/dkim/
X-Mailman-Approved-At: Thu, 02 Feb 2023 18:30:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=mattcorallo.com; s=1675357262; h=In-Reply-To:From:References:To:Subject:
 From:Subject:To:Cc:Cc:Reply-To;
 bh=/2oe+r8KRrU9MqB5VML4mUl80AW0cM2iALpe1whBPVg=; b=3u+meQNK2UtkP39RtKVl8n7TvI
 YaGzDFdo/ijekm7jArU4i6OXNpp8z65q5CbikcAwauYsfeX9s8cvD6w966sdtDMygqATjO3/v33qK
 Ak+K7F58qZQJzlgqSbl2Zd8pbM9HNau4hu6Jehye2Eyr2HB27zlo5mj710syKx0jdsOQFkZYGEUol
 yMVaW38gcjVezUyDFLa7t6aAFZvoNarOTdhjhVl6T+mCmY0ApYjoWbnQEd7JH4ZMHwJAApJAw28Qi
 x1xsoABZmsHxXpge3ykmKcpqhbhE/tAFZ5oRWHtZg/J7fU0gJ8IVJaw2DcLOaqxnDf0VRuH/hFJ9T
 UG/eVjjw==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=clients.mail.as397444.net; s=1675357263; h=In-Reply-To:From:References:To:
 Subject:From:Subject:To:Cc:Cc:Reply-To;
 bh=/2oe+r8KRrU9MqB5VML4mUl80AW0cM2iALpe1whBPVg=; b=IcFiZ398/XOSyjyH5OpILl8yfG
 tLmmGobG3qIyX1IyYrZ00zdIiNTelfA/cvcUPsRaJO+pdX/xNksscmPofctvI9h3P5w/1FGx+YHd1
 QJucta7jbnIlUk/gFmSmD3VoDuXzJzWYMVcu4+HbOMDRRHK4ZNURDX+7O58Ze2D+W2CDGPOfLcBvx
 YxI45512BAlZbtVB4HznkuwdTehJZQ9fHCCsIjsV1+X/OgXIdigt4gGRa3rRXLZzBhEgnN+13ISRT
 fD4n2/sikyEINJEf03fO1HK8GbkYJeR4EzgmQyZkVCB3Fd4zBw36c0rxJLlreLbBuaXzyytuOYrzI
 v6aFrogw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=mattcorallo.com header.i=@mattcorallo.com
 header.a=rsa-sha256 header.s=1675357262 header.b=3u+meQNK; 
 dkim=pass (2048-bit key) header.d=clients.mail.as397444.net
 header.i=@clients.mail.as397444.net header.a=rsa-sha256 header.s=1675357263
 header.b=IcFiZ398
Subject: Re: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and
 output using 3rd and 4th SDP
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyLzIvMjMgOToxMOKAr0FNLCBUb255IE5ndXllbiB3cm90ZToKPiBPbiAyLzEvMjAyMyA2
OjM2IEFNLCBNaXJvc2xhdiBMaWNodmFyIHdyb3RlOgo+PiBGaXggaGFuZGxpbmcgb2YgdGhlIHRz
eW5jIGludGVycnVwdCB0byBjb21wYXJlIHRoZSBwaW4gbnVtYmVyIHdpdGgKPj4gSUdCX05fU0RQ
IGluc3RlYWQgb2YgSUdCX05fRVhUVFMvSUdCX05fUEVST1VUIGFuZCBmaXggdGhlIGluZGV4aW5n
IHRvCj4+IHRoZSBwZXJvdXQgYXJyYXkuCj4+Cj4+IEZpeGVzOiBjZjk5YzFkZDdiNzcgKCJpZ2I6
IG1vdmUgUEVST1VUIGFuZCBFWFRUUyBpc3IgbG9naWMgdG8gc2VwYXJhdGUgZnVuY3Rpb25zIikK
Pj4gUmVwb3J0ZWQtYnk6IE1hdHQgQ29yYWxsbyA8bnRwLWxpc3RzQG1hdHRjb3JhbGxvLmNvbT4K
PiAKPiBUaGlzIGlzIG1hcmtlZCBmb3IgbmV0LW5leHQgYnV0IHdpdGggdGhlIGZpeGVzIGFuZCBy
ZXBvcnRlZC1ieSwgc2hvdWxkIHRoaXMgYmUgbmV0Pwo+IAo+IFRoYW5rcywKPiBUb255CgpUaGlz
IGF0IGxlYXN0IGZpeGVzIGEgYnVnIEkgc2F3IG9uIDYuMSwgc28gaWRlYWxseSBpdCBkb2VzLCBh
bmQgZ29lcyBpbnRvIHN0YWJsZS4KClRoYW5rcywKTWF0dApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
