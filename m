Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 283918B5C7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 17:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA907404CA;
	Mon, 29 Apr 2024 15:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uf0WKqMqLbl0; Mon, 29 Apr 2024 15:05:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54F3E404C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714403132;
	bh=nIM0kF53eMsKebnB69nMRQDFX/NcTU//w1F0rF/SQRg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1wpJhL3DURlVyDZc9bP6+5NSGRyUpoQ3GAfun/UNHRL9nWK7ktxiuSIj6Lqcg9+Mo
	 /dQq8XYGQg7wcwiTi4CkzZ6qn850DcSIY2kaS65xFhuA7C/YX6BXGFFirXgiNbKXed
	 LocWSgYcd8DZARSGEty3Zd3owfugpN9RNOs3d/nLorHoEooBH9/rwrfDjXaGaot5cN
	 1WPtxA5Uo8pZesvu8mUy1Y359/XcA25woG7ByQXqkgc15GeaW6RJ5yo7f4W/CVgly/
	 +wVbDUzk55pfqBeYmmDEgBrrKuVxOuSOVR9wjDSf0dfIU/akxB0Glb4MojgO6u/Tm5
	 xhkzCbtKsdLQA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54F3E404C8;
	Mon, 29 Apr 2024 15:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F37B11BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 10:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF149606E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 10:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KwlefUliaoKY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 10:59:46 +0000 (UTC)
X-Greylist: delayed 310 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 27 Apr 2024 10:59:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1446F606DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1446F606DC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.21;
 helo=mout.gmx.net; envelope-from=aros@gmx.com; receiver=<UNKNOWN> 
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1446F606DC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 10:59:44 +0000 (UTC)
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.25.110.37] ([98.159.234.26]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mq2jC-1sVtyd2ozq-00niar; Sat, 27
 Apr 2024 12:54:25 +0200
Message-ID: <2330c23c-e99b-454a-b195-32c5b4332071@gmx.com>
Date: Sat, 27 Apr 2024 10:54:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: gregkh@linuxfoundation.org
References: <2024042328-footprint-enrage-2db3@gregkh>
Content-Language: en-US
From: "Artem S. Tashkinov" <aros@gmx.com>
In-Reply-To: <2024042328-footprint-enrage-2db3@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:rYE8ntWQoWfPXtJcQSmSMLornpL74RVw50TEcun9H6wYBruDar9
 20//qEowj3Bmqe1jd6rweWraI7/DlwppyjZc/uF9m/L2CpEYJFvLO47a3Rgl3skbVU+/C/X
 BXzONwUACKQ9jb/q+A8T0Lo5UpqS6a9fszZaIHn19jZcubsuAAszrxTdHwwBg4hbOcZf0Xm
 ig1x1KWwjX/vwc+24dWkQ==
UI-OutboundReport: notjunk:1;M01:P0:cSQXve4jMYo=;pqMcneYEwCgmUZrk5Q5hL4Daa+0
 nLd0OOMrTW9lO5lZpWLzOBGfU/8a0hOFhyRI5OtL22pJ75pKcjsOa3oKv2gddko12LSCnMATB
 UAjs5BNpXNBWdqVPRkeHQFQ0I/+88xJtDwYIfF2J+kOKlZ9MuJy15W42PAl8puAXPZPsSSvSU
 iCBCjXxF8cBOjyT5MJDz6h+k5Pp4rNfaowLhTFWxkydrfn+l3L27h3In5H++V3lxJ6XeCIySl
 GLz6iybff+wCtjACsx1tnGsMrb0i2GWawYvrQxIk+ZLPe7aGtqQFkhrzfrNtNtqmEFW6Pkq35
 7PGplcn+otD/fH2WpXin3qNyFu4HUbgXyngKTio9Hx096iubsAW6tCV7oJYH4jPMO+c4CEnnE
 1L89gyaYZxOxfXmQLh6b+VXV6e2MwKpPDjdW5T4H3QILw/VOhyuSo34yJkDxT8CQXKfs1nsLz
 737BF7rF/jJfyMyRySPYffgoUNdA9bRwTZ+48y+f8u4OKriZAbyjMNbjyAaDFf0g6islKZ/O/
 +Y90ERreM5hzYWHKymg03aGPYiyqDqG4hVCL5p2nl/5/XKObYI5zdNTiFyoyfqKqaI/l5dDpc
 P9CDAGeyIgPt47XV0aIr2P0rU3l0fviIgxX59tn97S2/z7kwxOSZAm2afvB7eXf+ytHQiFqiG
 kyv2nBtdWwmODIWv5eNX184u5clBfOlrgt50ns4pA79p6Qhw75TDcpmVMFRz+LOM1ehZ0Loho
 cHXqWnRgzLZlTxEBaxtRO/cY4Cwqt9aLABvP70D+te1dnuGybECj3Lwt6TTzqVVT54Vybw8Do
 gNlnyfGX/ulqZnQSqX+sC2ijKL8MbrwdakAFRwt5MNdj0=
X-Mailman-Approved-At: Mon, 29 Apr 2024 15:05:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmx.com; 
 s=s31663417; t=1714215580; x=1714820380; i=aros@gmx.com;
 bh=nIM0kF53eMsKebnB69nMRQDFX/NcTU//w1F0rF/SQRg=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=rY7bk4Bcm06FHGhQmX7j8Seb9UylAqMyy9WhbxvlbNsFin0UxHRAddCDo8i8Sftl
 INXTL43B4VJAvcQqeeGL7xaY0OF4K6pbSKJEqn+cqIEzHmWYaQqJU4AP/5BQ9u1yO
 LnbOaNoJkXC+vJ5xvC6Cf1WAd8ZRDWWFtIchuuVvQzm/bvc72Kk2hCD3v3qlwXC/5
 bgtxcRDlWw9t/grtnNbYp6jaAKfrKUz8mfv9Ck1OrC9e1duPWcEt3zCaqu9a1j9cH
 Ja+g6RmMAowF2iOz7Pmf6455SUyZZXv1CHWXp9/z2t6srDfBxpDeRw5QScFNO8L0u
 n3BO+KJoBjviM0+rng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gmx.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmx.com header.i=aros@gmx.com header.a=rsa-sha256
 header.s=s31663417 header.b=rY7bk4Bc
Subject: Re: [Intel-wired-lan] [BUG] e1000e, scheduling while atomic (stable)
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

This fix is still not queued in 6.8 stable:

https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/queue-6.8

Why?

Regards,
Artem
