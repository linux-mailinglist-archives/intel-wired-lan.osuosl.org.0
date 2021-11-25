Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E766460CC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 03:41:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63106607B6;
	Mon, 29 Nov 2021 02:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXEhuOUmcZkV; Mon, 29 Nov 2021 02:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D2CF60796;
	Mon, 29 Nov 2021 02:41:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AC2A1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 08:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9489F4019B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 08:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9dm4cccT9A6g for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 08:44:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5AF140018
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 08:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1637829717;
 bh=pTBKhOyNHo2kd9wSXTLWZDdipub3XoU4TTwUPdwtYiU=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:Date:In-Reply-To:References;
 b=IDSV5F+OB8hZ9TjN4R2UHeKilWHDCh61dsxNvBQxFX0UB5nHcT3KEzC8xDTO6akb7
 5N4qtvrJPzvwV/0/fhUFIUV58uzmt99OEHXHnvHZuI2YWprbuD1GTWi4lPvL6BXXXa
 6kDojIAhFuX305iPrsJ67j5f8bpaA+cu1Qe9IZP0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from machineone.fritz.box ([84.190.129.26]) by mail.gmx.net
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MWics-1n9wEv2IcC-00X0fE; Thu, 25 Nov 2021 09:41:57 +0100
Message-ID: <227af6b0692a0a57f5fb349d4d9c914301753209.camel@gmx.de>
From: Stefan Dietrich <roots@gmx.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
Date: Thu, 25 Nov 2021 09:41:56 +0100
In-Reply-To: <87a6htm4aj.fsf@intel.com>
References: <924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de>
 <YZ3q4OKhU2EPPttE@kroah.com>
 <8119066974f099aa11f08a4dad3653ac0ba32cd6.camel@gmx.de>
 <20211124153449.72c9cfcd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87a6htm4aj.fsf@intel.com>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:DaD3+CAquwpZFLYcwk/TovClM5KKeW5kQ3vzBln9DLhtfHOJM+9
 XjpuSu3uJglb1+b+26AgREaZr7gyqgM08EqOqNz2lfUYvTQU+TfKoulgcBTjjrbdafMTmTK
 8J1xH5g/c4ljWFFwLgNPfk4lipjkhSciYkaPD+5HmNP1hOd50iFjv5ek8EktrolLSRoXM1W
 KXLlnvujjxyyZ1ufBAing==
X-UI-Out-Filterresults: notjunk:1;V03:K0:dYqWouehDqQ=:G00neIJZvNjnP66DW/vhaT
 8ToLECEo3VTe+Bb8zotzAMxuZXt86K9HTYe/tuewGl0Kw7jqX1k0JVYVQZTPMH/5iSvLoUl9D
 zcW+ozwR8XYOwBFqo7C/Zwx1UaCdW3P/xpSVdUM9N2nLhBQyGVZREaIYGcC1TJfioBsIsn5gZ
 E/uDQZcrqVgxMmeLnEO5cRduymAmkJ4owZzJUqJPN9IiJKaRyiPFEmQ8l5Gy/CTad1DKHqlXa
 sn202lRbtGnPitA2oayxrJ51T2WhcKX9aVtBMXg1I6qqZjEKDE02dI9ORMTqPlI4iU+4TC+YT
 4/qCk6OStStLJW8njUs/jaD7sPdFeN/JYLHn7SD2WGAnreP4+I1DVd+Qet1diFMNtxk2/Fl1e
 zDt1RjUNiVaxAEGyNXjcROyFZwumefX4IZOJDIQEABc+iLEGXd2DszRpOBirex/a4PzU41PWk
 oXfkgFrBGIlxr/0PvVWj+jcMnhNr9XAyH6pSVbHR0YU6TpJtVIwdB7CxJPOEdki6eDc0DArQs
 ahvToTqexNrjFv6rOWiB1h9RKY5vgyJtMdkjoNAfqLILW28hP+OWqJYnAk70bwLghYnovX71v
 qY6no770XX358gIcuFqJeF1KlplAzYKim07IYYbhJyEdqPufPKS3dcuC9XsxqSJ+C04T1lpeT
 krrIgj/PI6R4Y8N0xQ6m6/LXkwYy4R9zAvEvCfvY3ZZYmmDqqFjIS2i//73EG/qo3mMRZclT7
 jW/Gqyxzw77k4HJgbZinqeITG2HQEWTjnAAN1EGV4LHNTZpWgv5ry9f0NGQi4rIQBfbLsD1Go
 TAnNVO3l628JN3ZLICp0HBOw03gfp1RHRwCT1qqdw2Wc25jzW6+7W4JR6W+CA2ZxbRbFl54+E
 Ylf/dHVravMNEzAXM26Gb0Txb1r3H0BJ4LYwj+wI0818slCB5GhHRBXlJpOY67yFvfuYbobRW
 VQB+OKsozLZ5bNKM0Rd/A9K/EnCyXq93ZMhfiz6zmyWb7uvF573ijR3nyxHZ00sYArzhcMGbZ
 S77i1c/mrVNFBpXlGgSevN+Ih6gGpnNDLW4h9tvlX2bNPHxa7JCw4RmpeC/lmimUznRmaNQtL
 RGC9og+wEgxX7o=
X-Mailman-Approved-At: Mon, 29 Nov 2021 02:41:14 +0000
Subject: Re: [Intel-wired-lan] [REGRESSION] Kernel 5.15 reboots / freezes
 upon ifup/ifdown
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
Cc: regressions@lists.linux.dev, Greg KH <greg@kroah.com>,
 stable@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

thanks - this was spot-on: disabling CONFIG_PCIE_PTM resolves the issue
for latest 5.15.4 (stable from git) for both manual and network-manager
NIC configuration.

Let me know if I may assist in debugging this further.


Cheers,
Stefan


On Wed, 2021-11-24 at 17:07 -0800, Vinicius Costa Gomes wrote:
> Hi Stefan,
>
> Jakub Kicinski <kuba@kernel.org> writes:
>
> > On Wed, 24 Nov 2021 18:20:40 +0100 Stefan Dietrich wrote:
> > > Hi all,
> > >
> > > six exciting hours and a lot of learning later, here it is.
> > > Symptomatically, the critical commit appears for me between
> > > 5.14.21-
> > > 051421-generic and 5.15.0-051500rc2-generic - I did not find an
> > > amd64
> > > build for rc1.
> > >
> > > Please see the git-bisect output below and let me know how I may
> > > further assist in debugging!
> >
> > Well, let's CC those involved, shall we? :)
> >
> > Thanks for working thru the bisection!
> >
> > > a90ec84837325df4b9a6798c2cc0df202b5680bd is the first bad commit
> > > commit a90ec84837325df4b9a6798c2cc0df202b5680bd
> > > Author: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > > Date:   Mon Jul 26 20:36:57 2021 -0700
> > >
> > >     igc: Add support for PTP getcrosststamp()
>
> Oh! That's interesting.
>
> Can you try disabling CONFIG_PCIE_PTM in your kernel config? If it
> works, then it's a point in favor that this commit is indeed the
> problematic one.
>
> I am still trying to think of what could be causing the lockup you
> are
> seeing.
>
>
> Cheers,

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
