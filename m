Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B82437FBEFA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 17:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E5634172F;
	Tue, 28 Nov 2023 16:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E5634172F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701187785;
	bh=AE6MIGuenR91v7i/8D93INHlQJyX2Ek4KjpqvAARh5g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O21oxOiuPC+MHbxJysDINZB/0wkWQmE8dzj8JRC5ilNeQwsnnVQskCrLqBWpodyn3
	 SWEhJ1By3GvL1TnmcSjp+2eelx3syiOhhjLqjZ5YM7cJ0WPn73op8XrrIsp0kQJ+5W
	 diHtVup+gPBODQRssmP6Re9x2Rlp9d8DkhYDs38ro45eQkS2EYjaf+tNG+vGwthh6c
	 pv3QNMOeXVH9T9i1VhfiV45/KAP8hg2bRtQuDQ07BTrgApTBrF+o6iYCZHwv68ymXP
	 pbmoS7AMsxHpH0AFYSvtMIqf0uLW3RibYL0OqGcg1pSdSHbpS6DDJj9IMc++8hpvUs
	 XpxwFsQItq4nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfT5e55HYCpj; Tue, 28 Nov 2023 16:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6B02416DA;
	Tue, 28 Nov 2023 16:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6B02416DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0D1D1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 02:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DAE660F33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 02:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DAE660F33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ltuvdm60VE_A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 02:20:07 +0000 (UTC)
