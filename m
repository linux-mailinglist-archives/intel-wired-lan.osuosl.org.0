Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA59C287911
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Oct 2020 17:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FEDD874CE;
	Thu,  8 Oct 2020 15:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1PLSSByoTyR; Thu,  8 Oct 2020 15:57:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B68BB874CB;
	Thu,  8 Oct 2020 15:57:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B02B31BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 15:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C3E52E13C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 15:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XySsPftCAdOQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Oct 2020 15:57:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id A45782E139
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 15:57:52 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6878F206462BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 17:57:49 +0200 (CEST)
To: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <8ecde631-9b24-b177-749c-a5a6bddc31df@molgen.mpg.de>
Date: Thu, 8 Oct 2020 17:57:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-wired-lan] What are management packets (rx_smbus, MGTPRC)?
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

RGVhciBMaW51eCBmb2xrcywKCgpXZSBhcmUgdHJ5aW5nIHRvIGRlYnVnIGEgbmV0d29yayBpc3N1
ZSwgYW5kLCB3aGlsZSBsb29raW5nIGF0IHRoZSAKbmV0d29yayBkZXZpY2Ugc3RhdGlzdGljcywg
bm90aWNlZCBhIGhpZ2ggdmFsdWUgb2YgYHJ4X3NtYnVzYC4KCiAgICAgJCBzdWRvIGV0aHRvb2wg
LVMgbmV0MDAKICAgICBb4oCmXQogICAgIHR4X3NtYnVzOiAwCiAgICAgcnhfc21idXM6IDU1Nzgx
NgogICAgIGRyb3BwZWRfc21idXM6IDkKICAgICBb4oCmXQoKVGhpcyBzZWVtcyB1bnJlbGF0ZWQg
dG8gb3VyIHByb2JsZW0sIGJ1dCB3ZSBub3RpY2VkLCB0aGF0IGFyb3VuZCAyMCAlIG9mIApvdXIg
ZGVza3RvcHMgaGF2ZSBhIHBvc2l0aXZlIHZhbHVlLiBGcm9tIHRoZSBzb3VyY2U6CgogICAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYzogCmFkYXB0ZXItPnN0
YXRzLm1ncHJjICs9IGVyMzIoTUdUUFJDKTsKICAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvZXRodG9vbC5jOiAKRTEwMDBfU1RBVCgicnhfc21idXMiLCBzdGF0cy5tZ3ByYwoK
ICAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvcmVncy5oOiNkZWZpbmUgRTEw
MDBfTUdUUFJDIAoweDA0MEI0IC8qIE1hbmFnZW1lbnQgUGFja2V0cyBSeCBDb3VudCAtIFIvY2xy
ICoKCk91dCBvZiBjdXJpb3NpdHksIHdoYXQgYXJlIHRoZXNlIG1hbmFnZW1lbnQgcGFja2V0cz8K
CgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKJCBzdWRvIGV0aHRvb2wgLVMgbmV0MDAKTklDIHN0YXRp
c3RpY3M6CiAgICAgIHJ4X3BhY2tldHM6IDk5MzAwMTUxNgogICAgICB0eF9wYWNrZXRzOiAxMzMx
OTU2MzUwCiAgICAgIHJ4X2J5dGVzOiA5MzgxMjgwMTU5MTAKICAgICAgdHhfYnl0ZXM6IDE4NDI0
OTI0NjcxNTQKICAgICAgcnhfYnJvYWRjYXN0OiA4NDkyOTI1NQogICAgICB0eF9icm9hZGNhc3Q6
IDIzNzAyNgogICAgICByeF9tdWx0aWNhc3Q6IDM4NjkzNzEKICAgICAgdHhfbXVsdGljYXN0OiA0
NzYwMgogICAgICByeF9lcnJvcnM6IDI1MAogICAgICB0eF9lcnJvcnM6IDAKICAgICAgdHhfZHJv
cHBlZDogMAogICAgICBtdWx0aWNhc3Q6IDM4NjkzNzEKICAgICAgY29sbGlzaW9uczogMAogICAg
ICByeF9sZW5ndGhfZXJyb3JzOiAwCiAgICAgIHJ4X292ZXJfZXJyb3JzOiAwCiAgICAgIHJ4X2Ny
Y19lcnJvcnM6IDE4NwogICAgICByeF9mcmFtZV9lcnJvcnM6IDAKICAgICAgcnhfbm9fYnVmZmVy
X2NvdW50OiAwCiAgICAgIHJ4X21pc3NlZF9lcnJvcnM6IDAKICAgICAgdHhfYWJvcnRlZF9lcnJv
cnM6IDAKICAgICAgdHhfY2Fycmllcl9lcnJvcnM6IDAKICAgICAgdHhfZmlmb19lcnJvcnM6IDAK
ICAgICAgdHhfaGVhcnRiZWF0X2Vycm9yczogMAogICAgICB0eF93aW5kb3dfZXJyb3JzOiAwCiAg
ICAgIHR4X2Fib3J0X2xhdGVfY29sbDogMAogICAgICB0eF9kZWZlcnJlZF9vazogMAogICAgICB0
eF9zaW5nbGVfY29sbF9vazogMAogICAgICB0eF9tdWx0aV9jb2xsX29rOiAwCiAgICAgIHR4X3Rp
bWVvdXRfY291bnQ6IDAKICAgICAgdHhfcmVzdGFydF9xdWV1ZTogMAogICAgICByeF9sb25nX2xl
bmd0aF9lcnJvcnM6IDAKICAgICAgcnhfc2hvcnRfbGVuZ3RoX2Vycm9yczogMAogICAgICByeF9h
bGlnbl9lcnJvcnM6IDAKICAgICAgdHhfdGNwX3NlZ19nb29kOiAzMTQ5ODA4MwogICAgICB0eF90
Y3Bfc2VnX2ZhaWxlZDogMAogICAgICByeF9mbG93X2NvbnRyb2xfeG9uOiAwCiAgICAgIHJ4X2Zs
b3dfY29udHJvbF94b2ZmOiAwCiAgICAgIHR4X2Zsb3dfY29udHJvbF94b246IDAKICAgICAgdHhf
Zmxvd19jb250cm9sX3hvZmY6IDAKICAgICAgcnhfY3N1bV9vZmZsb2FkX2dvb2Q6IDkyNzQ2MzAw
OAogICAgICByeF9jc3VtX29mZmxvYWRfZXJyb3JzOiAzNAogICAgICByeF9oZWFkZXJfc3BsaXQ6
IDAKICAgICAgYWxsb2NfcnhfYnVmZl9mYWlsZWQ6IDAKICAgICAgdHhfc21idXM6IDAKICAgICAg
cnhfc21idXM6IDU1NzgxNgogICAgICBkcm9wcGVkX3NtYnVzOiA5CiAgICAgIHJ4X2RtYV9mYWls
ZWQ6IDAKICAgICAgdHhfZG1hX2ZhaWxlZDogMAogICAgICByeF9od3RzdGFtcF9jbGVhcmVkOiAw
CiAgICAgIHVuY29ycl9lY2NfZXJyb3JzOiAwCiAgICAgIGNvcnJfZWNjX2Vycm9yczogMAogICAg
ICB0eF9od3RzdGFtcF90aW1lb3V0czogMAogICAgICB0eF9od3RzdGFtcF9za2lwcGVkOiAwCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
