Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1964C474709
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 17:01:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A477160BDD;
	Tue, 14 Dec 2021 16:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id paVYV7s1-2_W; Tue, 14 Dec 2021 16:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89BE0605D8;
	Tue, 14 Dec 2021 16:01:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5D01BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 06:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A48481384
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 06:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GDwdfEKBW-C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 06:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4C978137F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 06:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1639463994;
 bh=AnY0FXth2uT3DootG1OkAz5YN7wfCnOeoOzAnGdj19g=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:Date:In-Reply-To:References;
 b=B3b8jHviVMGMjfE/xf4LSW3S8HdmyW1U1WtQOf57rTf0Z4oKgepiogq2Xiu1DgHj0
 fggO/+LFyyzHkRbPrHjxHXJqnxvFeombw5ATmRYNsWxwWqGeFM/14u0YaKVBJlAcVp
 uVYCxbJCcdbfnvTOJMuY8hOJxu5akUASuK6suIv4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from machineone.fritz.box ([84.190.129.90]) by mail.gmx.net
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MA7KU-1mmX4t3wQE-00BfUn; Tue, 14 Dec 2021 07:39:54 +0100
Message-ID: <d1867ea068e57702bdd953668a3c992f3e205ded.camel@gmx.de>
From: Stefan Dietrich <roots@gmx.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Thorsten Leemhuis
 <regressions@leemhuis.info>
Date: Tue, 14 Dec 2021 07:39:52 +0100
In-Reply-To: <87wnk8qrt8.fsf@intel.com>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
 <87o85yljpu.fsf@intel.com>
 <063995d8-acf3-9f33-5667-f284233c94b4@leemhuis.info>
 <8e59b7d6b5d4674d5843bb45dde89e9881d0c741.camel@gmx.de>
 <5c5b606a-4694-be1b-0d4b-80aad1999bd9@leemhuis.info>
 <d4c9bb101aa79c5acaaa6dd7b42159fb0c91a341.camel@gmx.de>
 <87h7bgrn0j.fsf@intel.com>
 <6bcce8e66fde064fd2879e802970bb4a8f382743.camel@gmx.de>
 <87wnk8qrt8.fsf@intel.com>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:RiWRIMtuWVXoDkIC7M8NSnDGO7Rp+EHeW6tydokhA9qJQYBrtT8
 G5ke373qJUrZ+XMLoOyTO1Omua7GunCbdokEm4xPCBsBSY08/wex9vx82NfNiVzDgy0Eblj
 b0EGdtraERvm8DlBDbhPVJoIOF/HNpu1TIFIAT3gMh96njRlUTUQ+jvy+q0GF9RxKE9KSUL
 WSvCy+YczVY6SfzCR7ZEg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:RI6SScsUaKY=:T3p6lPS1jMOTGse6jxNDI7
 yHkJ5dhYkJ71EI3Hj2V3YG6aaNVYRB3m0fOt+l+bOfO3vrqyrFRv4SfpasneEKilKMXdIOaSr
 xWuRhX6yyFQcJpnQDBCYrjrllUF+rwvb1WNYQw6R3lLPzFmqUnHmgZjUxGTDdFFReZnz193dv
 OsMwkvjNsyfRmcdfromy4ChOugP+RatLUIEtEx9VsZ5cgf6dD0YDMxy2E7GF6YdFsfVPKmqcL
 jEwoC33sijQZDX74qSR7eQQxpHA7GjmhsSF0eKVW6bUkb0T5OtLVpQbbeTAeckzX9ag3FqM23
 OiB6H4jeenILWbTpnJP7k1irX8OgRNxaEk42eK+4lZXBjM1ummgFNRQABwCItkAXicl8eVEOB
 QmqMUS5XCv2B+Rd6sH+3C5f+nDqdTU3ShwVtZwgj3ZBbSybYsT1AmeM2MDqXUSGYtyvvu+i78
 IbURMG85tFy+PBn94diG8qx2UARXc7TA+z1zffnp3ZedN8/ZXR9FFX48almAEgIVOvfmLl4//
 eETv5yDLu1/RWqbZ9ZNynrTOc178arr9p8EmMPo2Qbl36QjVR0SmPu+8IVjm/8LLwIm2/y2Xu
 LQykYIQhX3w5KPNBVrtXrQyD4xUfXWpucHtQcFHDRFFQGB+BjigNdE0eKwgAyNqUb4wVdMQyz
 8Hmf7r9whTxxI88l/y/REIDIUrIzH2+rJOc/xHuO0w5T11RAQN2JDXnmzE2VuPlr8lrC8LcSP
 MS+JlqoSX002QytTrTq3K4mMlqzZPD5qes82wseJ/yZ7Qb/vWh4+nbwar3t7Vnd8D1yl5J84q
 0ZMUyiEmuJNJNp7ZX5Akll9td+17Tq2e1odcGHVzLxz457RPhDjk11SehVCYIu0dtfe4pJ5zV
 Yitshd8LHRH2hnpWO8E9ZjbfHIz/o3QQzyZzSeZNwgmVDhOR2RNMGamosAq1BLOUt6fOY7WFt
 JBZfBntVst0wDhQqVV83K2Go/KBt1MpXRXMLSHM8oiQ85D47PSII9XfC9s9tZiYt3doGqxt9I
 zKENY9IIqNxwf84r5gU2hnU4z8qgGdHy6ZmryIca/e0IIHZ+dYHa9nJXfT9Y72YNeQ==
