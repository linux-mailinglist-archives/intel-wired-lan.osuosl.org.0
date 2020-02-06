Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4E2154AE7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 19:18:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A8E3860CF;
	Thu,  6 Feb 2020 18:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7QDVTum8etJF; Thu,  6 Feb 2020 18:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DA94860EF;
	Thu,  6 Feb 2020 18:18:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A92491BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 18:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F55387C09
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 18:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sOe7IUXc1zJS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 18:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
 [209.85.166.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DB1C854D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 18:18:45 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id i7so5897515ilr.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Feb 2020 10:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7EkUj4svbsq9t5yO4V9JuIfVx2UeO41FArLOVBeJjhI=;
 b=g4mVJNvbxErFJw/neINp8n/7oV4kDhDETP9a5GCDcCuYpH1c5gQ3yq/YnYExvw8g3M
 HxEvQOE+/dyjJUYTRmZmuemBwNNMLN0MCSgOBDnY86OqN7iPUN3M1mdPaJMzEs+k6gF6
 q+Iy5NMSnoLhwiHicjWuAqn72/xJoR3QIlw9JCy1Xey7u0cNszCEb9UzwvCHni6RSBVx
 vgx4XUffQW7NmcBGoykT4KKgVtISXmP9MDe2oXQdG3cNYbnKJvMg+6USsDxGBdeRMkT1
 2VjftmsnCo96lmzxWJao+vfYsS1xlNbaSVW2Oji8neYd7Pw3Qb5LxeTlUdis9TapmX1f
 Pb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7EkUj4svbsq9t5yO4V9JuIfVx2UeO41FArLOVBeJjhI=;
 b=glNkd24vUszANGHQyVGpbPkbRsGQ1UIdA9YZvtihRhzCtTuLiYjUGRxnsJJftf7LaL
 iRhIfDMN+LrF3n/XH6Bet8B66VhatJ4z5lNMbGVa6iWYvBZO0UTOVPv2llRbvFVQDg/l
 VucjkvwF86Mr0jmkeZLMW+hJFHeQjt+eco77Q16JbPcdnCxIFAQ0fF3wjtnDw7p6L7zm
 xWnO5oUTrpKmV55/O/nRIZ1sPDuotUgMTh6loLPSLzYNN8eYEj+IkXSFxcRlJmMQDMPA
 hoYsnRIVhzV96wLuwveBTSlDDfa3KXWRribBLoVq5OtN+8nBhD95alT1SU1hfNt3CdtS
 MLZA==
X-Gm-Message-State: APjAAAVDzE9c+FdsItVqmbhTF0fb/b/A+4MUQ3ukCg0+7nrF+XRGC2YR
 Si+wkto+A1+5auZnf0UDzFITZ6md7ASTdaq2Gjs=
X-Google-Smtp-Source: APXvYqz6YSAtDQQrSN7kOOJVmGXgMlaj6dlzagD94xFFvv2kMGs3VoQZ/Co7wPE+jiRZT3shgKyrgH9qdUPQH+Q4cO4=
X-Received: by 2002:a92:7402:: with SMTP id p2mr5086772ilc.64.1581013124231;
 Thu, 06 Feb 2020 10:18:44 -0800 (PST)
MIME-Version: 1.0
References: <6bc9d97b27a24cf79edadedf502caf06@inspur.com>
In-Reply-To: <6bc9d97b27a24cf79edadedf502caf06@inspur.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 6 Feb 2020 10:18:33 -0800
Message-ID: <CAKgT0UeebAZ9GfQJ+EJ_mYvnoqvOYOofmGfqTkOro9x7V0c5DA@mail.gmail.com>
To: =?UTF-8?B?WWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6I=?=
 <yangyi01@inspur.com>
Subject: Re: [Intel-wired-lan] bad iperf3 tcp performance of Intel 10G NIC
 when MTU is 9000
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
Cc: "yang_y_yi@163.com" <yang_y_yi@163.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBGZWIgNCwgMjAyMCBhdCA3OjM0IEFNIFlpIFlhbmcgKOadqOeHmikt5LqR5pyN5Yqh
6ZuG5ZuiIDx5YW5neWkwMUBpbnNwdXIuY29tPiB3cm90ZToKPgo+IEhpLCBhbGwKPgo+IFdlIGZp
bmQgYSB2ZXJ5IHdlaXJkIGlzc3VlIG9uIEludGVsIDEwRyBOSUMsIGlwZXJmMyB0Y3AgcGVyZm9y
bWFuY2UgaXMgZ29vZAo+IHdoZW4gTVRVIGlzIDE1MDAsIGJ1dCBpdCBpcyBhYm91dCBvbmUgdGhp
cmQgb2YgdGhlIGZvcm1lciB3aGVuIE1UVSBpcyA5MDAwLAo+IGFueWJvZHkga25vd3Mgd2h5IGl0
IGlzIHNvLCBpcyBhbnkgc29sdXRpb24gdG8gaXQgYXZhaWxhYmxlPwo+Cj4gVGhlIGJlbG93IGlz
IG91ciBrZXJuZWwgYW5kIGl4Z2JlIGRlcml2ZXIgaW5mb3JtYXRpb246Cj4KPiBVYnVudHUgMTYu
MDQgYW5kIGtlcm5lbCBpcyB1cGRhdGVkIHRvIDQuMTUuMC0zNi1nZW5lcmljIHg4Nl82NAo+IEl4
Z2JlIGRyaXZlciB2ZXJzaW9uOiA1LjEuMC1rCj4gRmlybXdhcmUgdmVyc2lvbjogMHg2MWMxMDAw
MQo+Cj4gQlRXLCB0c28gaXMgb24uCgpUaGVyZSBjb3VsZCBiZSBxdWl0ZSBhIGZldyB0aGluZ3Mg
Z29pbmcgb24sIGJ1dCBpdCBpcyBoYXJkIHRvIHNheQp3aXRob3V0IG1vcmUgaW5mb3JtYXRpb24u
CgpXaGF0IGlzIHRoZSB0ZXN0IHlvdSBhcmUgcnVubmluZyBhbmQgd2hhdCBhcmUgdGhlIG51bWJl
cnMgeW91IGFyZQpzZWVpbmcgYXQgMTUwMCBNVFUgdmVyc3VzIDkwMDAgTVRVPyBIYXZlIHlvdSB0
YWtlbiBhIGxvb2sgYXQgdGhlCiJuZXRzdGF0IC1zIiBpbmZvIG9uIGJvdGggZW5kcyB0byBzZWUg
aWYgYW55dGhpbmcgbWlnaHQgYmUgZ29pbmcgb24KdGhlcmU/IE9uZSBwb3NzaWJpbGl0eSBpcyBp
ZiB5b3UgaGF2ZSBhIGNvbmdlc3RlZCBuZXR3b3JrIG1vdmluZyB0aGUKOUsgTVRVIGZyYW1lcyBj
YW4gYmUgc2xvd2VyIGFzIGFueSA5SyBmcmFtZXMgZHJvcHBlZCB3aWxsIGhhdmUgdG8gYmUKcmV0
cmFuc21pdHRlZCBhbmQgc2luY2UgdGhlIGZyYW1lcyBhcmUgbGFyZ2VyIHlvdSBtYXkgZW5jb3Vu
dGVyIHRoZQpuZWVkIGZvciByZXRyYW5zbWl0IG1vcmUgb2Z0ZW4gYW5kIHRoZXkgd291bGQgYmUg
c2xvd2VyLgoKQWxzbyBoYXZlIHlvdSBjaGVja2VkIHRoZSBuZXR3b3JrIHBhdGggdG8gbWFrZSBj
ZXJ0YWluIHRoYXQgeW91IGFyZQphYmxlIHRvIHNlbmQgOUsgZnJhbWVzIGJldHdlZW4gdGhlIHR3
byBzeXN0ZW1zPyBJZiB0aGVyZSBhcmUgYW55CnN3aXRjaGVzIGluIGJldHdlZW4gbm90IGNvbmZp
Z3VyZWQgZm9yIDlLIE1UVSB0aGF0IGNvdWxkIGNhdXNlCnBlcmZvcm1hbmNlIGlzc3Vlcy4KCk9u
ZSBkZWJ1Z2dpbmcgc3RlcCB5b3UgbWlnaHQgdHJ5IHdvdWxkIGJlIHRvIGluY3JlbWVudGFsbHkg
aW5jcmVhc2UKdGhlIE1UVSBzaXplIGFuZCBydW4gc2V2ZXJhbCB0ZXN0cyB0byBzZWUgaWYgdGhl
cmUgaXMgYSBjZXJ0YWluIHBhY2tldApzaXplIHRoYXQgdGhlIHBlcmZvcm1hbmNlIGRyb3BzIGF0
LiBJZiB3ZSBmaW5kIHRoZSByZWdyZXNzaW9uIHN0YXJ0cwphdCBhIGNlcnRhaW4gc2l6ZSBpdCBj
b3VsZCBwb2ludCB0byBhIHNwZWNpZmljIGlzc3VlIGVpdGhlciBpbiB0aGUKbmV0d29yayBzdGFj
aywgZHJpdmVyLCBvciB0aGUgbmV0d29yayBpdHNlbGYuCgpUaGFua3MuCgotIEFsZXgKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