Received: from smtp-fw-2101.amazon.com (smtp-fw-2101.amazon.com [72.21.196.25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4AF960EE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 02:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4AF960EE9
X-IronPort-AV: E=Sophos;i="6.04,232,1695686400"; d="scan'208";a="365238398"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-pdx-2c-m6i4x-94edd59b.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-2101.iad2.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2023 02:20:06 +0000
Received: from smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev
 (pdx2-ws-svc-p26-lb5-vlan3.pdx.amazon.com [10.39.38.70])
 by email-inbound-relay-pdx-2c-m6i4x-94edd59b.us-west-2.amazon.com (Postfix)
 with ESMTPS id A06F740A69; Tue, 28 Nov 2023 02:20:04 +0000 (UTC)
Received: from EX19MTAUWB002.ant.amazon.com [10.0.7.35:31470]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.48.37:2525]
 with esmtp (Farcaster)
 id 0872ebc4-30be-4833-a1a5-8ae2b0c2a371; Tue, 28 Nov 2023 02:20:03 +0000 (UTC)
X-Farcaster-Flow-ID: 0872ebc4-30be-4833-a1a5-8ae2b0c2a371
Received: from EX19D047UWB002.ant.amazon.com (10.13.138.34) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 28 Nov 2023 02:20:03 +0000
Received: from EX19MTAUWA001.ant.amazon.com (10.250.64.204) by
 EX19D047UWB002.ant.amazon.com (10.13.138.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 28 Nov 2023 02:20:03 +0000
Received: from dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com (10.2.12.57) by
 mail-relay.amazon.com (10.250.64.204) with Microsoft SMTP Server id
 15.2.1118.39 via Frontend Transport; Tue, 28 Nov 2023 02:20:03 +0000
Received: by dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com (Postfix,
 from userid 5809936)
 id 359294C1B; Tue, 28 Nov 2023 02:20:03 +0000 (UTC)
Date: Tue, 28 Nov 2023 02:20:03 +0000
From: Ivan Pang <ipman@amazon.com>
To: Skyler =?iso-8859-1?Q?M=E4ntysaari?= <sm+lists@skym.fi>
Message-ID: <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
Mail-Followup-To: Skyler =?iso-8859-1?Q?M=E4ntysaari?= <sm+lists@skym.fi>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jordan Crouse <jorcrous@amazon.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
 <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
 <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
 <03c9e8a4-5adc-4293-a720-fe4342ed723b@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03c9e8a4-5adc-4293-a720-fe4342ed723b@app.fastmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Precedence: Bulk
X-Mailman-Approved-At: Tue, 28 Nov 2023 16:09:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1701138007; x=1732674007;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nw3wNUSRAnAUXRzYdytswAuLdnSynr3qa4/uS+Z/0Ww=;
 b=kTQ7BsLduLwj/ueZWMeMy2XzshWEPXsqvAG2Z4GC4bq6nRE7GpoNRLJi
 R2v4n0aBNFa27wfOseG7LvfL0wvKfBW4VlRiw6/2rWjoabTCPUIOSHo0R
 rBroUffXiiXYNU8Y0/iLRjwWbMAzYszk6QDfMWnSeaq7R2w3d1GlA99Cr
 0=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=kTQ7BsLd
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jordan Crouse <jorcrous@amazon.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 18, 2023 at 09:50:35PM +0300, Skyler M=E4ntysaari wrote:
> On Tue, Oct 10, 2023, at 03:39, Skyler M=E4ntysaari wrote:
> > On Tue, Oct 10, 2023, at 02:50, Skyler M=E4ntysaari wrote:
> >> On Mon, Oct 9, 2023, at 18:33, Jesse Brandeburg wrote:
> >>> On 10/4/2023 10:08 AM, Skyler M=E4ntysaari wrote:
> >>>>>> Hi there,
> >>>>>>
> >>>>>> It seems that for reasons unknown to me, my Intel X533 based 10G S=
FP+
> >>>>>> doesn't want to work with kernel 6.1.55 in VyOS 1.4 nor Debian 12 =
but
> >>>>>> it does in OPNsense which is based on FreeBSD 13.2.
> >>>>>>
> >>>>>> How would I go about debugging this properly? Both sides see light,
> >>>>>> but no link unless I'm using FreeBSD.
> >>>> https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/1225=
3/11?u=3Dsamip537
> >>>
> >>> Hi Skyler,
> >>>
> >>> Response from Intel team:
> >>>
> >>> In the ethtool -m output pasted I see TX and RX optical power is fine.
> >>> Could you request fault status on both sides? Just want to check if l=
ink
> >>> is down because we are at local-fault or link partner is at local-fau=
lt.
> >>>
> >>> rmmod ixgbe
> >>> modprobe ixgbe
> >>> ethtool -S eth0 | grep fault
> >>>
> >>> Since it is 10G, if our side TX is ON (power level says it is) then we
> >>> should expect link partner RX to be locked so cannot be at Local Faul=
t.
> >>>
> >>> Skyler, please gather that ethtool -S data for us.
> >>>
> >>> Jesse
> >>>
> >>>
> >>>
> >>> =

> >>
> >> Hi Jesse,
> >>
> >> As the other side of the link is an Juniper, I'm not quite sure how I =

> >> would gather the same data from it as it doesn't have ethtool?
> >>
> >> I have also somewhat given up hope on it working on VyOS and instead I =

> >> am using OPNsense for the moment but I still have VyOS installed as =

> >> well.
> >>
> >> Skyler
> >
> > Hi Jesse,
> >
> > I did verify that the grep doesn't yield any results on the VyOS box =

> > and all of the data returned has an value of 0. Paste of which is here: =

> > https://p.kapsi.fi/?4a82cedb4f4801ec#DcEgFMFK7cH13EqypsY4ZaHS5taeA1zXev=
mmTSVW3P9x
> >
> > I really think something weird is going on with the driver in Linux as =

> > otherwise the same exact config on Juniper wouldn't work there either. =

> > The VyOS box also says that it's unable to modify autoneg settings, or =

> > speed/duplex of the interface.
> >
> > Skyler
> =

> It has been  verified that the driver in kernel version 5.4.255 seems to =
work aka 1.3 VyOS.  Post from another user in the same thread about it: htt=
ps://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253/46
> =

> I have also verified that the out-of-tree ixgbe driver does work, but in-=
kernel doesn't in kernel 6.1.58.
> =

> Please share these findings with the correct Intel team so that this coul=
d be fixed.
> =

> - Skyler
> =


Hi Skyler, Jesse,

I came across this very similar issue when upgrading our networking gear
from kernel 5.15 to 6.1. Our 10G link fails with the in-tree 6.1 ixgbe
driver but works with the out-of-tree 5.x versions. I found that my link
issues were related to this commit:

ixgbe: Manual AN-37 for troublesome link partners for X550 SFI
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=
=3Dv6.1.63&id=3D565736048bd5f9888990569993c6b6bfdf6dcb6d

Specifically, our 10G link works when both sides of the fiber are
running the in-tree 6.1 ixgbe driver with this autonegotiation change.
Our link also works when both sides are running the 5.x ixgbe drivers
without this commit. It fails, however, when only one side has this
commit. Our current setup compiles the in-tree 6.1 ixgbe driver with
this commit reverted, for compatibility with our varying hardware.

I would appreciate it if anyone can cross-check my claim with their
hardware as well. Also, would anyone be able to help explain what some
of those registers and reg_val being written are doing?

-Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
