Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC492631356
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Nov 2022 11:32:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D898E409E6;
	Sun, 20 Nov 2022 10:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D898E409E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668940373;
	bh=DkvqRn0bfFxq//KBS3zFBbXe/kx0iRQeCI2uDSwG3OI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v94sfa8IA1AL70TwGeITqDVpfrgphjvE79uG+uQSgk3e0DM352pjeXs1MEJbC/yZT
	 IiYAminP+9W33+08umvudYpBJ5J+dv/+Txu3PPq2p52O9zRMdMHWrRn0I0i0WzPooQ
	 /fJRFW7i0KUKPkgIXAzJtUi2u8YVzwns3ka5zkPTvSrEKZZLFadi6k1y6MkU7wBHuW
	 YniIxDaVKcV8sV90EICNDyIAIaacBj4j4fhEohP6gKzEmRnuq99yvC9M4dBbFQZMF3
	 Lv51ZjBZ/7tNjeIYYXqh6lz3R/KrEhse+9oJXZQBlb9/sG5PQd0++OntGBxyr46MrN
	 MtcujGXcory9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyzM1vxvTawg; Sun, 20 Nov 2022 10:32:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7581A4098C;
	Sun, 20 Nov 2022 10:32:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7581A4098C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4F311BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 10:32:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC1AA409DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 10:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC1AA409DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FZG8oDF4xBYC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Nov 2022 10:32:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FD9E4098C
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FD9E4098C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 10:32:45 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1owhcr-00035t-Kz; Sun, 20 Nov 2022 11:32:37 +0100
Message-ID: <8117aac8-947e-49ca-c2b1-ef45c2914975@leemhuis.info>
Date: Sun, 20 Nov 2022 11:32:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US, de-DE
To: Conor Dooley <conor@kernel.org>, Jakub Kicinski <kuba@kernel.org>
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <Y3gTdsg4l71L0vz9@spud>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1668940365;
 77741396; 
X-HE-SMSGID: 1owhcr-00035t-Kz
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 regressions@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 Ivan Smirnov <isgsmirnov@gmail.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19.11.22 00:21, Conor Dooley wrote:
> On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
>> On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
>>>> Is there any update for the community? More and more folks are asking. We
>>>> are all techies and happy to help debug.  
>>>
>>> Vested interest since I am suffering from the same issue (X670E-F
>>> Gaming), but is it okay to add this to regzbot? Not sure whether it
>>> counts as a regression or not since it's new hw with the existing driver,
>>> but this seems to be falling through the cracks without a response for
>>> several weeks.
>>
>> Dunno, Thorsten's will decide. The line has to be drawn somewhere
>> on "vendor doesn't care about Linux support" vs "we broke uAPI".
>> This is the kind of situation I was alluding to in my line of
>> questioning at the maintainer summit: https://lwn.net/Articles/908324/
> 
> Yeah & it is /regression/ tracking which I don't (or rather didn't)
> consider this situation to be.

Yeah, looks like this is not something that look track-worthy for
regzbot -- at least for now, maybe it one day makes sense to use and
improved regzbot for bug reports as well, but I'd like to focus on
establishing regression tracking properly first, which still requires a
lot of work.

> I'm generally a little unsure as to when
> I should trigger regzbot in general:
> - immediately when I find something?

Yes, ideally, as documented here:
https://docs.kernel.org/admin-guide/reporting-regressions.html

> - only if it goes a while with nothing constructive?

But that is fine as well. But FWIW, we all don't want bureaucracy. Even
I don't add each and every regression I see to the tracking yet.

> - is it okay to use it outside of "this used to work and now doesnt"?

Guess I should clarify that this is unwanted in above doc.

Ciao, Thorsten
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