X-Mailman-Approved-At: Tue, 14 Dec 2021 16:01:14 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, greg@kroah.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

thanks for the info and you work on that issue.


Stefan

On Mon, 2021-12-13 at 10:32 -0800, Vinicius Costa Gomes wrote:
> Hi Stefan,
>
> Stefan Dietrich <roots@gmx.de> writes:
>
> > Hi Vinicius,
> >
> > thanks a lot - that patch fixed it! Both "normal" shutdown as well
> > as
> > ifdown/ifup are working without issues now if CONFIG_PCIE_PTM is
> > enabled in the kernel config.
>
> Great!
>
> This patch is mostly to give us time to investigate, this seems to be
> an
> issue related to that specific i225 model. I have to track one down
> and
> perhaps talk to the hardware folks and see what I am doing wrong.
>
> > I've done a DSL download/upload speed comparison against my current
> > 5.14.0-19.2 and did not see any performance differences outside
> > margin
> > of error. I currently have no other Linux machine I could use for
> > iperf
> > but I will report if I encounter any issues.
> >
>
> I wasn't expecting any changes in performance, I was more asking if
> you
> had some use case for PCIe PTM, and something stopped working. It
> seems
> that the answer is no. That's good.
>
> > As I am not familiar with the kernel development procedure: can you
> > give a rough estimate when we may expect this patch in the stable
> > branch?
>
> I will write a useful commit message, take another closer look to see
> if
> I am still missing something and propose the patch upstream. From
> there
> until it's accepted in a stable tree, I guess it could take a few
> days,
> a week, perhaps.
>
> >
> > Thanks again,
> > Stefan
> >
> >
> >
> > On Fri, 2021-12-10 at 16:41 -0800, Vinicius Costa Gomes wrote:
> > > Hi Stefan,
> > >
> > > Stefan Dietrich <roots@gmx.de> writes:
> > >
> > > > Agreed and thanks for the pointers; please see the log files
> > > > and
> > > > .config attached as requested.
> > > >
> > >
> > > Thanks for the logs.
> > >
> > > Very interesting that the initialization of the device is fine,
> > > so
> > > it's
> > > something that happens later.
> > >
> > > Can you test the attached patch?
> > >
> > > If the patch works, I would also be interested if you notice any
> > > loss
> > > of
> > > functionality with your NIC. (I wouldn't think so, as far as I
> > > know,
> > > i225-V models have PTM support but don't have any PTP support).
> > >
> > > > Cheers,
> > > > Stefan
> > > >
> > > >
> > > > On Fri, 2021-12-10 at 15:01 +0100, Thorsten Leemhuis wrote:
> > > > > On 10.12.21 14:45, Stefan Dietrich wrote:
> > > > > > thanks for keeping an eye on the issue. I've sent the files
> > > > > > in
> > > > > > private
> > > > > > because I did not want to spam the mailing lists with them.
> > > > > > Please
> > > > > > let
> > > > > > me know if this is the correct procedure.
> > >
> > > Cheers,
>
> Cheers,

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
