Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B9780A8E0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 17:28:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E62383E10;
	Fri,  8 Dec 2023 16:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E62383E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702052880;
	bh=RXcI37R+PKd2AYDBcex+lcRucJOnCcFmF7k08MAjiFo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sqe1aRjxp6Ep5otlShyuVABsqHUkiqXU3aFzcQg2Y8N2k/3vD9QniBM0EfDuHrDXP
	 liKdRgtTwSz2BbsyFJaLJwrLxWHe1brdWIELicqNXqbMeNnNCbCBLacvy13f7Z3dVS
	 crbgcR5JLMuFzRGZJ1WnELeT0XJJDZdUnK0qDC8Q0KwEdVtSemuID1H32rl3vxlHnj
	 ASrNnvPe/EUoRBT12N3ugxQoqWZeZ7cP4JFMaOwL36HjD7f2iVUvJE5BHhvnwLRpNq
	 hkXuXzPJZtdpwaea999OfLoWdlgYrrrViqdla6peICpgBvlZaab3Ln6Ha7HPGhpCcz
	 NtDmGy/NQwkNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnKSYEIIqJH2; Fri,  8 Dec 2023 16:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 247F183DCF;
	Fri,  8 Dec 2023 16:27:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 247F183DCF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 203131BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 02:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED615403E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 02:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED615403E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PqZvoT80rux4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 02:06:11 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A72F740374
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 02:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A72F740374
X-UUID: 28a566b3f8204084b30c96f2d8731c4f-20231208
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33, REQID:9e21759c-9205-4365-ad3d-d091008edafa, IP:5,
 U
 RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:-8,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-8
X-CID-INFO: VERSION:1.1.33, REQID:9e21759c-9205-4365-ad3d-d091008edafa, IP:5,
 URL
 :0,TC:0,Content:-5,EDM:0,RT:0,SF:-8,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:-8
X-CID-META: VersionHash:364b77b, CLOUDID:7da28a73-1bd3-4f48-b671-ada88705968c,
 B
 ulkID:2312080726120IXEW9CF,BulkQuantity:4,Recheck:0,SF:44|101|64|66|24|100
 |17|19|102,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:40,QS:nil,BEC
 :nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI,TF_CID_SPAM_SNR
X-UUID: 28a566b3f8204084b30c96f2d8731c4f-20231208
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 1069750080; Fri, 08 Dec 2023 10:05:28 +0800
Message-ID: <b0745f11-0483-4898-9b92-dc73afd5e64b@kylinos.cn>
Date: Fri, 8 Dec 2023 10:05:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231205095844.2532859-1-chentao@kylinos.cn>
 <2a0f3c2a-71fe-4c79-8827-e53088bf3761@intel.com>
 <92e5cc01-e8b3-b6d2-e884-3d6bd001f0d0@intel.com>
