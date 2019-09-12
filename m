Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED1AB1372
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 19:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5741C86329;
	Thu, 12 Sep 2019 17:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3IFvyg_cBjp6; Thu, 12 Sep 2019 17:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 346908634C;
	Thu, 12 Sep 2019 17:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EBD51BF44C
 for <intel-wired-lan@osuosl.org>; Thu, 12 Sep 2019 10:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6AF0B861AF
 for <intel-wired-lan@osuosl.org>; Thu, 12 Sep 2019 10:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gpbZ6fJACkSz for <intel-wired-lan@osuosl.org>;
 Thu, 12 Sep 2019 10:16:02 +0000 (UTC)
X-Greylist: delayed 00:07:39 by SQLgrey-1.7.6
Received: from smark.slackware.pl (smark.slackware.pl [88.198.48.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBF72861AA
 for <intel-wired-lan@osuosl.org>; Thu, 12 Sep 2019 10:16:01 +0000 (UTC)
Received: from bek.lan.toxcorp.com (unknown [213.156.230.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: shasta@toxcorp.com)
 by smark.slackware.pl (Postfix) with ESMTPSA id 01C0B20D3D;
 Thu, 12 Sep 2019 12:08:19 +0200 (CEST)
To: intel-wired-lan@osuosl.org, e1000-devel@lists.sourceforge.net
From: Jakub Jankowski <shasta@toxcorp.com>
In-Reply-To: <20190610190141.77k6gbrefm2mr6lb@csclub.uwaterloo.ca>
References: 
Message-ID: <77e940d7-552b-7724-0971-828bdb28add7@toxcorp.com>
Date: Thu, 12 Sep 2019 12:09:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Thu, 12 Sep 2019 17:25:48 +0000
Subject: Re: [Intel-wired-lan] [E1000-devel] i40e X722 RSS problem with
 NAT-Traversal IPsec packets
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
Cc: rschwammberger@open-systems.com, alexander.h.duyck@linux.intel.com,
 lsorense@csclub.uwaterloo.ca
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpbSSdtIHJlcGx5aW5nIHRvIGFuIG9sZCB0aHJlYWQsIGhvcGluZyBteSBlbWFpbCBjbGll
bnQgd29uJ3Qgc2NyZXcgdXAgCnJlZmVyZW5jZXMgdG9vIG11Y2ggLSBzb3JyeSBpbiBhZHZhbmNl
IGlmIGl0IGRvZXNdCgogPk9uIE1vbiwgMTAgSnVuIDIwMTksIExlbm5hcnQgU29yZW5zZW4gd3Jv
dGU6CiA+Pk9uIEZyaSwgSnVuIDA3LCAyMDE5IGF0IDEwOjA4OjMxUE0gKzAwMDAsIEZ1amluYWth
LCBUb2RkIHdyb3RlOgogPj4gSnVzdCBhIHF1aWNrIHVwZGF0ZSB3aXRoIHRoZSByZXNwb25zZSBJ
IGdvdCBhbmQgSSdsbCBtYWtlIHN1cmUgdGhpcyAKaXMgaW4gb3VyIGludGVybmFsIGJ1ZyBkYXRh
YmFzZS4KID4+CiA+PiBIZXJlJ3Mgd2hhdCBJIGdvdCBiYWNrLCBhbmQgaXQgbG9va3MgbGlrZSB5
b3UgZ3V5cyBoYXZlIHRyaWVkIHRoaXMgCmFscmVhZHk6CiA+PgogPj4gSGF2ZSB0aGV5IHRyaWVk
IHRoZXNlIHN0ZXBzIHRvIGNvbmZpZ3VyZSBSU1M6ClsuLi5dCiA+IFdpdGggcG90ZW50aWFsbHkg
MTAwMDAgaXBzZWMgY29ubmVjdGlvbnMsIHdlIGRvbid0IGV2ZW4gd2FudCB0byBsb29rIGF0CiA+
IGNyZWF0aW5nIG1hbnVhbCBmbG93IGVudHJpZXMuwqAgVGhlcmUgaXNuJ3QgZW5vdWdoIHJvb20g
Zm9yIHRoYXQuwqAgV2UganVzdAogPiB3YW50ZWQgUlNTIHRvIGRvIGl0cyBqb2IgdGhlIHdheSBp
dCBkb2VzIG9uIGV2ZXJ5IG90aGVyIE5JQyBpbiB0aGUgcGFzdC4KID4gQWZ0ZXIgeWVhcnMgb2Yg
dXNpbmcgbW9zdGx5IGludGVsIE5JQ3MgdGhhdCBqdXN0IHdvcmtlZCwgdGhpcyBvbmUgaGFzCiA+
IGJlZW4gcXVpdGUgdGhlIHN1cnByaXNlLgogPgpbLi4uXQogPiBBbHJlYWR5IHRyaWVkIHdpdGgg
NC4xOSBrZXJuZWwgd2hpY2ggaXMgZXNzZW50aWFsbHkgaWRlbnRpY2FsIHRvIHRoZQogPiBsYXRl
c3Qgb3V0IG9mIHRyZWUgZHJpdmVyIChJIGRpZmZlZCB0aGVtIGFuZCBmb3VuZCBubyBmdW5jdGlv
bmFsCiA+IGRpZmZlcmVuY2VzIGF0IGFsbCkgYW5kIGl0IGRpZG4ndCBoZWxwLsKgIFdlbGwgaXQg
d2FzIGVzc2VudGlhbGx5IAppZGVudGljYWwKID4gdG8gdGhlIGxhdGVzdCBvdXQgb2YgdHJlZSBh
IGZldyB3ZWVrcyBhZ28uwqAgSXQgc2VlbXMgdGhlcmUgaXMgbm93IGEKID4gbmV3ZXIgb25lIHdp
dGggc29tZSBjaGFuZ2VzIGFsdGhvdWdoIG5vdGhpbmcgaW4gdGhlIGxpc3Qgb2YgY2hhbmdlcwog
PiBzb3VuZCByZWxldmFudC4KID4KID4gV2UgZG8gbm90IHdhbnQgdG8gdXNlIHRoZSBvdXQgb2Yg
dHJlZSBkcml2ZXIgYW5kIGV2ZW4gdHJ5aW5nIGl0IG91dCBpcwogPiBhIGxvdCBvZiB3b3JrLsKg
IFdlIHVzZWQgdG8gdXNlIGl0IGluIHRoZSBwYXN0IGZvciBzb21lIE5JQyB0eXBlcyBidXQKID4g
c3RvcHBlZCBkdWUgdG8gdGhlIGhhc3NsZSBvZiBtYWludGFpbmluZyB0aGUgaW50ZWdyYXRpb24u
wqAgSWYgYW55IApwcm9ibGVtcwogPiBleGlzdCBpbiB0aGUgaW4ga2VybmVsIGRyaXZlciB3ZSB3
aWxsIHBhdGNoIGl0LCBidXQgc28gZmFyIHRoYXQgZG9lcyBub3QKID4gYXBwZWFyIHRvIGJlIHRo
ZSBwcm9ibGVtLsKgIFRoZSB0ZXN0cyB3ZSBkaWQgc28gZmFyIGluZGljYXRlIHRoZSBmaXJtd2Fy
ZQogPiBpc24ndCBhcHBseWluZyBhbiBSU1MgdmFsdWUgdG8gY2VydGFpbiBwYWNrZXQgdHlwZXMu
wqAgRXZlbiBtYXBwaW5nIGV2ZXJ5CiA+IFJTUyB2YWx1ZSB0byBxdWV1ZSA3IHN0aWxsIHNhdyB0
aGVzZSBwYWNrZXRzIGFycml2ZSBvbiBxdWV1ZSAwIHdoaWNoCiA+IHNob3VsZCBvZiBjb3Vyc2Ug
YmUgaW1wb3NzaWJsZSBpZiB0aGUgZmlybXdhcmUgd2FzIHdvcmtpbmcuIE5vdyBpZgogPiB0aGVy
ZSBpcyBhbnl0aGluZyBpbiB0aGUgb3V0IG9mIHRyZWUgZHJpdmVyIHRoYXQgeW91IHRoaW5rIGNh
biBleHBsYWluCiA+IHRoaXMgcHJvYmxlbSwgSSB3aWxsIGxvb2sgYXQgaXQgYW5kIGNvbnNpZGVy
IHRyeWluZyBpdCwgYnV0IHNvIGZhciBJCiA+IHNlZSBub3RoaW5nIHRoYXQgbWFrZXMgdGhhdCB3
b3J0aCB0aGUgZWZmb3J0LsKgIEl0IGp1c3QgZG9lc24ndCBsb29rIGxpa2UKID4gYSBkcml2ZXIg
cHJvYmxlbS7CoCBJZiBzb21lb25lIGhhcyBhY2Nlc3MgdG8gYSBTMjYwMFdGVCBib2FyZCAob3Ig
c29tZQogPiBvdGhlciBDNjEyIGJhc2VkIGJvYXJkKSBpdCBzaG91bGQgYmUgc2ltcGxlIGVub3Vn
aCB0byB0cnkgcmVwbGF5aW5nCiA+IHRoZSBjYXB0dXJlZCBwYWNrZXQgYW5kIHNlZSB3aGF0IFJT
UyBxdWV1ZSBpdCBoaXRzICh3aXRoIEFUUiBkaXNhYmxlZAogPiBvZiBjb3Vyc2UpLgoKV2FzIHRo
ZXJlIGFueSBwcm9ncmVzcyBoZXJlPwoKQXMgWDcyMiBpcyBnZXR0aW5nIG1vcmUgYW5kIG1vcmUg
dWJpcXVpdG91cywgaXQncyBnZXR0aW5nIGhhcmRlciBhbmQgCmhhcmRlciB0byBhdm9pZCBpdC4g
UHJvYmxlbXMgbGlrZSB0aGlzLCBTRlAgRUVQUk9NIHJlYWRvdXQgSSByZXBvcnRlZCAKWzFdLCBv
ciB0aGUgcmVjZW50bHkgYW5ub3VuY2VkIE5ldENBVCBpc3N1ZSBbMl0gKFg3MjIgc2VlbXMgdG8g
c3VwcG9ydCAKaVdBUlAvUkRNQSkgbWFrZSBpdCByZWFsbHkgaGFyZCB0byByZWNvbW1lbmQgWDcy
MiBmb3IgcHJvZHVjdGlvbiB1c2UuCgpbMV0gCmh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20v
ZTEwMDAtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0L21zZzEyNTUwLmh0bWwKWzJdIGh0dHBz
Oi8vd3d3LnZ1c2VjLm5ldC9wcm9qZWN0cy9uZXRjYXQvCgpSZWdhcmRzLAogwqBKYWt1Yi4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
