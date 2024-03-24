Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF543887CD8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Mar 2024 14:23:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9619481E65;
	Sun, 24 Mar 2024 13:23:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 51YQ9c9fBXGx; Sun, 24 Mar 2024 13:23:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D353781E49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711286610;
	bh=MTqIB3naOtDYLJf0K8rUUG6vL07A9g5twS2/717iwn0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KRKqeQ02oePS07NiUjqGU4jcLJTJQ3rjxhtNbJQ8dJRxo5fmbYZIpVirlGTyCAD/B
	 oDBEQOwKGuGgM1duuxt7bn+qU3LXBwjfuaHTevhRt0wJsBZgm/8lB0BCzXiMlnHphe
	 AAgevGTPozcd+/Uw5Q8t2uYBwuKm0Yc7xvI/aKUIfyPoX3NWovywwRCo6ClCxMNgAA
	 MFx1oab0ewg7WuzG5N3DhfQxTSHHsBRTeIzu+gfpqOoYK2Ami5BpkC2Zc2zQtFqt0s
	 Xh2E770H2TLeOY1Y6kSlUsn2qOZ/nkvUNC7c12CvJ8Icse6ku62zfWvo4YaOsiR9zz
	 Mb1a0AuhN40Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D353781E49;
	Sun, 24 Mar 2024 13:23:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10F191BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 13:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0608C400E4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 13:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zxvPX_B18CcH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Mar 2024 13:23:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.12;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4094A40184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4094A40184
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4094A40184
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 13:23:26 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MdwJY-1sPNJp2ydq-00b2mp; Sun, 24
 Mar 2024 14:22:47 +0100
Message-ID: <4366d46d-0edc-4e45-8695-9fbaae571049@web.de>
Date: Sun, 24 Mar 2024 14:22:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, smatch@vger.kernel.org
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
 <08c9f970-3007-461a-b9f9-9ab414024f68@web.de>
 <f292facc-8a22-42e1-9a41-5ec8bd665cb7@moroto.mountain>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <f292facc-8a22-42e1-9a41-5ec8bd665cb7@moroto.mountain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:CTdIMvqo4D4qp88LUdaGqZIeHr1rsg3dFK6XkIHsGrHhX8hygEY
 xeM1L1NTweuW3yDjP7/0iUWobOfG1BjWaTh6I8vwbM+vIvzxR8Rk+KlwJTjzxlTOvCwFLiV
 +ZneA5TyR0xTkqnQYujVvGiIS4L4sz89Ic4B4ewElUyLvHfwQP8x1gHUbg0FmhebGh9xuHv
 M5jekW0cafP2FWuE+PxZg==
UI-OutboundReport: notjunk:1;M01:P0:q96qtKu9Jgg=;9ZP3rm0Jn0OfUlIbeNEbpN9nU/M
 xn8mc10NleKEXz9b2oluXRoccSYgAKwfacOkizrpDcGDnA9ZWAPjXgL0sHcLDNA893XhI5baF
 Za+a0Dk7zhjy1NtgOnvWyo1VV/UazU3K/hCP7pN5n3u0QSt2GaCFi6B4yHoUq2Ca1IkSiKgGf
 mPBqFcSyKwCofpDzEZzRMioDXbCcVphpYLX1UZmKVTZ9kWB3QeTYLNPiqwEXvYtoH6y7PVkPZ
 8/AAtegyu4TxtA55uI1LMi1g3y/oTkScC1n2JyvuIZSTyd+P7Aiu0/zI0sVEV6Fvh6LXyo9ar
 HMVXM/t+fcB0cwP1jVYymweYswOrSkcjfxA1D3tHaPhbFU+36QYNWLxDc64kVOMFVAsqL1EN0
 t9Fdg+UXNwFhJznxczvf6pUV+ji9bp/9YQsoglcoc0iCQgxAVv9QWk/lfReVIiThk9d5nxPGD
 iPz3nrl6c5FQlW0yHtfCg+x3RHaPKHSL7OXjG3R/sNIvaVD4AhynRV20X00jEHmnwwoqpQkUs
 WsH+pdc69FXbRYfMOxKH8Nx1DnTeFcs9qhzXhkq9Njp5il1TpSkUv5u9bzUo/u7dIXM3Eluur
 q7getxrKfv/PYUUZlRrQgVuVBQYrllnrQLWWhxGdR6eyA6NOnpefkkkpH4yVGdRsqY+AgeV0V
 t5Qb7luwnYivTUSN3geuL32ZCRpS6mL0G+CQx3wjQxVFmD2kU47/FShQQqTnLsedVWrq40npN
 IYjTeRXrsJeAvWv2mPe+RLXDx2BghdjxTKoeGWSVVioGfXoUHr2SkEU7v2By3wcXP3FoJWrkH
 BFs1R1u8LpCFyGRh9sx5j5NlL9a4aTob4DGb4OPMaPmFc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711286567; x=1711891367; i=markus.elfring@web.de;
 bh=MTqIB3naOtDYLJf0K8rUUG6vL07A9g5twS2/717iwn0=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
 In-Reply-To;
 b=kQMkCT8m4qnhAjinVUeBCnUPEwveJL7b1XTagYv/8FdtFu0EMKMtUIVVYCqVa75w
 /3c8fG62V4M24e7nUi2Enyopu0uwExw8XTJCPsS3EWipxVW+O4tajAz/IHmfoVwCG
 QmQVAsYLSHWt403NGLaumyQ9pAf6LTTQgM8qUEJMwKJ350RlMU5gcN7hAYUyXs+hE
 TEEDsGYslfqrRz9XhPkwr+kZ1M3V2aH3Z8CGhIXr/bqXN40sio2duh7KaQnR3A67W
 IuZ0efVRBu4RdU3f7bm2EngEiq5zm15a+GgprRFRFO0dYlj8kvmBAiDtU6Hd4pqSR
 PyFMe0qAYgOviryUZg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=kQMkCT8m
Subject: Re: [Intel-wired-lan] [v2] ice: Fix freeing uninitialized pointers
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

>>> Automatically cleaned up pointers need to be initialized before exitin=
g
>>> their scope.  In this case, they need to be initialized to NULL before
>>> any return statement.
>>
>> * May we expect that compilers should report that affected variables
>>   were only declared here instead of appropriately defined
>>   (despite of attempts for scope-based resource management)?
>>
>
> We disabled GCC's check for uninitialized variables a long time ago
> because it had too many false positives.

Can further case distinctions (and compilation parameters) become more hel=
pful
according to the discussed handling of the attribute =E2=80=9C__cleanup=E2=
=80=9D (or =E2=80=9C__free=E2=80=9D)?


>> * Did you extend detection support in the source code analysis tool =E2=
=80=9CSmatch=E2=80=9D
>>   for a questionable implementation detail?
>
> Yes.  Smatch detects this as an uninitialized variable.

Does the corresponding warning indicate requirements for scope-based resou=
rce management?

Regards,
Markus
