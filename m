Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2163F6F0A6D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 19:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9ED283F85;
	Thu, 27 Apr 2023 17:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9ED283F85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682614875;
	bh=CFCcAPIa4OWEXDzDR4n/N/GOUAlDCXEnaVbdqnplD28=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gIH5zHtYx5cc3/n4iPVh8HusyW3MsS6w8B6Djr32dLpQlYgqV5hfSCCQnP1+C8IiG
	 hUiwspt4cTKnYAQWL1xqFBeeCqqX6YWxeh1Il1sIPlF/ebRg1mzPk/be5G7FGA/a0v
	 eQGjEIq+O5WcFvxLAcklvOVLNOOQCJ7+BJ9+fpRLi1zDtSTE15vG7KBVdWUWsvHOEo
	 EbBNPS+2a/X+C0VMsXzNbwg6Qse7k29SAg+V4uehHEVdx1Ra5bd87LofEjdhePlgR3
	 3djDOJDZYJZcTlmPAzYwq70mEcawtNYN33ApXs1JtCldxY3BsZk6OalyPgN1B0UtXU
	 2RExHakk5tNzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l5bgmvpcfHCY; Thu, 27 Apr 2023 17:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A487183F57;
	Thu, 27 Apr 2023 17:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A487183F57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7EB1BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 17:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75E24401A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 17:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75E24401A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntnNPdOBXDR6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 17:01:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 876AB40120
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 876AB40120
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 17:01:07 +0000 (UTC)
Received: from sslproxy02.your-server.de ([78.47.166.47])
 by www62.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.94.2) (envelope-from <daniel@iogearbox.net>)
 id 1ps4z6-000JZO-Kc; Thu, 27 Apr 2023 19:00:44 +0200
Received: from [85.1.206.226] (helo=linux.home)
 by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1ps4z5-000QuO-Us; Thu, 27 Apr 2023 19:00:43 +0200
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, davem@davemloft.net,
 bpf@vger.kernel.org
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
 <644544b3206f0_19af02085e@john.notmuch>
 <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
 <6446d5af80e06_338f220820@john.notmuch>
 <e6bc2340-9cb5-def1-b347-af25ce2f8225@redhat.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <86517b44-b998-a4ac-da13-1f30d5f69975@iogearbox.net>
Date: Thu, 27 Apr 2023 19:00:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <e6bc2340-9cb5-def1-b347-af25ce2f8225@redhat.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.8/26889/Thu Apr 27 09:25:48 2023)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=iogearbox.net; s=default2302; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
 bh=VY35CR0N+ZDTgEcRw5IUuyTLgtNiCtDZ/FIVsL1y6PM=; b=IyEXV1IrvDNYBhMp8VbJm9h2sY
 vuqxYwjjCDOs+hrN0dXCufM/8KHB6lZowlIwIoueLR4nfON1ikjtCcYmSrzAm2t6CAcl/xxrERr2U
 iMhnjGnFYxmXGQE4yueCE4CLLj1/7eWDS8BhNizWjGdqnNY20UPcr82hRYvHw2nkBAJ/3WldFOnaH
 rpaxw75v3rZE/MR0PccJPokoNiNtpgNDXHv0q4AiY8gnKMLwb/aSys3yYuGrLig0lzGTfKIw5vcWw
 aeLfssMRAxsoHIgozihQUDkL8S2OI4EkAhBcAVRfmfBHCOh0aYc65jCQl7D5xNE82QyMSOjKXEM/K
 Z+haDrVQ==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net
 header.a=rsa-sha256 header.s=default2302 header.b=IyEXV1Ir
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 1/5] igc: enable and fix
 RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, larysa.zaremba@intel.com,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>, ast@kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, brouer@redhat.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 hawk@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8yNS8yMyAxMDo0MyBBTSwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBPbiAy
NC8wNC8yMDIzIDIxLjE3LCBKb2huIEZhc3RhYmVuZCB3cm90ZToKPj4+PiBKdXN0IGN1cmlvdXMg
d2h5IG5vdCBjb3B5IHRoZSBsb2dpYyBmcm9tIHRoZSBvdGhlciBkcml2ZXIgZm1zMTBrLCBpY2Us
IGVjdC4KPj4+Pgo+Pj4+IMKgwqDCoMKgc2tiX3NldF9oYXNoKHNrYiwgbGUzMl90b19jcHUocnhf
ZGVzYy0+d2IubG93ZXIuaGlfZHdvcmQucnNzKSwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKElYR0JFX1JTU19MNF9UWVBFU19NQVNLICYgKDF1bCA8PCByc3NfdHlwZSkpID8KPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUEtUX0hBU0hfVFlQRV9MNCA6IFBLVF9IQVNIX1RZUEVf
TDMpOwo+Pj4gRGV0YWlsOiBUaGlzIGNvZGUgbWlzLWNhdGVnb3JpemUgKGUuZy4gQVJQKSBQS1Rf
SEFTSF9UWVBFX0wyIGFzCj4+PiBQS1RfSEFTSF9UWVBFX0wzLCBidXQgYXMgY29yZSByZWR1Y2Vz
IHRoaXMgZnVydGhlciB0byBvbmUgU0tCIGJpdCwgaXQKPj4+IGRvZXNuJ3QgcmVhbGx5IG1hdHRl
ci4KPj4+Cj4+Pj4gYXZvaWRpbmcgdGhlIHRhYmxlIGxvZ2ljLiBEbyB0aGUgZHJpdmVyIGZvbGtz
IGNhcmU/Cj4+PiBUaGUgZGVmaW5lIElYR0JFX1JTU19MNF9UWVBFU19NQVNLIGJlY29tZXMgdGhl
ICJ0YWJsZSIgbG9naWMgYXMgYSAxLWJpdAo+Pj4gdHJ1ZS9mYWxzZSB0YWJsZS7CoCBJdCBpcyBh
IG1vcmUgY29tcGFjdCB0YWJsZSwgbGV0IG1lIGtub3cgaWYgdGhpcyBpcwo+Pj4gcHJlZmVycmVk
Lgo+Pj4KPj4+IFllcywgaXQgaXMgcmVhbGx5IHVwdG8gZHJpdmVyIG1haW50YWluZXIgcGVvcGxl
IHRvIGRlY2lkZSwgd2hhdCBjb2RlIGlzCj4+PiBwcmVmZXJyZWQgPwo+ICA+Cj4+IFllYWggZG9l
c24ndCBtYXR0ZXIgbXVjaCB0byBtZSBlaXRoZXIgd2F5LiBJIHdhcyBqdXN0IGxvb2tpbmcgYXQg
Y29kZQo+PiBjb21wYXJlZCB0byBpY2UgZHJpdmVyIHdoaWxlIHJldmlld2luZy4KPiAKPiBNeSBw
cmVmZXJlbmNlIGlzIHRvIGFwcGx5IHRoaXMgcGF0Y2hzZXQuIFdlL0kgY2FuIGVhc2lseSBmb2xs
b3d1cCBhbmQKPiBjaGFuZ2UgdGhpcyB0byB1c2UgdGhlIG1vcmUgY29tcGFjdCBhcHByb2FjaCBs
YXRlciAoaWYgc29tZW9uZSBwcmVmZXJzKS4KCkNvbnNpc3RlbmN5IG1pZ2h0IGhlbHAgaW1vIGFu
ZCB3b3VsZCBhdm9pZCBxdWVzdGlvbnMvY29uZnVzaW9uIG9uIC93aHkvCmRvaW5nIGl0IGRpZmZl
cmVudGx5IGZvciBpZ2MgdnMgc29tZSBvZiB0aGUgb3RoZXJzLgoKPiBJIGtub3cgbmV0LW5leHQg
aXMgImNsb3NlZCIsIGJ1dCB0aGlzIHBhdGNoc2V0IHdhcyBwb3N0ZWQgcHJpb3IgdG8gdGhlCj4g
Y2xvc2UuwqAgUGx1cywgYSBudW1iZXIgb2YgY29tcGFuaWVzIGFyZSB3YWl0aW5nIGZvciB0aGUg
WERQLWhpbnQgZm9yIEhXCj4gUlggdGltZXN0YW1wLsKgIFRoZSBzdXBwb3J0IGZvciBkcml2ZXIg
c3RtbWFjIGlzIGFscmVhZHkgaW4gbmV0LW5leHQKPiAoY29tbWl0IGUzZjljM2UzNDg0MCAoIm5l
dDogc3RtbWFjOiBhZGQgUnggSFdUUyBtZXRhZGF0YSB0byBYRFAgcmVjZWl2ZQo+IHBrdCIpKS4g
VGh1cywgaXQgd291bGQgYmUgYSBoZWxwIGlmIGJvdGggaWdjK3N0bW1hYyBjaGFuZ2VzIGxhbmQg
aW4gc2FtZQo+IGtlcm5lbCB2ZXJzaW9uLCBhcyBib3RoIGRyaXZlcnMgYXJlIGJlaW5nIGV2YWx1
YXRlZCBieSB0aGVzZSBjb21wYW5pZXMuCgpHaXZlbiBtZXJnZSB3aW5kb3cgaXMgb3BlbiBub3cg
YW5kIG5ldC1uZXh0IGNsb3NlZCwgaXQncyB0b28gbGF0ZSB0byBsYW5kCih1bmxlc3MgRGF2ZS9K
YWt1YiB0aGlua3Mgb3RoZXJ3aXNlIGdpdmVuIGl0IHRvdWNoZXMgYWxzbyBkcml2ZXIgYml0cyku
CkkndmUgYXBwbGllZCB0aGUgc2VyaWVzIHRvIGJwZi1uZXh0IHJpZ2h0IG5vdy4KClRoYW5rcywK
RGFuaWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
