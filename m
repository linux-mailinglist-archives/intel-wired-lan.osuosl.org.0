Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 131F243A931
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 02:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A30E96084F;
	Tue, 26 Oct 2021 00:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MuHSqdBFqUhy; Tue, 26 Oct 2021 00:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A391860774;
	Tue, 26 Oct 2021 00:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BFBD1BF25F
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 00:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1074980E34
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 00:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNRX3yu2P7sB for <intel-wired-lan@osuosl.org>;
 Tue, 26 Oct 2021 00:22:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E89F80DFC
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 00:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1635207745;
 bh=b8sNm1SZrPn257hzRvvtsDcw6Jzkac9Wd4bvJp31FsA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LjUIQrWTbUDAryu4lab9Q8mgm7xtastsOGhisK/qzvvCGBt+kX7YmAnR+vWUZPajq
 wRr85ytlYv4jgYGzdhdHumjPSMqHR1lSMjv/Ge0bQo08Ymu2Oi0bvOIJt92+Bunu6W
 Sn5yXU3zpUesJ8PT4WloT7ht5pvn2wvCB2xsDJ9k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bap12.server.lan [172.19.172.82]) (via HTTP); Tue, 26 Oct 2021
 02:22:25 +0200
MIME-Version: 1.0
Message-ID: <trinity-71d0a350-a27f-4ed0-9c08-53a1f3f6b42a-1635207745364@3c-app-gmx-bap12>
From: robert_s@gmx.net
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Date: Tue, 26 Oct 2021 02:22:25 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <3ec21b215c88604e4e8475240be9d11f5abdb1e5.camel@intel.com>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
 <392a6fe-e920-31b-42dc-a214e311233c@twofifty.com>
 <trinity-7ec48fc1-b568-49df-8837-218ec2c431c4-1634940936574@3c-app-gmx-bs49>
 <3ec21b215c88604e4e8475240be9d11f5abdb1e5.camel@intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:T4NVCSu62KqzLykfLKUxCLvJBQ2BGW+PK1PieCOo/CeVi+BQQvWtcitt2BuVZ9PDxNqaN
 htlapK+EfK4ihkqMe+UMceaAe0HLsFnEzm5x9YYKB0DvqRg76iB8EyQj0qoxATzRLaDunpiSFWza
 Te5fHRD3KBNbGxFRMBAS7MMqP7Zs3pRoY+ySxXkYT9o726NKCtqhU0qiJbKKIgV6gyPOoC1rxsxn
 4vVFC7h9UdZplzKMB87kMMjKvC+peM78Eo4T/hxff2fW739GvnC94YmkP1WG6FQc8E+pAeMHEUbo
 k8=
X-UI-Out-Filterresults: notjunk:1;V03:K0:abGpe9MTDdU=:S/A+3t4lsdKOymr0kQBUrf
 0f1L+jci0X34YGvCDK0Q0EzH8CAgiUfX22zPUoGe5T9X09SKTeGDH+HFvK8g+n9FjMOe7FNht
 YAEGFYxj0k+Ab8a4gm7Aix+FwSUtEKlMEmhvZJ15cnHv8OtERpD+iqfAEovWgwnvfS+QRpbit
 JCjTIWWc1mOTlHwkpP0Q4RahQzsI/BOz69qhruAkOvXLA1btwFvHmkj5H02z4zFVm2AJ2zIev
 dIYzTyrSowHhKw83MM0n9gtPSGeU0T6tj4pzSgb7pmKJakXlnOey3D3ieh/WZcbmVq2RsgThv
 SrcXN2zCmfPVWie3J4lfWMPy9zJaq0/oferVbZ/n3qXbgUfADhNlMGlXTKOnyYeKuCeM6q6rQ
 B6QVMp7w5zTGFO49MlZKRnXlhlhsnw7YPnWb4VmtOb/jOFjegYEkG4sknwrVBU6bIO9aFoFpg
 bL2FVPX+uRuN53ZL4eFkh4A29dqGPdCGkDPYhYPWGEmPwgWGg4hjleXyYUeV5sArz7CuJYFrS
 vkN3vWkOx1zevURKmCkEyuBlQAyCcflJMY4vGkuLamh/qb1KdrBWodDIuhoEWAUqwnPQMS505
 yKCi8ReQM3tgK7lj+WAxYTs816Pa36VUCQYDpJ6O7KpQq6VmDZqARvPU7b9FBFPOvLinj5IpY
 DTSXFfDUKOg4PRYHnOSOfW5apFjaInG+ZiqYaln7wnIUZ4dRc6Z/P28YsP5fwILCndVYJT/mG
 oRceq8mh72PT/N86PyefVP4z/QAgtvT3qQGq9j9UULkoXUm9rL0jZfQfzPKf8Cvue9bQcW8oO
 AbTc2L1
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTrCoCJOZ3V5ZW4sIEFudGhvbnkgTCIgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPgoK
PiBUaGUgY29tbXVuaXR5IGhhcyBjaGFuZ2VkIHRoZWlyIGFjY2VwdGFuY2Ugb2YgcHJpdmF0ZSBt
b2R1bGUKPiBwYXJhbWV0ZXJzLiBXaGlsZSBwcmV2aW91cyBvbmVzIHdlcmUgYWNjZXB0ZWQsIHRo
ZXkgYXJlIG5vdCBhY2NlcHRpbmcKPiBhbnkgbmV3IGFkZGl0aW9ucy4KCkEgcmVmZXJlbmNlIHdv
dWxkIGhhdmUgYmVlbiBoZWxwZnVsLCBidXQgSSBldmVudHVhbGx5IGZvdW5kIGl0IG15c2VsZjoK
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDE3MDMyNC4xNDQwMTcuMTU0NTYxNDc3
MzUwNDk1NDQxNC5kYXZlbUBkYXZlbWxvZnQubmV0LwoKQWZ0ZXIgc2hvcnQgZGlzY3Vzc2lvbiBv
biBuZXRkZXYsIEkgcmVhbGl6ZWQgdGhhdCB0aGUgbW9kdWxlIHBhcmFtZXRlciBpcwppbmRlZWQg
bm90IG5lZWRlZCwgc28gSSdtIHJldm9raW5nIHRoaXMgcGF0Y2guCgpJbnN0ZWFkLCBJJ2xsIHN1
Ym1pdCBhbm90aGVyIHBhdGNoIHRoYXQgb25seSBhZGRzIHRoZSBtaXNzaW5nIGRvY3VtZW50YXRp
b24KYWJvdXQgTkJBU0UtVCBzdXBwb3J0IGFuZCBob3cgdG8gZW5hYmxlIGl0LiBUaGF0IHNob3Vs
ZCBiZSBhY2NlcHRhYmxlLgoKQmVzdCByZWdhcmRzLAotUm9iZXJ0IFNjaGxhYmJhY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
