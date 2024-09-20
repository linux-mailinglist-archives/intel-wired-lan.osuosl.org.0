Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C00B97D180
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 09:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ACED42B4D;
	Fri, 20 Sep 2024 07:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6G5KW0tedSP; Fri, 20 Sep 2024 07:11:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C40142B4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726816279;
	bh=IxTvS8Re1mH+yLe3me+r4ZHkYxfcUhZvllapA26y+nk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3jNWmJV3or+vloAVbQjaspvR5l7StgUEf716IbmrmzooYoZb77pLFwAJHjVIpllcs
	 8UOXktAxaFya67Aa5bmatLjsx6gEw3cx3D7GVgKPgZYhxCI3qC7pKXXXgmYFfESRV6
	 mInXh2qlDR8SU3M2wjwMsW/oZugZyPuaJRJ8Fd/A2RmK9gvDP1fH9nU7nNR3UjEkXS
	 SX/XR782u1mLnvBpODGMYUvI16RDFEly4omy4bPLJga4J6BA8QsgRynYzA7yiegNJ0
	 SYUwD+Oj46dm5ICFJK0qOKmbpB2SeMK0R9B9BlNlMCQ9Rqf90hdQA2XX/QKu5stjm1
	 Tkk6kx9Fv7/mg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C40142B4B;
	Fri, 20 Sep 2024 07:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C32C31BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 07:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDC306077F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 07:11:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uMM-ru8aZX5J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 07:11:17 +0000 (UTC)
X-Greylist: delayed 323 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 20 Sep 2024 07:11:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5EA0F6073A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EA0F6073A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.4;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5EA0F6073A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 07:11:15 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.91.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N62ua-1ruMR00XQe-00shO0; Fri, 20
 Sep 2024 09:05:14 +0200
Message-ID: <d9ee8571-208a-45cb-ad51-61926ce23d62@web.de>
Date: Fri, 20 Sep 2024 09:05:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
 <58d38533-bccd-4e0e-8c7a-4f7a122ce0d1@intel.com>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <58d38533-bccd-4e0e-8c7a-4f7a122ce0d1@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:okDhtZGdxOeK6rH3CHh40dnLehZXd0mSL2Q2FsgR28JsAvdHXvT
 HomrVNaQ06MtYvCmmHSBEW2YCS4yu1BfWbWbBV9deckg/VQ1utE8seNT5rOb859jETZjMtb
 ekuuL/ifwq49XNI9twz2QjAOwTTLrldZFa0fuUmfa0FhUo5YnGgulnEAET3Afiqk5CTug4c
 1mInlO/A4x2K1CVD6cZYQ==
UI-OutboundReport: notjunk:1;M01:P0:RNoE8jq6XpU=;uAPVM7H0fyW5ie2loAK9vvMzQi1
 3olIxIFm8A7IA8eDEfv0r4MST0rwMx2M4ydi2AKTWakvC5bXF8FNXK0saJHx1iiRZJaKOJEJq
 LQ/OdFQJZGX9tpGquIE3wj43Ee5iQxJpb2vaN+Zhcj9BQ5OnYs4XzUL6nkW+dGK3QfYopkzes
 9xVBDdOXvcgxcxuxWbgudqmfNfey1busuoO9cPr4O9CM8Xj8p5qTr3Po522CUX2oL6SADyuaq
 p3izp5xWxVbv2vHief3ntzd3mUN9SA/7CWJ8y9uBWNA4EMLU/QeSv2IPWzHaCnwRMk9bXJHCg
 awr4bvd/UbNYUhidhISMTM2XnTO7jZEWF9g6gtcMkg6AEgpr3TyWgOGx+Vpxpk7Yg+72MuzIN
 j1KdcvXcyYFLbTxkT3HKmyXJ8CXr3YI/UUAnOzYVvNTb6d9wHgUfcmyojBn4ozKISbglgFb8u
 M1/fy49q+vtvUIhdhEie+dFvutMbsmFGrqxvufbodNBz0j6r6PChwIXxCYAOP184vLKMFBtHz
 jxcDK5mltyx1iJQo3oP3My4gJXmQ0ykvwdaeagsbYRyEB0V/tDeRCPy6h8eMdPVX35jAcBrTk
 8Rb3b7L8tLUAwyVe8Mm0JhQInozGECWDVNdPNhD23JTSoSCovux8zj/UAeJp0vLJCcAJbBGpB
 xNLLbmR0YfCA4OMrOiIt29xwu5TJ6RAhdmP965ohXKqfHkZBfsfT8+SyznkMxTAYNEENRUY/5
 lO1lv/GvwUWiBuU5gbT73fgZa0K9m7cX/+wwnzVjeIxDeZVqpnNiN7SsjXz+xp9foWsqabXog
 6DX0t7MfOU+qImO+lX1G3S1A==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1726816274; x=1727421074; i=markus.elfring@web.de;
 bh=IxTvS8Re1mH+yLe3me+r4ZHkYxfcUhZvllapA26y+nk=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=sl64Mu3bUQX4r7Tq7TSshebQVDyb2tsHo+SsPJpnjOjHde2L07LjhqztRD/KrZWo
 lFvkEY8XzLWRrBwA/3N2J9V31qC/kbtqVhETfcChUcpswWlkTAxaadRSVwlaxEZl3
 HXddFTKTrOs/uFuTX4M0rGx5eUBz9pEJHFzNhzo6PaaHvSK1phD7sKsurGD+LiHGi
 Qyah1xOVYNFeTPUxd7v5ZH0H6fZauhUqavLK0T3QFl3RSwDayS/UM7M1Ud3iOEFy4
 fzSQHPaCq9JQB13etaTp+efO3m2qHc98wd7aTcTEh2LNsr058FGeI18OYDbKAlaLK
 5juGd4xO55jyK/1K5Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=sl64Mu3b
Subject: Re: [Intel-wired-lan] ice: Use common error handling code in two
 functions
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>> Add jump targets so that a bit of exception handling can be better reus=
ed
>> at the end of two function implementations.
>
> Thank you for contribution, the change is fine,

Thanks for this positive feedback.


>                                                 but not as a bugfix.

Would you like to qualify my update suggestion as a correction for
a coding style issue?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Do=
cumentation/process/coding-style.rst?h=3Dv6.11#n526


> Please send as a [iwl-next], when the submission window opens.

Will a patch resend really be needed for the proposed adjustment?

Regards,
Markus