Content-Language: en-US
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <92e5cc01-e8b3-b6d2-e884-3d6bd001f0d0@intel.com>
X-Mailman-Approved-At: Fri, 08 Dec 2023 16:27:53 +0000
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
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
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 Simon Horman <horms@kernel.org>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIGZvciB0aGUgcmVtaW5kZXIuIEl0IHdhcyBteSBuZWdsaWdlbmNlLgoKSSdsbCByZXNl
bmQgdGhlIHY1IHBhdGNoOgoxLiBLZWVwICdTaWduZWQtb2ZmLWJ5JyBiZSB0aGUgbGFzdCB0YWcg
aW4gdGhlIGJsb2NrCjIuIENjIHRvICdpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZycK
My4gQ2MgdG8gbXkgcGVyc29uYWwgZW1haWwgJ2t1bnd1LmNoYW5AaG90bWFpbC5jb20nCgpUaGFu
a3MgYWdhaW4sCkt1bnd1CgpPbiAyMDIzLzEyLzggMDc6MjUsIFRvbnkgTmd1eWVuIHdyb3RlOgo+
IAo+IAo+IE9uIDEyLzYvMjAyMyA0OjQwIEFNLCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4g
RnJvbTogS3Vud3UgQ2hhbiA8Y2hlbnRhb0BreWxpbm9zLmNuPgo+PiBEYXRlOiBUdWUsIDUgRGVj
IDIwMjMgMTc6NTg6NDQgKzA4MDAKPj4KPj4+IFRoZSBzaXplIG9mICJpNDBlX2RiZ19jb21tYW5k
X2J1ZiIgaXMgMjU2LCB0aGUgc2l6ZSBvZiAibmFtZSIKPj4+IGRlcGVuZHMgb24gIklGTkFNU0la
IiwgcGx1cyBhIG51bGwgY2hhcmFjdGVyIGFuZCBmb3JtYXQgc2l6ZSwKPj4+IHRoZSB0b3RhbCBz
aXplIGlzIG1vcmUgdGhhbiAyNTYuCj4+Pgo+Pj4gSW1wcm92ZSByZWFkYWJpbGl0eSBhbmQgbWFp
bnRhaW5hYmlsaXR5IGJ5IHJlcGxhY2luZyBhIGhhcmRjb2RlZCBzdHJpbmcKPj4+IGFsbG9jYXRp
b24gYW5kIGZvcm1hdHRpbmcgYnkgdGhlIHVzZSBvZiB0aGUga2FzcHJpbnRmKCkgaGVscGVyLgo+
Pj4KPj4+IEZpeGVzOiAwMmU5YzI5MDgxNGMgKCJpNDBlOiBkZWJ1Z2ZzIGludGVyZmFjZSIpCj4+
PiBTaWduZWQtb2ZmLWJ5OiBLdW53dSBDaGFuIDxjaGVudGFvQGt5bGlub3MuY24+Cj4+PiBTdWdn
ZXN0ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4KPj4+IFN1Z2dlc3RlZC1i
eTogQWxleGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+Cj4+Cj4+
IFlvdXIgU2lnbmVkLW9mZi1ieSBtdXN0IGJlIHRoZSBsYXN0IHRhZyBpbiB0aGUgYmxvY2suCj4+
IFBlcmhhcHMgdGhlIG1haW50YWluZXIgY291bGQgZml4IGl0IHdoZW4gdGFraW5nLCBzbyB0aGF0
IHlvdSB3b3VsZG4ndAo+PiBuZWVkIHRvIHNlbmQgYSBuZXcgdmVyc2lvbiBvbmx5IGR1ZSB0byB0
aGF0Lgo+IAo+IFlvdSBtaXNzZWQgSW50ZWwgV2lyZWQgTEFOIChpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZykgb24gdGhpcywgCj4gdGhvdWdoIHRoZSBvdGhlciB2ZXJzaW9ucyBkaWQg
aGF2ZSBpdC4gQ291bGQgeW91IGZpeCB0aGlzIHVwIGFuZCBiZSBzdXJlIAo+IHRvIGluY2x1ZGUg
SW50ZWwgV2lyZWQgTEFOPwo+IAo+IFRoYW5rcywKPiBUb255Cj4gCj4+PiAtLS0KPj4+IHYyCj4+
PiDCoMKgwqAgLSBVcGRhdGUgdGhlIHNpemUgY2FsY3VsYXRpb24gd2l0aCBJRk5BTVNJWiBhbmQg
Cj4+PiBzaXplb2YoaTQwZV9kYmdfY29tbWFuZF9idWYpCj4+PiB2Mwo+Pj4gwqDCoMKgIC0gVXNl
IGthc3ByaW50ZiB0byBpbXByb3ZlIHJlYWRhYmlsaXR5IGFuZCBtYWludGFpbmFiaWxpdHkKPj4+
IHY0Cj4+PiDCoMKgwqAgLSBGaXggbWVtb3J5IGxlYWsgaW4gZXJyb3IgcGF0aApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
