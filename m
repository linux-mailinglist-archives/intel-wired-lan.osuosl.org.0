Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41750530
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 11:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D2DCD204AC;
	Mon, 24 Jun 2019 09:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ef7tZlXF4Tal; Mon, 24 Jun 2019 09:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1F1F204A7;
	Mon, 24 Jun 2019 09:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 926641BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 09:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8ED2684508
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 09:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eYp7VsDGKf2C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 09:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0061584489
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 09:09:43 +0000 (UTC)
Received: from mail-pl1-f198.google.com ([209.85.214.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hfKyr-00079Q-Ac
 for intel-wired-lan@lists.osuosl.org; Mon, 24 Jun 2019 09:09:41 +0000
Received: by mail-pl1-f198.google.com with SMTP id n1so7003734plk.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 02:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=QJC6ineKcWeeajSasIMjIMAW2KBfua6rzVpCvcG7Tos=;
 b=cQMKJCKjbgVddOMYkHoyAr60bXzyrQioT1538bkXXSWlYvfaAFiB24W4PmbpK/vSSR
 n7LHjiHrAAfpPDmuGSF61Zde/rxhdyMdV7hSSrkq0JyKbHwdrAhHXdHQNjKltQsyPYhf
 RHx/BFVrKxjKcbegvJ5okzDrPHpDrOX9kl+ks2262I12+gkYAjKNHz2OXgwgYYZ324Fj
 RYuIlgVRYDhYMXmBh/HFLjSE98VX2a2t4QqnQAAJf2RSEu2NIvnbrimFSH3kpn9hdAKM
 XlwLoxnkhbFmmedzYQA6v7exvMDdps4Z+KaSIMokbL/+wKFPyA57Oe23UUhZ/uQMPZD6
 PL5A==
X-Gm-Message-State: APjAAAUr4kZIbnG0i8VpO2pk6F+zV1LqNxivk4QX4hyljS7arivNkydT
 68ROtlu+SvCXNhQhakBp5SuXyHskGz8LuYBq3bDwhCZw9UPAqDXHy9OmYlOVaLMIEQZ+qKrztcs
 llGzDaMdewtcI27KdbE/nGJg6FCnlJobcXykXJKKw70EcyZY=
X-Received: by 2002:a63:6146:: with SMTP id v67mr26601241pgb.116.1561367380036; 
 Mon, 24 Jun 2019 02:09:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUBA29vHrYby9DlI0HUkgkMFFp3ZlV+TTMcwiU5vgOmnXsH6y1N10N6w9VuDG0KK+KnwHL1A==
X-Received: by 2002:a63:6146:: with SMTP id v67mr26601205pgb.116.1561367379553; 
 Mon, 24 Jun 2019 02:09:39 -0700 (PDT)
Received: from 2001-b011-380f-3511-4d72-4f7c-d6a5-6121.dynamic-ip6.hinet.net
 (2001-b011-380f-3511-4d72-4f7c-d6a5-6121.dynamic-ip6.hinet.net.
 [2001:b011:380f:3511:4d72:4f7c:d6a5:6121])
 by smtp.gmail.com with ESMTPSA id n184sm10261480pfn.21.2019.06.24.02.09.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 02:09:39 -0700 (PDT)
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
Date: Mon, 24 Jun 2019 17:09:37 +0800
To: jeffrey.t.kirsher@intel.com
X-Mailer: Apple Mail (2.3445.104.11)
Subject: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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
Cc: intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmVmZnJleSwKCldl4oCZdmUgZW5jb3VudGVyZWQgYW5vdGhlciBpc3N1ZSwgd2hpY2ggY2F1
c2VzIG11bHRpcGxlIENSQyBlcnJvcnMgYW5kICAKcmVuZGVycyBldGhlcm5ldCBjb21wbGV0ZWx5
IHVzZWxlc3MsIGhlcmXigJlzIHRoZSBuZXR3b3JrIHN0YXRzOgoKL3N5cy9jbGFzcy9uZXQvZW5v
MS9zdGF0aXN0aWNzJCBncmVwIC4gKgpjb2xsaXNpb25zOjAKbXVsdGljYXN0Ojk1CnJ4X2J5dGVz
OjE0OTk4NTEKcnhfY29tcHJlc3NlZDowCnJ4X2NyY19lcnJvcnM6MTE2NQpyeF9kcm9wcGVkOjAK
cnhfZXJyb3JzOjIzMzAKcnhfZmlmb19lcnJvcnM6MApyeF9mcmFtZV9lcnJvcnM6MApyeF9sZW5n
dGhfZXJyb3JzOjAKcnhfbWlzc2VkX2Vycm9yczowCnJ4X25vaGFuZGxlcjowCnJ4X292ZXJfZXJy
b3JzOjAKcnhfcGFja2V0czo0Nzg5CnR4X2Fib3J0ZWRfZXJyb3JzOjAKdHhfYnl0ZXM6ODY0MzEy
CnR4X2NhcnJpZXJfZXJyb3JzOjAKdHhfY29tcHJlc3NlZDowCnR4X2Ryb3BwZWQ6MAp0eF9lcnJv
cnM6MAp0eF9maWZvX2Vycm9yczowCnR4X2hlYXJ0YmVhdF9lcnJvcnM6MAp0eF9wYWNrZXRzOjcz
NzAKdHhfd2luZG93X2Vycm9yczowCgpTYW1lIGJlaGF2aW9yIGNhbiBiZSBvYnNlcnZlZCBvbiBi
b3RoIG1haW5saW5lIGtlcm5lbCBhbmQgb24geW91ciBkZXYtcXVldWUgIApicmFuY2guCk9UT0gs
IHRoZSBzYW1lIGlzc3VlIGNhbuKAmXQgYmUgb2JzZXJ2ZWQgb24gb3V0LW9mLXRyZWUgZTEwMDBl
LgoKSXMgdGhlcmUgYW55IHBsYW4gdG8gY2xvc2UgdGhlIGdhcCBiZXR3ZWVuIHVwc3RyZWFtIGFu
ZCBvdXQtb2YtdHJlZSB2ZXJzaW9uPwoKS2FpLUhlbmcKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
