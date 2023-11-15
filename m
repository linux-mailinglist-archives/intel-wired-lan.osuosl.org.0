Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9DD7EC850
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 17:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4996841EE4;
	Wed, 15 Nov 2023 16:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4996841EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700065206;
	bh=UaDCI0eC5J7bZho3YBUJtOyiqdTtVmQYBLZfsJvp9mc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vmfMa+UbQV50kCz1AeiLVmVO1l9jXJVJ8JM1LlTk/qWru4hWoSy3FHByglHKD1fz2
	 bKEXPnpgEuPspdxlz9yzPGlcyejkVOySuuRSCL6LiV5IGo4P1yy4fNuIYaSqZGG0Ic
	 jQMb7Eil8HPHdg/WpLdFsmQZghyyVAytat0gN0lb41cZKzzLWRuTs4nwEZda2fRqlZ
	 CrCT7RV2RTD7YXTNluMymoaiUh6CBytvt+Oh3vMPw3ri+clm2LeMV3318dKE53Ocb0
	 wrJprv9Wt3jXufpQfCCtbezctBaUQNt+H7B4tRjF8t5gNg/FDiVqC4LvFFx1Zv+jti
	 gJQPuTX1pQwsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lv7b-PZ5PanP; Wed, 15 Nov 2023 16:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E44FF410E6;
	Wed, 15 Nov 2023 16:20:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E44FF410E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2361BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 03:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 039A5415CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 03:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 039A5415CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJsoN2tqFvGA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 03:11:02 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16245415BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 03:11:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16245415BA
X-UUID: df0923009789443b92081bd86a10a190-20231115
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32, REQID:c51b2fcb-1af7-4c37-a47a-515b1231aefe, IP:5,
 U
 RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-5
X-CID-INFO: VERSION:1.1.32, REQID:c51b2fcb-1af7-4c37-a47a-515b1231aefe, IP:5,
 URL
 :0,TC:0,Content:-5,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:-5
X-CID-META: VersionHash:5f78ec9, CLOUDID:8db4a972-1bd3-4f48-b671-ada88705968c,
 B
 ulkID:231115111019276MBX4M,BulkQuantity:0,Recheck:0,SF:24|100|17|19|42|101
 |66|102,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:nil,QS:nil,BEC:n
 il,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: df0923009789443b92081bd86a10a190-20231115
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 1716298209; Wed, 15 Nov 2023 11:10:15 +0800
Message-ID: <65077e87-25a6-40dd-a81d-8a6987979b28@kylinos.cn>
Date: Wed, 15 Nov 2023 11:10:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>
References: <20231112110146.3879030-1-chentao@kylinos.cn>
 <20231113093112.GL705326@kernel.org>
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <20231113093112.GL705326@kernel.org>
X-Mailman-Approved-At: Wed, 15 Nov 2023 16:19:59 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgU2ltb24sClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRha2luZyB0aGUgdmFsdWFibGUgdGlt
ZSB0byBwb2ludCBvdXQgbXkgCnByb2JsZW1zIGFuZCBzaG9ydGNvbWluZ3MgaW4gZGV0YWlsLgpJ
dCdzIG15ICBiYWQuSSBtaXNpbnRlcnByZXRlZCAnSUZBTElBU1onIGluICdpbmNsdWRlL3VhcGkv
bGludXgvaWYuaCcgYXMgCidJRk5BTVNJWicuIFRoaXMgbGVkIG1lIHRvIHRoaW5rIHRoYXQgJ0lG
TkFNU0laJyBjb3VsZCBiZSB1cCB0byAyNTYuIApTb3JyeSBhZ2FpbiBmb3IgdGhlIHRyb3VibGUu
ClllcywgaXQgaXMgZ29vZCBjb2RlIHRvIGR5bmFtaWNhbGx5IGNhbGN1bGF0ZSB0aGUgc2l6ZSBv
ZiB0aGUgcGFydHMgdGhhdCAKbWFrZSB1cCB0aGUgJ2J1ZmZlcicgYW5kIGFkZCB0aGVtIHVwIHRv
IHRoZSBzaXplIG9mIHRoZSB3aG9sZSAnYnVmZmVyJywgCkkgZ290IGxhenkgYmVjYXVzZSBJIHNh
dyB0aGF0IHRoZSBvdGhlciBwYXJ0cyBoYWQgYSBsb3Qgb2YgZml4ZWQgJ2J1ZmZlciAKc2l6ZScu
IEkgd2lsbCBpbW1lZGlhdGVseSBtb2RpZnkgdGhlIHBhdGNoIGFjY29yZGluZyB0byB5b3VyIGRl
dGFpbGVkIApzdWdnZXN0aW9ucy4KIEZyb20gdGhlIGNvZGUgYW5hbHlzaXMsIHRoaXMgcGxhY2Ug
c2hvdWxkIGhhdmUgYSAnc25wcmludGYgdHJ1bmNhdGlvbicgCnByb2JsZW0sIGJ1dCB0aGUgaW1w
YWN0IG1heSBub3QgYmUgdmVyeSBiaWcsIEkgZm91bmQgdGhlIHBvdGVudGlhbCAKcHJvYmxlbSBk
dXJpbmcgdGhlIGNvbXBpbGF0aW9uIHByb2Nlc3MsIGFmdGVyIGNoYW5naW5nIHRoZSBidWZmZXIg
c2l6ZSwgCnJlY29tcGlsYXRpb24gd2lsbCBub3QgYWxhcm0uCkknbGwgZm9sbG93IHlvdXIgZGV0
YWlsZWQgc3VnZ2VzdGlvbnMgYW5kIHJlbW92ZSB0aGUgJ0ZpeGVzJyB0YWcgYW5kIGFkZCAKJ2l3
bC1uZXh0JyB0byB0aGUgc3ViamVjdC4KVGhhbmsgeW91IGFnYWluIGZvciB5b3VyIHJlcGx5IGFu
ZCBndWlkYW5jZS4KCuWcqCAyMDIzLzExLzEzIDE3OjMxLCBTaW1vbiBIb3JtYW4g5YaZ6YGTOgo+
IFtQQVRDSCBpd2wtbmV4dF0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
