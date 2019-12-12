Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AACF611CDD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 14:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F08288329;
	Thu, 12 Dec 2019 13:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1DaONXA79603; Thu, 12 Dec 2019 13:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DDE08831D;
	Thu, 12 Dec 2019 13:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0084A1BF42E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 13:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0867882F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 13:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mtCtQLeeIPyf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 13:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5104882E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576156028;
 bh=qgo6gZF0gldl0ZMHZ8yTwMZ3dHpJn+mzOasKMjCuly8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SZ+ClA+ZHRW0Dv8x7FkiYsEgr7t+s1OSNhlo4OEyZiFnnodlK7eprQ+S1jTkq3j0N
 kHFQB4RziDrMkVTxo6NZU5ZEMIz3KBW+1GF5f36JbeVXVZySPWZCETDyGB3cKS7aqg
 kzkzVfVcDF0eGiiVxCOFWW5yI+F9bcFI1+aLkNQs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from minako.localnet ([95.91.225.194]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LbIiI-1hz8Ov3vFy-00kzn9; Thu, 12
 Dec 2019 14:07:08 +0100
From: Jan Janssen <medhefgo@web.de>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Date: Thu, 12 Dec 2019 14:07:04 +0100
Message-ID: <5085570.ijSX0aXlux@minako>
In-Reply-To: <96bdb43e-2a7b-028c-c9ed-98e4477f6b7d@intel.com>
References: <3945198.J3aOToa6sv@minako>
 <92b94935dea3b8c7e7236d6f4e1ac148e6cd2ffd.camel@intel.com>
 <96bdb43e-2a7b-028c-c9ed-98e4477f6b7d@intel.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:/zUBZr/fOZkJxJ8wSPZOjhE7INwoJvXyU7qxHuhhIYFpYBoiRt3
 2QQgrVKQBhP4lJTs/M9lvb2lLMGbafA9ZoaNa4gFE67CSQLv79h4q0mTr++FvY5NDFfhyHT
 FEZDeKWJlSi9x4+DSumhIRsu9x7dWHnBAxivW706MsGUo1j5c/c8/5ClczAej1tTH4EH1St
 iptQ9LXotttX6QrdkI1Fg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zga62G58kaE=:EvehYPaz1tusTaKAbf5rPi
 pLtgKgSsHe9gMqGoR1H9Hk0EzaI+9fVXUve8Vl76sYUm1zHGvOVTSP8kK8yB+n/IYRtKW/qfh
 iqOZZCDE0QSlmCNYTeD+a4sC+WDQxJF2UV9lntivdkKikqwHqu4SnokyLdOt0WU33JRa5VjnX
 bM+ZP+rYBr34E8Ax+L3y7n1hNJwvj+/tNThItDPZ+ZYrfFnQMiR9Rok6eIpkBA+wzY0xiA+ei
 bPwEaq4opfHFH9YR2KZPd14NvDQTVGF85UyX5qI2iwBqG4x8sEmhkAH+4uJseVIi95uWlzqqG
 t/gmv+K7jXKeEAgWfC6VIaChoF2Gu4ezJIJQmpyBsB87PWzkdLzMTSO7eJfI++dGbSadC3Ez+
 bdmvMS5r8nibvwH0TaePINFPpQWDJ0KrRi0NBShdVYs2EzCyyKegJpDOiUtgaHfOfiEiXQ0n9
 Rf3gqiEkNHaziSM99eB+dHcCLuwDyxDekt0AgSYiX4tli6eNMsCaL8B8BbeFDl+KcXXEf7Qcc
 OuzWwQefupCgA4ww5+Rvpm1qydf3h2+JSorAxx7DAzB6okFlo7bvAjOZRK+tw5GY2+s3qpZHj
 0dJA7k67+6kokmeLLPzQ1dKZ5SukjWTRiJIT1CKHEJCpdBBEeowXFfU/plaL0mygZMaJ9Pr42
 4DcWyXnEAAYf/KAbf439eXVllVS1g8B5Bqkp3fyhtwhKd3Zqi515oPucigkcOEbVnIzZcy0hl
 lUEDtOxvZ+IrAMC/QI0Fyyp3ExvqPd46KvExXGFESEa2R8rkz0cU1JJNA5B3B+kNhqbIeJh45
 KUPoJVTV7WsQhiQGaYFqIk1LoensfUQcY6shUx/JBkQD9BKt1xK+P6iCD60ybmVJb1prvykjZ
 X5r3Av58UVvEdxy5++IzGwjGQuVMwQHGAI7jXUlBPGvRpjpauNo8lrhvIt3bLm83UaCdR34D/
 34Mtd4OxKNUJs4cEoaHQSibMDjjDJzXA+dg9xUOoFPeL0A/s3u7HkMuaQr6zXViC1kr5hwFKC
 kR9/UA8wCYVmEZk2aL+ZrxR+pbkgP422rW6fIK2+ipPTRipxtHefI0kPUDBdJqCH8/QDBELZj
 QkOu9JkQ12EimBGWBX41yq5K0S/ebeB/CCuFCu+0WwgsfCYrF6wDfh62dg6mOkP43LTwxsA0U
 xAiD5tBi8G4HsYppdfoQ7dwb4IuduqWOFmQAGIxyHjx9ufsHhtqdraBokA2jXUx7jTYnDLZX+
 N0Y5gf+ONIdgJ2FOrpQW6wEYNWwiycW64A2jBjPsNsf7kVB0LnXExZ/JNagk=
Subject: Re: [Intel-wired-lan] Regression: e1000e link not coming up
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
Cc: intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tuesday, 19 November 2019 07:12:18 CET Neftin, Sasha wrote:
> On 11/18/2019 20:29, Jeff Kirsher wrote:
> > On Sat, 2019-11-16 at 12:50 +0100, Jan Janssen wrote:
> >> Hi,
> >>
> >> since 5.3 my I219-V network interface sometimes doesn't come up when
> >> booting
> >> or resuming from suspend. This either forces me to use "ip link
> >> down/up" or
> >> reloading the module to get working internet.
> >>
> >> I reported this issue previously to netdev@vger.kernel.org where I
> >> initially
> >> bisected to a wrong commit. After finding the right one nobody
> >> reacted to it,
> >> so now I am trying this again here.
> >
> > I apologize, this is the correct mailing list for issues with the Intel
> > wired LAN.
> >
> >> There is also a bugzilla entry for this, but it seems to be ignored
> >> by
> >> maintainers too: https://bugzilla.kernel.org/show_bug.cgi?id=205067
> >> For me, this happens with systemd-networkd, but the people in the
> >> bugzilla
> >> report are observing this with NetworkManager.
> >>
> >> The commit introducing the bug is
> >> 59653e6497d16f7ac1d9db088f3959f57ee8c3db
> >> (e1000e: Make watchdog use delayed work) and reverting it did make
> >> this bug go
> >> away. Though, it cannot be reverted automatically on the latest git
> >> tree from
> >> Torvalds anymore.
> >
> > I will work with the e1000e driver lead (Sasha Neftin) to work up a
> > patch that will apply to David Miller's net tree.  I will make sure you
> > are CC'd on the patch, so you will know when it makes it into the
> > upstream kernel.
>
> I heard a lot of peoples complain about a problem with using
> delayed_work struct in e1000e. I would suggest reverting this patch.
>
> >> I've also tried the master branch on jkirsher/net-queue.git  and
> >> jkirsher/next-queue.git, but the bug is still present there too.
> >>
> >> This bug is really annoying and inconvenient, so I would really
> >> appreciate if
> >> somebody could fix this bug or at least have the offending commit
> >> reverted.
> >>
> >> Regards,
> >> Jan

So... when can we expect a patch revert?


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
