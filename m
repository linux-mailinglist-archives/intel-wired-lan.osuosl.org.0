Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7352B887990
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Mar 2024 17:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E51F60631;
	Sat, 23 Mar 2024 16:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-gwTfZY3mG9; Sat, 23 Mar 2024 16:57:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC9BA60632
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711213043;
	bh=Mm4VZjgznOtn+DsFuQ/+wbzhd9T3mnnR8PtcFlTVgYU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nfwstz9Y/UgKu6UI5WOf8S0fRTUV8WmwN68UA0GeLuHscaQYzhyds90traIzQIcOq
	 wEqNdXf/AqKwdDCZh9Cw/L1HxeEjvguXaGjberxVxg6XeYLrQcFDqkgZWtiQ0uvKO3
	 DLDfhLl2etfRJwppEY96A1yhkaNr6rxcHW6Fn1w1zxYgmZf6yOB6u97GOqibvZRFdi
	 Zs0xurbQWfh+1a0OVPiGu0H/w5OHvzVSC/mI0U9VNQYSkS37Q/Nr1BtCX3D77qAASg
	 VvaCHl4iPFZxPQ/GLBGN8Ytyg95OikxGCR52YeJvKBXXmZqF7Lmrf5sCxYa9V92LB5
	 CwwwKubm5i+gQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC9BA60632;
	Sat, 23 Mar 2024 16:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5CC1BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Mar 2024 16:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B38C416BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Mar 2024 16:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k8r8LBnl765n for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Mar 2024 16:57:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.14;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6AAD5416AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AAD5416AF
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AAD5416AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Mar 2024 16:57:18 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M1rPI-1rlrkQ06jA-00EeCJ; Sat, 23
 Mar 2024 17:56:34 +0100
Message-ID: <08c9f970-3007-461a-b9f9-9ab414024f68@web.de>
Date: Sat, 23 Mar 2024 17:56:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, smatch@vger.kernel.org
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:kiRndK7BLuqFNuvVd1HXr4cnMYe9v3VzpVM5ramyWfnyTZFlD9k
 jDgrNy/xc1Igrw6zJX46ksdqOAEaGXkpq//gCpiR7kVDv+sqxUcItMvJ9uF8RqEuJgG3Psc
 bfZ0khznwVaXT/soerN977m+mA6ciDIR3eJjMnc1Zn/5R6DorbePBTrGJBGkegEP4/45eTO
 zx/KKh7vxXRssW+vjn9xw==
UI-OutboundReport: notjunk:1;M01:P0:PMFs1vMvo1c=;MP5SqoEPyH6wB6JcLKh21elBcjh
 ORtQoEW8RXCAUKrYrlNE59jzLNMV4ffv/gcBPaSMk2F2DY4OE3Hp4ruvt3MHqXLEq4pUgEJ7G
 R4BgRVjxnP4iemqB74azluTGiDDxszrrptAyBKWD1izc9Vw6I4VV73FBWutkJgFDhOnXBI/1v
 0mVlZ3WG+8cMGzg3UhmdlvZRxStcd3M5Sc/1eDfsYHIij7jlpGOdkr3cMpvwaQDxht6dSV1FH
 LkNgX1QR8PFqHTGfY6K77hB2tRDE9cJa2jJ/1sMWjNs9mduY2PMW7fTQ0S+oAf2+O9dSa1vpt
 vCpvcIq9hjELeVqs0nVNPoioeO64S01tIuwJcssYpx/M/NN+RYyGXDZsa9Y5v9CEmz2jpZra0
 a2YqPXAjfjmHkuqGvfZJNyb3fdcDFeY+5WXzKL36srPqdXQe6oG+iaS2KThnVjNKXjQ7Ylq83
 zUfcmsZaV7PD1ralRp4lVtRSAWbVsHTvJqoTGMrNM+SWdvoWXXajbtNZficqydKbtgmPIsEgq
 txTFb+Dy+tXEOB9t15MZ4O5hPYSo5hOyffgbRO4w/EJZdmQQ8ruKnxGL7VShHI6viVBlB6qfW
 VTirBVHcSYXFWtVxxpZuYmWmC9AYJbZP+qij1k83/g/JBVjTUTQ5XjJA0BwEWwBK/ggLBS8Gm
 Tb/N+/ouJRfuMwuf6vXdQ+a3codQtXH2fUqW8h5qG/ocF3XK0CN2bGBvx2cpdF0FZ/Zu42R+0
 yz3Z9pZgDoUzUOz6MoZGy6UCZvfNxcLFAXtbtK2nLF6W2dC+S0dKI4nQM30UhDP0u7RLarx2J
 KGOxkTrXY0NN10C4Z1pMBBpnffSQg/tebkWXHo8Gflr/A=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711212994; x=1711817794; i=markus.elfring@web.de;
 bh=Mm4VZjgznOtn+DsFuQ/+wbzhd9T3mnnR8PtcFlTVgYU=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
 In-Reply-To;
 b=lIVm9CBQIGpAwxCkaZ/3KyokahHzcoIXCHe0iQFkB0bp75KLBDjin1OvQpffK7pA
 oLoEiZTVGh8Z+q/dQZT2v7npFVyOp/egYZEdV3zrswAapQ7SIf9SHtUTha8WSFdQy
 oE9TrrhEqZgJ520C2IZ1b/3t3UYIeSrSdRTz7x2cluIoZBSdeanstrgnYYXAZrjrx
 OvoxFZXdrCHM1d7S0zduv7Gz++qNT/j9+zXhIJbLuLt5jb/Uc/7sGxMQhRJAn7PjK
 I2F5jr9oVZJGJWRJYVyvgFviqygSbYDspBkSenBrcjLh2Qs72EkN7appBIXl24scR
 7uNvUhm+nv/pafIxwA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=lIVm9CBQ
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
 pointers
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Kees Cook <keescook@chromium.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Automatically cleaned up pointers need to be initialized before exiting
> their scope.  In this case, they need to be initialized to NULL before
> any return statement.

* May we expect that compilers should report that affected variables
  were only declared here instead of appropriately defined
  (despite of attempts for scope-based resource management)?

* Did you extend detection support in the source code analysis tool =E2=80=
=9CSmatch=E2=80=9D
  for a questionable implementation detail?


Regards,
Markus
