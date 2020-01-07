Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA0D133702
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2020 00:05:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 510DE85727;
	Tue,  7 Jan 2020 23:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3ca5ew+66XK; Tue,  7 Jan 2020 23:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61C7F85F37;
	Tue,  7 Jan 2020 23:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECF51BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 09:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A85B84636
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 09:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sbCcNTbBvnzy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2020 09:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from qq.com (smtpbg478.qq.com [59.36.132.92])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9FCD3844FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 09:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1578390423; bh=Uy5f+3qqhoN1II6LMTVRqrYhw0P4h9LzAIrjAzVUs7E=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=p5O0eWcwkqq91usHX57oyqoJwb9SnzHzJhv5TKIjWHeaOERb4N6RFo292H6TOkeeW
 PHstNwTjICaW84YcsUlpWVfUK640lbwLnt4YNrleAg8285oUcIrYgzc48CsZZq/64O
 0YU3lDBIVM3Mcz4qVGEwo+FFnng0BIsE69uRNAPo=
X-QQ-FEAT: c2tmyB/8aFHx+K4RJ94R9xIQ4PtyZtOZ
X-QQ-SSF: 000000000000006000000000000000e
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 121.35.179.95
X-QQ-STYLE: 
X-QQ-mid: webmail805t1578390419t1298286
From: "=?gb18030?B?wfrM2tbQu6o=?=" <22708952@qq.com>
To: "=?gb18030?B?aW50ZWwtd2lyZWQtbGFu?=" <intel-wired-lan@lists.osuosl.org>
Mime-Version: 1.0
Date: Tue, 7 Jan 2020 17:46:59 +0800
X-Priority: 3
Message-ID: <tencent_FA25D011CED23AE10F0E218220642CBA5A08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 07 Jan 2020 17:47:03 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Tue, 07 Jan 2020 23:05:26 +0000
Subject: [Intel-wired-lan] any sourceforge project for intel 10G network
 drivers on windows?
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
Content-Type: multipart/mixed; boundary="===============6041494338064259884=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.

--===============6041494338064259884==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5E145393_105474D8_0FC7AE3C"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5E145393_105474D8_0FC7AE3C
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

Jm5ic3A7Jm5ic3A7Jm5ic3A7IHNvcnJ5IHRvIGRpc3R1cmIgeW91Lg0KDQoNCiZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwO2FueSBzb3VyY2Vmb3JnZSBwcm9qZWN0IGZvciBpbnRlbCAxMEcg
bmV0d29yayBkcml2ZXJzIG9uIHdpbmRvd3M/Jm5ic3A7IElmIG5vIHN1Y2ggcHJvamVjdCwg
bWF5YmUgSSBuZWVkIHRvIHdyaXRlICggY2hhbmdlIGZyb20gTElOVVgpIHRoZSBkcml2ZXIg
Y29kZSBmb3Igd2luZG93cyAmbmJzcDs6LTwNCg0KDQombmJzcDsmbmJzcDsmbmJzcDsgdGhr
cy4=

------=_NextPart_5E145393_105474D8_0FC7AE3C
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsgc29ycnkgdG8gZGlzdHVyYiB5b3UuPC9kaXY+PGRp
dj48YnI+PC9kaXY+PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDthbnkgc291cmNlZm9y
Z2UgcHJvamVjdCBmb3IgaW50ZWwgMTBHIG5ldHdvcmsgZHJpdmVycyBvbiB3aW5kb3dzPyZu
YnNwOyBJZiBubyBzdWNoIHByb2plY3QsIG1heWJlIEkgbmVlZCB0byB3cml0ZSAoIGNoYW5n
ZSBmcm9tIExJTlVYKSB0aGUgZHJpdmVyIGNvZGUgZm9yIHdpbmRvd3MgJm5ic3A7Oi0mbHQ7
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsgdGhrcy48YnI+
PC9kaXY+

------=_NextPart_5E145393_105474D8_0FC7AE3C--




--===============6041494338064259884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6041494338064259884==--



